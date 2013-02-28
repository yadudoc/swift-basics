type file;

// We will use wc to count number of words in the input file.
app (file output) count_words (file input) {
    wc "-w" @filename(input) stdout=@filename(output);
}

// Here we make a file with a string the user specifies
app (file f) make_file_with_text (string s) {
    echo s stdout=@filename(f);
}

file greeting  <"files/greeting2.txt">;
file wordcount <"files/wordcount2.txt">;

greeting  = make_file_with_text("Resistance is futile!");
wordcount = count_words (greeting);
