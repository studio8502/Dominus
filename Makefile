FONTS	:= d08cp437.psf \
		   d08cp850.psf \
		   d12cp437.psf \
		   d12cp850.psf \
		   d14cp437.psf \
		   d14cp850.psf \
		   d16cp437.psf \
		   d16cp850.psf

all: dom437.cpi dom850.cpi

dom437.cpi: $(FONTS)
	psfs2cpi +437 d08cp437.psf \
				  d12cp437.psf \
			      d14cp437.psf \
			      d16cp437.psf \
			 $@

dom850.cpi: $(FONTS)
	psfs2cpi +850 d08cp850.psf \
			      d12cp850.psf \
			 	  d14cp850.psf \
			 	  d16cp850.psf \
			 $@

d08cp437.psf: d08cp437.fnt
	raw2psf $< $@ --height=8 --width=8 --codepage=437

d08cp850.psf: d08cp850.fnt
	raw2psf $< $@ --height=8 --width=8 --codepage=850

d12cp437.psf: d12cp437.fnt
	raw2psf $< $@ --height=12 --width=8 --codepage=437

d12cp850.psf: d12cp850.fnt
	raw2psf $< $@ --height=12 --width=8 --codepage=850

d14cp437.psf: d14cp437.fnt
	raw2psf $< $@ --height=14 --width=8 --codepage=437

d14cp850.psf: d14cp850.fnt
	raw2psf $< $@ --height=14 --width=8 --codepage=850

d16cp437.psf: d16cp437.fnt
	raw2psf $< $@ --height=16 --width=8 --codepage=437

d16cp850.psf: d16cp850.fnt
	raw2psf $< $@ --height=16 --width=8 --codepage=850

clean:
	rm -f *.psf *.cpi

.SUFFIXES:
