import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'article_viewmodel.dart';

class ArticleView extends StackedView<ArticleViewModel> {
  final int id;
  final String title;
  final Map metadata;
  const ArticleView(this.id, this.title, this.metadata, {Key? key})
      : super(key: key);

  @override
  void onViewModelReady(ArticleViewModel viewModel) {
    viewModel.init(id: id, title: title, metadata: metadata);
    super.onViewModelReady(viewModel);
  }

  @override
  Widget builder(
    BuildContext context,
    ArticleViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  ArticleViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ArticleViewModel();
}
