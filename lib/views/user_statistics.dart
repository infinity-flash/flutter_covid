import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_covid/constants/color_constants.dart';
import 'package:flutter_covid/constants/size_constants.dart';
import 'package:flutter_covid/widgets/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class UserStatistics extends StatelessWidget {
  const UserStatistics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: 9 * SizeConstants.widthMultiplier +
              MediaQuery.of(context).padding.top,
          left: 4 * SizeConstants.widthMultiplier,
          right: 4 * SizeConstants.widthMultiplier,
          bottom: 4 * SizeConstants.widthMultiplier,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 4 * SizeConstants.widthMultiplier,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 20 * SizeConstants.widthMultiplier,
                    width: 20 * SizeConstants.widthMultiplier,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'lib/assets/images/user_avatar.jpg',
                        ),
                        colorFilter: ColorFilter.mode(
                          AppColors.primaryColor,
                          BlendMode.overlay,
                        ),
                      ),
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(
                        7 * SizeConstants.widthMultiplier,
                      ),
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.settings,
                      size: 7 * SizeConstants.widthMultiplier,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5 * SizeConstants.widthMultiplier,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 4 * SizeConstants.widthMultiplier,
              ),
              child: RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                  text: 'Good morning,\n',
                  style: TextStyle(
                    fontFamily: 'Postmates',
                    color: Colors.black,
                    fontSize: 4.2 * SizeConstants.textMultiplier,
                  ),
                  children: [
                    TextSpan(
                      text: 'Sara',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5 * SizeConstants.widthMultiplier,
            ),
            Stack(
              alignment: Alignment.bottomLeft,
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: double.maxFinite,
                  height: 15 * SizeConstants.heightMultiplier,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      5 * SizeConstants.widthMultiplier,
                    ),
                    color: AppColors.primaryColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                      8 * SizeConstants.widthMultiplier,
                      8 * SizeConstants.widthMultiplier,
                      0,
                      0,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'How to recover\nfrom Covid 19',
                          style: TextStyle(
                            fontFamily: 'Postmates',
                            fontSize: 2.5 * SizeConstants.textMultiplier,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(
                            right: 4 * SizeConstants.widthMultiplier,
                            bottom: 2 * SizeConstants.heightMultiplier,
                          ),
                          child: SizedBox(
                            height: 15 * SizeConstants.heightMultiplier,
                            width: 15 * SizeConstants.heightMultiplier,
                            child: FittedBox(
                              fit: BoxFit.cover,
                              child: Image.asset(
                                'lib/assets/images/fight_illustration.png',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(
                    7 * SizeConstants.widthMultiplier,
                    8 * SizeConstants.widthMultiplier,
                  ),
                  child: Container(
                    height: 16 * SizeConstants.widthMultiplier,
                    width: 16 * SizeConstants.widthMultiplier,
                    child: Card(
                      shadowColor: Colors.black.withOpacity(0.3),
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          4 * SizeConstants.widthMultiplier,
                        ),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.arrow_forward,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15 * SizeConstants.widthMultiplier,
            ),
            Expanded(
              child: StaggeredGridView.count(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.zero,
                crossAxisCount: 4,
                staggeredTiles: [
                  StaggeredTile.count(2, 2),
                  StaggeredTile.count(2, 2.5),
                  StaggeredTile.count(2, 2.5),
                  StaggeredTile.count(2, 2),
                ],
                mainAxisSpacing: 3.0 * SizeConstants.widthMultiplier,
                crossAxisSpacing: 3.0 * SizeConstants.widthMultiplier,
                children: [
                  SoftCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Temperature',
                              style: TextStyle(fontFamily: 'Postmates'),
                            ),
                            Spacer(),
                            Icon(
                              FeatherIcons.thermometer,
                              size: 4 * SizeConstants.widthMultiplier,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SoftCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Water',
                              style: TextStyle(fontFamily: 'Postmates'),
                            ),
                            Spacer(),
                            Icon(
                              FeatherIcons.droplet,
                              size: 4 * SizeConstants.widthMultiplier,
                            ),
                          ],
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Text(
                              '4',
                              style: TextStyle(
                                fontFamily: 'Postmates',
                                fontSize: 2.8 * SizeConstants.textMultiplier,
                              ),
                            ),
                            SizedBox(
                              width: 1 * SizeConstants.widthMultiplier,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Opacity(
                                  opacity: 0.5,
                                  child: Text(
                                    'CUPS',
                                    style: TextStyle(
                                      fontFamily: 'Postmates',
                                      fontSize:
                                          1.2 * SizeConstants.textMultiplier,
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.water,
                                  size: 3.2 * SizeConstants.widthMultiplier,
                                  color: AppColors.primaryColor,
                                ),
                              ],
                            ),
                            Spacer(),
                            Container(
                              height: 7 * SizeConstants.widthMultiplier,
                              width: 7 * SizeConstants.widthMultiplier,
                              decoration: BoxDecoration(
                                color: Color(0xFFe7f9f8),
                                borderRadius: BorderRadius.circular(
                                  2.5 * SizeConstants.widthMultiplier,
                                ),
                              ),
                              child: Center(
                                child: Icon(
                                  FeatherIcons.plus,
                                  size: 4 * SizeConstants.widthMultiplier,
                                  color: AppColors.primaryColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SoftCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Heart',
                              style: TextStyle(fontFamily: 'Postmates'),
                            ),
                            Spacer(),
                            Icon(
                              FeatherIcons.heart,
                              size: 4 * SizeConstants.widthMultiplier,
                            ),
                          ],
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Text(
                              '88',
                              style: TextStyle(
                                fontFamily: 'Postmates',
                                fontSize: 2.8 * SizeConstants.textMultiplier,
                              ),
                            ),
                            SizedBox(
                              width: 1 * SizeConstants.widthMultiplier,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Opacity(
                                  opacity: 0.5,
                                  child: Text(
                                    'BPM',
                                    style: TextStyle(
                                      fontFamily: 'Postmates',
                                      fontSize:
                                          1.2 * SizeConstants.textMultiplier,
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.favorite,
                                  size: 3.2 * SizeConstants.widthMultiplier,
                                  color: Colors.pink,
                                ),
                              ],
                            ),
                            Spacer(),
                            Container(
                              height: 7 * SizeConstants.widthMultiplier,
                              width: 7 * SizeConstants.widthMultiplier,
                              decoration: BoxDecoration(
                                color: Colors.pink.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(
                                  2.5 * SizeConstants.widthMultiplier,
                                ),
                              ),
                              child: Center(
                                child: Icon(
                                  FeatherIcons.plus,
                                  size: 4 * SizeConstants.widthMultiplier,
                                  color: Colors.pink,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SoftCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Oxygen level',
                              style: TextStyle(fontFamily: 'Postmates'),
                            ),
                            Spacer(),
                            Icon(
                              FeatherIcons.circle,
                              size: 4 * SizeConstants.widthMultiplier,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
