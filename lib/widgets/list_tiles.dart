import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListTiles extends StatefulWidget {
  ListTiles(
      {super.key,
      this.title,
      this.isChecked,
      this.toggleIsChecked,
      this.longPressFunction});
  final String? title;
  final bool? isChecked;
  final ValueChanged<bool?>? toggleIsChecked;
  final VoidCallback? longPressFunction;
  @override
  State<ListTiles> createState() => _ListTilesState();
}

class _ListTilesState extends State<ListTiles> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: widget.longPressFunction,
        title: Text(
          '${widget.title!}',
          style: widget.isChecked! == true
              ? TextStyle(decoration: TextDecoration.lineThrough)
              : TextStyle(decoration: TextDecoration.none),
        ),
        trailing: Checkbox(
          value: widget.isChecked,
          onChanged: widget.toggleIsChecked,
          // this wat is means when we give widget.toggleIsChecked,
          // (newValue){
          //   widget.toggleIsChecked(newValue);
          // }
        ));
  }
}

// CheckBox(
//   checkedBoxState: isChecked,
//   toggleIsChecked: (bool? checkedBoxState) {
//     setState(() {
//       isChecked = checkedBoxState!;
//       print(isChecked);
//     });
//   },
// ),

// class CheckBox extends StatelessWidget {
//   final bool? checkedBoxState;
//   final ValueChanged<bool?>? toggleIsChecked;
//   CheckBox({super.key, this.checkedBoxState, this.toggleIsChecked});
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(value: checkedBoxState, onChanged: toggleIsChecked);
//   }
// }
