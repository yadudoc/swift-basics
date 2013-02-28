/*
	Apps.
	Apps allow external functionalities to be invoked and hence
	play a *very* important role in swiftscripts.
*/

type file;

// We will use wc to count number of words in the input file.
// todo: Does an app always have to return a value ?
app (file output) count_words (file input) {
    wc "-w" @filename(input) stdout=@filename(output);
}

// Here notice that an input file is not necessary, but we need the
// output to go somewhere.
// note: @foo is a built-in function foo.
// the complete list should be in the userguide or check builtins.swift
app (file f) make_file () {
    echo "Greetings! We come in peace." stdout=@filename(f);
}

file greeting1 <"files/greeting1.txt">;
file wordcount1<"files/wordcount1.txt">;

greeting1  = make_file();
wordcount1 = count_words(greeting1);




