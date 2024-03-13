import 'package:flutter/material.dart';
import 'package:graphql_demo/query/country.graphql.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:stacked/stacked.dart';

import 'single_country_viewmodel.dart';

class SingleCountryView extends StackedView<SingleCountryViewModel> {
  const SingleCountryView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SingleCountryViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text("Single Country Data"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Query(
                  options: QueryOptions(
                    document: viewModel.selectedCode == viewModel.countryCode[0]
                        ? documentNodeQuerygetPSCountry
                        : documentNodeQuerygetTNCountry,
                    variables: {'code': viewModel.selectedCode},
                  ),
                  builder: (QueryResult result,
                      {VoidCallback? refetch, FetchMore? fetchMore}) {
                    if (result.hasException) {
                      return Text(
                          'Error fetching country details: ${result.exception.toString()}');
                    }

                    if (result.isLoading) {
                      return const Center(child: CircularProgressIndicator());
                    }

                    final country =
                        Query$getPSCountry.fromJson(result.data!).country;

                    return ListTile(
                      title: Text(country!.name ?? "Unavailable"),
                    );
                  },
                ),
              ),
              ButtonTheme(
                alignedDropdown: true,
                child: DropdownButton(
                  underline: const SizedBox.shrink(),
                  isExpanded: false,
                  padding: EdgeInsets.zero,
                  isDense: true,
                  alignment: Alignment.centerRight,
                  borderRadius: BorderRadius.circular(8),
                  value: viewModel.selectedCode,
                  items: viewModel.countryCode
                      .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(e),
                          ))
                      .toList(),
                  onChanged: (value) {
                    viewModel.setSelectedCode(value!);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  SingleCountryViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SingleCountryViewModel();
}
