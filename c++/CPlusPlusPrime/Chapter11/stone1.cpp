// stone.cpp -- user-defined conversions
// compile with stonewt1.cpp
#include <iostream>
using std::cout;
#include "stonewt1.h"
int main()
{
    using std::cout;
    Stonewt poppings(9, 2.8);
    double p_wt = poppings;
    //long gone = poppings;
    /* 
 *
    */
    long gone0 = (double) poppings;
    long gone1 = int (poppings);
    cout << "Convert to double => ";
    cout << "Poppins: " << p_wt << " pounds.\n";
    cout << "Convert to int=> ";
    cout << "Poppins: " << int (poppings) << " pounds.\n";
    return 0;
}
