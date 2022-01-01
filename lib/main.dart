import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:seven/widgets/icon_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const String title = "Icon Hover Animation";
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(primaryColor: Colors.blue),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(MyApp.title),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.zero,
          child: Wrap(
            direction: Axis.vertical,
            children: const [
              Expanded(
                child: IconWidget(
                  icon: FontAwesomeIcons.facebookF,
                  color: Colors.blue,
                  title: "Facebook",
                ),
              ),
              Expanded(
                child: IconWidget(
                  icon: FontAwesomeIcons.twitter,
                  color: Colors.blueAccent,
                  title: "Twitter",
                ),
              ),
              Expanded(
                child: IconWidget(
                  icon: FontAwesomeIcons.google,
                  color: Colors.red,
                  title: "Google",
                ),
              ),
              Expanded(
                child: IconWidget(
                  icon: FontAwesomeIcons.linkedinIn,
                  color: Colors.lightBlueAccent,
                  title: "Linked In",
                ),
              ),
              Expanded(
                child: IconWidget(
                  icon: FontAwesomeIcons.instagram,
                  color: Colors.redAccent,
                  title: "Instagram",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
