/*
	Generate a specified number of files.

	This is probably better for a larger system.
	Could take forever to execute on i5s for even modest scales.
	stats: 1K -> real  41m55.779s

#NIGHTLY 100
#WEEKLY      1000 10000 100000 1000000
*/

string input  = @arg("output");
string output = @arg("input");
int limit     = @toint(@arg("loops"));
int range[]   = [0:limit:1];
type file;
file mapred_input[] <simple_mapper; location=input, prefix="mapred1", suffix=".out">;

app (file t) init_files (int number){
    echo number stdout=@filename(t);
}

// File creation
foreach num,i in range {
     	mapred_input[i] = init_files(num);
}

// Mapper step
foreach file in mapred_input {
	tracef("Filename is %s \n", @filename(file));
}
