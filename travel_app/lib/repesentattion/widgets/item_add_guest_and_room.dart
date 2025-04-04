import 'package:flutter/material.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:travel_app/core/helpers/image_helper.dart';

class ItemAddGuestAndRoom extends StatefulWidget {
  const ItemAddGuestAndRoom({
    super.key,
    required this.title,
    required this.icon,
    required this.initData,
    required this.onChanged,
  });

  final String title;
  final String icon;
  final int initData;
  final Function(int) onChanged;
  @override
  State<ItemAddGuestAndRoom> createState() => _ItemAddGuestAndRoomState();
}

class _ItemAddGuestAndRoomState extends State<ItemAddGuestAndRoom> {
  late final TextEditingController _textEditingController;
  final FocusNode _focusNode = FocusNode();

  late int number;
  @override
  void initState() {
    super.initState();
    number = widget.initData;
    _textEditingController = TextEditingController(
      text: widget.initData.toString(),
    )..addListener(() {
      number = int.parse(_textEditingController.text);
    });
  }

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Colors.white,
      ),
      margin: EdgeInsets.only(bottom: 24),
      padding: EdgeInsets.all(24),
      child: Row(
        children: [
          ImageHelper.loadFromAsset(widget.icon, width: 24, height: 24),
          SizedBox(width: 24),
          Text(widget.title),
          Spacer(),
          GestureDetector(
            onTap: () {
              if (number > 1) {
                setState(() {
                  number--;
                  _textEditingController.text = number.toString();
                  if (_focusNode.hasFocus) {
                    _focusNode.unfocus();
                  }
                  widget.onChanged(number);
                });
              }
            },
            child: ImageHelper.loadFromAsset(
              AssetHelper.minusIcon,
              width: 20,
              height: 20,
            ),
          ),

          Container(
            height: 35,
            width: 60,
            padding: EdgeInsets.only(left: 3),
            alignment: Alignment.center,
            child: TextField(
              controller: _textEditingController,
              textAlign: TextAlign.center,
              focusNode: _focusNode,
              enabled: true,
              autocorrect: false,
              minLines: 1,
              maxLines: 1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                contentPadding: const EdgeInsets.only(bottom: 18),
              ),
              onChanged: (value) {},
              onSubmitted: (String submitValue) {},
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                number++;
                _textEditingController.text = number.toString();
                if (_focusNode.hasFocus) {
                  _focusNode.unfocus();
                }
                widget.onChanged(number);
              });
            },
            child: ImageHelper.loadFromAsset(
              AssetHelper.plusIcon,
              width: 20,
              height: 20,
            ),
          ),
        ],
      ),
    );
  }
}
