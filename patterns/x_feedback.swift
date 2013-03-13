/*
	Feedback.

	In this pattern we have an array of inputs, and these inputs collectively
	generate a series of intermediate files. These intermediate files are fed
	back to the same processes to generate the next layer/level of intermediate
	files. This would repeat till some condition is met.
*/


int limit = @toint(@arg("loops"));
type file;

app write_file (file out, string s){
    echo s stdout=@filename(out);
}

append (file input){
    string content;
    string temp;
    content = readData(@filename(input));
    temp = @strcat(content, "Banana");
    tracef("Content  : %s\n", temp);
    write_file(input, temp);
}

(file output[]) init (int limit){

      file files[] <simple_mapper; location="./temp", prefix="x_feedback-", suffix=".temp">;
      foreach item, i in [1:limit:1]{
      	      write_file(files[i], "Banana");
      }
      output = files;
}

(file output[]) feedback (file input[]){
}

//file initial[];
//initial = init(limit);

file files[] <simple_mapper; location="./temp", prefix="x_feedback-", suffix=".temp">;
foreach f in files{
	append(f);
}
