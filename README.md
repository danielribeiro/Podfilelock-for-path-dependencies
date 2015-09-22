# Podfile.lock For Path Dependencies

This exemplifies https://github.com/CocoaPods/CocoaPods/issues/4211

The architecture is described here:

![](https://raw.githubusercontent.com/danielribeiro/Podfilelock-for-path-dependencies/master/docs/arch.png)

To run it just execute build.sh:

```bash
$ ./build.sh
```


## The bug

The Podfile.lock clearly states the dependency "AMCoreAudio (1.1)", but if you `pod install`, it will change the podfile lock to point to "AMCoreAudio (1.5)". This happens because the strict dependecy on Intermediate.podspec changed from '1.1' to '< 2'. 

The bug is: if this was not a path dependency, the podfile lock would be respected.

Commenting the [line 406 on analyzer.rb](https://github.com/CocoaPods/CocoaPods/blob/master/lib/cocoapods/installer/analyzer.rb#L406) avoids this behaviour. This way, if you need to update the podfile.lock, you run `pod update`.

# Meta

Created by [Daniel Ribeiro](https://github.com/danielribeiro)

Released under the MIT License: http://www.opensource.org/licenses/mit-license.php

http://github.com/danielribeiro/Podfilelock-for-path-dependencies/