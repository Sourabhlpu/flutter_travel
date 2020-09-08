import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_travel/presentation/widgets/custom_outline_button.dart';
import 'package:flutter_travel/presentation/widgets/gradient_button.dart';
import 'package:flutter_travel/presentation/widgets/or_divider.dart';
import 'package:video_player/video_player.dart';

class AuthBase extends StatefulWidget {
  @override
  _AuthBaseState createState() => _AuthBaseState();
}

class _AuthBaseState extends State<AuthBase> {
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    // TODO: implement initState
    _controller = VideoPlayerController.asset('assets/videos/auth_home1.mp4');
    _initializeVideoPlayerFuture = _controller.initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            _controller.play();
            _controller.setLooping(true);
            return Stack(
              fit: StackFit.expand,
              children: [
                AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 50),
                    Center(
                        child: Text(
                      'Trevatel',
                      style: TextStyle(
                          color: Colors.black38,
                          fontSize: 50,
                          fontWeight: FontWeight.w700),
                    )),
                    SizedBox(height: 150),
                    Divider(
                        thickness: 0.7,
                        color: Colors.grey,
                        indent: 140,
                        endIndent: 140),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Center(
                          child: Text(
                        'Life is Only Once, Enjoy your Life',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w300),
                      )),
                    ),
                    Divider(
                      thickness: 0.7,
                      color: Colors.grey,
                      indent: 170,
                      endIndent: 170,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: GradientButton(
                          handleClick: signUpClicked, text: 'Sign Up'),
                    ),
                    SizedBox(height: 8.0),
                    Center(child: OrDivider()),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8.0),
                      child: CustomOutLineButton(
                          handleClick: signInClicked, text: 'Sign In'),
                    ),
                  ],
                )
              ],
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  void signInClicked() {}

  void signUpClicked() {}

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
