import 'package:chatgpt_app/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final bool _isTyping = true;
  late TextEditingController textEditingController;

  @override
  void initState() {
    textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        leading: Image.asset('images/logo-open-ai1.png'),
        backgroundColor: const Color(0xFF10a37f),
        title: const Text(
          "ChatGPT",
          // style: TextStyle(fontSize: 10),
        ),
        centerTitle: true,
        actions: [
          PopupMenuButton(
            color: scaffoldBackgroundColor,
            icon: const Icon(
              Icons.more_vert_rounded,
              color: Colors.white,
            ),
            // color: Colors.black,
            itemBuilder: (context) {
              return [
                PopupMenuItem<String>(
                  child: GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "Sign Out",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ];
            },
          ),
          //   IconButton(
          //     icon: const Icon(
          //       Icons.more_vert_outlined,
          //       color: Colors.white,
          //     ),
          //     onPressed: () {
          //       // DropdownMenu
          //     },
          //   )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const Text("Hello Aman!, Welcome to ChatGPT world!");
                },
              ),
            ),
            if (_isTyping) ...[
              const SpinKitFoldingCube(
                color: Colors.white,
                size: 22,
              ),
              const SizedBox(
                height: 17,
              ),
              Container(
                color: cardColor,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          controller: textEditingController,
                          onSubmitted: (value) {},
                          decoration: const InputDecoration.collapsed(
                              hintText: "Send a message.",
                              hintStyle: TextStyle(color: Colors.grey)),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.send_rounded,
                            color: Colors.white,
                          ))
                    ],
                  ),
                ),
              )
            ]
          ],
        ),
      ),
    );
  }
}
