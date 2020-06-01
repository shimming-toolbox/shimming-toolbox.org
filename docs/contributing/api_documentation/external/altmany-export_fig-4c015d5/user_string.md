# user_string

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _Get/set a user specific string_

Examples:
    string  = user_string(string_name)
    isSaved = user_string(string_name, new_string)

Function to get and set a string in a system or user specific file. This
enables, for example, system specific paths to binaries to be saved.

The specified string will be saved in a file named <string_name>.txt,
either in a subfolder named .ignore under this file's folder, or in the
user's prefdir folder (in case this file's folder is non-writable).

IN:
    string_name - String containing the name of the string required, which
                  sets the filename storing the string: <string_name>.txt
    new_string  - The new string to be saved in the <string_name>.txt file

OUT:
    string  - The currently saved string. Default: ''
    isSaved - Boolean indicating whether the save was succesful


### Attributes


- nInputs : 2

- nOutputs : 1
