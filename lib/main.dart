import 'package:flutter/material.dart';
import 'package:flutter_list_view/flutter_list_view.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> list = ['first', 'second'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('widget.title'),
      ),
      body: FlutterListView(
        //shrinkWrap: true,
        //semanticChildCount: 0,
        key: const Key('MessagesList'),
        //controller: c.listController,
        //physics: c.horizontalScrollTimer.value == null
        // ? const BouncingScrollPhysics()
        //     : const NeverScrollableScrollPhysics(),
        delegate: FlutterListViewDelegate(
          (context, i) => Row(
            children: [
              OutlinedButton(
                //key: Key('RemoveButton_$i'),
                onPressed: () {
                  list.removeAt(i);
                  setState(() {});
                },
                child: Text(list[i]),
              )
            ],
          ),
          // ignore: invalid_use_of_protected_member
          childCount: list.length,
          keepPosition: true,
          onItemKey: (i) => i.toString(),
          // onItemKey: (i) => c.elements.values
          //     .elementAt(i)
          //     .id
          //     .toString(),
          // initIndex: c.initIndex,
          // initOffset: c.initOffset,
          //initOffsetBasedOnBottom: false,
          //addSemanticIndexes: false,
        ),
      ),
    );
  }
}
