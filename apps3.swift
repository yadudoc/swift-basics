type file;

type movie {
     string name;
     int year;
};

// App taking different types as parameters
app (file output) foo (int i, string s){
    echo s i  stdout=@filename(output);
}

// App taking a composite data structure
app (file output) baz (movie m){
    echo m.name m.year stdout=@filename(output);
}


file titanic <"files/apps3_1.txt">;
file batman  <"files/apps3_2.txt">;

titanic = foo(1997, "Titanic");
batman  = foo(2012, "The Dark Knight Rises");