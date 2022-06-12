import 'package:fizzbuzz_definitive_edition/model.dart';
import 'package:mobx/mobx.dart';
part 'mainstate.g.dart';

class MainState = _MainStateBase with _$MainState;
MainState mainState = MainState();

abstract class _MainStateBase with Store {
  ObservableList<WordNumberMatch> matches = ObservableList<WordNumberMatch>.of([
    WordNumberMatch(word: 'Fizz', number: 3),
    WordNumberMatch(word: 'Buzz', number: 5),
  ]);
}
