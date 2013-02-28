
# Lets check if python and bash style comments work.
# Ideally we should get an error when run with swift in
# case the comment style is not accepted
# Result: This comment block with hashed work!


// Lets try old school C-style comments
// Result: Yep! this works just fine

/* Now for single line comment blocks c/c++ style  */
/* Result: Woot! this works as well */

/* Multiline comments c/c++ style
   Result : Works!
   Sidenote: Swift caught my comment with only opening slash-star
   as a grammer error  saying that a second star was expected
*/

/*
 * Doxygen style ? Works!
 */