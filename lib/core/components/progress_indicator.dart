import 'package:flutter/cupertino.dart';

class LoturaProgressIndicator extends StatelessWidget {
  const LoturaProgressIndicator({
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
