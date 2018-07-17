macOS Folder Icons
==================

This repository contains a number of folder icons I made for Mac OS X/macOS, for organizing project folders by color.

<p align="center">
  <img src="https://raw.github.com/msikma/osx-folder-icons/master/resources/example_1.png" alt="Icon example image" />
</p>

This icon set includes a number of Folder icon color modifications, and there's a PSD that you can easily use to create new icons. Feel free to submit new icons you make. Each icon includes five resolutions (16×16@2, 32×32@2, 128×128@2, 256×256@2, and 512×512@2), retina only (but I think they should work on non-retina screens just as well).

Finder sidebar
--------------

I use this in conjunction with the [mySIMBL](https://github.com/w0lfschild/mySIMBL) plugin for turning the Finder sidebar colors back on (colorfulSidebar9), which lets you put projects you commonly work on in a place where you can easily see them, while making it easy to identify the project type.

<img src="https://raw.github.com/msikma/osx-folder-icons/master/resources/example_2.png" alt="Colorful icons in the Finder" />

The image is a screenshot from how I've currently organized my Finder sidebar.

Converting images to icons and vice versa
-----------------------------------------

To convert a directory of images to an icon:

```
iconutil --convert icns bluegreen.iconset bluegreen.icns
```

To convert an icon to a directory:

```
iconutil --convert iconset purple.icns --output purple.iconset
```

`iconutil` is an OSX command line tool that should be installed by default.

License
-------

All icons are modifications of the folder icon from macOS High Sierra, which is © 2018, Apple Inc.

[The Python logo](https://www.python.org/community/logos/) is © 2018, Python Software Foundation.

Everything else is [MIT licensed](http://opensource.org/licenses/MIT).