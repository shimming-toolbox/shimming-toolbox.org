# copyfig

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _Create a copy of a figure, without changing the figure_

Examples:
    fh_new = copyfig(fh_old)

This function will create a copy of a figure, but not change the figure,
as copyobj sometimes does, e.g. by changing legends.

IN:
     fh_old - The handle of the figure to be copied. Default: gcf.

OUT:
     fh_new - The handle of the created figure.


### Attributes


- nInputs : 1

- nOutputs : 1
