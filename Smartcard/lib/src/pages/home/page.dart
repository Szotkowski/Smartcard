import 'package:flutter/material.dart';

/*import 'package:myapp/auth/auth_state.dart';*/

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:intl/intl.dart';
import 'package:collection/collection.dart';
import '/src/pages/index.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:map/map.dart';
import 'package:latlng/latlng.dart';
import 'package:paged_vertical_calendar/paged_vertical_calendar.dart';
import 'package:tcard/tcard.dart';

class PageHome extends StatefulWidget {
  const PageHome({
    Key? key,
  }) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<PageHome> {
  final datasets = <String, dynamic>{};

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: Stack(
        children: [
          DecoratedBox(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[Color(0xFF1B75A7), Color(0xFF35B7BC)],
                stops: [0, 1],
              ),
              border: null,
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(r'''''',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: const Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          fontStyle: FontStyle.normal,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      textAlign: TextAlign.left,
                      maxLines: 1),
                  Text(r'''''',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: const Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          fontStyle: FontStyle.normal,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      textAlign: TextAlign.left,
                      maxLines: 1),
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 5,
                            top: 5,
                            right: 5,
                            bottom: 5,
                          ),
                          child: Text(r'''Smartcard''',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: const Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 30,
                                  fontStyle: FontStyle.normal,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              textAlign: TextAlign.left,
                              maxLines: 1),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 5,
                            top: 5,
                            right: 5,
                            bottom: 5,
                          ),
                          child: Image.asset(
                            r'''assets/hlava.png''',
                            height:
                                MediaQuery.of(context).size.height * (5 / 100),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 30,
                      top: 30,
                      right: 30,
                      bottom: 30,
                    ),
                    padding: EdgeInsets.zero,
                    width: double.maxFinite,
                    height: MediaQuery.of(context).size.height * (65 / 100),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                      ),
                      border: Border(
                        left: BorderSide(width: 0, color: Color(0xFF000000)),
                        top: BorderSide(width: 0, color: Color(0xFF000000)),
                        right: BorderSide(width: 0, color: Color(0xFF000000)),
                        bottom: BorderSide(width: 0, color: Color(0xFF000000)),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(r'''''',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: const Color(0xFFFFFFFF),
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                                fontStyle: FontStyle.normal,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            textAlign: TextAlign.center,
                            maxLines: 1),
                        TCard(
                          onForward: (index, info) {
                            if (info.direction == SwipDirection.Right) {
                              //like

                            } else {
                              //dislike

                            }
                          },
                          onEnd: () {},
                          lockYAxis: true,
                          slideSpeed: 20,
                          delaySlideFor: 500,
                          cards: [
                            Align(
                              alignment: Alignment.center,
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(40),
                                  topRight: Radius.circular(40),
                                  bottomRight: Radius.circular(40),
                                  bottomLeft: Radius.circular(40),
                                ),
                                child: Image.asset(
                                  r'''assets/krabice.jpg''',
                                  width: MediaQuery.of(context).size.width *
                                      (100 / 100),
                                  height: MediaQuery.of(context).size.height *
                                      (49 / 100),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                "assets/Smartcard.png",
                                width: MediaQuery.of(context).size.width *
                                    (100 / 100),
                                fit: BoxFit.cover,
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                "assets/Smartcard.png",
                                height: double.maxFinite,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment:  Alignment.topCenter,
                          child: Text(r'''''',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: const Color(0xFF000000),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  fontStyle: FontStyle.normal,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              textAlign: TextAlign.center,
                              maxLines: 1),
                        ),
                        Center(
                          child: Container(
                            margin: EdgeInsets.zero,
                            padding: EdgeInsets.zero,
                            width: 280,
                            decoration: const BoxDecoration(
                              color: Color(0xFFFFFFFF),
                              border: Border(
                                left: BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                    color: Color(0xFF000000)),
                                top: BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                    color: Color(0xFF000000)),
                                right: BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                    color: Color(0xFF000000)),
                                bottom: BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                    color: Color(0xFF000000)),
                              ),
                            ),
                            child: GestureDetector(
                              child: Container(
                                height: MediaQuery.of(context).size.height *
                                    (5 / 100),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF35B7BC),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                  ),
                                  border: null,
                                ),
                                child: Text(
                                  'Produkt',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      color: const Color(0xFFFFFFFF),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 25,
                                      fontStyle: FontStyle.normal,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text(r'''''',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: const Color(0xFFFFFFFF),
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                fontStyle: FontStyle.normal,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            textAlign: TextAlign.left,
                            maxLines: 1),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
