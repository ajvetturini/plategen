import os
import subprocess

def get_end_clearance(dl):
    """
    Calculates the amount of spacing prior to the first hole cutout

    :param dl: Difference in length between sbs_holder and the calculated sample holder
    """
    if dl > 10:
        # If the dl is larger than 5, just add a simple 5mm "buffer" on each end:
        return 5

    # Otherwise we just return the distance / 2:
    return dl / 2

def generate_sbs_plate(
        output_scad="sbs_plate.scad", 
        output_stl="sbs_plate.stl", 
        plate_height=20, 
        n_rows=8, 
        n_cols=12, 
        sample_spacing=9.0,
        tube_diameter=4.5,
        create_stl=True,
    ):
    """
    Generates a simple rectangular extrusion with SBS-compliant dimensions.

    :param output_scad: Output filename to save the scad part to
    :param output_stl: Filename to save STL to 
    :param plate_height: How tall to set the SBS plate for microrobot
    :param n_rows: Number of rows to add cuts for
    :param n_cols: Number of columns to add cuts for (e.g., 8 rows 12 cols is 96 well plate)
    :param sample_spacing: Center-to-center distance between sample cuts
    :param tube_diameter: Diameter of the cut cylinders (mm)
    :param create_stl: Boolean to automatically create the STL (typically true)
    """
    # SBS standard plate dimensions (mm)
    sbs_base_length = 127.76  # mm
    sbs_base_width = 85.48    # mm
    base_height = 5           # mm, this is just to prevent too flimsy of a design.
    hole_gap_tolerance = 0.5
    holder_height = plate_height - base_height
    assert holder_height > 0, 'ERROR: Invalid holder height calculated, minimum height is >5.'

    # Correct names:
    if not output_stl.endswith('.stl'):
        assert Exception('Invalid stl filename, needs to end with .stl')
    
    if not output_scad.endswith('.scad'):
        assert Exception('Invalid openscad filename, needs to end with .scad')

    # Parametrically derive the sample holder dimensions:
    holder_length = n_cols * sample_spacing
    holder_width = n_rows * sample_spacing

    assert holder_width < sbs_base_width, 'ERROR: Input dimensions are too large for the SBS standard width. Try reducing number of columns.'
    assert holder_length < sbs_base_length, 'ERROR: Input dimensions are too large for the SBS standard length. Try reducing number of rows.'

    # Calculate the centers of the holes to remove:
    hole_centers = []
    for row in range(n_rows):
        for col in range(n_cols):
            hole_centers.append(
                (
                    col * sample_spacing,
                    row * sample_spacing,
                )
            )

    # OpenSCAD code for a simple rectangular plate
    scad_code = f"""
    base_length = {sbs_base_length};
    base_width = {sbs_base_width};
    base_height = {base_height};

    module sbs_plate() {{
        // Main cube
        cube([base_length, base_width, base_height], center=false);
    }}

    module rectangular_holder() {{
        holder_length = {holder_length};
        holder_width = {holder_width};
        holder_height = {holder_height};
        tube_diameter = {tube_diameter};

        // Begin removing the hole cutouts:
        difference() {{
            translate([base_length/2 - holder_length/2, base_width/2 - holder_width/2, base_height]) {{
                // First create the holder rectangle & translate to center:
                cube([holder_length, holder_width, holder_height], center=false);
            }}

            // Cutouts:
            """
    # Calculate the optimal spacing from the ends of the holder:
    max_length_spacing = sbs_base_length - holder_length
    max_width_spacing = sbs_base_width - holder_width

    length_spacing = get_end_clearance(max_length_spacing)
    width_spacing = get_end_clearance(max_width_spacing)

    print(length_spacing)
    print(width_spacing)

    # Add the cylinders for the holes based on hole_centers
    for center in hole_centers:
        tx, ty = (sbs_base_length/2 - holder_length/2), (sbs_base_width/2 - holder_width/2)
        # Calculate new centers:
        dx = length_spacing + center[0] + tx
        dy = width_spacing + center[1] + ty
        scad_code += f"""
            translate([{dx}, {dy}, {base_height}]) {{
                cylinder(h={holder_height + hole_gap_tolerance}, d={tube_diameter}, center=false, $fn=10);
            }}
        """
    
    # Close the OpenSCAD code
    scad_code += f"""
            }}
        }}
        
    sbs_plate();
    rectangular_holder();
    """

    # Write the OpenSCAD code to a file
    with open(output_scad, "w") as f:
        f.write(scad_code)
    print(f"OpenSCAD file generated: {output_scad}")

    # Command to run OpenSCAD to render and export as STL
    command = [
        r"C:\Program Files\OpenSCAD\openscad.exe",  # Adjust this path as necessary
        "-o", output_stl,  # Specify the output STL file
        output_scad  # The input SCAD file
    ]

    # Run the command
    if create_stl:
        try:
            subprocess.run(command, check=True)
            print(f"STL file generated: {output_stl}")
        except subprocess.CalledProcessError as e:
            print(f"Error during OpenSCAD execution: {e}")


# Example usage
generate_sbs_plate(output_scad='96_well_plate.scad', output_stl='96_well_plate.stl', create_stl=False)
generate_sbs_plate(output_scad='annealer_065ml_tubes.scad', output_stl='annealer_065ml_tubes.stl',
                   n_rows=3, n_cols=5, tube_diameter=3, create_stl=False)
