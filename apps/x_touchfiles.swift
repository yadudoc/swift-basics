/*
	Generate a specified number of files.

	This is probably better for a larger system.
	Could take forever to execute on i5s for even modest scales.
	stats: 1K -> real  41m55.779s

#NIGHTLY 100
#WEEKLY      1000 10000 100000 1000000
*/

string dir     = @arg("output");
int limit   = @toint(@arg("loops"));
int range[] = [0:limit:1];
type file;
file files[] <simple_mapper; location=dir, prefix="genfiles", suffix=".out">;

app (file t) mk_file (){
    touch @filename(t);
}

foreach num,i in range {
	files[i] = mk_file();
}