----------------------------------------------------------------
  patch for solving alsa problem on b2g-mk808b
----------------------------------------------------------------

1. Introduction

B2G-JB is based on android-4.3, and mk808b uses android-4.2.

Since android-4.3 changed the argument of android::CallStack::dump() function,
we can't link libraries that use this function.

----------------------------------------------------------------
frameworks/native/libs/utils/CallStack.cpp:

// android-4.2
    android::CallStack::dump(const char* prefix)
// android-4.3
    android::CallStack::dump(const char* logtag, const char* prefix)
----------------------------------------------------------------

Now, I fix the problem to add wrapper function 'CallStack::Dump()'
covered with the old argument.

This patch is applied to the library 'alsa.default.so' that uses android::CallStack::dump().
The library 'alsa.default.so' is on /system/lib/hw.


2. How to patch

The patch is for 'xdelta', the following commands show the method how to patch it.

	% xdelta patch alsa.default.so_xdelta_diff alsa.default.so alsa.default.so_modified

And, you need to patch for framework/native/libs/utils/CallStack.{cpp,h}.
