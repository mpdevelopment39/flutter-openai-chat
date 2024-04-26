import 'package:flutter/material.dart';
import 'package:flutter_openai_chat/app/theme.dart';

class ModalOptions extends StatelessWidget {
  final String title;
  final List<OptionModal> listOptions;
  
  const ModalOptions({Key? key,required this.title,required this.listOptions}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Padding(
          padding: const EdgeInsets.all(22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleLarge,
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(),
                  Align(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(
                        Icons.close_rounded,
                        size: 28,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical:30.0),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  decoration: const BoxDecoration(
                    color: AppTheme.colorWhite,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const SizedBox(height: 12,width: double.infinity),
                        ..._paintOptions(context),
                        const SizedBox(height: 12),
                      ],
                    ),
                ),
              ),
            ],
          )
      )]
    );
  }

  List<Widget> _paintOptions(BuildContext context){
    int cont = 1;
    List<Widget> widgetsToPaint = [];
    for (var option in listOptions) {
      widgetsToPaint.add(InkWell(
        onTap: option.function,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:45.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Text(option.title,style: Theme.of(context).textTheme.bodyMedium,textAlign: TextAlign.center)),
              option.icon
            ],
          ),
        )
      ));
      if(cont < listOptions.length){
        widgetsToPaint.add(const Padding(
          padding: EdgeInsets.symmetric(vertical:8.0),
          child: Divider(color: AppTheme.colorGrey, thickness: 1.0),
        ));
      }
      cont++;
    }
      
    return widgetsToPaint;
  }


}

class OptionModal {
  final String title;
  final TextStyle? style;
  final Icon icon;
  final Function() function;
  OptionModal(this.title,this.function,this.icon,{this.style});
}