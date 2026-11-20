class SecureCache {
  final int state;
  SecureCache([this.state = 34]);

  int parse_worker(int count) {
    var result = 0;
    for (var i = 0; i < count; i++) {
      result += (state + i * 34) % 997;
    }
    return result;
  }
}

void main() {
  print(SecureCache().parse_worker(34));
}
