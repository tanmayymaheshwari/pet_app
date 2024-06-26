import 'package:flutter/material.dart';
import 'package:pet_app/global_widgets/round_button.dart';
import 'package:sms_autofill/sms_autofill.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> with CodeAutoFill {
  // to manage OTP blocks
  final List<TextEditingController> _otpControllers =
      List.generate(4, (index) => TextEditingController());
  final List<FocusNode> _otpFocusNodes =
      List.generate(4, (index) => FocusNode());

  @override
  void initState() {
    super.initState();
    listenForCode();
  }

  @override
  void dispose() {
    cancel();
    for (var controller in _otpControllers) {
      controller.dispose();
    }
    for (var otpFocusNodes in _otpFocusNodes) {
      otpFocusNodes.dispose();
    }
    super.dispose();
  }

  // automatically fills OTP
  // VERIFY IF THIS WORKS
  @override
  void codeUpdated() {
    if (code != null && code!.length == 4) {
      for (int i = 0; i < code!.length; i++) {
        _otpControllers[i].text = code![i];
      }
    }
  }

  // OTP Block UI/UX
  void _handleOtpChange(String value, int index) {
    if (value.length == 1 && index < 3) {
      _otpFocusNodes[index].unfocus();
      FocusScope.of(context).requestFocus(_otpFocusNodes[index + 1]);
    } else if (value.isEmpty && index > 0) {
      _otpFocusNodes[index].unfocus();
      FocusScope.of(context).requestFocus(_otpFocusNodes[index - 1]);
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 30),

              // Heading
              const Text(
                "Verification",
                style: TextStyle(
                  color: Color.fromRGBO(30, 33, 68, 1),
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),

              // Subtext
              const Text(
                "We have sent an otp to verify your account, Please check your mobile number 999-999-9999",
                style: TextStyle(
                  color: Color.fromRGBO(93, 115, 126, 1),
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),

              // OTP Blocks
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(4, (index) {
                  return SizedBox(
                    width: 40,
                    child: TextFormField(
                      maxLength: 1,
                      controller: _otpControllers[index],
                      focusNode: _otpFocusNodes[index],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                      decoration: InputDecoration(
                        counterText: '',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(237, 109, 78, 1),
                            width: 2,
                          ),
                        ),
                        contentPadding: EdgeInsets.zero,
                      ),
                      cursorColor: Colors.transparent,
                      keyboardType: TextInputType.number,
                      onChanged: (value) => _handleOtpChange(value, index),
                    ),
                  );
                }),
              ),

              const SizedBox(height: 40),

              // Verify Button
              RoundButton(roundButtonText: "Verify", onPressed: () {}),
              const SizedBox(height: 30),

              // Didn't receive OTP text
              GestureDetector(
                onTap: () {}, // add functionality
                child: RichText(
                  text: const TextSpan(
                    text: "Didn't receive the OTP? ",
                    style: TextStyle(
                      color: Color.fromRGBO(30, 33, 68, 1),
                    ),
                    children: [
                      TextSpan(
                        text: "Resend OTP",
                        style: TextStyle(
                          color: Color.fromRGBO(30, 130, 239, 27),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
