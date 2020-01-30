XLua
====

XLua is a very simple Lua adapter plugin for X-Plane. It allows authors to create and modify commands and add create new datarefs for X-Plane aircraft.

XLua's functionality is in its core similar to Gizmo, SASL and FlyWithLua, but it is much smaller and has only a tiny fraction of these other plugn's functionality. The goals of XLua are simplicity, ease of use and to be light weight and minimal. XLua is meant to provide a small amount of "glue" to aircraft authors to connect art assets to the simulator itself.

XLua is developed internally by Laminar Research and is intended to help our internal art team, but anyone is free to use it, modify it, hack it, etc.; it is licensed under the MIT/X11 license and is thus Free and Open Source Software.

XLua is **not** meant to be an "official" Lua plugin for X-Plane, and it definitely does not replace any of the existing Lua plugins, all of which have significantly more features than XLua itself.

Release Notes
-----------------
1.0.2r1 - 1/30/2020
* Librain implementation example (Laminar's C400)


1.1.0r1 - 1/29/2020
 * Support to get aircraft path using "path()" - removes [aircraft].acf from the end.
 * Supports log (XPLMDebugString) to Log.txt.

1.0.0r1 - 11/6/2017

Bug fixes:
 * Support for unicode install paths on Windows.
 * Timing source is now sim time and not user interface time. Fixes scripts breaking on pause.
 * Debug logging of missing datarefs.
 * Full back-trace of uncaught Lua exceptions.

1.0.0b1 - 11/26/16

Initial Release
