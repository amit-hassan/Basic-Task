import '../../../index.dart';

class SignUp extends StatefulWidget {

  SignUpService service;


  SignUp({required this.service, Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  String? _address;
  String? _password;
  bool _obscureText = true;

  void displayResponse({required String userName, required String password}) {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body: body(),
      body: Column(
        children: [
          FutureBuilder(
            future: widget.service.getDomainList(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if(snapshot.hasData) {
                return body(domainList : snapshot.data!);
              }
              return const Expanded(child: Align(alignment:Alignment.center,child: CircularProgressIndicator(color: GlobalColor.primaryColor,)));
            },
          ),
        ],
      ),
    );
  }

  Widget body({required domainList}) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/backgrounds/bg_primary.png"),
          fit: BoxFit.cover,
        )
      ),
      child: Container(
        margin: Style.marginLeftRight25(),
        child: Column(
          children: [
             SizedBox(height: Style.basicGap(context)*2),
            Text(domainList??'getting data',style: Style.title1Blue(),),
            TextFormField(
              style: Style.body1Blue(),
              onChanged: (value) => _address = value,
              validator: (value) {
                if(value == null || value.isEmpty) {
                  return 'Please enter username';
                }
                return null;
              },
              decoration: InputDecoration(
                labelStyle: Style.body1Ash(),
                hintStyle: Style.body1Ash(),
                labelText: 'Username',
                hintText: 'Enter username',
              ),
            ),
            //SizedBox(height: Style.basicGap(context),),
            TextFormField(
              style:Style.body1Blue(),
              onChanged: (value) => _password = value,
              validator: (value){
                if (value == null || value.isEmpty) {
                  return 'Please enter password';
                }
                return null;
              },
              obscureText: _obscureText,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter password',
                labelStyle: Style.body1Ash(),
                hintStyle: Style.body1Ash(),
                suffixIcon: IconButton(
                  icon: Image.asset(
                    _obscureText ? 'assets/icons/eye open.png' : 'assets/icons/eye close.png',
                    width: Style.size20(),
                    height: Style.size20(),
                    fit: BoxFit.contain,
                  ),
                  onPressed: () {
                    setState(() => _obscureText = !_obscureText);
                  },
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: (){
                 // btnClickListener(context: context, route: '/forget_password');
                  //SnackBarManager.showSnackBar(scaffoldKey:_scaffoldMessengerKey,message: 'under construction');
                },
                child: Text('Log In',
                    style: Style.body3Orange()),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: Style.primaryColorButton(),
                onPressed: () async {
                  widget.service.getDomainList();
                  FocusScope.of(context).requestFocus(FocusNode());
                  if(_address!.isNotEmpty&&_password!.isNotEmpty) {

                    //displayResponse(userName: _address!,password: _password!);
                  }
                },
                child: Text("Sign Up", style: Style.textButtonTab1White()),
              ),
            )
          ],
        ),
      ),
    );
  }

}
