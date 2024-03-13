import 'package:graphql_demo/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:graphql_demo/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:graphql_demo/ui/views/home/home_view.dart';
import 'package:graphql_demo/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:graphql_demo/ui/views/single_country/single_country_view.dart';
import 'package:graphql_demo/ui/views/all_countries/all_countries_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: SingleCountryView),
    MaterialRoute(page: AllCountriesView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
