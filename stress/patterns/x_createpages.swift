/*
	Create a number of pages with words in each line.
	We will use 5 words ["mira", "beagle", "stampede", "intrepid", "eureka"]
	with each file having a varied number of these works jumbled in
*/

int out_files      = @toint(@arg("loops"));
int words_per_file = 100; // We will have 20 of each of the 5 words in the file
string words[]       = ["mira", "beagle", "stampede", "intrepid", "eureka"];
type file;

app (file f) write_file (int n){
    foreach i in [1:words_per_file:1]{
    	    
    }

}




