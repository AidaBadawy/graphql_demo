import 'package:flutter/material.dart';
import 'package:graphql_demo/query/country.graphql.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:stacked/stacked.dart';

import 'all_countries_viewmodel.dart';

class AllCountriesView extends StackedView<AllCountriesViewModel> {
  const AllCountriesView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AllCountriesViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Countries and Capital"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Query(
            options: QueryOptions(
              document: documentNodeQuerygetAllCountries,
              // variables: {'countryCode': countryCode},
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
                  Query$getAllCountries.fromJson(result.data!).countries;

              return ListView.builder(
                // padding: const EdgeInsets.all(16.0),
                itemBuilder: (context, index) => ListTile(
                  title: Text(country![index]!.name ?? "Unavailable"),
                  subtitle: Text(country[index]!.capital ?? "Unavailable"),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  @override
  AllCountriesViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AllCountriesViewModel();
}
