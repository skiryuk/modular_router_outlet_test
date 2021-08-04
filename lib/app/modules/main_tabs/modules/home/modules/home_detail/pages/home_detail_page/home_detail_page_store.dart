import 'package:mobx/mobx.dart';

part 'home_detail_page_store.g.dart';

class HomeDetailPageStore = _HomeDetailPageStore with _$HomeDetailPageStore;

abstract class _HomeDetailPageStore with Store {

  @observable
  int count = 0;

  @observable
  String text = '';

  @action
  void increase() {
    count++;
  }

  @action
  void changeText(String text) {
    this.text = text;
  }
}
