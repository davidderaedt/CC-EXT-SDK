#Creative Cloud Extension SDK


Unofficial SDK for building HTML based extensions for Adobe Creative Cloud applications.
As of now, it consists of some command line tool / scripts and some templates.

 
###createext 

Creates an extension panel from a given template.

Usage (mac): `createext.sh templatename extid`

* `templatename` the name of the template folder you wish to use as a source
* `extid` a unique id for your extension

Example: `createext.sh basic com.example.ext`  ... will create the extension *com.example.ext* from the `default` template folder in the `templates` folder. The extension panel should be ready to use from the corresponding Adobe application as long as you've enable debugging on the system (see the `debugmode` commands below).

You can of course add your own templates to the `templates` folder.


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

For extensions to run, you should first run `setdebugmode.sh` (mac) or `setdebugmode.bat` (win) once to properly configure your system for extension development. Otherwise, extensions will refuse to launch.
`disabledebugmode.sh` reverts to the default behavior. Windows users should update the CEP registry key manually.

###execextendscript

This shell script can be used to execute an ExtendScript file in Photoshop, Illustrator, or InDesign on a mac via command line. Unfortunately, there is no windows equivalent for now.

Usage:

`execextendscript <application> <filepath>`

Parameters:

* `application`: "ps" (Photoshop CC), "ai" (Illustrator CC) or "id" (InDesign CC)
* `filepath`: file path of the JSX file to be executed.

