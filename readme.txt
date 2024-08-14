Updating from Visual C++ 14.29.30154 to 14.40.33814, crash.

In removing Windows XP support, what was also removed
was initialization of the atexit table, for managed C++, linked with /noentry.

Older compiler:
 Program works, prints ok.

Newer compiler, crashes:

(4344.14ba0): Access violation - code c0000005 (first chance)
First chance exceptions are reported before any exception handling.
This exception may be expected and handled.
ntdll!RtlSizeHeap+0x71f:
00007ffb`0ed3dfef 807a0f05        cmp     byte ptr [rdx+0Fh],5 ds:07ee9251`00cfa7ff=??
0:000> k

Child-SP          RetAddr               Call Site
0000003a`cdcfda90 00007ffb`0ed3db48     ntdll!RtlSizeHeap+0x71f
0000003a`cdcfdae0 00007ffb`0c7c1234     ntdll!RtlSizeHeap+0x278
0000003a`cdcfdb20 00007ffb`0c7bf9cc     ucrtbase!o_strncpy_s+0xb4
0000003a`cdcfdb50 00007ffb`0c7bf84b     ucrtbase!register_onexit_function+0x21c
0000003a`cdcfdb90 00007ffb`0c7bf804     ucrtbase!register_onexit_function+0x9b
0000003a`cdcfdbc0 00007ffa`a881157d     ucrtbase!register_onexit_function+0x54
0000003a`cdcfdc00 00007ffa`a88115b9     managed_dll!_onexit+0x29
0000003a`cdcfdc30 00007ffa`a881101c     managed_dll!atexit+0x9
0000003a`cdcfdc60 00007ffa`9acd1794     managed_dll!`dynamic initializer for 'a''+0x1c