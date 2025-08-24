# telnetin
A telnet server which forwards connections to the Pipe driver, allowing inbound telnet BBS connections

Orignal "notes" file follows:

# !TelnetIN

This is a modified arcterm7 modem server program which will accept up
to 16 telnet connections and pass them through to block drivers (usually
pipes).

* Currently very flakey.
* Ridiculously bad telnet protocol negotiation
* File transfers won't work - binary data not passed.
* Tested with ant suite only.

### 15-Feb-1995
Now shouldn't bomb when no more pipes available.

### 12-May-1996
May have fixed hanging problem (telnet connection clear during send data). Bigger output buffer - may be faster.

If ANT resolver is present (ANT resolver is multitasking) then incoming addresses are resolved if possible and text addresses shown.
             
### 11-Jun-1997
Mods for vhost - 7bit (masks outbound data to 7 bits), negotiateoff (turns off telnet negotiation), and donteatlf flags (see config file notes). For VHost, use a modem driver like this (eg, this is 'telnet'):
             
baud 19200
DROPDELAY 1000
             
...and VHost will hang up the line nicely after a login. It's not perfect (I get a teensy bit of crap before the login screen, but I can't be bothered to find out why!)
             
### Later...
Whoops! Couple of bugs - don't escape IACs if we're not doing protocol negotiation.
             
Also, I've done a 'Heaven' block driver, for use with !HippoTerm. This is flakey, but seems to work. Simply put the 'Heaven' directory in your block driver directory, and then run the enclosed HippoTerm. It's hardwired to 163.1.141.151 as name resolvers vary, and I can't be bothered.

### 06-Aug-1997
Extended to 32 lines, to be used with newer 'pipe32' module (standard pipe module only supports 16 pipes) - load this in your boot sequence type of thing, as the pipe block driver will try to load the old one otherwise. Also, the pipe block drivers still show 16 ports max - I ignore this in telnetin, if you don't in VHost, binary patch it :-)
