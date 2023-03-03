import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flypers/screens/splashScreen.dart';
import 'package:flypers/widgets/appColors.dart';
import 'package:flypers/widgets/customSwatch.dart';

void main()async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent));

  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
        debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: "Manrope",
            primarySwatch: createMaterialColor(AppColors.colorPrimary),),
          home: SplashScreen(),
        );
      }  );
  }
}

