import 'package:flutter/material.dart';

class SizedBox3 extends StatelessWidget {
  const SizedBox3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 100,
    );
  }
}

class SizedBox2 extends StatelessWidget {
  const SizedBox2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 40,
    );
  }
}

class Spacer1 extends StatelessWidget {
  const Spacer1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Spacer();
  }
}

class SizedBox1 extends StatelessWidget {
  const SizedBox1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 20,
    );
  }
}

class skipText extends StatelessWidget {
  const skipText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "SKIP",
      style: TextStyle(color: Colors.white),
    );
  }
}
