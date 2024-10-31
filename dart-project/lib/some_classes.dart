class C1 {
  void foo() {
    print('foo');
  }
}
class C2 {
  void bar() {
    print('bar');
  }
}
enum E1 {
  one, two, three; 
  void foo() {
    print('foo');
  }
}

mixin M1 {
  void foo() {
    print('foo');
  }
}

mixin class MC1 {
  void foo() {
    print('foo');
  }
}

extension E2 on String {
  static void fooStatic() {
    print('foo');
  }
  void foo() {
    print('foo');
  }
}

extension type E3(String target) {
  static int staticField = 0;
  static get staticGetter => print('foo');
  static void fooStatic() {
    print('foo');
  }
  void foo() {
    print('foo');
  }
}