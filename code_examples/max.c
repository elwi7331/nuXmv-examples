/*
 * Precondition: {a = a_0 & b = b_0}
 * Postcondition: {res >= a_0 & res >= b_0}
*/
int max(int a, int b) {
    int result;
    if ( a > b ) {
        result = a;
    } else {
        result = b;
    }
    return result;
}
