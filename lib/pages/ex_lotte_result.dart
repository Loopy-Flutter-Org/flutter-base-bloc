import 'dart:io';

import 'package:flutter/material.dart';
import 'package:loopy_base_bloc/blocs/ex_lotte_bloc.dart';
import 'package:loopy_base_bloc/models/ex_lotte_item_model.dart';

import 'ex_lotte_result_widget.dart';

/**
 * 22.03.16
 * KiU
 * bloc example result page
 */

class ExLotteResult extends StatelessWidget {
  // late AsyncSnapshot<ExLotteItemModel> _mainData;
  //
  // ExLotteResult(AsyncSnapshot<ExLotteItemModel> snapshot) {
  //   _mainData = snapshot;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ex Lotte Result'),
      ),
      body: StreamBuilder(
        stream: exLotteBloc.allLotte,
        builder: (context, AsyncSnapshot<ExLotteItemModel> snapshot) {
          if(snapshot.hasData) {
            print('@@@@@@ [Result]_snapshot hasData');
            return _lotteResult(context, snapshot.data);
          } else if(snapshot.hasError) {
            print('@@@@@@ [Result]_snapshot hasError : ${snapshot.hasError.toString()}');
            return Text(snapshot.error.toString(), textScaleFactor: 15,);
          }

          if(exLotteBloc.lotteResult != null) {
            print('@@@@@@ [Result]_snapshot');
            return _lotteResult(context, exLotteBloc.lotteResult);
          } else {
            print('@@@@@@ [Result]_snapshot progress indicator');
            return const Center(child: CircularProgressIndicator(),);
          }

        },
      ),
    );
  }

  Widget _lotteResult(BuildContext context, ExLotteItemModel? item){
    TextEditingController inputController = TextEditingController();

    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 80.0, 20.0, 10.0),
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
              print('@@@@@@ [Result]_lotteMain ElevatedButton : ${inputController.text}');
              exLotteBloc.fetchAllLotte(inputController.text);
            }),
            child: const Text('ElevatedButton'),

          ),

          // _lotteMainResult(snapshot)
          lotteResultWidget(item)
        ],
      ),
    );

  }
}
