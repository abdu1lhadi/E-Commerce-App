import 'package:flutter/material.dart';
import 'package:mousseline/screens/tabs_screen.dart';
import '../widgets/my_button.dart';
import '../main.dart';
import '../widgets/text_app.dart';
import './forgot_password_screen.dart';
import './reginstration.dart';

class SignIn extends StatelessWidget {
  static const String screenRoute = '/singin_screen';

  late String email;
  late String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("تسجيل الدخول")),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10),
                Text(
                  "مرحبا بعودتك",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "تسجيل الدخول بستخدام اسم المستخدم و كلمة السر  \nاو المتابعة بستخدام حسابات السوشيال ميديا",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 35),
                SignForm(),
                SizedBox(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocalCard(
                      icon: Icon(Icons.email),
                      press: () {},
                    ),
                    SocalCard(
                      icon: Icon(Icons.facebook),
                      press: () {},
                    ),
                    SocalCard(
                      icon: Icon(
                        Icons.facebook,
                      ),
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "اذا لم يكن لديك حساب؟ ",
                      style: TextStyle(fontSize: 16),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "تسجيل",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  late String email;
  late String password;
  bool remember = false;
  final List<String> errors = [];

  void addError({required String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({required String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: 30),
          buildPasswordFormField(),
          SizedBox(height: 30),
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: Theme.of(context).primaryColor,
                onChanged: (value) {
                  setState(() {
                    remember = value!;
                  });
                },
              ),
              Text("تذكرني"),
              Spacer(),
              GestureDetector(
                onTap: () => Navigator.pushNamed(
                    context, ForgotPasswordScreen.screenRoute),
                child: Text(
                  "نسيت كلمة السر",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          FormError(errors: errors),
          SizedBox(height: 20),
          MyButton(
            color: Theme.of(context).colorScheme.secondary,
            title: "المتابعة",
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                Navigator.pushNamed(context, TabsScreen.screenRoute);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: 'برجاء ادخال الكلمة السرية');
        } else if (value.length >= 8) {
          removeError(error: 'الكلمة السرية قصيرة');
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: 'برجاء ادخال الكلمة السرية');
          return "";
        } else if (value.length < 8) {
          addError(error: 'الكلمة السرية قصيرة');
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "الرقم السري",
        hintText: "ادخل الرقم السري",
        enabledBorder: OutlineInputBorder(),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(Icons.lock_outlined),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    final RegExp emailValidatorRegExp =
        RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: 'برجاء ادخال الايميل');
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: 'الرجاء إدخال بريد إلكتروني صحيح');
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: 'برجاء ادخال الايميل');
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: 'الرجاء إدخال بريد إلكتروني صحيح');
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "الايميل",
        hintText: "ادخل الايميل",
        enabledBorder: OutlineInputBorder(),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(Icons.email),
      ),
    );
  }
}

class SocalCard extends StatelessWidget {
  const SocalCard({
    Key? key,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final Icon icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(12),
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: Color(0xFFF5F6F9),
          shape: BoxShape.circle,
        ),
        child: icon,
      ),
    );
  }
}

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = "/login_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("تم بنجاح"),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Image.asset(
            "assets/images/success.png",
            height: 35, //40%
          ),
          SizedBox(height: 20),
          Text(
            "تم تسجيل الدخول",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Spacer(),
          SizedBox(
            width: 35,
            child: DefaultButton(
              text: "العودة الى القائمة",
              press: () {},
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}

class FormError extends StatelessWidget {
  const FormError({
    Key? key,
    required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          errors.length, (index) => formErrorText(error: errors[index])),
    );
  }

  Row formErrorText({required String error}) {
    return Row(
      children: [
        Icon(
          Icons.close,
          color: Colors.red,
        ),
        SizedBox(
          width: 10,
        ),
        Text(error),
      ],
    );
  }
}
