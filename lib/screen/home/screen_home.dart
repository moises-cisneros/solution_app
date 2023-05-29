import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solution/controllers/storage_image_controller/storage_image_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    StorageImageController storageImageController = Get.find();
    return Scaffold(
        //Cargamos las imagenes en un caja
        body: Obx(
      () => ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return ClipRRect(
                child: SizedBox(
              height: 200,
              width: 200,
              child: FadeInImage(
                image: NetworkImage(
                  storageImageController.allImages[index],
                ),
                placeholder: const AssetImage('images/icono.png'),
              ),
            ));
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(height: 20);
          },
          itemCount: storageImageController.allImages.length),
    ));
  }
}
