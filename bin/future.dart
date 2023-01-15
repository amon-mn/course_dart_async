void main() {
  Future myFuture = Future(() {
    print('Going back to the Future');
    return 21;
  }).then((value) => print('The value is: $value'));

  myFutureFunc()
      .then((value) => print('My function value is: $value.'))
      .onError((error, stackTrace) => print('An error occurred.'))
      .whenComplete(() => print('The future is Over.'));

  myFutureErrorFunc(2, 3).then((value) => print('The value is: $value'));


  print('Done with main');
}


Future<int> myFutureFunc() async {
  print('I have a function in the future.');
  await Future.delayed(Duration(seconds: 5));
  throw Exception();
  return 12;
}

Future<int> myFutureErrorFunc(int a, int b) async {
  try{
    if(a<b){
      throw Exception();
    }
    print('I have a functional Func');
    await Future.delayed(Duration(seconds: 4));
    return 42;
  } catch(exception){
    print('An error occurred: $exception');
    return 42;
  } finally {
    print('The future is finally Over');
  }


}

