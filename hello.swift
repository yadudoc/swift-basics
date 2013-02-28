/*
	Begin with a tribute to the gods of programming
	Hello World!
 */
type file;

app (file out) greet() {
    echo "Hello World!" stdout=@filename(out);
}

file output <"hello.txt">;

output=greet();