import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
 import '../../../../const.dart';
import '../../../../generated/l10n.dart';

// Message data class to distinguish between user and AI messages
class Message {
  final String text;
  final bool isUser;

  const Message({
    required this.text,
    required this.isUser,
  });
}

class AiChatView extends StatefulWidget {
  const AiChatView({super.key});

  @override
  AiChatViewState createState() => AiChatViewState();
}

class AiChatViewState extends State<AiChatView> {
  final TextEditingController _controller = TextEditingController();
  bool _isLoading = false;
  final List<Message> _messages = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Add initial welcome message only once
    if (_messages.isEmpty) {
      _addWelcomeMessage();
    }
  }

  void _addWelcomeMessage() {
    // Add AI welcome message as initial message
    setState(() {
      _messages.add(
        Message(
          text: S.of(context).aiWelcomeMessage,
          isUser: false,
        ),
      );
    });
  }

  Future<void> _sendMessage(String prompt) async {
    // Clear input field immediately
    _controller.clear();

    // Add user message to list right away
    setState(() {
      _messages.add(Message(text: prompt, isUser: true));
      _isLoading = true;
    });

    try {
      // Generate conversation history from all messages
      final conversationHistory = _messages
          .map((m) => "${m.isUser ? 'سؤال' : 'جواب'}: ${m.text}")
          .join('\n');

      final model = GenerativeModel(
        model: 'gemini-1.5-flash-latest',
        apiKey: kApiKey,
      );

      final response = await model.generateContent(
        [Content.text(conversationHistory)],
      );

      // Add AI response to messages
      setState(() {
        _messages.add(
          Message(
            text: response.text ?? "Sorry, I couldn't process that request.",
            isUser: false,
          ),
        );
      });
    } finally {
      setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).aiViewTitle,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final message = _messages[index];
                return _ChatBubble(
                  message: message.text,
                  isUser: message.isUser,
                );
              },
            ),
          ),
          // Loading indicator
          if (_isLoading)
            LinearProgressIndicator(
              color: primaryColor,
            ),

          // Input area
          _ChatInput(
            controller: _controller,
            onSend: (text) => _sendMessage(text),
          ),
        ],
      ),
    );
  }
}

// Custom chat bubble widget
class _ChatBubble extends StatelessWidget {
  final String message;
  final bool isUser;

  const _ChatBubble({
    required this.message,
    required this.isUser,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        constraints: const BoxConstraints(maxWidth: 300),
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        decoration: BoxDecoration(
          color: isUser ? primaryColor.withOpacity(.8) : Colors.grey[300],
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(20),
            topRight: const Radius.circular(20),
            bottomLeft:
                isUser ? const Radius.circular(20) : const Radius.circular(4),
            bottomRight:
                isUser ? const Radius.circular(4) : const Radius.circular(20),
          ),
        ),
        child: Text(
          message,
          style: TextStyle(
            color: isUser ? Colors.white : Colors.black87,
          ),
        ),
      ),
    );
  }
}

// Custom input field with send button
class _ChatInput extends StatelessWidget {
  final TextEditingController controller;
  final Function(String) onSend;

  const _ChatInput({
    required this.controller,
    required this.onSend,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        border: Border(top: BorderSide(color: Colors.grey[300]!)),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: S.of(context).askAQuestion,
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              ),
              onSubmitted: (text) {
                if (text.trim().isNotEmpty) {
                  onSend(text.trim());
                }
              },
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: () {
              final text = controller.text.trim();
              if (text.isNotEmpty) {
                onSend(text);
                FocusScope.of(context).unfocus();
              }
            },
          ),
        ],
      ),
    );
  }
}
