// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [CatalogoPage]
class CatalogoRoute extends PageRouteInfo<CatalogoRouteArgs> {
  CatalogoRoute({
    Key? key,
    required List<FilmeItem> filmes,
    List<PageRouteInfo>? children,
  }) : super(
         CatalogoRoute.name,
         args: CatalogoRouteArgs(key: key, filmes: filmes),
         initialChildren: children,
       );

  static const String name = 'CatalogoRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CatalogoRouteArgs>();
      return CatalogoPage(key: args.key, filmes: args.filmes);
    },
  );
}

class CatalogoRouteArgs {
  const CatalogoRouteArgs({this.key, required this.filmes});

  final Key? key;

  final List<FilmeItem> filmes;

  @override
  String toString() {
    return 'CatalogoRouteArgs{key: $key, filmes: $filmes}';
  }
}

/// generated route for
/// [DetalhesFilmeScreen]
class DetalhesFilmeRoute extends PageRouteInfo<DetalhesFilmeRouteArgs> {
  DetalhesFilmeRoute({
    Key? key,
    required FilmeItem filme,
    List<PageRouteInfo>? children,
  }) : super(
         DetalhesFilmeRoute.name,
         args: DetalhesFilmeRouteArgs(key: key, filme: filme),
         initialChildren: children,
       );

  static const String name = 'DetalhesFilmeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DetalhesFilmeRouteArgs>();
      return DetalhesFilmeScreen(key: args.key, filme: args.filme);
    },
  );
}

class DetalhesFilmeRouteArgs {
  const DetalhesFilmeRouteArgs({this.key, required this.filme});

  final Key? key;

  final FilmeItem filme;

  @override
  String toString() {
    return 'DetalhesFilmeRouteArgs{key: $key, filme: $filme}';
  }
}
