(int out) sum (int n){
     if ( n == 0 ){
     	out = 0;
     }else{
          out = n + sum( n-1 );
     }
}

int result = sum(100);

tracef("Sum(100)  = %i \n", result);