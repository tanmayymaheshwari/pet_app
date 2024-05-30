import 'package:flutter/material.dart';
import 'package:pet_app/login/widgets/dynamic_text_field_model.dart';
import 'package:pet_app/login/widgets/dynamic_textfield.dart';
import 'package:pet_app/otp_verification/otp_verification.dart';
import 'package:pet_app/global_widgets/Round_button.dart';

class SignInWidget extends StatefulWidget {
  const SignInWidget({super.key});

  @override
  State<SignInWidget> createState() => _SignInWidgetState();
}

class _SignInWidgetState extends State<SignInWidget> {
  @override
  Widget build(BuildContext context) {
    const borderLine = OutlineInputBorder(
      borderSide: BorderSide(width: 3, color: Colors.blue),
    );

    final dynamicFormData = [
      DynamicTextFieldModel(
          placeholderText: 'Email/Number',
          obscureText: false,
          actionType: DynamicTextfieldActionType.text,
          enabledBorder: borderLine,
          focusedBorder: borderLine),
      DynamicTextFieldModel(
        obscureText: true,
        placeholderText: 'Password',
        actionType: DynamicTextfieldActionType.text,
        enabledBorder: borderLine,
        focusedBorder: borderLine,
      ),
    ];

    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Sign In',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 40),
            DynamicTextField(
              dynamicModel: dynamicFormData,
              length: dynamicFormData.length,
              onAction: (DynamicTextfieldActionType result) {
                result == DynamicTextfieldActionType.dropdown ? null : null;
              },
              onDataFilled: handleFormFilledData,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {}, child: const Text('Forgot Password?'))
              ],
            ),
            const SizedBox(height: 8),

            Center(
              child: RoundButton(
                  roundButtonText: "Sign In",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Verification()));
                  }),
            ),
            // Center(child: ElevatedButton(onPressed: () {
            //   Navigator.push(context, MaterialPageRoute(builder: (context) => const Verification()));
            // }, child: const Text('Sign In')))
          ],
        ),
      ),
    );
  }

  void handleFormFilledData(List<String> filledData) {
    print(filledData);
  }
}
