import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tailwind/flutter_tailwind.dart';
import 'package:flutter_tailwind/src/base/icon_builder.dart';

part 'buttons.p.dart';

/// Barry
/// @date 2024/8/27
/// describe:
class TextButtonBuilder extends _ButtonBuilder {
  TextButtonBuilder._(super.text);

  @override
  Widget click({GestureTapCallback? onTap}) {
    return TextButton.icon(
      onPressed: onTap,
      icon: _finalIcon,
      style: _buttonStyle,
      iconAlignment: _iconAlignment ?? IconAlignment.start,
      label: Text(super.text, style: style ?? TextStyle(fontSize: 14.csp)),
    );
  }
}

class OutlinedButtonBuilder extends _ButtonBuilder {
  OutlinedButtonBuilder._(super.text);

  @override
  Widget click({GestureTapCallback? onTap}) {
    return OutlinedButton.icon(
      onPressed: onTap,
      style: _buttonStyle,
      icon: _finalIcon,
      iconAlignment: _iconAlignment ?? IconAlignment.start,
      label: Text(super.text, style: style ?? TextStyle(fontSize: 14.csp)),
    );
  }
}

class ElevatedButtonBuilder extends _ButtonBuilder {
  ElevatedButtonBuilder._(super.text);

  @override
  Widget click({GestureTapCallback? onTap}) {
    return ElevatedButton.icon(
      onPressed: onTap,
      style: _buttonStyle,
      icon: _finalIcon,
      iconAlignment: _iconAlignment ?? IconAlignment.start,
      label: Text(super.text, style: style ?? TextStyle(fontSize: 14.csp)),
    );
  }
}

class IconButtonBuilder extends _ButtonBuilder {
  IconButtonBuilder._() : super('');

  @override
  bool get _isIconButton => true;

  @override
  Widget click({GestureTapCallback? onTap}) {
    return IconButton(
      onPressed: onTap,
      icon: _finalIcon ?? gapEmpty,
      padding: finalPadding,
      iconSize: size ?? width ?? height,
      color: (borderColor ?? innerColor).opacity(innerOpacity),
      style: _buttonStyle,
    );
  }
}
