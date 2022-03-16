import 'dart:io';
import 'package:flutter/material.dart';
import 'package:loopy_base_bloc/blocs/ex_lotte_bloc.dart';
import 'package:loopy_base_bloc/models/ex_lotte_item_model.dart';
import 'package:loopy_base_bloc/pages/ex_lotte_result.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

import 'ex_lotte_result_widget.dart';

/**
 * 22.03.16
 * KiU
 * bloc example main page
 */
class ExLotteMain extends StatelessWidget {
  const ExLotteMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => KeyboardDismisser(
    child : Scaffold(
      appBar: AppBar(
        title: Text('Ex Lotte'),
      ),
      body: StreamBuilder(
        stream: exLotteBloc.allLotte,
        builder: (context, AsyncSnapshot<ExLotteItemModel> snapshot) {
          print('@@@@@ [Main] StreamBuilder snapshot');
          return _lotteMain(context, snapshot);
        },
      ),
    )
  );


  Widget _lotteMain(BuildContext context, AsyncSnapshot<ExLotteItemModel> snapshot){
    TextEditingController inputController = TextEditingController();
    String _input = "";

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: 300,
            height: 300,
            margin: const EdgeInsets.all(40.0),
            color: Colors.lightBlue,
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
            child: TextField(
              decoration: const InputDecoration(
                labelText: 'Lotte',
                hintText: 'Enter lotte',
                labelStyle: TextStyle(color: Colors.redAccent),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(width: 1, color: Colors.redAccent),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(width: 1, color: Colors.redAccent),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
              controller: inputController,
            ),
          ),

          ElevatedButton(
            onPressed: (() {
              print('@@@@@@ [Main]_lotteMain ElevatedButton : ${inputController.text}');
              _input = inputController.text;
              exLotteBloc.fetchAllLotte(_input);
            }),
            child: const Text('Search'),

          ),

          ElevatedButton(
            onPressed: (() {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ExLotteResult())
              );
            }),
            child: const Text('Enter'),

          ),

          // _lotteMainResult(snapshot)
          lotteResultWidget(snapshot.data)
        ],
      ),
    );

    // return Column(
    //   children: [
    //     Container(
    //       width: 300,
    //       height: 300,
    //       margin: EdgeInsets.all(40.0),
    //       color: Colors.lightBlue,
    //     ),
    //
    //     Padding(
    //       padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
    //       child: TextField(
    //         decoration: InputDecoration(
    //           labelText: 'Lotte',
    //           hintText: 'Enter lotte',
    //           labelStyle: TextStyle(color: Colors.redAccent),
    //           focusedBorder: OutlineInputBorder(
    //             borderRadius: BorderRadius.all(Radius.circular(10.0)),
    //             borderSide: BorderSide(width: 1, color: Colors.redAccent),
    //           ),
    //           enabledBorder: OutlineInputBorder(
    //             borderRadius: BorderRadius.all(Radius.circular(10.0)),
    //             borderSide: BorderSide(width: 1, color: Colors.redAccent),
    //           ),
    //           border: OutlineInputBorder(
    //             borderRadius: BorderRadius.all(Radius.circular(10.0)),
    //           ),
    //         ),
    //         controller: inputController,
    //       ),
    //     ),
    //
    //     ElevatedButton(
    //       onPressed: (() {
    //         print('[Main]_lotteMain ElevatedButton : ${inputController.text}');
    //       }),
    //       child: Text('ElevatedButton'),
    //
    //     ),
    //   ],
    // );


  }

  // Widget _lotteMainResult(AsyncSnapshot<ExLotteItemModel> snapshot) {
  //
  //   if(snapshot.data == null) {
  //     print('@@@@@@ [Main]_lotteMainResult snapshot.data == null');
  //     return Container();
  //   } else {
  //     print('@@@@@@ [Main]_lotteMainResult snapshot.data != null  : ${snapshot.data}');
  //     ExLotteItemModel result = snapshot.data!;
  //     return Center(
  //       child: Text("[ result ]  \ndrwNo : ${result.drwNo.toString()}\ndrwNoData : ${result.drwNoDate}", textScaleFactor: 2,),
  //     );
  //   }
  //
  // }
}
