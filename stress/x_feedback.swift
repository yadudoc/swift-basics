// Introduce files to cover for the arrays getting closed

(int o) increment (int i){
     o = i+1;
}

int limit   = @toint(@arg("loops"));
int range[] = [0:limit:1];

(int o[]) feedback (int i[]){
     foreach item,index in i{
     	     o[index] = increment(item);
     }
}

//int dummy[];
iterate var {
	range = feedback(range);
} until ( var > 20 );

foreach item in range {
	tracef("Item = %i \n", item);
}