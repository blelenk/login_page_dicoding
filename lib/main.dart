import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Page',
      theme: ThemeData(
        fontFamily: 'Quicksand',
        primaryColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 4,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Image.network(
              'https://d17ivq9b7rppb3.cloudfront.net/original/commons/new-ui-logo.png'),
        ),
      ),
      endDrawer: SafeArea(
        child: Drawer(
          child: Column(
            children: [
              MenuTile(title: 'Academy'),
              MenuTile(title: 'Challenge'),
              MenuTile(title: 'Event'),
              MenuTile(title: 'Job'),
              MenuTile(title: 'Developer'),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                  'https://d17ivq9b7rppb3.cloudfront.net/original/commons/certificate_logo.png'),
              SizedBox(
                height: 20,
              ),
              Text(
                'Masuk',
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Center(
                child: Image.asset('images/illustration.png'),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Email',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Alamat Email',
                  focusedBorder: OutlineInputBorder(),
                  border: OutlineInputBorder(),
                  isDense: true,
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              Text(
                'Password',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Theme(
                data: Theme.of(context).copyWith(primaryColor: Colors.grey),
                child: TextField(
                  obscureText: obscureText,
                  decoration: InputDecoration(
                    hintText: 'Masukkan Password',
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(obscureText
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          obscureText = !obscureText;
                        });
                      },
                    ),
                    isDense: true,
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Lupa Password?',
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    .copyWith(decoration: TextDecoration.underline),
              ),
              SizedBox(
                height: 16,
              ),
              RaisedButton(
                onPressed: () {},
                color: Colors.pink,
                textColor: Colors.white,
                child: Text(
                  'Masuk',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Atau masuk dengan',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              Row(
                children: [
                  RaisedButton(
                    onPressed: () {},
                    color: Colors.white,
                    child: Image.network(
                      'https://pngimg.com/uploads/google/google_PNG19644.png',
                      width: 50,
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  RaisedButton(
                    onPressed: () {},
                    color: Colors.white,
                    child: Image.network(
                      'https://pngimg.com/uploads/facebook_logos/facebook_logos_PNG19749.png',
                      width: 50,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 8,
              ),
              RichText(
                text: TextSpan(
                    text: 'Belum punya akun? Ayo ',
                    style: Theme.of(context).textTheme.bodyText1,
                    children: [
                      TextSpan(
                          text: 'Daftar',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                          ))
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Divider(
                  color: Colors.black,
                ),
              ),
              RichText(
                text: TextSpan(
                  text: 'Dengan melakukan login, Anda menyetujui dengan ',
                  style: Theme.of(context).textTheme.bodyText1,
                  children: [
                    TextSpan(
                        text: 'syarat & ketentuan Dicoding',
                        style: TextStyle(decoration: TextDecoration.underline))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuTile extends StatelessWidget {
  final String title;

  const MenuTile({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .bodyText1
            .copyWith(fontWeight: FontWeight.bold),
      ),
      trailing: Icon(
        Icons.navigate_next,
        color: Colors.black,
      ),
    );
  }
}
