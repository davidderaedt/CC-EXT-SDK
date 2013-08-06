#Creative Cloud Extensions CLI


Command line tools for building HTML based extensions for Adobe Creative Cloud applications.
 
###deployext

Copies the extension template to the appropriate location. 

Usage (mac): `deployext.sh extfolder extid` 
Usage (win): `deployext.bat extfolder extid` 

* `extfolder` the location of the extension folder you wish to deploy
* `extid` the extension unique id (ie `com.example.my_ext`)

Example: To deploy an extension located at `~/my-awesome-ext/` with the ID `com.example.awesome-ext`, run:

`deployext.sh ~/my-awesome-ext/ com.example.awesome-ext`

For a sample extension to start with, check out my [Creative Cloud Extension boilerplate](https://github.com/davidderaedt/ccext-boilerplate).


###setdebugmode and disabledebugmode

For extensions to run, you should first run `setdebugmode.sh` (mac) or `setdebugmode.bat` (win) once properly configure your system for extension development. Otherwise, extensions will refuse to launch.
`disabledebugmode.sh` reverts to the default behavior. Windows users should update the CEP registry key manually.

###execextendscript

This shell script can be used to execute an ExtendScript file in Photoshop, Illustrator, or InDesign on a mac via command line. Unfortunately, there is no windows equivalent for now.

Usage:

`execextendscript <application> <filepath>`

Parameters:

* `application`: "ps" (Photoshop CC), "ai" (Illustrator CC) or "id" (InDesign CC)
* `filepath`: file path of the JSX file to be executed.

