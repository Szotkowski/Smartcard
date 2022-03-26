import 'package:flutter/material.dart';

/*import 'package:myapp/auth/auth_state.dart';*/
import 'package:auth_buttons/auth_buttons.dart';

import 'package:intl/intl.dart';
import 'package:collection/collection.dart';
import '/src/pages/index.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:map/map.dart';
import 'package:latlng/latlng.dart';
import 'package:paged_vertical_calendar/paged_vertical_calendar.dart';

class PageEntry extends StatefulWidget {
  const PageEntry({
    Key? key,
  }) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<PageEntry> {
  final datasets = <String, dynamic>{};

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120),
        child: // Smartcard

            Container(
          margin: EdgeInsets.zero,
          padding: const EdgeInsets.only(
            left: 30,
            top: 30,
            right: 30,
            bottom: 30,
          ),
          height: MediaQuery.of(context).size.height * (200 / 100),
          decoration: const BoxDecoration(
            color: Color(0xFF1B75A7),
            border: Border(
              left: BorderSide(width: 0, color: Color(0xFF000000)),
              top: BorderSide(width: 0, color: Color(0xFF000000)),
              right: BorderSide(width: 0, color: Color(0xFF000000)),
              bottom: BorderSide(width: 0, color: Color(0xFF000000)),
            ),
          ),
          child: Text(r'''Smartcard''',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: const Color(0xFFFFFFFF),
                  fontWeight: FontWeight.w400,
                  fontSize: 50,
                  fontStyle: FontStyle.normal,
                  decoration: TextDecoration.none,
                ),
              ),
              textAlign: TextAlign.center,
              maxLines: 1),
        ),
      ),
      backgroundColor: const Color(0xFF000000),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            width: double.maxFinite,
            decoration: const BoxDecoration(
              color: Color(0xFF1B75A7),
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
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      top: 10,
                      right: 10,
                      bottom: 10,
                    ),
                    child: GoogleAuthButton(
                      onPressed: () async {},
                    ),
                  ),
                  Text(r'''''',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: const Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          fontStyle: FontStyle.normal,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      textAlign: TextAlign.left,
                      maxLines: 1),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      top: 10,
                      right: 10,
                      bottom: 10,
                    ),
                    child: FacebookAuthButton(
                      onPressed: () async {},
                      onLongPress: () async {},
                    ),
                  ),
                  Text(r'''''',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: const Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          fontStyle: FontStyle.normal,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      textAlign: TextAlign.left,
                      maxLines: 1),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      top: 10,
                      right: 10,
                      bottom: 10,
                    ),
                    child: GestureDetector(
                      onTap: () async {
                        await Navigator.push<void>(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PageHome(),
                          ),
                        );
                      },
                      child: Container(
                        width: double.maxFinite,
                        height: 42,
                        decoration: BoxDecoration(
                          color: const Color(0xFF1B75A7),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                          border: null,
                        ),
                        child: Text(
                          'přihlásit později',
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
                  Text(r'''''',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: const Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w400,
                          fontSize: 50,
                          fontStyle: FontStyle.normal,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      textAlign: TextAlign.left,
                      maxLines: 1),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
