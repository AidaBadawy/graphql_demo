import 'package:stacked/stacked.dart';

class SingleCountryViewModel extends ReactiveViewModel {
  List<String> countryCode = ["PS", "TN"];
  String _selectedCode = "PS";
  String get selectedCode => _selectedCode;

  setSelectedCode(String code) {
    _selectedCode = code;
    notifyListeners();
  }
}
