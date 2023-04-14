import 'package:flutter/material.dart';
import 'package:offertelavoroflutter_app/helpers/styles.dart';

class ContentSheet extends StatelessWidget {
  final Widget child;
  const ContentSheet({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(40))
      ),
      padding: const EdgeInsets.symmetric(horizontal: Styles.screenHorizPadding),
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 18),
              _builHandle(),
              const SizedBox(height: 24),
              child
            ],
          ),
        ),
      ),
    );
  }

  Widget _builHandle() {
    return Center(
      child: Container(
        width: 80,
        height: 4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black.withAlpha(30)
        ),
      ),
    );
  }
}
