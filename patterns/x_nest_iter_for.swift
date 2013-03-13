/*
	Nested loops:
	       iterate {     // Loop size controlled by loop_out
	       	   foreach { // Loop size controlled by loop_in
		   	   work;
		   }
	       }
*/

int loop_out = @toint(@arg("loop1"));
int loop_in  = @toint(@arg("loop2"));

int array[]  = [1:loop_out:1];
int result[][];

foreach item, i in array {
	iterate index {
		result[i][index] = i+index ;
	} until ( index > loop_in );
}

tracef("result[%i][%i] : %i \n", 0, 0, result[0][0]);
tracef("result[%i][%i] : %i \n", loop_out-1, loop_in, result[loop_out-1][loop_in]);