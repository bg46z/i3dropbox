#i3dropbox

This uses rmagick to change the alpha channels of the dropbox icons so that they look better in i3.


I'm picky.


You could achieve the same thing using just ImageMagick

```bash
$ cd && cd .dropbox-dist/dropbox-lnx.$(uname -m)-<version>/images/hicolor/16x16/status
$ mogrify -alpha off -background some_color_probably_black
```


### use

```bash
$ git clone http://github.com/i3dropbox.git && cd i3dropbox
$ bundle install
$ ln -s i3dropbox.rb ~/bin/i3dropbox 
```
