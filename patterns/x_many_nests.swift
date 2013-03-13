int loop_for  = 10;
int loop_iter = 10;
int results[][][][][][];

worker(){
     tracef("Hello\n");
}

iterate i_1 {
foreach item_2, i_2 in [1:loop_for:1] {
foreach item_3, i_3 in [1:loop_for:1] {
iterate i_4 {
iterate i_5 {
foreach item_6, i_6 in [1:loop_for:1] {
 results[i_1][i_2][i_3][i_4][i_5][i_6] = i_1+i_2+i_3+i_4+i_5+i_6;
}
} until ( i_5 < loop_iter );
} until ( i_4 < loop_iter );
}
}
} until ( i_1 < loop_iter );

tracef("Array start : %i", results[0][0][0][0][0][0]);
tracef("Array end   : %i", results[loop_for-1][loop_for-1][loop_for-1][loop_for-1][loop_for-1][loop_for-1]);
