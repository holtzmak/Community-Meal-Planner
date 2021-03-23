import 'package:app/core/thread.dart';
import 'package:app/ui/style.dart';
import 'package:app/ui/view_model/home_view_model.dart';
import 'package:app/ui/widget/custom_app_bar.dart';
import 'package:app/ui/widget/custom_bottom_app_bar.dart';
import 'package:app/ui/widget/template_view_model.dart';
import 'package:app/ui/widget/thread_preview_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  static const route = '/';

  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget _buildLatestQuestionMaybe(
      HomeViewModel model, AsyncSnapshot<Thread> snapshot) {
    if (snapshot.hasData) {
      return ThreadPreviewCard(
        thread: snapshot.data!,
        onTap: () => model.navigateToThreadDisplayScreen(snapshot.data!),
      );
    } else if (snapshot.hasError) {
      return outlinedBox(
          child: Text(
            snapshot.error.toString(),
            style: GoogleFonts.raleway(
                color: Colors.red, fontSize: MediumTextSize),
          ),
          childAlignmentInBox: Alignment.center,
          color: Colors.red);
    } else {
      return outlinedBox(
          child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(PersianGreen)),
          childAlignmentInBox: Alignment.center,
          color: PersianGreen);
    }
  }

  @override
  Widget build(BuildContext context) {
    return TemplateViewModel<HomeViewModel>(
        builder: (context, model, child) => FutureBuilder<Thread>(
            future: model.latestMyQuestion,
            builder: (BuildContext context, AsyncSnapshot<Thread> snapshot) {
              return Scaffold(
                appBar: CustomAppBar.get(
                    leftButtonText: "Signup",
                    centreButtonText: "Account",
                    rightButtonText: "FAQ",
                    leftButtonAction: model.navigateToSignUpScreen,
                    centreButtonAction: () {
                      // TODO
                    },
                    rightButtonAction: () {
                      // TODO
                    }),
                bottomNavigationBar: CustomBottomAppBar.get(),
                body: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        stretchedButton(
                            text: "My Questions",
                            trailing: Icon(Icons.arrow_forward_ios_outlined),
                            onPressed: model.navigateToMyQuestionsScreen,
                            color: PersianGreen,
                            pressedColor: PersianGreenOpaque),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10.0),
                        ),
                        ListTile(
                          title: Text(
                            "Since last time...",
                            style: GoogleFonts.cabin(color: PersianGreen),
                          ),
                          subtitle: _buildLatestQuestionMaybe(model, snapshot),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 45.0),
                        ),
                        elevatedButton(
                            text: "Ask a new question",
                            trailing: Icon(Icons.arrow_forward_ios_outlined),
                            onPressed: model.navigateToNewQuestionScreen,
                            color: BurntSienna,
                            pressedColor: PersianGreenOpaque),
                        Padding(
                          padding: EdgeInsets.only(bottom: 45.0),
                        ),
                        elevatedButton(
                            text: "Logout (Temporary) ",
                            trailing: Icon(Icons.logout),
                            onPressed: model.logOut,
                            color: BurntSienna,
                            pressedColor: PersianGreenOpaque)
                      ],
                    ),
                  ),
                ),
              );
            }));
  }
}
