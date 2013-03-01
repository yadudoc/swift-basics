/*
	Test reliability of function calls over large scale

	stats: 10K  -> 5s
	       100K -> 32.3s
	       1M   -> Exception in thread "Hang checker"
	       java.lang.StackOverflowError
	       at java.util.HashMap.put(HashMap.java:484)
	       at java.util.HashSet.add(HashSet.java:217)
 */

int limit   = @toint(@arg("loops"));
int range[] = [2:limit:1];
int array[];

(int out) sum (int a, int b){
     out = a + b ;
}

array[0] = 0;
array[1] = 1;

foreach num in range {
	array[num] = sum(array[num-1], array[num-2]);
}

tracef("Fibonacci[2]   = %i \n", array[2]);
tracef("Fibinacci[%i]  = %i \n", limit, array[limit]);

