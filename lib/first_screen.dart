import 'package:second_week/ui/base/base_state.dart';

class FirstWidget extends BaseStatefulWidget {
  const FirstWidget({Key? key}) : super(key: key);

  @override
  State<FirstWidget> createState() => _FirstWidgetState();
}

class _FirstWidgetState extends BaseState<FirstWidget> {

  @override
  void initState() {
    super.initState();
  }

  @override
  PreferredSizeWidget? appBar() {
    return null;
  }

  @override
  Widget getBody(BuildContext context) => Column(
      children: [

      ],
    );

  @override
  bool isSafeArea() {
  return true;
  }

  @override
  Future<bool> willPopBack() async{
    return false;
  }

}
