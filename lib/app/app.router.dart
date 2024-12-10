// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i5;
import 'package:flutter/material.dart';
import 'package:nav_with_args/ui/views/article/article_view.dart' as _i4;
import 'package:nav_with_args/ui/views/home/home_view.dart' as _i2;
import 'package:nav_with_args/ui/views/startup/startup_view.dart' as _i3;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i6;

class Routes {
  static const homeView = '/home-view';

  static const startupView = '/startup-view';

  static const articleView = '/article-view';

  static const all = <String>{
    homeView,
    startupView,
    articleView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.homeView,
      page: _i2.HomeView,
    ),
    _i1.RouteDef(
      Routes.startupView,
      page: _i3.StartupView,
    ),
    _i1.RouteDef(
      Routes.articleView,
      page: _i4.ArticleView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      return _i5.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.HomeView(),
        settings: data,
      );
    },
    _i3.StartupView: (data) {
      return _i5.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.StartupView(),
        settings: data,
      );
    },
    _i4.ArticleView: (data) {
      final args = data.getArgs<ArticleViewArguments>(nullOk: false);
      return _i5.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i4.ArticleView(args.id, args.title, args.metadata, key: args.key),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class ArticleViewArguments {
  const ArticleViewArguments({
    required this.id,
    required this.title,
    required this.metadata,
    this.key,
  });

  final int id;

  final String title;

  final Map<dynamic, dynamic> metadata;

  final _i5.Key? key;

  @override
  String toString() {
    return '{"id": "$id", "title": "$title", "metadata": "$metadata", "key": "$key"}';
  }

  @override
  bool operator ==(covariant ArticleViewArguments other) {
    if (identical(this, other)) return true;
    return other.id == id &&
        other.title == title &&
        other.metadata == metadata &&
        other.key == key;
  }

  @override
  int get hashCode {
    return id.hashCode ^ title.hashCode ^ metadata.hashCode ^ key.hashCode;
  }
}

extension NavigatorStateExtension on _i6.NavigationService {
  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToArticleView({
    required int id,
    required String title,
    required Map<dynamic, dynamic> metadata,
    _i5.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.articleView,
        arguments: ArticleViewArguments(
            id: id, title: title, metadata: metadata, key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithArticleView({
    required int id,
    required String title,
    required Map<dynamic, dynamic> metadata,
    _i5.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.articleView,
        arguments: ArticleViewArguments(
            id: id, title: title, metadata: metadata, key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
