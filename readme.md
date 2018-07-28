macOS Folder Icons
==================

This repository contains a number of folder icons I made for Mac OS X/macOS, for organizing project folders by color.

<p align="center">
  <img src="https://raw.githubusercontent.com/msikma/osx-folder-icons/master/resources/icons_2.png" alt="Icon example image" />
</p>

This icon set includes a number of Folder icon color modifications, and there's PSDs that you can easily use to create new icons. Feel free to submit new icons you make.

Each icon includes seven responsive sizes (16×16, 16×16@2, 32×32@2, 128×128, 128×128@2, 256×256@2, and 512×512@2) and work on both retina and non-retina displays. Each size is set up as a slice in the PSD file, so to save a new iconset all you need to use is _Save for Web_.

Finder sidebar
--------------

I use this in conjunction with the [mySIMBL](https://github.com/w0lfschild/mySIMBL) plugin for turning the Finder sidebar colors back on (colorfulSidebar9), which lets you put projects you commonly work on in a place where you can easily see them, while making it easy to identify the project type.

<img src="https://raw.github.com/msikma/osx-folder-icons/master/resources/example_5.png" alt="Colorful icons in the Finder" />

The image is a screenshot from how I've currently organized my Finder sidebar.

Note that, if you use mySIMBL, the icons will look best if you set the Finder's sidebar icon size to "small". You can do this in the [General preferences pane](https://raw.githubusercontent.com/msikma/osx-folder-icons/master/resources/example_4.png). This ensures it uses 16x16(@2x if retina) icons.

Also, I recommend setting the icons with a tool such as [fileicon](https://www.npmjs.com/package/fileicon), which ensures that all responsive sizes are actually present (this is not the case when dragging the icon in the Finder's Info window).

Hiding icons from Git
---------------------

Nice as these icons are, they're really annoying to work with when you use Git. Best thing to do is ignore them globally.

Since icon files have a rather weird filename ("Icon" followed by a literal return carriage), here's how you properly get rid of them:

```
# create .gitignore_global file containing "Icon\r"
echo -n -e '\x49\x63\x6f\x6e\x0d\x0d' > ~/.gitignore_global
# configure Git to use the global ignore file we just made
git config --global core.excludesfile ~/.gitignore_global
```

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

Everything else is [MIT licensed](http://opensource.org/licenses/MIT).
