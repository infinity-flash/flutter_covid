import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_covid/constants/constants.dart';
import 'package:flutter_covid/views/user_dashboard.dart';

class UserOnboarding extends StatefulWidget {
  const UserOnboarding({Key? key}) : super(key: key);

  @override
  _UserOnboardingState createState() => _UserOnboardingState();
}

class _UserOnboardingState extends State<UserOnboarding>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isDarkEnabled =
        Theme.of(context).brightness == Brightness.dark ? false : true;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarIconBrightness: Theme.of(context).brightness,
        systemNavigationBarColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      child: Scaffold(
        body: Column(
          children: [
            ClipPath(
              clipper: CurveClipper(),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 50 * SizeConstants.heightMultiplier,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'lib/assets/images/mask_illustration.png',
                    ),
                    fit: BoxFit.contain,
                    alignment: Alignment.bottomCenter,
                  ),
                  color: AppColors.primaryColor,
                ),
              ),
            ),
            SizedBox(
              height: 5 * SizeConstants.heightMultiplier,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Wear a mask - \n',
                style: TextStyle(
                  fontFamily: 'Postmates',
                  color: Colors.black,
                  fontSize: 4.6 * SizeConstants.textMultiplier,
                ),
                children: [
                  TextSpan(
                    text: 'save lives',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 3 * SizeConstants.heightMultiplier,
            ),
            Opacity(
              opacity: 0.6,
              child: Text(
                'Use proven information about the\ndisease and take the necessary\npreventative measures',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Postmates',
                  fontSize: 2.1 * SizeConstants.textMultiplier,
                ),
              ),
            ),
            SizedBox(
              height: 5 * SizeConstants.heightMultiplier,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => UserDashboard(),
                  ),
                );
              },
              borderRadius: BorderRadius.circular(
                7 * SizeConstants.widthMultiplier,
              ),
              child: Ink(
                width: 20 * SizeConstants.widthMultiplier,
                height: 20 * SizeConstants.widthMultiplier,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    7 * SizeConstants.widthMultiplier,
                  ),
                  border: Border.all(
                    color: Colors.black.withOpacity(0.2),
                  ),
                ),
                child: Center(
                  child: Icon(
                    Icons.arrow_forward,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    int curveHeight = 40;
    Offset controlPoint = Offset(size.width / 2, size.height + curveHeight);
    Offset endPoint = Offset(size.width, size.height - curveHeight);

    Path path = Path()
      ..lineTo(0, size.height - curveHeight - 10)
      ..quadraticBezierTo(
          controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy)
      ..lineTo(size.width, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
