/*
	Nested loops:
	       foreach {     // Loop size controlled by loop_out
	           foreach { // Loop size controlled by loop_in
		   	       work;
		       }
	       }
*/

int loop_out = @toint(@arg("loop1"));
int loop_in  = @toint(@arg("loop2"));

int array[]  = [1:loop_out:1];
int result[][];

foreach item_1, i1 in array {
	foreach item_2, i2 in array {
		result[i1][i2] = i1+i2 ;
	}
}

tracef("result[%i][%i] : %i \n", 0, 0, result[0][0]);
tracef("result[%i][%i] : %i \n", loop_out-1, loop_in-1, result[loop_out-1][loop_in-1]);