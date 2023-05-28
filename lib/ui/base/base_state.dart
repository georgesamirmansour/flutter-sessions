import 'package:flutter/material.dart';

import 'alert_base.dart';

export 'package:flutter/material.dart';

abstract class BaseStatefulWidget extends StatefulWidget {
  const BaseStatefulWidget({Key? key}) : super(key: key);
}

abstract class BaseState<T extends BaseStatefulWidget> extends State<T> with AlertBase{
  bool useCustomScaffold = false;
  Color? customBackgroundColor;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return useCustomScaffold
        ? _defaultBody
        : WillPopScope(
      onWillPop: willPopBack,
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: customBackgroundColor,
        appBar: appBar(),
        body: isSafeArea()
            ? SafeArea(child: _defaultBody)
            : _defaultBody,
        // )
      ),
    );
  }

  Future<bool> willPopBack();

  Widget get _defaultBody => GestureDetector(
    child: getBody(context),
    onTap: () => hideKeyboard(context),
  );

  PreferredSizeWidget? appBar();

  Widget getBody(BuildContext context);

  bool isSafeArea();

  void hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    super.dispose();
  }

  // Future<dynamic> pushScreen(dynamic widget, {bool hasBackStack = false}) {
  //   FocusScope.of(context).requestFocus(FocusNode());
  //   // return ViewHelper(context).pushScreen(widget, hasBackStack: hasBackStack);
  // }

  void popBack({dynamic result}) {
    hideKeyboard(context);
    Navigator.pop(context, result);
  }

  // showSnakeBar(String text,
  //     {SnackBarAction? action,
  //       Color snakeColorBackGround = accentColor,
  //       Color textColor = Colors.white,
  //       double elevation = 0.0,
  //       int durationInSecond = 2}) {
  //   ViewHelper(context).showSnakeBar(text,
  //       elevation: elevation,
  //       action: action,
  //       durationInMilliSeconds: durationInSecond,
  //       snakeColorBackGround: snakeColorBackGround,
  //       textColor: textColor);
  // }
  //
  // void showCustomBottomSheet(Widget child,
  //     {Function(dynamic result)? onUpdate}) {
  //   // ViewHelper(context).showCustomBottomSheet(child, onUpdate: onUpdate);
  // }
}