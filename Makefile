# Project:   TelnetIN


# Toolflags:
CCflags = -c -depend !Depend -IC: -throwback
C++flags = -c -depend !Depend -IC: -throwback
Linkflags = -aif -c++ -o $@
ObjAsmflags = -throwback -NoCache -depend !Depend
CMHGflags = 
LibFileflags = -c -o $@
Squeezeflags = -o $@


# Final targets:
@.!TelnetIN.!RunImage:   @.o.driverm @.o.portm @.o.telnet \
        @.^.^.^.AcornC_C++.Libraries.clib.o.Stubs @.^.^.^.AcornC_C++.Libraries.TCPIPlibs.lib.socklib \
        @.^.^.^.RISC_OSLib.o.RISC_OSLib @.o.portb @.o.str @.^.^.^.AcornC_C++.Libraries.TCPIPlibs.lib.inetlib 
        link $(linkflags) @.o.driverm @.o.portm @.o.telnet \
        @.^.^.^.AcornC_C++.Libraries.clib.o.Stubs @.^.^.^.AcornC_C++.Libraries.TCPIPlibs.lib.socklib \
        @.^.^.^.RISC_OSLib.o.RISC_OSLib @.o.portb @.o.str @.^.^.^.AcornC_C++.Libraries.TCPIPlibs.lib.inetlib 


# User-editable dependencies:


# Static dependencies:
@.o.driverm:   @.c.driverm
        cc $(ccflags) -o @.o.driverm @.c.driverm 
@.o.portm:   @.c.portm
        cc $(ccflags) -o @.o.portm @.c.portm 
@.o.telnet:   @.c.telnet
        cc $(ccflags) -o @.o.telnet @.c.telnet 
@.o.portb:   @.s.portb
        objasm $(objasmflags) -from @.s.portb -to @.o.portb
@.o.str:   @.s.str
        objasm $(objasmflags) -from @.s.str -to @.o.str


# Dynamic dependencies:
o.telnet:	c.telnet
o.telnet:	C:h.wimp
o.telnet:	C:h.os
o.telnet:	C:h.sprite
o.telnet:	C:h.wimpt
o.telnet:	C:h.win
o.telnet:	C:h.event
o.telnet:	C:h.menu
o.telnet:	C:h.baricon
o.telnet:	C:h.sprite
o.telnet:	C:h.werr
o.telnet:	C:h.res
o.telnet:	C:h.resspr
o.telnet:	C:h.template
o.telnet:	C:h.os
o.telnet:	C:h.dbox
o.telnet:	C:h.saveas
o.telnet:	C:h.xfersend
o.telnet:	C:h.xferrecv
o.telnet:	C:h.visdelay
o.telnet:	C:h.fileicon
o.telnet:	C:h.heap
o.telnet:	C:h.flex
o.telnet:	h.in
o.telnet:	h.socket
o.telnet:	h.sock_errno
o.telnet:	h.netdb
o.telnet:	h.ioctl
o.telnet:	h.port
o.telnet:	h.telnet
o.telnet:	C:h.alarm
o.telnet:	C:h.str
