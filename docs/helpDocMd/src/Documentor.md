# Documentor

**Filetype:** _MATLAB&reg; classdef_

**Synopsis:** __.m_bedded `doc`s to .md text files_

Documentor (re)publishes embedded source code documentation to text files
(i.e. as [Markdown](https://daringfireball.net/projects/markdown/)).

**Refer to the README document for basic usage.**

__CONSTRUCTOR SYNTAX__

      Dr = Documentor(  ) ;
      Dr = Documentor( src ) ;
      Dr = Documentor( src, Params ) ;

Typically a Documentor instance `Dr` will be created by calling the
constructor with at least the first argument `src`: a string vector of file
paths to .m source files and/or directories in which to search for them.
Upon initialization, documentation can be published using the default
settings by calling `Dr.printdoc();`

__OPTIONS__
`Params.isSearchRecursive` is a scalar logical specifying whether any subdirectories
of those listed in `src` are to be included in a file search. By default, it
will be `true` when `src` contains just a single directory, and `false` when
multiple directories are present. These defaults can be bypassed in either
case by passing the corresponding boolean as the second argument. The value
retained as a public property in the returned object (`Dr.isSearchRecursive`)
for future reference.

`params.outputDir` is a path specifying where the output documentation will be
generated.

`src` is used to initialize the public property `mFiles`, which contains the
list of source files to be included in any published output, and which can be
reconfigured after initialization.

Note that any invalid or *incompatible* paths suggested by `src` will be
automatically filtered out from assignments to `mFiles`. That is, by setting
`Dr.mFiles = src`, the actual assignment will always be
`Dr.mFiles = Documentor.findfiles( src, Dr.isSearchRecursive )`.
For more info, refer to the documentation entries for Documentor.findfiles
and Documentor.mFiles.

__ETC__
-[test](https://daringfireball.net/projects/markdown/dingus) how a
sample of Markdown text will display once reformatted to HTML

    Documentation for Documentor
       doc Documentor


__ATTRIBUTES__


<table>
<table border=1><tr><th>Hidden</th><th>Sealed</th><th>Abstract</th><th>Enumeration</th><th>ConstructOnLoad</th><th>HandleCompatible</th><th>RestrictsSubclassing</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>true</td><td>false</td></tr>
</table>

- InferiorClasses : [N/A] 
- ContainingPackage : [N/A] 
- EventList : [N/A] 
- EnumerationMemberList : [N/A] 
- Superclasses: handle

- - -
## Properties


### Ext

**Synopsis:** _Default file extensions_

  Default file extensions

<table>
<table border=1><tr><th>Dependent</th><th>Constant</th><th>Abstract</th><th>Transient</th><th>Hidden</th><th>GetObservable</th><th>SetObservable</th><th>AbortSet</th><th>NonCopyable</th><th>HasDefault</th></tr>
<tr><td>false</td><td>true</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>true</td><td>true</td></tr>
</table>

- GetAccess : public
- SetAccess : none
- GetMethod : 
- SetMethod : 
- DefaultValue : [N/A] 
- Validation : [N/A] 
- DefiningClass : Documentor

### Info

**Synopsis:** _Informer object-array: Provides info on each .m file in `mFiles`_

  Informer object-array: Provides info on each .m file in `mFiles`

<table>
<table border=1><tr><th>Dependent</th><th>Constant</th><th>Abstract</th><th>Transient</th><th>Hidden</th><th>GetObservable</th><th>SetObservable</th><th>AbortSet</th><th>NonCopyable</th><th>HasDefault</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>true</td><td>false</td><td>false</td></tr>
</table>

- GetAccess : private
- SetAccess : private
- GetMethod : 
- SetMethod : 
- DefaultValue : 
- Validation: 
Class: Informer
Validator functions: 
- DefiningClass : Documentor

### iM

**Synopsis:** _Index of next .m file in list of files to document (i.e. `mFiles(iM)`)_

  Index of next .m file in list of files to document (i.e. `mFiles(iM)`)

<table>
<table border=1><tr><th>Dependent</th><th>Constant</th><th>Abstract</th><th>Transient</th><th>Hidden</th><th>GetObservable</th><th>SetObservable</th><th>AbortSet</th><th>NonCopyable</th><th>HasDefault</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>true</td><td>false</td><td>true</td></tr>
</table>

- GetAccess : public
- SetAccess : public
- GetMethod : 
- SetMethod : Documentor.set.iM
- DefaultValue : [N/A] 
- Validation: 
Class: uint64
Validator functions: mustBePositive,mustBeInteger
- DefiningClass : Documentor

### mFiles

**Synopsis:** _List of .m files to document (string vector of full file paths)_

To ensure that the list consists solely of *documentable* files, property
reassignments (or, *assignments*, in the case of object construction) are
mediated (filtered) by an implicit function call: i.e. whenever the
property is set (as in `Dr.mFiles = src`) it is, in effect, as a return value
(namely, `Dr.mFiles = Documentor.findfiles( src, Dr.isSearchRecursive ) ;`).

__ETC__
For details regarding the implementation and what constitutes a
'documentable' file,

See also
Documentor.findfiles

<table>
<table border=1><tr><th>Dependent</th><th>Constant</th><th>Abstract</th><th>Transient</th><th>Hidden</th><th>GetObservable</th><th>SetObservable</th><th>AbortSet</th><th>NonCopyable</th><th>HasDefault</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>true</td><td>false</td><td>false</td></tr>
</table>

- GetAccess : public
- SetAccess : public
- GetMethod : 
- SetMethod : Documentor.set.mFiles
- DefaultValue : 
- Validation : [N/A] 
- DefiningClass : Documentor

### dFiles

**Synopsis:** _List of output documentation file paths (string vector of full file paths)_

  List of output documentation file paths (string vector of full file paths)

<table>
<table border=1><tr><th>Dependent</th><th>Constant</th><th>Abstract</th><th>Transient</th><th>Hidden</th><th>GetObservable</th><th>SetObservable</th><th>AbortSet</th><th>NonCopyable</th><th>HasDefault</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>true</td><td>false</td><td>true</td></tr>
</table>

- GetAccess : public
- SetAccess : public
- GetMethod : 
- SetMethod : Documentor.set.dFiles
- DefaultValue : 
- Validation: 
Validator functions: mustBeStringOrCharOrCellstr
- DefiningClass : Documentor

### isOverwriting

**Synopsis:** _Toggle whethers to overwrite existing documentation files (logical column vector with length == numel(mFiles))_

  Toggle whethers to overwrite existing documentation files (logical column vector with length == numel(mFiles))

<table>
<table border=1><tr><th>Dependent</th><th>Constant</th><th>Abstract</th><th>Transient</th><th>Hidden</th><th>GetObservable</th><th>SetObservable</th><th>AbortSet</th><th>NonCopyable</th><th>HasDefault</th><th>DefaultValue</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>true</td><td>false</td><td>true</td><td>false</td></tr>
</table>

- GetAccess : public
- SetAccess : public
- GetMethod : 
- SetMethod : 
- Validation: 
Validator functions: mustBeBoolean
- DefiningClass : Documentor

### isSearchRecursive

**Synopsis:** _Toggle whether subdirectories are included when searching for .m files_

Applies when calling `Documentor.mFiles = src` and `src` contains directory paths

See also
-Documentor.findfiles
-Documentor.mFiles

<table>
<table border=1><tr><th>Dependent</th><th>Constant</th><th>Abstract</th><th>Transient</th><th>Hidden</th><th>GetObservable</th><th>SetObservable</th><th>AbortSet</th><th>NonCopyable</th><th>HasDefault</th><th>DefaultValue</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>true</td><td>false</td><td>true</td><td>true</td></tr>
</table>

- GetAccess : public
- SetAccess : public
- GetMethod : 
- SetMethod : 
- Validation: 
Validator functions: mustBeBoolean
- DefiningClass : Documentor

### isSaveRecursive

**Synopsis:** _Toggle to recreate original directory tree in `dirOutTop` (multiple mFiles case only)_

By default, `isSaveRecursive == true` and an attempt is made to mirror
the original directory structure of `.mFiles` within `dirOutTop`.
Otherwise, `if isSaveRecursive == false`, all the output documentation files
are written to `dirOutTop`.

__ETC__
See also
HelpDocMd.isSearchRecursive

<table>
<table border=1><tr><th>Dependent</th><th>Constant</th><th>Abstract</th><th>Transient</th><th>Hidden</th><th>GetObservable</th><th>SetObservable</th><th>AbortSet</th><th>NonCopyable</th><th>HasDefault</th><th>DefaultValue</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>true</td><td>false</td><td>true</td><td>true</td></tr>
</table>

- GetAccess : public
- SetAccess : public
- GetMethod : 
- SetMethod : 
- Validation: 
Validator functions: mustBeBoolean
- DefiningClass : Documentor

### dirOutTop

**Synopsis:** _Output parent directory for the doc files_

If ` "/Users/Buddy/Projects/helpDocMd/src/" ` is the top shared directory
of the input `.mFiles`, then, by default
`dirOutTop = "/Users/Buddy/Projects/helpDocMd/docs/" ;`

See also Documentor.isSaveRecursive

<table>
<table border=1><tr><th>Dependent</th><th>Constant</th><th>Abstract</th><th>Transient</th><th>Hidden</th><th>GetObservable</th><th>SetObservable</th><th>AbortSet</th><th>NonCopyable</th><th>HasDefault</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>true</td><td>false</td><td>true</td></tr>
</table>

- GetAccess : public
- SetAccess : public
- GetMethod : 
- SetMethod : Documentor.set.dirOutTop
- DefaultValue : 
- Validation: 
Validator functions: mustBeStringOrChar
- DefiningClass : Documentor

### mdDoc

**Synopsis:** _Documentation string for `mFiles(iM)` to be printed to `dFiles(iM)`_

  Documentation string for `mFiles(iM)` to be printed to `dFiles(iM)`

<table>
<table border=1><tr><th>Dependent</th><th>Constant</th><th>Abstract</th><th>Transient</th><th>Hidden</th><th>GetObservable</th><th>SetObservable</th><th>AbortSet</th><th>NonCopyable</th><th>HasDefault</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>true</td><td>false</td><td>true</td></tr>
</table>

- GetAccess : public
- SetAccess : public
- GetMethod : Documentor.get.mdDoc
- SetMethod : 
- DefaultValue : 
- Validation: 
Class: string
Validator functions: mustBeStringOrChar
- DefiningClass : Documentor

### isDetailed

**Synopsis:** _Toggles between basic/user (=false) and detailed/developer documentation (=true) [default: true]_

When false, classes and class members with private, protected, or hidden
attributes are excluded from the output documentation. [default = true]

NOTE/TODO: only partially implemented! (also, a selection of *degrees* of details rather than 0/1 might be better)

<table>
<table border=1><tr><th>Dependent</th><th>Constant</th><th>Abstract</th><th>Transient</th><th>Hidden</th><th>GetObservable</th><th>SetObservable</th><th>AbortSet</th><th>NonCopyable</th><th>HasDefault</th><th>DefaultValue</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>true</td><td>false</td><td>true</td><td>true</td></tr>
</table>

- GetAccess : public
- SetAccess : public
- GetMethod : 
- SetMethod : 
- Validation: 
Validator functions: mustBeBoolean
- DefiningClass : Documentor

### extOut

**Synopsis:** _Output file extension (default = ".md")_

  Output file extension (default = ".md")

<table>
<table border=1><tr><th>Dependent</th><th>Constant</th><th>Abstract</th><th>Transient</th><th>Hidden</th><th>GetObservable</th><th>SetObservable</th><th>AbortSet</th><th>NonCopyable</th><th>HasDefault</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>true</td><td>false</td><td>true</td></tr>
</table>

- GetAccess : public
- SetAccess : public
- GetMethod : 
- SetMethod : 
- DefaultValue : .md
- Validation: 
Validator functions: mustBeStringOrChar
- DefiningClass : Documentor

### dirInTop

**Synopsis:** _Top directory of src mFiles_

  Top directory of src mFiles

<table>
<table border=1><tr><th>Dependent</th><th>Constant</th><th>Abstract</th><th>Transient</th><th>Hidden</th><th>GetObservable</th><th>SetObservable</th><th>AbortSet</th><th>NonCopyable</th><th>HasDefault</th></tr>
<tr><td>true</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>true</td><td>true</td></tr>
</table>

- GetAccess : public
- SetAccess : public
- GetMethod : Documentor.get.dirInTop
- SetMethod : 
- DefaultValue : 
- Validation: 
Validator functions: mustBeStringOrChar
- DefiningClass : Documentor

### syntax

**Synopsis:** _String specifier for output syntax: "mkd" (for Mkdocs markdown), "mat" (for MATLAB markup)_

The sole difference between "mkd" and "mat" (for now) is that "mkd" will
reformat the style of any embedded links in the comments.

LIKELY NOT NEEDED

<table>
<table border=1><tr><th>Dependent</th><th>Constant</th><th>Abstract</th><th>Transient</th><th>Hidden</th><th>GetObservable</th><th>SetObservable</th><th>AbortSet</th><th>NonCopyable</th><th>HasDefault</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>true</td><td>false</td><td>false</td><td>false</td><td>false</td><td>true</td></tr>
</table>

- GetAccess : public
- SetAccess : public
- GetMethod : 
- SetMethod : 
- DefaultValue : mkd
- Validation: 
Class: string
Validator functions: @(syntax)mustBeMember(syntax,["mat","mkd"])
- DefiningClass : Documentor

---
## Methods


---


### Documentor

**Synopsis**: __.m_bedded `doc`s to .md text files_ 

Documentor (re)publishes embedded source code documentation to text files
(i.e. as [Markdown](https://daringfireball.net/projects/markdown/)).

**Refer to the README document for basic usage.**

__CONSTRUCTOR SYNTAX__

      Dr = Documentor(  ) ;
      Dr = Documentor( src ) ;
      Dr = Documentor( src, Params ) ;

Typically a Documentor instance `Dr` will be created by calling the
constructor with at least the first argument `src`: a string vector of file
paths to .m source files and/or directories in which to search for them.
Upon initialization, documentation can be published using the default
settings by calling `Dr.printdoc();`

__OPTIONS__
`Params.isSearchRecursive` is a scalar logical specifying whether any subdirectories
of those listed in `src` are to be included in a file search. By default, it
will be `true` when `src` contains just a single directory, and `false` when
multiple directories are present. These defaults can be bypassed in either
case by passing the corresponding boolean as the second argument. The value
retained as a public property in the returned object (`Dr.isSearchRecursive`)
for future reference.

`params.outputDir` is a path specifying where the output documentation will be
generated.

`src` is used to initialize the public property `mFiles`, which contains the
list of source files to be included in any published output, and which can be
reconfigured after initialization.

Note that any invalid or *incompatible* paths suggested by `src` will be
automatically filtered out from assignments to `mFiles`. That is, by setting
`Dr.mFiles = src`, the actual assignment will always be
`Dr.mFiles = Documentor.findfiles( src, Dr.isSearchRecursive )`.
For more info, refer to the documentation entries for Documentor.findfiles
and Documentor.mFiles.

__ETC__
-[test](https://daringfireball.net/projects/markdown/dingus) how a
sample of Markdown text will display once reformatted to HTML


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : pathIn, Params
- OutputNames : Dr
- DefiningClass : Documentor

---


### printdoc

**Synopsis**: _Write documentation to file(s)_ 

     
     [dFiles] = PRINTDOC( Dr ) 
     [dFile]  = PRINTDOC( Dr, iM ) 

When called with a single argument (Documentor instance `Dr`), PRINTDOC
iteratively descends the list of .m files in `Dr.mFiles`, printing default
documentation to the output file paths listed in `Dr.dFiles`.


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Dr, iM
- OutputNames : docFile
- DefiningClass : Documentor

---


### tableattributes

**Synopsis**: _Return html-table of class/classmember attributes_ 


tableStr = GETHELPTEXT( Attributes )


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : private
- InputNames : Dr, Attributes
- OutputNames : tableStr
- DefiningClass : Documentor

---


### documentclassproperties

**Synopsis**: _Return string vector of class property documentation_ 

 DOCUMENTCLASSPROPERTIES Return string vector of class property documentation


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : private
- InputNames : Dr
- OutputNames : docStr
- DefiningClass : Documentor

---


### documentclassmethods

**Synopsis**: _Return string vector of class method documentation_ 

 DOCUMENTCLASSMETHODS Return string vector of class method documentation


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : private
- InputNames : Dr
- OutputNames : docStr
- DefiningClass : Documentor

---


### documentclassdef

**Synopsis**: _Return string vector of class documentation_ 

DOCUMENTCLASSDEF documents basic class attributes followed by class member
documentation (courtesy of calls to Documentor.documentclassproperties and
Documentator.documentclassmethods)


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : private
- InputNames : Dr
- OutputNames : docStr
- DefiningClass : Documentor

---


### documentbasic

**Synopsis**: _Return string vector of rudimentary documentation_ 

     
     [docStr] = documentbasic( Self )
     [docStr] = documentbasic( Self, Att )
     [docStr] = documentbasic( Self, Att, headingLevel )

When called without a second argument, `documentbasic` derives the following details
from `Self.Info.Attributes` to return the documentation string vector `docStr`:
- Name : of the script, function, or class
- mType: script, function, or class file type
- Description: header line from the help/documentation
- DetailedDescription: body of the help/documentation

When called with a second argument, `documentbasic` works similarly to the
above case, however, details are instead derived from attributes-struct `Att`
(mType may be omitted in this case, but the other field names must be
present.)

Optional 3rd argument is a scalar integer (= 0,1,2,3,4,5, or 6) [default=1]
indicating the number of '#' signs to precede the 'Name' value (docStr's
first element). for markdown syntax, this controls the heading level.


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : private
- InputNames : varargin
- OutputNames : docStr
- DefiningClass : Documentor

---


### markuptodown

**Synopsis**: _Replace MATLAB Markup elements with corresponding Mkdocs-style Markdown_ 

Reformat links and link-text to Markdown syntax:
i.e. MATLAB markup uses: <https://www.thisSite.com text to display>
whereas Markdown uses: [text to display](https://www.thisSite.com)

[ mdDocStr ] = MARKUPTODOWN( muDocStr )

TODO

+ currrent implementation is simplistic: Basically works for weblinks, but needs
to be elaborated for local links to custom functions & classes: either tags
or relative paths could be used for Mkdocs build.

+ it doesn't distinguish between links and embedded HTML, so it
messes up the latter (see: Documentor.tableattributes)

+ replace instances of 'MATLAB' and/or 'MATLAB(R)' with 'MATLAB&reg;'


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>true</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : muDocStr
- OutputNames : mdDocStr
- DefiningClass : Documentor

---


### findfiles

**Synopsis**: _Return list of .m files to document from directory search_ 

     
     mFiles = Documentor.findfiles( src )
     mFiles = Documentor.findfiles( src, isRecursive )

Returns a list of *documentable* .m files `mFiles` based on the set of file
system paths specified in `src`.

`src`
:    a [string-, char-, or cellstr-] array of paths to .m source files,
       and/or directories in which to search for them.

`isRecursive`
:    a Boolean toggle to include subdirectories in the search. To restrict
       the search directories explicitly included in `src`, the function
       should be called with `0` as the second argument.
       [default=`true`]

`mFiles`
:     String-vector list of *Documentor-compatible* .m files

When source files are included in the input, the function verifies that the
Documentor class will indeed be able to document them (see Note 2. below).

When `src` elements point to directories, the function first searches the
directories for .m files, followed by the compatibility check (see Note 3.
below).

__NOTES__

**1. Warnings and errors:**

If identified, invalid paths or incompatible .m files suggested by the given
inputs will elicit warning messages and, if no documentable .m files are
found whatsoever, an error is issued.

**2. Re:'Documentability':**

*Documentability* of a given .m file (i.e. whether it is included among the
returned `mFiles` list) is defined according to the file-type returned by
`mType = Informer.mfiletype( mFile )`:

-`if mType == "NA"`:
The file is considered invalid and thereby omitted from `mFiles`.
This will be the case for nominal .m files (non-MATLAB files with
'.m' file extensions) as well as invalid MATLAB files (source files with
buggy implementations that preclude assessment with `Informer.mfiletype`).
For more info, refer to the documentation for Informer.mfiletype

-`if mType == "method"`:
Standalone source files pertaining to class-methods are, likewise, omitted
from `mFiles` as methods are included as part of the overall class
documentation, rather than documented separately.

**3. .m file search:**

When a directory figures among the entries of the input `src` paths,
`Documentor.findfiles` searches for any .m files contained therein by
wrapping to the standalone function *findfiles.m*, effectively calling:
      
     [~,mFiles] = findfiles( src( isfolder(src) ), "*.m", isRecursive ) ;

(If `src` contains multiple directories, findfiles.m will be called iteratively,
with `mFiles` accordingly appended.)

NOTE/TODO: Handling the case where multiple directories are included and
`isRecursive == true`. There is the potential here to include directories
multiple times (can be easily filtered out ahead of time using
Pathologist.subfolders -- just need to implement the filter). More
importantly, a folder the user didn't really want included might be included
anyway if it happens to be a sub of one that was specified... Should a
warning be issued?

__ETC__

- standalone function: findfiles.m
- Informer.mfiletype

See also
FINDFILES


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>true</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : varargin
- OutputNames : mFiles
- DefiningClass : Documentor

---


### documentfunction

**Synopsis**: _adds function-specific info to documentation_ 

NOTE: for now, this is just nArgin/nArgout but this should be elaborated
in Informer.m -- e.g. by parsing the function arguments block when it exists


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : varargin
- OutputNames : varargout
- DefiningClass : Documentor

---


### printYml

**Synopsis**: _print yml configuration file according to docFiles_ 

__Syntax__

    [] = PRINTYML( Self, filePath) 
    [] = PRINTYML( Self, filePath, Params) 

__OPTIONS__

`filePath` is the path of the file where the .yml file will be generated

`Params.theme` is a character vector containing the name of the them to
use

`Params.projectName` is a character vector of the name of the project
(will be displayed as the site name)

% `Params.home` is a character vector of the homepage (default value is
'index.md')

`Params.repoURL` is a character vector that specifies the link to the
remote directory.

for the Yml configuration file to work, the documentation must be in a
folder called docs in the same folder


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : varargin
- OutputNames : varargout
- DefiningClass : Documentor

---


### empty

**Synopsis**: _Returns an empty object array of the given size_ 


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>true</td><td>false</td><td>false</td><td>false</td><td>true</td></tr>
</table>

- Access : public
- InputNames : varargin
- OutputNames : E
- DefiningClass : Documentor

---

### eq
[ _built-in method derived from class_ **handle** ]
For more info, see MATLAB documentation]

---

### ne
[ _built-in method derived from class_ **handle** ]
For more info, see MATLAB documentation]

---

### lt
[ _built-in method derived from class_ **handle** ]
For more info, see MATLAB documentation]

---

### gt
[ _built-in method derived from class_ **handle** ]
For more info, see MATLAB documentation]

---

### le
[ _built-in method derived from class_ **handle** ]
For more info, see MATLAB documentation]

---

### ge
[ _built-in method derived from class_ **handle** ]
For more info, see MATLAB documentation]

---

### delete
[ _built-in method derived from class_ **handle** ]
For more info, see MATLAB documentation]

---

### isvalid
[ _built-in method derived from class_ **handle** ]
For more info, see MATLAB documentation]

---

### findprop
[ _built-in method derived from class_ **handle** ]
For more info, see MATLAB documentation]

---

### notify
[ _built-in method derived from class_ **handle** ]
For more info, see MATLAB documentation]

---

### notify
[ _built-in method derived from class_ **handle** ]
For more info, see MATLAB documentation]

---

### addlistener
[ _built-in method derived from class_ **handle** ]
For more info, see MATLAB documentation]

---

### listener
[ _built-in method derived from class_ **handle** ]
For more info, see MATLAB documentation]

---

### addlistener
[ _built-in method derived from class_ **handle** ]
For more info, see MATLAB documentation]

---

### listener
[ _built-in method derived from class_ **handle** ]
For more info, see MATLAB documentation]

---

### addlistener
[ _built-in method derived from class_ **handle** ]
For more info, see MATLAB documentation]

---

### listener
[ _built-in method derived from class_ **handle** ]
For more info, see MATLAB documentation]

---

### addlistener
[ _built-in method derived from class_ **handle** ]
For more info, see MATLAB documentation]

---

### listener
[ _built-in method derived from class_ **handle** ]
For more info, see MATLAB documentation]

---

### addlistener
[ _built-in method derived from class_ **handle** ]
For more info, see MATLAB documentation]

---

### listener
[ _built-in method derived from class_ **handle** ]
For more info, see MATLAB documentation]

---

### findobj
[ _built-in method derived from class_ **handle** ]
For more info, see MATLAB documentation]
