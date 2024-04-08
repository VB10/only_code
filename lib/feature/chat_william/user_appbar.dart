import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:only_code/feature/chat_william/model/chat_user.dart';

class UserAppBar extends StatelessWidget implements PreferredSizeWidget {
  const UserAppBar({
    required this.user,
    super.key,
  });
  final ChatUser user;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      backgroundColor: Colors.transparent,
      leading: const Icon(Icons.arrow_back_sharp),
      elevation: 0,
      centerTitle: false,
      leadingWidth: 16,
      iconTheme: const IconThemeData(color: Colors.black),
      title: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(user.profileImageUrl),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.fullName,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  user.position,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
