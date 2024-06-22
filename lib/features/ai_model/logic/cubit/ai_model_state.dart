import 'dart:io';

import 'package:flutter/material.dart';

@immutable
abstract class ImageState {}

class ImageInitial extends ImageState {}

class ImageLoading extends ImageState {}

class ImageLoaded extends ImageState {
  final Map<String, dynamic> result;

  ImageLoaded(this.result);
}

class ImageError extends ImageState {
  final String message;

  ImageError(this.message);
}

class ImagePicked extends ImageState {
  final File image;

  ImagePicked(this.image);
}
