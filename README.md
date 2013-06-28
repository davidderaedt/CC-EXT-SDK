#Creative Cloud Extensions CLI


Command line tools for building HTML based extensions for Adobe Creative Cloud applications.

Only OSX is supported for now. Outrageous, I know.

If you know a little batch scripting, please contribute :)

 
###deployext

Copies the extension template to the appropriate location. 

Usage: `deployext extfolder extid` 

* `extfolder` the location of the extension folder you wish to deploy
* `extid` the extension unique id (ie `com.example.my_ext`)

Example: To deploy an extension located at `~/my-awesome-ext/` with the ID `com.example.awesome-ext`, run:

`deployext ~/my-awesome-ext/ com.example.awesome-ext`

For a sample extension to start with, check out my [Creative Cloud Extension boilerplate](https://github.com/davidderaedt/ccext-boilerplate).


###setdebugmode and disabledebugmode

For extensions to run, you should first run `setdebugmode.sh` once properly configure your system for extension development. Otherwise, extensions will refuse to launch. `disabledebugmode.sh` reverts to the default behavior. 
