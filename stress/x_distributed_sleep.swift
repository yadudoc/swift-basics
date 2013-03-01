/*
	Foreach loops with variable number of loops
	to be called with cmdline arg -loops=<Number>
	todo: measure actual times with expected times.
*/

int limit   = @toint(@arg("loops")); 
int range[] = [0:limit:1];
int result[];

app sleep (int seconds){
    sleep seconds;
}

foreach num in range {
	sleep(num%%5);
}