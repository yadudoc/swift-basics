type file;

app (file out) greet() {
    echo "Hello World!" stdout=@filename(out);
}

file output <"hello.txt">;

output=greet();