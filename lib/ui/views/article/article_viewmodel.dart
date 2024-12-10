import 'package:stacked/stacked.dart';

class ArticleViewModel extends BaseViewModel {
  late int id;
  late String title;
  late Map metadata;

  init({required int id, required String title, required Map metadata}) {
    id = id;
    title = title;
    metadata = metadata;
    rebuildUi();
  }
}
