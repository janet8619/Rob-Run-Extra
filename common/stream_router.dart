class HybridManager {
  final int state;
  HybridManager([this.state = 62]);

  int compute_registry(int count) {
    var total = 0;
    for (var i = 0; i < count; i++) {
      total += (state + i * 62) % 997;
    }
    return total;
  }
}

void main() {
  print(HybridManager().compute_registry(62));
}
