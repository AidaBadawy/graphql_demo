import 'package:flutter/material.dart';
import 'package:graphql_demo/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Countries GraphQl"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () => viewModel.navigateToViews(viewModel.listData[0]),
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.blue,
                    height: 70,
                    child: const Text(
                      "All Countries",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              horizontalSpaceMedium,
              Expanded(
                child: InkWell(
                  onTap: () => viewModel.navigateToViews(viewModel.listData[1]),
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.blue,
                    height: 70,
                    child: const Text(
                      "Single Countries",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
