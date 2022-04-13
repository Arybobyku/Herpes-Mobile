import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:get/get.dart';
import 'package:herpes_identification/helper/color_pallete.dart';
import 'package:herpes_identification/routes.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  CameraController? cameraController;
  List cameras = [];
  int selectedCameraIndex = 0;

  @override
  void initState() {
    super.initState();
    availableCameras().then((value) {
      cameras = value;
      if (cameras.isNotEmpty) {
        selectedCameraIndex = 0;
        initCamera(cameras[selectedCameraIndex]).then((value) => {});
      } else {
        // ignore: avoid_print
        print("Tidak ada camera");
      }
    }).catchError((e) {
      // ignore: avoid_print
      print(e);
    });
  }

  Future initCamera(CameraDescription cameraDescription) async {
    if (cameraController != null) {
      await cameraController?.dispose();
    }
    cameraController =
        CameraController(cameraDescription, ResolutionPreset.high);
    cameraController?.addListener(() {
      //mounted listen terus menerus
      if (mounted) {
        setState(() {});
      }
    });

    try {
      await cameraController?.initialize();
    } catch (e) {
      // ignore: avoid_print
      print("Camera Error initialize $e");
    }

    if (cameraController!.value.hasError) {
      // ignore: avoid_print
      print("Camera Error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Align(
            alignment: Alignment.center,
            child: cameraPreview(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 120,
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.only(bottom: 20),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  cameraToggle(),
                  cameraControl(context),
                  const Spacer(),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 400,
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Colors.white, width: 3.0),
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    'Harap mengambil gambar ditengah',
                    textAlign: TextAlign.center,
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 16
                    ),
                  ),
                ],
                totalRepeatCount: 50,
                pause: const Duration(milliseconds: 3000),
                displayFullTextOnTap: true,
                stopPauseOnTap: true,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget cameraPreview() {
    if (cameraController == null) {
      return const Text('Loading');
    } else {
      return CameraPreview(cameraController!);
    }
  }

  Widget cameraToggle() {
    if (cameras == null || cameras.isEmpty) {
      return const Spacer();
    }
    CameraDescription selectedCamera = cameras[selectedCameraIndex];
    CameraLensDirection lensDirection = selectedCamera.lensDirection;

    return Expanded(
      child: Align(
        alignment: Alignment.centerLeft,
        child: TextButton(
          onPressed: () {
            onSwitchCamera();
          },
          child: Icon(
            getCameraLensIcon(lensDirection),
            color: Colors.white,
            size: 24,
          ),
        ),
      ),
    );
  }

  getCameraLensIcon(lensDirection) {
    switch (lensDirection) {
      case CameraLensDirection.back:
        return CupertinoIcons.switch_camera;
      case CameraLensDirection.front:
        return CupertinoIcons.switch_camera_solid;
      case CameraLensDirection.external:
        return CupertinoIcons.photo_camera;
      default:
        return Icons.device_unknown;
    }
  }

  onSwitchCamera() {
    selectedCameraIndex =
        selectedCameraIndex < cameras.length - 1 ? selectedCameraIndex + 1 : 0;
    CameraDescription selectedCamera = cameras[selectedCameraIndex];
    initCamera(selectedCamera);
  }

  Widget cameraControl(context) {
    return Expanded(
      child: Align(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            FloatingActionButton(
              backgroundColor: ColorPalette.generalSecondaryColor,
              child: const Icon(Icons.camera, color: Colors.white),
              onPressed: () {
                onCapture(context);
              },
            )
          ],
        ),
      ),
    );
  }

  onCapture(context) async {
    try {
      await cameraController?.takePicture().then((value) {
        Get.toNamed(Routes.previewScreen, arguments: value);
      });
    } catch (e) {
      // ignore: avoid_print
      print(e.toString());
    }
  }
}
