import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ErrorRedditWidget extends StatefulWidget {
  int error;
  ErrorRedditWidget(this.error);

  @override
  State<ErrorRedditWidget> createState() => _ErrorRedditWidgetState();
}

class _ErrorRedditWidgetState extends State<ErrorRedditWidget> {
  @override
  Widget build(BuildContext context) {
    print(widget.error);
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Align(
          alignment: AlignmentDirectional.topCenter,
          child: widget.error == 403
              ? const Text(
                  'Ops, esse tema é privado!',
                  style: TextStyle(fontSize: 20),
                )
              : const Text(
                  'Não encontramos algo relacionado a esse tema.',
                  style: TextStyle(fontSize: 20),
                )),
    );
  }
}
