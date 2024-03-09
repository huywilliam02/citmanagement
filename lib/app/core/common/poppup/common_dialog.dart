import 'dart:io';

import 'package:company_management/app/core/common/poppup/poppup_button.dart';
import 'package:company_management/app/resources/theme/app_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'poppup_type.dart';

class CommonDialog extends StatelessWidget {
  const CommonDialog({
    this.commonPopupType = PopupType.adaptive,
    this.actions = const <PopupButton>[],
    this.title,
    this.message,
    super.key,
  });

  const CommonDialog.android({
    List<PopupButton> actions = const <PopupButton>[],
    String? title,
    String? message,
    Key? key,
  }) : this(
          commonPopupType: PopupType.android,
          actions: actions,
          title: title,
          message: message,
          key: key,
        );

  const CommonDialog.ios({
    List<PopupButton> actions = const <PopupButton>[],
    String? title,
    String? message,
    Key? key,
  }) : this(
          commonPopupType: PopupType.ios,
          actions: actions,
          title: title,
          message: message,
          key: key,
        );

  const CommonDialog.adaptive({
    List<PopupButton> actions = const <PopupButton>[],
    String? title,
    String? message,
    Key? key,
  }) : this(
          commonPopupType: PopupType.adaptive,
          actions: actions,
          title: title,
          message: message,
          key: key,
        );

  final PopupType commonPopupType;
  final List<PopupButton> actions;
  final String? title;
  final String? message;

  @override
  Widget build(BuildContext context) {
    switch (commonPopupType) {
      case PopupType.android:
        return _buildAndroidDialog();
      case PopupType.ios:
        return _buildIosDialog();
      case PopupType.adaptive:
        return Platform.isIOS ? _buildIosDialog() : _buildAndroidDialog();
    }
  }

  Widget _buildAndroidDialog() {
    return AlertDialog(
      actions: actions
          .map(
            (e) => TextButton(
              onPressed: e.onPressed?.function,
              child: Text(
                e.text ?? "Oce",
                style: e.isDefault
                    ?  AppTextStyle.textButton
                    :  AppTextStyle.textButton
              ),
            ),
          )
          .toList(growable: false),
      title: title != null
          ? Text(
              title ?? '',
              style:  AppTextStyle.textButton
            )
          : null,
      content: message != null
          ? Text(
              message ?? '',
              style:  AppTextStyle.textButton
            )
          : null,
    );
  }

  Widget _buildIosDialog() {
    return CupertinoAlertDialog(
      actions: actions
          .map((e) => CupertinoDialogAction(
                onPressed: e.onPressed?.function,
                child: Text(e.text ?? "Oce",
                    style: e.isDefault
                        ? AppTextStyle.textButton
                        : AppTextStyle.textButton),
              ))
          .toList(growable: false),
      title: title != null
          ? Text(
              title ?? '',
              style: AppTextStyle.textButton,
            )
          : null,
      content: message != null
          ? Text(message ?? '', style: AppTextStyle.textButton)
          : null,
    );
  }
}
