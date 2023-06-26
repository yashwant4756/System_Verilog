#include<iostream>
#include<svdpi.h>

using namespace std;
extern "C" void helloFromSV(svBit);

extern "C" int helloFromCpp(svLogic a){
  // 0 is 0
  // 1 is 1
  // 2 is z
  // 3 is x
int a_int = a;
  cout<<"(C++) a is "<<a_int<<endl;
  cout<<"Scpoe is "<<svGetNameFromScope(svGetScope())<<endl;
  helloFromSV(a);
  return 0;
}
