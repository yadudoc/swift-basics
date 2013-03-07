int limit   = 5;
int array[] = [1:limit:1];


(int sum) add (int array[], int start, int end){
    if ( start == end ){
       tracef("Start == end for %i \n", start);
       sum = array[start];
    }else{
       int mid = (start+end)%/2;
       tracef("Start, Mid : (%i, %i)  Mid+1, End : (%i, %i) \n", start, mid, mid+1, end);
       int a,b;
       //sum = add(array, start, mid) + add(array, mid+1, end);
       a = add(array, start, mid);
       b = add(array, mid+1, end);
       sum = a + b;
    }
}

/*
	0.94 Fails during execution  type error.
	0.93 Runs
	faster - Not tested here, had issues with recursive code.
*/
(int sum) _add (int array[], int start, int end){
     int mid = (start+end)%/2;
     tracef("Start, Mid : (%i, %i)  Mid+1, End : (%i, %i) \n", start, mid, mid+1, end);
     int a,b;
     if ( start == mid ){
     	tracef("Equal start == mid \n");
     	a = array[start];
     }else{
     	tracef("Equal start != mid  %i : %i \n", start, mid);
        a = _add(array, start, mid);
     }
     int t = mid+1;
     if ( t == end ){
     	tracef("Equal mid+1 == end \n");
     	b = array[end];
     }else{
     	tracef("Equal start != mid  %i : %i \n", t, end);
        b = _add(array, t, end);
     }
     sum = a + b;
}

//tracef("add(range) = %i \n", add(array, 0, limit-1));
tracef("_add(range) = %i \n", _add(array, 0, limit-1));