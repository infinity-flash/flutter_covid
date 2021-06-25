import 'package:flutter/material.dart';
import 'package:flutter_covid/constants/constants.dart';

class SoftCard extends StatelessWidget {
  final Widget child;
  const SoftCard({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          5 * SizeConstants.widthMultiplier,
        ),
      ),
      elevation: 4,
      shadowColor: Colors.black.withOpacity(0.3),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 3.5 * SizeConstants.widthMultiplier,
          horizontal: 4 * SizeConstants.widthMultiplier,
        ),
        child: child,
      ),
    );
  }
}
