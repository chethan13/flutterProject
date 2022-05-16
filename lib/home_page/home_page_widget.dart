import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  ApiCallResponse result;
  TextEditingController mobileNumberController;
  TextEditingController passwordController;
  bool passwordVisibility;

  @override
  void initState() {
    super.initState();
    mobileNumberController = TextEditingController();
    passwordController = TextEditingController();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 1,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: Image.asset(
                          'assets/images/spices_BG_png_(1).png',
                        ).image,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Form(
                          key: formKey,
                          autovalidateMode: AutovalidateMode.always,
                          child: Container(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 1,
                            decoration: BoxDecoration(
                              color: Color(0xFFEEEEEE),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: Image.asset(
                                  'assets/images/spices_BG_png_(1).png',
                                ).image,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/uphaar_Logo_.jpeg',
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.fitWidth,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 10, 20, 20),
                                  child: TextFormField(
                                    maxLength: 10,
                                    controller: mobileNumberController,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      'mobileNumberController',
                                      Duration(milliseconds: 2000),
                                      () => setState(() {}),
                                    ),
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Mobile Number',
                                      hintText: 'Mobile Number',
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                    keyboardType: TextInputType.phone,
                                    validator: (val) {
                                      if (val == null || val.isEmpty) {
                                        return 'Required Mobile Number';
                                      }

                                      return null;
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 10, 20, 20),
                                  child: TextFormField(
                                    maxLength: 10,
                                    controller: passwordController,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      'passwordController',
                                      Duration(milliseconds: 2000),
                                      () => setState(() {}),
                                    ),
                                    obscureText: !passwordVisibility,
                                    decoration: InputDecoration(
                                      labelText: 'Password',
                                      hintText: 'Password',
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      suffixIcon: InkWell(
                                        onTap: () => setState(
                                          () => passwordVisibility =
                                              !passwordVisibility,
                                        ),
                                        child: Icon(
                                          passwordVisibility
                                              ? Icons.visibility_outlined
                                              : Icons.visibility_off_outlined,
                                          color: Color(0xFF757575),
                                          size: 22,
                                        ),
                                      ),
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                    validator: (val) {
                                      if (val == null || val.isEmpty) {
                                        return 'Required Password';
                                      }

                                      return null;
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      var _shouldSetState = false;
                                      if (formKey.currentState == null ||
                                          !formKey.currentState.validate()) {
                                        return;
                                      }

                                      result = await LoginAPICall.call(
                                        mobileNumber:
                                            mobileNumberController.text,
                                        password: passwordController.text,
                                        sessionName: '0',
                                      );
                                      _shouldSetState = true;
                                      if (getJsonField(
                                        (result?.jsonBody ?? ''),
                                        r'''$['result']''',
                                      )) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              getJsonField(
                                                (result?.jsonBody ?? ''),
                                                r'''$['message']''',
                                              ).toString(),
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                              ),
                                            ),
                                            duration:
                                                Duration(milliseconds: 4000),
                                            backgroundColor: Color(0xFF00A44D),
                                          ),
                                        );
                                        setState(() =>
                                            FFAppState().userdetails =
                                                (result?.jsonBody ?? ''));
                                        await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                NavBarPage(initialPage: 'Home'),
                                          ),
                                        );
                                        if (_shouldSetState) setState(() {});
                                        return;
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              getJsonField(
                                                (result?.jsonBody ?? ''),
                                                r'''$['errormessage']''',
                                              ).toString(),
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                              ),
                                            ),
                                            duration:
                                                Duration(milliseconds: 4000),
                                            backgroundColor: Color(0xFFEB1F28),
                                          ),
                                        );
                                        if (_shouldSetState) setState(() {});
                                        return;
                                      }

                                      if (_shouldSetState) setState(() {});
                                    },
                                    text: 'LOGIN',
                                    options: FFButtonOptions(
                                      width: 130,
                                      height: 40,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                          ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
