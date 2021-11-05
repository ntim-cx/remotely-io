import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:remotely_io/config/utils.dart';
import 'package:remotely_io/constants/colors.dart';

import 'custom_text_field.dart';

class CustomPhoneNumberInput extends StatefulWidget {
  final String initialSelection;
  final ValueChanged<CountryCode> onChanged;
  final FormFieldValidator<String> validator;
  final String hintText, title;
  final String labelText;
  final TextEditingController controller;
  final bool enabled;

  const CustomPhoneNumberInput({
    Key key,
    this.labelText,
    this.title,
    this.hintText,
    this.controller,
    this.enabled,
    this.initialSelection = "GH",
    this.validator,
    @required this.onChanged,
  }) : super(key: key);

  @override
  _CustomPhoneNumberInputState createState() => _CustomPhoneNumberInputState();
}

class _CustomPhoneNumberInputState extends State<CustomPhoneNumberInput> {
  @override
  Widget build(BuildContext context) {
    final _countryCodePicker = Container(
      width: 75,
      decoration: BoxDecoration(
        color: AppColors.colorWhiteShade,
        borderRadius: BorderRadius.circular(8.0)
      ),
      child: CountryCodePicker(
        initialSelection: widget.initialSelection,
        favorite: ['GB', 'GH'],
        showCountryOnly: true,
        showOnlyCountryWhenClosed: false,
        showFlag: false,
        alignLeft: true,
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        onChanged: (CountryCode countryCode) {
          setState(() {
            widget.onChanged(countryCode);
          });
        },
      ),
    );

    final _inputField = Flexible(
        child: CustomTextField(
      labelText: widget.labelText,
      hintText: widget.hintText,
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      controller: widget.controller,
      validator: widget.validator,
      enabled: widget.enabled,
    ));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTitle(),
        Row(
          children: [
            _countryCodePicker,
            Utils.horizontalSpacer(space: 8),
            _inputField,
          ],
        ),
      ],
    );
  }

  Widget _buildTitle() {
    return widget.title == null
        ? Container()
        : Text(
            widget.title,
            style: Theme.of(context).textTheme.caption.copyWith(color: Colors.black),
          );
  }
}
