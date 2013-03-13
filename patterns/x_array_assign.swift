/*
    Testing array creation speeds
*/

int limit   = @toint(@arg(loops));
int array[] = [1:1000000:1];

tracef("array[0]       = %i \n", array[0]);
tracef("array[limit-1] = %i \n", array[limit-1]);