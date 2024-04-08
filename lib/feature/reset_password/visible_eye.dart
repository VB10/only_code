import 'package:flutter/material.dart';

class VisibleEyeButton extends StatefulWidget {
  const VisibleEyeButton(
      {super.key, this.isVisible = false, required this.onChanged});
  final bool isVisible;
  final ValueChanged<bool> onChanged;
  @override
  State<VisibleEyeButton> createState() => _VisibleEyeButtonState();
}

class _VisibleEyeButtonState extends State<VisibleEyeButton> {
  bool _isVisible = false;
  @override
  void initState() {
    super.initState();
    _isVisible = widget.isVisible;
  }

  void _changeVisible() {
    setState(() {
      _isVisible = !_isVisible;
    });
    widget.onChanged(_isVisible);
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: _changeVisible,
      icon: Icon(_isVisible ? Icons.visibility : Icons.visibility_off_outlined,
          color: Colors.grey[700]),
    );
  }
}
