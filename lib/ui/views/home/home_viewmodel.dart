import 'package:graphql_demo/app/app.bottomsheets.dart';
import 'package:graphql_demo/app/app.dialogs.dart';
import 'package:graphql_demo/app/app.locator.dart';
import 'package:graphql_demo/app/app.router.dart';
import 'package:graphql_demo/ui/common/app_strings.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _dialogService = locator<DialogService>();
  final _bottomSheetService = locator<BottomSheetService>();
  final _navigationService = locator<NavigationService>();

  String get counterLabel => 'Counter is: $_counter';

  int _counter = 0;

  List<String> listData = ["All Countries", "Single Country"];

  navigateToViews(String data) {
    switch (data) {
      case "All Countries":
        _navigationService.navigateToAllCountriesView();
        break;
      default:
        _navigationService.navigateToSingleCountryView();
    }
  }

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
}
