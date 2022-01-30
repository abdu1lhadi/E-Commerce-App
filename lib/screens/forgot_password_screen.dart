import 'package:flutter/material.dart';
import 'package:mousseline/widgets/my_button.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String screenRoute = "/forgot_password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("نسيت كلمة السر")),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 20),
                Text(
                  "استعادة الرقم السر",
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "برجاء ادخال ايميك وسوف يتم ارسال رابط لك لاستعادة حسابك",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                ForgotPassForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  @override
  _ForgotPassFormState createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final RegExp emailValidatorRegExp =
      RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  late String email;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) => email = newValue!,
            onChanged: (value) {
              if (value.isNotEmpty && errors.contains('برجاء ادخال الايميل')) {
                setState(() {
                  errors.remove('برجاء ادخال الايميل');
                });
              } else if (emailValidatorRegExp.hasMatch(value) &&
                  errors.contains('الرجاء إدخال بريد إلكتروني صحيح')) {
                setState(() {
                  errors.remove('الرجاء إدخال بريد إلكتروني صحيح');
                });
              }
              return null;
            },
            validator: (value) {
              if (value!.isEmpty && !errors.contains('برجاء ادخال الايميل')) {
                setState(() {
                  errors.add('برجاء ادخال الايميل');
                });
              } else if (!emailValidatorRegExp.hasMatch(value) &&
                  !errors.contains('الرجاء إدخال بريد إلكتروني صحيح')) {
                setState(() {
                  errors.add('الرجاء إدخال بريد إلكتروني صحيح');
                });
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "الايميل",
              hintText: "ادخل ايميلك",
              enabledBorder: OutlineInputBorder(),
              // If  you are using latest version of flutter then lable text and hint text shown like this
              // if you r using flutter less then 1.20.* then maybe this is not working properly
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: Icon(Icons.email),
            ),
          ),
          SizedBox(height: 30),
          FormError(errors: errors),
          SizedBox(height: 20),
          MyButton(
            color: Theme.of(context).colorScheme.secondary,
            title: "المتابعة",
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // Do what you want to do
              }
            },
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
        Icon(Icons.ac_unit),
        SizedBox(
          width: 10,
        ),
        Text(error),
      ],
    );
  }
}

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: TextButton(
        //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        //color: Theme.of(context).primaryColor,
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
