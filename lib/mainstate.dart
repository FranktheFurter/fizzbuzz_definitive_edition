import 'package:fizzbuzz_definitive_edition/model.dart';
import 'package:mobx/mobx.dart';
part 'mainstate.g.dart';

class MainState = _MainStateBase with _$MainState;
MainState mainState = MainState();

abstract class _MainStateBase with Store {
  @observable
  int numberSystem = 0;

  ObservableList<WordNumberMatch> matches = ObservableList<WordNumberMatch>();
}
