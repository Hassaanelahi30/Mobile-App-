import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:vaultchatapp/core/services/databaservice.dart';
import 'package:vaultchatapp/core/utils/routeutils.dart';
import 'package:vaultchatapp/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:vaultchatapp/ui/screens/other/userprovider.dart';
import 'package:vaultchatapp/ui/screens/splashscreen/splashscreen.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const vaultchatapp());
}
class vaultchatapp extends StatelessWidget {
  const vaultchatapp({super.key});
@override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => ChangeNotifierProvider(
        create: (context) => Userprovider(Databaservice()),
        child: MaterialApp(
        onGenerateRoute: Routeutils.onGenerateRoute,
        home: SplashScreen(),
        ),
      ),
     
    );
  }
}