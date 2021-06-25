import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_covid/constants/constants.dart';
import 'package:flutter_covid/views/user_statistics.dart';
import 'package:flutter_covid/views/views.dart';

class UserDashboard extends StatefulWidget {
  const UserDashboard({Key? key}) : super(key: key);

  @override
  _UserDashboardState createState() => _UserDashboardState();
}

class _UserDashboardState extends State<UserDashboard> {
  PageController pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentPage = pageController.page!.toInt();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarIconBrightness: Theme.of(context).brightness,
        systemNavigationBarColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      child: Scaffold(
        extendBody: true,
        body: PageView(
          controller: pageController,
          scrollDirection: Axis.horizontal,
          children: [
            UserStatistics(),
            WorldStatistics(),
          ],
        ),
        bottomNavigationBar: Container(
          color: Colors.transparent,
          height: 7.5 * SizeConstants.heightMultiplier,
          alignment: Alignment.topCenter,
          child: AnimatedContainer(
            width: 33.3 * SizeConstants.widthMultiplier,
            height: 7.5 * SizeConstants.heightMultiplier,
            decoration: BoxDecoration(
              color: _currentPage == 0
                  ? AppColors.softPink
                  : AppColors.accentColor,
              borderRadius: BorderRadius.circular(
                5 * SizeConstants.widthMultiplier,
              ),
            ),
            duration: Duration(milliseconds: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _currentPage = 0;
                      pageController.animateToPage(
                        0,
                        duration: Duration(milliseconds: 100),
                        curve: Curves.easeInOut,
                      );
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Icon(
                      Icons.person,
                      size: 8 * SizeConstants.widthMultiplier,
                      color: _currentPage == 0
                          ? Colors.white
                          : Colors.white.withOpacity(0.4),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _currentPage = 1;
                      pageController.animateToPage(
                        1,
                        duration: Duration(milliseconds: 100),
                        curve: Curves.easeInOut,
                      );
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Icon(
                      Icons.stacked_bar_chart,
                      size: 8 * SizeConstants.widthMultiplier,
                      color: _currentPage == 1
                          ? Colors.white
                          : Colors.white.withOpacity(0.4),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
