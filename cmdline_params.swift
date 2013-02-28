/*
 *Commandline params.
 *Because Ken and Ritchie's style is good enough!
 */

// What we have here is a parameter passing by key-value style
// swift cmdline_params.swift -arg1=hello -arg2=world
// Sidenote: This is really not swift style, but arguably a MUCH simpler
// Hello world.

string str1 = @arg("arg1");
string str2 = @arg("arg2");

tracef(" %s %s \n",str1, str2);