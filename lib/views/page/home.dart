import '../../../index.dart';

class Home extends StatefulWidget {

  HomeService service;

  Home({required this.service, Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<dynamic> testMessage = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getMessages();
  }

  void getMessages() async {
    testMessage.addAll(await widget.service.getMessages());
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Mail"),
      ),
      body: ListView.builder(
          itemCount: testMessage.length,
          itemBuilder: (BuildContext context, index) {
            return InkWell(
              onTap: (){
                Navigator.of(context).pushNamed('/mailView', arguments: testMessage[index]);

              },
                child: mailCard(index: index));
          }
      ),
    );
  }
  Widget mailCard({required int index}){
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("From : "+testMessage[index]['subject']),
          ],
        ),
      ),
    );
  }
}
