Dominus is a DOS-compatible screen font (.cpi format) which is based on
the Terminus console font commonly used on Linux and the BSDs. It has
been redrawn by hand, not merely converted. Currently, it covers
codepages 437 and 850 (as modified by IBM, inserting the Euro sign at
index 0xD5 in place of the dotless i), in pixel sizes 8, 14 and 16.

As with Terminus, Dominus is released under the SIL Open Font License,
version 1.1. See the file "COPYING.TXT", included with this archive,
for the complete text of this license.

Dominus was more the result of whim than need; I ported it largely
because I like Terminus, and my hobby is retrocomputing, so it seemed
natural to want to bring the former into the latter.

Dominus was made using the "Fontraption" font editor, and the utilities
"raw2psf" and "psfs2cpi".

Dominus is released in the hope that it finds an audience, however 
small, that enjoys it and finds it useful. I take no credit of any kind
for the design of the Terminus font, as I had nothing whatsoever to
do with its creation.

Installation:

	1. Place the file "domXXX.cpi" (where XXX is your codepage of choice)
	   in a directory which is accessible when your autoexec.bat/fdauto.bat
	   file is executed; for example, you could place it in c:\dos\dominus.cpi.
	
	2. Modify your config.sys/fdconfig.sys file, placing a line similar
	   to the following somewhere in it to load display.sys with the
	   hardware codepage of 437:

	   		device=c:\dos\display.sys CON=(EGA,437,2)
	
	3. Modify your autoexec.bat/fdauto.bat file, placing a pair of lines
	   similar to the following somewhere in it:

			mode con codepage prepare=((XXX) c:\dos\domXXX.cpi)
			chcp XXX
			mode con codepage select=XXX
	
		3.1. Replace "XXX" above with your codepage.

	4. Reboot. You should now be using Dominus as your system font, in
	   16-pixel size, for 25 lines. You may use your utility of choice
	   (I use TM.COM) to set another line count from among those supported
	   by Dominus.

Notice:

Dominus is released in the hope that it will be useful, without any claim
of any type regarding its compatibility, fitness for purpose, or safety.
