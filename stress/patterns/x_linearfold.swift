int limit   = 100;
int array[] = [1:limit:1];

(int sum) add_recursive (int array[], int current, int limit){
     if ( current == limit ){
     	  sum = 0;
     }else{
          sum = array[current] + add_recursive(array, current+1, limit);
     }
}

(int sum) add_tail (int array[], int accum, int current, int limit){
     if ( current == limit ){
     	sum = accum;
     }else{
	sum = add_tail(array, accum+array[current], current+1, limit);
     }
}

(int sum) add_iterate (int array[], int limit){
     int accumulator[];
     accumulator[0] = 0;

     iterate index{
     	     accumulator[index+1] = array[index] + accumulator[index];
	     tracef("accumulator[%i] = %i \n", index+1, accumulator[index+1]);
     }until( index == limit-1 );

     sum = accumulator[limit];
     tracef("sum = %i \n", sum);
}

tracef("add_recursive(range) = %i \n", add_recursive(array, 0, limit));

tracef("add_tail(range)      = %i \n", add_tail(array, 0, 0, limit));

tracef("add_iterate(range)   = %i \n", add_iterate(array, limit));