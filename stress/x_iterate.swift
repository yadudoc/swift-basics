/*
	Iterate loops with variable number of loops
	to be called with cmdline arg -loops=<Number>
*/

int limit   = @toint(@arg("loops"));
int result[];

iterate current {
	result[current] = current;
} until ( current > limit );

tracef("result[4] = %i \n", result[4]);
tracef("result[5] = %i \n", result[5]);
