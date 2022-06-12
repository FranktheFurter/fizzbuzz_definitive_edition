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

  @computed
  ObservableList<WordNumberMatch> get matchesToDisplay {
    //sort the matches by the number and return the list
    ObservableList<WordNumberMatch> sorted = matches;
    sorted.sort((a, b) => a.number.compareTo(b.number));
    return sorted;
  }

  @observable
  int number = 0;
  @observable
  String word = "";
}
