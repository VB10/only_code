import 'package:flutter/material.dart';
import 'package:only_code/feature/chat_william/chat_bottom.dart';
import 'package:only_code/feature/chat_william/model/chat_user.dart';
import 'package:only_code/feature/chat_william/model/list_chat.dart';
import 'package:only_code/feature/chat_william/user_appbar.dart';

class ChatWilliamView extends StatefulWidget {
  const ChatWilliamView({super.key});
  @override
  State<ChatWilliamView> createState() => _ChatWilliamViewState();
}

class _ChatWilliamViewState extends State<ChatWilliamView> {
  final users = ListChat.users;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UserAppBar(user: ChatUserDummyMixin.dummyLegoUser),
      bottomNavigationBar: ChatBottom(
        onSendPressed: (value) async {
          await Future.delayed(const Duration(milliseconds: 500));
          return true;
        },
      ),
      body: ListView.separated(
        itemCount: users.length,
        separatorBuilder: (context, index) {
          if (index.isOdd) return const SizedBox();
          return const Center(child: Text('10:56 AM'));
        },
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemBuilder: (BuildContext context, int index) {
          return _UserChatCard(users[index]);
        },
      ),
    );
  }
}

class _UserChatCard extends StatelessWidget {
  const _UserChatCard(this.modal);
  final ListChat modal;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: modal.isSenderOtherUser
          ? Alignment.centerRight
          : Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.sizeOf(context).width * 0.8,
        ),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          color: modal.isSenderOtherUser ? Colors.red : Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              modal.text,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color:
                        modal.isSenderOtherUser ? Colors.white : Colors.black,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
