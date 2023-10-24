import FreeCAD, Part

# Create a new document
doc = FreeCAD.newDocument()

# Adjusted Dimensions for the handle
handle_length = 200    # 20 times the thickness
handle_width = 20      # 10 times the thickness
handle_thickness = 10  # Base thickness

# Create the handle
handle = Part.makeBox(handle_length, handle_width, handle_thickness)
wrenchHandle = doc.addObject("Part::Box", "WrenchHandle")
wrenchHandle.Length = handle_length
wrenchHandle.Width = handle_width
wrenchHandle.Height = handle_thickness

# Update the document
doc.recompute()
