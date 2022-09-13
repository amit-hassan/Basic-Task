import 'package:flutter/material.dart';

class MailView extends StatefulWidget {
  const MailView({Key? key}) : super(key: key);

  @override
  State<MailView> createState() => _MailViewState();
}

class _MailViewState extends State<MailView> {
  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Test Mail View"),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          view(data: "From : ${arguments['from']['address']}"),
          view(data: "To : ${arguments['to'][0]['address']}"),
          view(data: arguments['intro']),

        ]));
  }
  Widget view({required String data}){
    return Card(
        child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            child: Text(data)
        )
    );
  }
}
