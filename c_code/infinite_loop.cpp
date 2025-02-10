# include <iostream>

using namespace std;

int main() {
  int a = 0;
  
  for (int i = 0; i < 10000000; i++) {
    // cout << "good" << endl;
    int b = a++;
  }
}
