# isolate_axes

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _Isolate the specified axes in a figure on their own_

Examples:
    fh = isolate_axes(ah)
    fh = isolate_axes(ah, vis)

This function will create a new figure containing the axes/uipanels
specified, and also their associated legends and colorbars. The objects
specified must all be in the same figure, but they will generally only be
a subset of the objects in the figure.

IN:
     ah - An array of axes and uipanel handles, which must come from the
          same figure.
     vis - A boolean indicating whether the new figure should be visible.
           Default: false.

OUT:
     fh - The handle of the created figure.


### Attributes


- nInputs : 2

- nOutputs : 1
