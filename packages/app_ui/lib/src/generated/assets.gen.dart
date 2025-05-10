/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/01d.png
  AssetGenImage get a01d => const AssetGenImage('assets/icons/01d.png');

  /// File path: assets/icons/02d.png
  AssetGenImage get a02d => const AssetGenImage('assets/icons/02d.png');

  /// File path: assets/icons/03d.png
  AssetGenImage get a03d => const AssetGenImage('assets/icons/03d.png');

  /// File path: assets/icons/04d.png
  AssetGenImage get a04d => const AssetGenImage('assets/icons/04d.png');

  /// File path: assets/icons/09d.png
  AssetGenImage get a09d => const AssetGenImage('assets/icons/09d.png');

  /// File path: assets/icons/10d.png
  AssetGenImage get a10d => const AssetGenImage('assets/icons/10d.png');

  /// File path: assets/icons/11d.png
  AssetGenImage get a11d => const AssetGenImage('assets/icons/11d.png');

  /// File path: assets/icons/13d.png
  AssetGenImage get a13d => const AssetGenImage('assets/icons/13d.png');

  /// File path: assets/icons/39.png
  AssetGenImage get a39 => const AssetGenImage('assets/icons/39.png');

  /// File path: assets/icons/50d.png
  AssetGenImage get a50d => const AssetGenImage('assets/icons/50d.png');

  /// File path: assets/icons/6.png
  AssetGenImage get a6 => const AssetGenImage('assets/icons/6.png');

  /// File path: assets/icons/7.png
  AssetGenImage get a7 => const AssetGenImage('assets/icons/7.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    a01d,
    a02d,
    a03d,
    a04d,
    a09d,
    a10d,
    a11d,
    a13d,
    a39,
    a50d,
    a6,
    a7,
  ];
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}});

  static const String package = 'app_ui';

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  String get keyName => 'packages/app_ui/$_assetName';

  String get path => _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    @Deprecated('Do not specify package for a generated library asset')
    String? package = package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    @Deprecated('Do not specify package for a generated library asset')
    String? package = package,
  }) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }
}

class Assets {
  const Assets._();

  static const String package = 'app_ui';

  static const $AssetsIconsGen icons = $AssetsIconsGen();
}
