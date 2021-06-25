import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_covid/constants/constants.dart';
import 'package:flutter_covid/widgets/soft_card.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WorldStatistics extends StatelessWidget {
  const WorldStatistics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            top: 30 * SizeConstants.heightMultiplier,
            child: WebView(
              initialUrl: Uri.dataFromString(
                AppStrings.mapIframe,
                mimeType: 'text/html',
              ).toString(),
              javascriptMode: JavascriptMode.unrestricted,
              gestureNavigationEnabled: true,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 13 * SizeConstants.widthMultiplier +
                  MediaQuery.of(context).padding.top,
              left: 4 * SizeConstants.widthMultiplier,
              right: 4 * SizeConstants.widthMultiplier,
              bottom: 4 * SizeConstants.widthMultiplier,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    RichText(
                      textAlign: TextAlign.start,
                      text: TextSpan(
                        text: 'Spread\n',
                        style: TextStyle(
                          fontFamily: 'Postmates',
                          color: Colors.black,
                          fontSize: 4.2 * SizeConstants.textMultiplier,
                        ),
                        children: [
                          TextSpan(
                            text: 'Statistics',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 19 * SizeConstants.widthMultiplier,
                      width: 28.4 * SizeConstants.widthMultiplier,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          7 * SizeConstants.widthMultiplier,
                        ),
                      ),
                      child: SoftCard(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 10 * SizeConstants.widthMultiplier,
                              height: 10 * SizeConstants.widthMultiplier,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:
                                      AssetImage('lib/assets/images/flag.png'),
                                  fit: BoxFit.cover,
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                            SizedBox(
                              width: 2 * SizeConstants.widthMultiplier,
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 19 * SizeConstants.widthMultiplier,
                      width: 19 * SizeConstants.widthMultiplier,
                      child: SoftCard(
                        child: Center(
                          child: Icon(
                            FeatherIcons.calendar,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        height: 25 * SizeConstants.heightMultiplier,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(
            7 * SizeConstants.widthMultiplier,
          ),
        ),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(5 * SizeConstants.widthMultiplier),
            ),
          ),
          elevation: 4,
          shadowColor: Colors.black.withOpacity(0.3),
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 3.5 * SizeConstants.widthMultiplier,
              horizontal: 4 * SizeConstants.widthMultiplier,
            ),
            child: Padding(
              padding: EdgeInsets.only(
                top: 3 * SizeConstants.heightMultiplier,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        '15.6m',
                        style: TextStyle(
                          fontFamily: 'Postmates',
                          fontSize: 3.5 * SizeConstants.textMultiplier,
                        ),
                      ),
                      SizedBox(
                        height: 0.3 * SizeConstants.heightMultiplier,
                      ),
                      Opacity(
                        opacity: 0.5,
                        child: Text(
                          'CONFIRMED',
                          style: TextStyle(
                            fontFamily: 'Postmates',
                            fontSize: 1.5 * SizeConstants.textMultiplier,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 0.3 * SizeConstants.heightMultiplier,
                      ),
                      Text(
                        '• +233k',
                        style: TextStyle(
                          fontFamily: 'Postmates',
                          color: Colors.red,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '6.4m',
                        style: TextStyle(
                          fontFamily: 'Postmates',
                          fontSize: 3.5 * SizeConstants.textMultiplier,
                        ),
                      ),
                      SizedBox(
                        height: 0.3 * SizeConstants.heightMultiplier,
                      ),
                      Opacity(
                        opacity: 0.5,
                        child: Text(
                          'RECOVERED',
                          style: TextStyle(
                            fontFamily: 'Postmates',
                            fontSize: 1.5 * SizeConstants.textMultiplier,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 0.3 * SizeConstants.heightMultiplier,
                      ),
                      Text(
                        '• +32k',
                        style: TextStyle(
                          fontFamily: 'Postmates',
                          color: Colors.green,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '297k',
                        style: TextStyle(
                          fontFamily: 'Postmates',
                          fontSize: 3.5 * SizeConstants.textMultiplier,
                        ),
                      ),
                      SizedBox(
                        height: 0.3 * SizeConstants.heightMultiplier,
                      ),
                      Opacity(
                        opacity: 0.5,
                        child: Text(
                          'DEATHS ',
                          style: TextStyle(
                            fontFamily: 'Postmates',
                            fontSize: 1.5 * SizeConstants.textMultiplier,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 0.3 * SizeConstants.heightMultiplier,
                      ),
                      Text(
                        '• +2.9k',
                        style: TextStyle(
                          fontFamily: 'Postmates',
                          color: Colors.red,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
