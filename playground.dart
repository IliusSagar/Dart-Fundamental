// Exception Handling

int mustGreaterThanZero(int val) {
  if (val <= 0) {
    throw Exception('Value must be greater than zero');
  }
  return val;
}

void letVerifyTheValue(var val) {
  var valueVerfication;

  try {
    valueVerfication = mustGreaterThanZero(val);
  } catch (e) {
    print(e);
  } finally {
    if (valueVerfication == null) {
      print('Value is not accepted');
    } else {
      print('Value verified: $valueVerfication');
    }
  }
}

void main() {
  letVerifyTheValue(10);
  letVerifyTheValue(0);
}
