import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Counter.dart';

main(List<String> args) {
  return runApp(MultiProvider(providers: [
    ChangeNotifierProvider.value(value: Counter())
  ],
  child: ProviderApp(),
  ));
}

class ProviderApp extends StatelessWidget {
  const ProviderApp();

  @override
  Widget build(BuildContext context) {
    var counter = Provider.of<Counter>(context).getCounter;

    return MaterialApp(
      title: "ProviderApp",
      home: Scaffold(
        backgroundColor: Colors.black45,
        body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [Text("You push this button",style:createTextStyle()), Text('$counter times',style: createTextStyle(),)])),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Provider.of<Counter>(context,listen:false).increase();
          },
          tooltip: "Increasement",
          child:Icon(Icons.add)
        ),
      ),
    );
  }
}

TextStyle createTextStyle(){
  return TextStyle(
    fontSize: 24,
    color: Colors.white,
    fontWeight: FontWeight.bold
  );
}