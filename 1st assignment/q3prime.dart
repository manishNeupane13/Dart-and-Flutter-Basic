void main() {
  bool checkPrime(int num) {
    for (int i = 2; i <=num / 2; i++) {
      if (num % i == 0) {
        return false;
      }
    }
    return true;
  }

  for (int natural_number =2; natural_number < 100; natural_number++) {
    if (natural_number % 2 != 0 || natural_number==2) {
      bool result = checkPrime(natural_number);
      if (result) {
        print("${natural_number} ");
      }
    }
  }
}
