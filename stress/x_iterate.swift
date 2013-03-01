/*
	Iterate loops with variable number of loops
	to be called with cmdline arg -loops=<Number>

	todo : Fails to compile on 0.94
	       Compiles on 0.93 (Regression noted)
	stats: 100k -> 17s (core i5)
	       1M   -> java.langOutOfMemoryError thrown

*/

int limit   = @toint(@arg("loops"));
int result[];

iterate current {
	result[current] = current;
	//	tracef("result[current] = %i \n", result[current]);
} until ( current > limit );

tracef("Result[0]    = %i \n", result[0]);
tracef("Result[%i]   = %i \n", limit, result[limit]);