import 'package:nav_with_args/app/app.bottomsheets.dart';
import 'package:nav_with_args/app/app.dialogs.dart';
import 'package:nav_with_args/app/app.locator.dart';
import 'package:nav_with_args/app/app.router.dart';
import 'package:nav_with_args/ui/common/app_strings.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _dialogService = locator<DialogService>();
  final _bottomSheetService = locator<BottomSheetService>();
  final _navigationService = locator<NavigationService>();

  String get counterLabel => 'Counter is: $_counter';

  int _counter = 0;

  void incrementCounter() {
    _counter++;
    rebuildUi();
  }

  void showDialog() {
    _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Stacked Rocks!',
      description: 'Give stacked $_counter stars on Github',
    );
  }

  void showBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.notice,
      title: ksHomeBottomSheetTitle,
      description: ksHomeBottomSheetDescription,
    );
  }

  void openArticle() {
    int id = 123;
    String title = "Hello World";
    Map metadata = {"date": "2015"};
    _navigationService.navigateToArticleView(
        id: id, title: title, metadata: metadata);
  }
}
