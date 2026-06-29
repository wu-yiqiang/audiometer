import 'package:audiometer/binding.dart';
import 'package:audiometer/common/const.dart';
import 'package:audiometer/router/router.dart';
import 'package:audiometer/store/store.dart';
import 'package:audiometer/translation/translation.dart';
import 'package:audiometer/utils/eventBus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  storeInit();
  eventBus.on(Events.NAVIGATE.name, (ROUTERKEY) {
    if (ROUTERKEY.isNotEmpty) {
      Get.toNamed(ROUTERKEY!);
    }
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: routerMap['HOME'],
      getPages: AppPages.pages,
      theme: ThemeData(
        brightness: getTheme(),
        appBarTheme: AppBarTheme(
        ),
      ),
      locale: Locale(
        storeGetValue(settingStoreKeys['LANGUAGE']!),
        storeGetValue(settingStoreKeys['COUNTRY']!),
      ),
      initialBinding: AllControllerBinding(),
      translations: Language(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text("8888"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: .center,
//           children: [
//             const Text('You have pushed the button this many times:'),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
