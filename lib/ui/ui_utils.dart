import 'package:flutter/material.dart';
import 'package:flutter_openai_chat/app/theme.dart';
import 'package:flutter_openai_chat/ui/widgets/custom_snackbar.dart';
import 'package:flutter_openai_chat/ui/widgets/custom_wheeler.dart';
import 'package:flutter_openai_chat/ui/widgets/modal_options.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

//* Clase para gestionar diferentes utilidades de UI (Modales, snackbars...)
class UiUtils {

  void showModalBottomWithOptions({required BuildContext context,required String title,required List<OptionModal> listOptions}) {
    showModalBottomSheet(
      elevation: 5,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(24))),
      isDismissible: true,
      enableDrag: true,
      context: context,
      builder: (_) {
        return ModalOptions(
          title: title,
          listOptions: listOptions
        );
      },
    );
  }

  void showWheelOptions(BuildContext context,String title,List<dynamic> elements,Function(int selectedIndex) saveAction){
    showModalBottomSheet(
      elevation: 3,
      backgroundColor: AppTheme.colorWhite,
      isDismissible: false,
      enableDrag: false,
      context: context,
      builder: (_) => CustomWheleer(title: title,elements: elements,saveAction: saveAction));
  }

  void showSnackBar({required BuildContext context,required Icon icon,required String text,SnackBarPosition snackBarPosition = SnackBarPosition.bottom}) {
    showTopSnackBar(
      Overlay.of(context), 
      CustomSnackbar(icon: icon, text: text),
      snackBarPosition: SnackBarPosition.top
    );
  }

}