#i3dropbox

This uses rmagick to change the alpha channels of the dropbox icons so that they look better in i3.


I'm picky.


You could achieve the same thing using just ImageMagick

```
$ export $DBOX_VERSION=3.4.6 # you'll have to look.
$ mogrify -alpha off -background some_color_probably_black \
.dropbox-dist/dropbox-lnx.$(uname -m)-$DBOX_VERSION/images/hicolor/16x16/status/*
```


### use

```
$ git clone http://github.com/i3dropbox.git && cd i3dropbox
$ bundle install
$ ln -s i3dropbox.rb ~/bin/i3dropbox 
```
