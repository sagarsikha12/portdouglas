import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../home_page/home_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactusWidget extends StatefulWidget {
  const ContactusWidget({Key? key}) : super(key: key);

  @override
  _ContactusWidgetState createState() => _ContactusWidgetState();
}

class _ContactusWidgetState extends State<ContactusWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFE7AF20),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 30,
          ),
          onPressed: () async {
            await Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.scale,
                alignment: Alignment.bottomCenter,
                duration: Duration(milliseconds: 300),
                reverseDuration: Duration(milliseconds: 300),
                child: HomePageWidget(),
              ),
            );
          },
        ),
        title: Text(
          'Contact Us',
          style: FlutterFlowTheme.of(context).title1,
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: Color(0xFFE7AF20),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Html(
                      data:
                          '<div class=\"sqs-block html-block sqs-block-html\" data-block-type=\"2\" id=\"block-yui_3_17_2_1_1537192789822_14397\"><div class=\"sqs-block-content\"><h1 style=\"white-space:pre-wrap;\" _msthash=\"1322594\" _msttexthash=\"82368\">LOCATION </h1><p class=\"\" style=\"white-space:pre-wrap;\" _msthash=\"1274208\" _msttexthash=\"856050\">6-10 Mowbray St, Port Douglas, Qld 4877</p>\n<h1 style=\"white-space:pre-wrap;\" _msthash=\"1322596\" _msttexthash=\"134628\">Telephone </h1><p class=\"\" style=\"white-space:pre-wrap;\" _msthash=\"1274211\" _msttexthash=\"7743463\">☎︎ <a href=\"tel:0740995518\">07 40995518</a></p><h1 style=\"white-space:pre-wrap;\" _msthash=\"1322597\" _msttexthash=\"58058\">Email </h1><p class=\"\" style=\"white-space:pre-wrap;\" _msthash=\"1274212\" _msttexthash=\"379847\">manager@pdnc.org.au</p>\n<h1>Website:</h1><p>https://www.portdouglascommunityservicenetwork.org.au</p>\n\n</div></div>',
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
