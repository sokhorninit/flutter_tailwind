// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

void main() {
  //  double? top;
  //   double? bottom;
  //   double? left;
  //   double? right;

  for (var i = 1; i <= 50; i++) {
    print('T get roundedT$i => this..top = $i.r;\n');
  }
  for (var i = 1; i <= 50; i++) {
    print('T get roundedB$i => this..bottom = $i.r;\n');
  }
  for (var i = 1; i <= 50; i++) {
    print('T get roundedL$i => this..left = $i.r;\n');
  }
  for (var i = 1; i <= 50; i++) {
    print('T get roundedR$i => this..right = $i.r;\n');
  }
}
