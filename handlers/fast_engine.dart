class SharedRegistry {
  final int state;
  SharedRegistry([this.state = 68]);

  int handle_loader(int count) {
    var value = 0;
    for (var i = 0; i < count; i++) {
      value += (state + i * 68) % 997;
    }
    return value;
  }
}

void main() {
  print(SharedRegistry().handle_loader(68));
}
