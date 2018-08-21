# Creative Cloud Extension SDK


Unofficial SDK for building HTML based extensions for Adobe Creative Cloud applications. As of now, it consists of some command line tools, scripts and some templates.

> If you're looking for an easier way to build HTML extensions, check out the [Sublime Text plugin](https://github.com/davidderaedt/CC-Extension-Builder-for-Sublime-Text) or the [Brackets extension](https://github.com/davidderaedt/CC-Extension-Builder-for-Brackets), both built on top of this SDK.
 
### createext 

Creates an extension panel from a given template and deploys it.

Usage: 

* osx: `createext.sh <templatename> <extid>`
* win: `createext.bat <templatename> <extid>`

Parameters:

* `templatename` the name of the template folder you wish to use as a source
* `extid` a unique id for your extension

Returns: the path of the created extension folder.

Example: 

`createext.sh default com.example.ext`  

... will create the extension *com.example.ext* from the `default` template located in the `templates/default` folder. The extension panel should be ready to use from the corresponding Adobe application as long as you've enable debugging on the system (see the `debugmode` commands below).

You can of course add your own templates to the `templates` folder. Just make sure the extension ID used in the manifest is `com.example.ext`.

For additional extension samples, check out the [official samples repository](https://github.com/Adobe-CEP/Samples).



### deployext

Copies an existing extension folder to the appropriate location for it to be executed.

Usage:

* osx : `deployext.sh <extfolder> <extid>`
* win : `deployext.bat <extfolder> <extid>`

Parameters:

* `extfolder` the location of the extension folder you wish to deploy
* `extid` the extension unique id (ie `com.example.my_ext`)

Returns: the path of the created folder.


Example: To deploy an extension located at `~/my-awesome-ext/` with the ID `com.example.awesome-ext`, run:

`deployext.sh ~/my-awesome-ext/ com.example.awesome-ext`

For a sample extension to start with, check out the [official samples repository](https://github.com/Adobe-CEP/Samples).


### setdebugmode and disabledebugmode

For extensions to run, you should first run `setdebugmode.sh` (mac) or `setdebugmode.bat` (win) once to properly configure your system for extension development. Otherwise, extensions will refuse to launch.
`disabledebugmode.sh` reverts to the default behavior. Windows users should update the CEP registry key manually.


### execextendscript

This script executes an ExtendScript (jsx) file via command line in Photoshop, Illustrator, InDesign, or After Effects. Unfortunately, InDesign scripts are not supported on Windows for now.

* osx: `execextendscript.sh <appID> <filepath>`
* win: `execextendscript.bat <appID> <filepath>`

Parameters:

* `appID`: *ps* (Photoshop CC), *ai* (Illustrator CC), *id* (InDesign CC), or *ae* (After Effects CC)
* `filepath`: file path of the JSX file to be executed.

Example: to execute `test.jsx` in Photoshop from the command line on the mac, use:

`execextendscript.sh ps "~/Desktop/test.jsx"`




