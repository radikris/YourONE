import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:reorderableitemsview/reorderableitemsview.dart';
import 'package:yourone/common/app_primary_button.dart';
import 'package:yourone/extensions/extensions.dart';
import 'package:yourone/features/authentication/bloc/cubit/sign_up_cubit.dart';
import 'package:yourone/features/authentication/sign_up_page.dart';
import 'package:yourone/models/file_or_url.dart';
import 'package:yourone/theme/app_color.dart';
import 'package:yourone/theme/text_styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:image_picker/image_picker.dart';

class SignUpStepBio extends StatefulWidget implements StepIsRequired {
  SignUpStepBio(
      {super.key, this.buttonText = '', this.onSave, this.initialImages});

  @override
  State<SignUpStepBio> createState() => _SignUpStepBioState();

  String buttonText;
  List<FileOrUrl>? initialImages;
  Function(List<FileOrUrl>?, String?)? onSave;

  @override
  bool isRequired() {
    return true;
  }
}

class _SignUpStepBioState extends State<SignUpStepBio> {
  var imageList = <FileOrUrl>[];

  final List<StaggeredTileExtended> _listStaggeredTileExtended =
      <StaggeredTileExtended>[
    StaggeredTileExtended.count(2, 2),
    StaggeredTileExtended.count(2, 1),
    StaggeredTileExtended.count(1, 1),
    StaggeredTileExtended.count(1, 1),
  ];

  List<Widget> _tiles = [];

  @override
  void initState() {
    super.initState();
    widget.onSave ??= (List<FileOrUrl>? images, String? bio) {
      context.read<SignUpCubit>().handleBio(images, bio);
      if (bio != null) context.read<SignUpCubit>().nextStep();
    };
    imageList.addAll(
        widget.initialImages ?? context.read<SignUpCubit>().state.images!);
    _tiles = updateImageTiles(imageList);
  }

/*   @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('updated');
    _tiles = updateImageTiles(imageList);
  } */

  List<Widget> updateImageTiles(List<FileOrUrl> newImages) {
    final image1 = newImages.firstWhere((i) => i.id == 0);
    final image2 = newImages.firstWhere((i) => i.id == 1);
    final image3 = newImages.firstWhere((i) => i.id == 2);
    final image4 = newImages.firstWhere((i) => i.id == 3);
    return ([
      ImageListTile(
        key: Key("a"),
        onSelectImage: onSelectImage,
        id: image1.id,
        imageFile: image1.file,
        imageUrl: image1.url,
      ),
      ImageListTile(
        key: Key("b"),
        onSelectImage: onSelectImage,
        id: image2.id,
        imageFile: image2.file,
        imageUrl: image2.url,
      ),
      ImageListTile(
        key: Key("c"),
        onSelectImage: onSelectImage,
        id: image3.id,
        imageFile: image3.file,
        imageUrl: image3.url,
      ),
      ImageListTile(
        key: Key("d"),
        onSelectImage: onSelectImage,
        id: image4.id,
        imageFile: image4.file,
        imageUrl: image4.url,
      ),
    ]);
  }

  void onSelectImage(XFile image, int? id) async {
    final firstOffIdx = id != null
        ? imageList.indexWhere((element) => element.id == id)
        : imageList.indexWhere(((element) => element.isEmpty));
    setState(() {
      imageList[firstOffIdx] =
          FileOrUrl(id: imageList[firstOffIdx].id, file: image.toFile);
      print('$firstOffIdx képet lecseréltem');
      _tiles = updateImageTiles(imageList);
    });
    widget.onSave?.call(imageList, null);
  }

  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
                TextSpan(
                    text: 'Upload your best images, and write your bio:',
                    style: TextStyles.bold18),
                TextSpan(
                    text: ' show your vibe!',
                    style: TextStyles.bold18.copyWith(color: AppColor.primary)),
              ],
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Expanded(
            child: ReorderableItemsView(
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                onReorder: (int oldIndex, int newIndex) {
                  setState(() {
                    _tiles.swap(newIndex, oldIndex);
                    //imageList.swap(newIndex, oldIndex);
                  });
                },
                crossAxisCount: 4,
                isGrid: true,
                staggeredTiles: _listStaggeredTileExtended,
                longPressToDrag: true,
                children: _tiles),
          ),
          FormBuilder(
            key: _formKey,
            child: FormBuilderTextField(
              autocorrect: true,
              decoration: InputDecoration(
                labelText: 'Please, introduce yourself',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
              ),
              name: 'bio',
              minLines: 6,
              maxLines: 6,
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.minLength(
                  10,
                ),
                FormBuilderValidators.maxLength(1000),
              ]),
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          AppButton.primary(
            text: 'Save',
            onTap: () {
              if (_formKey.currentState?.saveAndValidate() ?? false) {
                debugPrint(_formKey.currentState?.value.toString());

                widget.onSave
                    ?.call(imageList, _formKey.currentState?.value['bio']);
              }
            },
          )
        ],
      ),
    );
  }
}

class ImageListTile extends StatelessWidget {
  final String? imageUrl;
  final File? imageFile;
  final int? id;
  final Function(XFile selectedFile, int? idx) onSelectImage;

  ImageListTile(
      {super.key,
      this.imageUrl,
      this.imageFile,
      required this.onSelectImage,
      required this.id});

  final ImagePicker imagePicker = ImagePicker();

  void selectImage() async {
    final idToSwitch = imageUrl == null && imageFile == null ? null : id;
    print('$idToSwitch cserélem most');
    final XFile? selectedImage =
        await imagePicker.pickImage(source: ImageSource.gallery);

    if (selectedImage != null) {
      onSelectImage(selectedImage, idToSwitch);
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectImage,
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
              strokeAlign: StrokeAlign.outside, color: AppColor.primary),
          boxShadow: [
            BoxShadow(
                color: AppColor.primary10,
                blurRadius: 2.0,
                offset: const Offset(0.0, 4))
          ],
        ),
        child: Center(
          child: (imageUrl == null && imageFile == null)
              ? const Icon(Icons.add_circle_outline_sharp,
                  color: AppColor.primary)
              : imageUrl != null
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: CachedNetworkImage(
                        fit: BoxFit.fill,
                        imageUrl: "http://via.placeholder.com/350x150",
                        progressIndicatorBuilder:
                            (context, url, downloadProgress) =>
                                CircularProgressIndicator(
                                    value: downloadProgress.progress),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                    )
                  : ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.file(
                        imageFile!,
                        fit: BoxFit.fill,
                        width: double.infinity,
                      ),
                    ),
        ),
      ),
    );
  }
}
