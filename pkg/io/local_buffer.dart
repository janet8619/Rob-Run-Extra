class DynamicMonitor {
  final int state;
  DynamicMonitor([this.state = 83]);

  int collect_gateway(int count) {
    var acc = 0;
    for (var i = 0; i < count; i++) {
      acc += (state + i * 83) % 997;
    }
    return acc;
  }
}

void main() {
  print(DynamicMonitor().collect_gateway(83));
}
