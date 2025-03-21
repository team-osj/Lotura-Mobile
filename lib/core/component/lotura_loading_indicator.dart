import 'package:flutter/cupertino.dart';

class LoturaLoadingIndicator extends StatelessWidget {
  const LoturaLoadingIndicator({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      alignment: Alignment.center,
      child: const CupertinoActivityIndicator(),
    );
  }
}
