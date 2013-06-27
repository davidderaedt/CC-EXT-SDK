#CC Extensions CLI


Command line tools for building HTML based extensions for Adobe Creative Cloud applications.

*Only OSX is supported for now*

> Note: You should first run `setdebugmode.sh` once properly configure your system for extension development. Otherwise, extensions will refuse to launch. `disabledebugmode.sh` reverts to the default behavior.
 
###deployext

Copies the extension template to the appropriate location. 

Usage: `deployext extfolder extid` 

* `extfolder` the location of the extension folder you wish to deploy
* `extid` the extension id (ie `com.example.my_ext`)

Example

`deployext ~/ccext-template/ com.example.my_ext`