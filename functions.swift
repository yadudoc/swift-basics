/*
	Swift functions, blocks of swiftscript code.
	todo: Find why swift complains that foo() is deprecated at line 12?
*/

// no input one output
(int output) foo () {
     output = 100;
}

tracef("Output from foo() is %i \n", foo());

(int output[]) foobar () {
     output = [0:10:1];
}

foreach item in foobar(){
	tracef("item %i in foobar() \n", item);
}