final class ListChat {
  ListChat({required this.text, required this.isSenderOtherUser});

  final String text;
  final bool isSenderOtherUser;

  static final List<ListChat> users = List.generate(20, (index) {
    ///create random message items
    return ListChat(
      text: '$index message ',
      isSenderOtherUser: index.isOdd,
    );
  });
}
