import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:core';
import 'dart:io';
import 'package:cross_file/cross_file.dart';




Future<String> uploadImageToStorage(String path, XFile image ) async{
  try{
    final ref = FirebaseStorage.instance.ref(path).child(image.name);
    await ref.putFile(File(image.path));
    final url = await ref.getDownloadURL();
    return url;
  }catch (e){
    throw 'Something went wrong. Please try again';
  }

}