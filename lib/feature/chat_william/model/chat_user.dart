final class ChatUser {
  ChatUser({
    required this.fullName,
    required this.position,
    required this.profileImageUrl,
  });
  final String fullName;
  final String position;
  final String profileImageUrl;
}

mixin ChatUserDummyMixin {
  static ChatUser dummyLegoUser = ChatUser(
    fullName: 'William Watson',
    position: 'House Agent',
    profileImageUrl: 'https://randomuser.me/api/portraits/lego/2.jpg',
  );
}
