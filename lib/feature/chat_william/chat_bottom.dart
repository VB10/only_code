import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:only_code/feature/chat_william/utility/chat_page_size.dart';
import 'package:only_code/feature/chat_william/utility/space_box.dart';

class ChatBottom extends StatefulWidget {
  const ChatBottom({required this.onSendPressed, super.key});
  final Future<bool> Function(String value) onSendPressed;

  @override
  State<ChatBottom> createState() => _ChatBottomState();
}

class _ChatBottomState extends State<ChatBottom> with _ChatBottomMixin {
  static const _buttonTitle = 'Write a message';

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: ChatPageSize.normal),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: _textEditingController,
                onChanged: _updateMessageText,
                onTap: () {
                  _updateOnTappedField(value: true);
                },
                onTapOutside: (event) {
                  _updateOnTappedField(value: false);
                },
                decoration: InputDecoration(
                  hintText: _buttonTitle,
                  suffix: _SuffixLoading(
                    isSendingMessageNotifier: _isSendingMessageNotifier,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(ChatPageSize.small),
                  ),
                ),
              ),
            ),
            _BottomAttachmentRow(onTextFieldTapped: _onTextFieldTappedNotifier),
            const SpaceBox.widthNormal(),
            ValueListenableBuilder<String>(
              valueListenable: _messageTextNotifier,
              builder: (BuildContext context, String value, Widget? child) {
                return IconButton(
                  onPressed: value.isEmpty ? null : _onSendPressed,
                  icon: const Icon(Icons.send),
                );
              },
            ),
            const SpaceBox.widthNormal(),
          ],
        ),
      ),
    );
  }
}

mixin _ChatBottomMixin on State<ChatBottom> {
  final ValueNotifier<String> _messageTextNotifier = ValueNotifier<String>('');
  final ValueNotifier<bool> _onTextFieldTappedNotifier =
      ValueNotifier<bool>(false);
  final ValueNotifier<bool> _isSendingMessageNotifier =
      ValueNotifier<bool>(false);

  final TextEditingController _textEditingController = TextEditingController();

  Future<void> _onSendPressed() async {
    if (_messageTextNotifier.value.isEmpty) return;
    _updateLoading(value: true);
    final response = await widget.onSendPressed(_messageTextNotifier.value);
    if (!response) return;
    _clear();
  }

  @override
  void dispose() {
    super.dispose();
    _messageTextNotifier.dispose();
  }

  void _updateLoading({required bool value}) {
    _isSendingMessageNotifier.value = value;
  }

  void _clear() {
    _textEditingController.clear();
    _messageTextNotifier.value = '';
    _onTextFieldTappedNotifier.value = false;
    _isSendingMessageNotifier.value = false;
  }

  void _updateMessageText(String text) {
    _messageTextNotifier.value = text;
  }

  void _updateOnTappedField({required bool value}) {
    _onTextFieldTappedNotifier.value = value;
  }
}

/// Export part of
class _BottomAttachmentRow extends StatelessWidget {
  const _BottomAttachmentRow({
    required ValueNotifier<bool> onTextFieldTapped,
  }) : _onTextFieldTapped = onTextFieldTapped;

  final ValueNotifier<bool> _onTextFieldTapped;
  static const _duration = Duration(milliseconds: 300);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: _onTextFieldTapped,
      builder: (context, value, child) {
        return AnimatedCrossFade(
          firstChild: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.mic),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.person),
              ),
            ],
          ),
          secondChild: const SizedBox(),
          crossFadeState:
              value ? CrossFadeState.showSecond : CrossFadeState.showFirst,
          duration: _duration,
        );
      },
    );
  }
}

class _SuffixLoading extends StatelessWidget {
  const _SuffixLoading({
    required ValueNotifier<bool> isSendingMessageNotifier,
  }) : _isSendingMessageNotifier = isSendingMessageNotifier;

  final ValueNotifier<bool> _isSendingMessageNotifier;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: _isSendingMessageNotifier,
      builder: (context, value, child) {
        if (!value) return const SizedBox();
        return const SizedBox.square(
          dimension: ChatPageSize.large,
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
