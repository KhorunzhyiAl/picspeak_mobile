import 'package:flutter/cupertino.dart';

class ContinuousRefreshBuilder extends StatefulWidget {
  const ContinuousRefreshBuilder({Key? key, required this.builder}) : super(key: key);

  final Widget Function(BuildContext) builder;

  @override
  State<ContinuousRefreshBuilder> createState() => _ContinuousRefreshBuilderState();
}

class _ContinuousRefreshBuilderState extends State<ContinuousRefreshBuilder> {
  @override
  void initState() {
    super.initState();

    startRefreshing();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context);
  }

  void startRefreshing() async {
    while (mounted) {
      setState(() {});
      await Future.delayed(const Duration(seconds: 1));
    }
  }
}
