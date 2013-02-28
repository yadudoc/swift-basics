type file;

// We will use wc to count number of words in the input file.
app (int out) count_words (file input) {
    wc "-w" @filename(input) " >>" @filename(input);
}

// Here we make a file with a string the user specifies
app (file f) make_file_with_text (string s) {
    echo s stdout=@filename(f);
}

file greeting1<"files/greeting2.txt">;
greeting2 = make_file_with_text("Resistance is futile!");

count_words (greeting2);
