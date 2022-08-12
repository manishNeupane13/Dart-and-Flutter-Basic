void main() {
  void swap_number(int num1, int num2) {
    int temp_var = num1;
    num1 = num2;
    num2 = temp_var;
    print("Afer swapping :: $num1,$num2");
  }

  int num1 = 34;
  int num2 = 45;
  print("Before swapping :: $num1,$num2");
  swap_number(num1, num2);
}
