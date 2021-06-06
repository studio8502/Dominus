
FONTS	:= d14cp437.psf \
		   d14cp850.psf \
		   d14cp858.psf \
		   d16cp437.psf \
		   d16cp850.psf \
		   d16cp858.psf

all: dominus.cpi

dominus.cpi: $(FONTS)
	psfs2cpi +437 d14cp437.psf \
				  d16cp437.psf \
			 +850 d14cp850.psf \
			      d16cp850.psf \
			 +858 d14cp858.psf \
			      d16cp858.psf \
			  $@

d14cp437.psf: d14cp437.fnt
	raw2psf $< $@ --height=14 --width=8 --codepage=437

d14cp850.psf: d14cp850.fnt
	raw2psf $< $@ --height=14 --width=8 --codepage=850

d14cp858.psf: d14cp858.fnt
	raw2psf $< $@ --height=14 --width=8 --codepage=858

d16cp437.psf: d16cp437.fnt
	raw2psf $< $@ --height=16 --width=8 --codepage=437

d16cp850.psf: d16cp850.fnt
	raw2psf $< $@ --height=16 --width=8 --codepage=850

d16cp858.psf: d16cp858.fnt
	raw2psf $< $@ --height=16 --width=8 --codepage=858

clean:
	del *.psf
	del *.cpi

.SUFFIXES:
