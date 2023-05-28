import 'package:flutter/material.dart';

import 'ui/base/base_state.dart';

class SecondWidget extends BaseStatefulWidget {
  const SecondWidget({Key? key}) : super(key: key);

  @override
  State<SecondWidget> createState() => _SecondWidgetState();
}

class _SecondWidgetState extends BaseState<SecondWidget> {
  @override
  PreferredSizeWidget? appBar() {
    // TODO: implement appBar
    throw UnimplementedError();
  }

  @override
  Widget getBody(BuildContext context) {
    // TODO: implement getBody
    throw UnimplementedError();
  }

  @override
  bool isSafeArea() {
    // TODO: implement isSafeArea
    throw UnimplementedError();
  }

  @override
  Future<bool> willPopBack() {
    // TODO: implement willPopBack
    throw UnimplementedError();
  }

}
