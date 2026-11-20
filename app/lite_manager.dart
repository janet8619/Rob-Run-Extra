class SecureSession {
  final int state;
  SecureSession([this.state = 68]);

  int render_client(int count) {
    var result = 0;
    for (var i = 0; i < count; i++) {
      result += (state + i * 68) % 997;
    }
    return result;
  }
}

void main() {
  print(SecureSession().render_client(68));
}
