import 'dart:convert';

import 'package:ersancambazhatip/helper_widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:html' as html;

class ContactMe extends StatefulWidget {
  ContactMe({super.key});

  @override
  State<ContactMe> createState() => _ContactMeState();
}

class _ContactMeState extends State<ContactMe> {
  String namE = "";

  String emaiL = "";

  String subjecT = "";

  String messagE = "";

  bool emailSent = false;

  String feedback = "";

  String error = "";

  Gradient gradient =
      const LinearGradient(colors: [Colors.red, Colors.green, Colors.blue]);

  setname(String name) {
    namE = name;
  }

  setemail(String email) {
    emaiL = email;
  }

  setsubject(String subject) {
    subjecT = subject;
  }

  setmessage(String message) {
    messagE = message;
  }

  Future sendMail(
      {required String name,
      required String email,
      required String subject,
      required String message}) async {
    final url = Uri.parse("https://api.emailjs.com/api/v1.0/email/send");
    var serviceId = 'service_kewp9vi';
    var templateId = 'template_9vtved7';
    var userId = 'HX_3iIcb8eoMHTHeb';
    final response = await http.post(url,
        headers: {
          'Content-Type': 'application/json',
        },
        body: json.encode({
          'service_id': serviceId,
          'template_id': templateId,
          'user_id': userId,
          'template_params': {
            'user_subject': subject,
            'from_name': name,
            'user_email': email,
            'message': message
          }
        }));
    feedback = response.body.toString() == "OK"
        ? "Email has been sent!"
        : "There was an error!";
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(
          height: 800,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 50),
                child: Text(
                  "CONTACT ME",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      decoration: TextDecoration.none),
                ),
              ),
              Flexible(
                child: ShaderMask(
                  shaderCallback: (bounds) =>
                      gradient.createShader(Rect.fromLTRB(0, 0, width, height)),
                  blendMode: BlendMode.srcIn,
                  child: CustomTextField(
                    width: width,
                    hinttext: "Subject:",
                    onChanged: (p0) {
                      setsubject(p0);
                    },
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Flexible(
                child: ShaderMask(
                  shaderCallback: (bounds) =>
                      gradient.createShader(Rect.fromLTRB(0, 0, width, height)),
                  blendMode: BlendMode.srcIn,
                  child: CustomTextField(
                    width: width,
                    hinttext: "Name:",
                    onChanged: (p0) {
                      setname(p0);
                    },
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Flexible(
                child: ShaderMask(
                  shaderCallback: (bounds) =>
                      gradient.createShader(Rect.fromLTRB(0, 0, width, height)),
                  blendMode: BlendMode.srcIn,
                  child: CustomTextField(
                    width: width,
                    hinttext: "Email:",
                    onChanged: (p0) {
                      setemail(p0);
                    },
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Flexible(
                child: ShaderMask(
                  shaderCallback: (bounds) =>
                      gradient.createShader(Rect.fromLTRB(0, 0, width, height)),
                  blendMode: BlendMode.srcIn,
                  child: CustomTextField(
                    width: width,
                    hinttext: "Message",
                    linecount: 15,
                    onChanged: (p0) {
                      setmessage(p0);
                    },
                  ),
                ),
              ),
              const SizedBox(height: 50),
              ShaderMask(
                shaderCallback: (bounds) =>
                    gradient.createShader(Rect.fromLTRB(0, 0, width, height)),
                child: TextButton(
                    onPressed: (() async {
                      RegExp regex = RegExp(
                          r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$");
                      setState(() {
                        emailSent = false;
                      });
                      feedback = "";

                      if (subjecT == "") {
                        feedback += "Please provide a subject title! ";
                      }
                      if (namE == "") {
                        feedback += "Please give a name! ";
                      }
                      if (emaiL != "") {
                        if (!emaiL.contains(regex)) {
                          feedback += "Please enter valid e-mail adress! ";
                        }
                      }
                      if (emaiL == "") {
                        feedback += "Please provide an e-mail! ";
                      }
                      if (messagE == "") {
                        feedback += "Please type your message! ";
                      }

                      if (namE != "" &&
                          emaiL != "" &&
                          emaiL.contains(regex) &&
                          subjecT != "" &&
                          messagE != "") {
                        await sendMail(
                                name: namE,
                                email: emaiL,
                                subject: subjecT,
                                message: messagE)
                            .then((value) {});
                      }
                      setState(() {
                        emailSent = true;
                      });
                    }),
                    style: ButtonStyle(
                        side: MaterialStateBorderSide.resolveWith(
                            (states) => const BorderSide(color: Colors.white)),
                        overlayColor: MaterialStateColor.resolveWith(
                            (states) => Colors.transparent),
                        minimumSize: MaterialStateProperty.resolveWith(
                            (states) => const Size(150, 50))),
                    child: const Text(
                      "Send",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              const SizedBox(height: 50),
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                height: emailSent ? 70 : 0,
                width: emailSent ? 400 : 0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.red.withOpacity(0.4),
                          Colors.green.withOpacity(0.4),
                          Colors.blue.withOpacity(0.4)
                        ])),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Text(
                        feedback,
                        maxLines: 3,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.none,
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          height: 80,
          color: Colors.black,
          child: Center(
            child: Column(
              children: [
                const Text(
                  "Socials",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 24,
                      decoration: TextDecoration.none),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (() {
                        html.window.open("https://github.com/3rs1n4cti0n", "");
                      }),
                      child: const Text(
                        "Github",
                        style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.none,
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    GestureDetector(
                      onTap: (() {
                        html.window.open(
                            "https://www.linkedin.com/in/ersantzampazchatip/",
                            "");
                      }),
                      child: const Text(
                        "LinkedIn",
                        style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.none,
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
