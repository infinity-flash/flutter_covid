import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_covid/views/user_onboarding.dart';

import 'constants/constants.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
  runApp(
    BaseTheme(),
  );
}

class BaseTheme extends StatelessWidget {
  const BaseTheme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConstants().init(constraints, orientation);
            return MaterialApp(
              home: UserOnboarding(),
              debugShowCheckedModeBanner: !kReleaseMode,
              theme: ThemeData.light().copyWith(
                brightness: Brightness.dark,
                bottomSheetTheme: BottomSheetThemeData(
                  backgroundColor: Colors.transparent,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
