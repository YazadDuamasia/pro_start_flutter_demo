import 'package:flutter/material.dart';
import 'package:pro_start_yazad/routing/routs.dart';

final bucketGlobal = PageStorageBucket();
GlobalKey<NavigatorState> navigatorKey = GlobalKey(
    debugLabel: "Main Navigator");
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      restorationScopeId: "root",
      navigatorKey: navigatorKey,
      onGenerateRoute: RouteGenerator.generateRoute,
      initialRoute: RouteName.splashRoute,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.grey.withOpacity(0.5),
        primarySwatch: Colors.teal,
        splashColor: Colors.teal.shade200,
        focusColor: Colors.teal,
        appBarTheme: AppBarTheme(
            color: Colors.teal,
            centerTitle: false,
            elevation: 0.0,
            iconTheme: const IconThemeData(color: Colors.white),
          titleTextStyle: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white)
        ),
        textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.teal,
          selectionColor: Colors.teal.shade200,
          selectionHandleColor: Colors.teal.shade200,),),);
  }
}
