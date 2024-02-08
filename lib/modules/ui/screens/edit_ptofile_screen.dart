// ignore_for_file: unnecessary_cast

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:instagram_app/modules/ui/screens/EditProfileScreen/bloc/pickerbloc/picker_bloc.dart';
import 'package:instagram_app/modules/ui/screens/EditProfileScreen/edit_profile_screen_gender.dart';
import 'package:instagram_app/modules/ui/widgets/text_field_gender_widget.dart';
import 'package:instagram_app/modules/ui/widgets/text_field_widget.dart';
import 'package:instagram_app/modules/ui/screens/EditProfileScreen/edit_profile_screen_bio.dart';
import 'package:instagram_app/modules/ui/screens/EditProfileScreen/edit_profile_screen_name.dart';
import 'package:instagram_app/modules/ui/screens/EditProfileScreen/edit_profile_screen_username.dart';
// import 'package:provider/provider.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  // final TextEditingController _nameController = TextEditingController();
  // final TextEditingController _usernameController = TextEditingController();
  // final TextEditingController _bioController = TextEditingController();
  FocusNode myFocusNode = FocusNode();

  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {},
          icon: const FaIcon(
            FontAwesomeIcons.arrowLeft,
            size: 20,
            color: Colors.white,
          ),
        ),
        title: const Text(
          'Edit profile',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: BlocBuilder<PickerBloc, PickerState>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 36,
                              backgroundImage: state is PickerInitialSuccess
                                  ? FileImage(state.pickedFile!)
                                      as ImageProvider<Object>
                                  : const NetworkImage(
                                          'https://yt3.googleusercontent.com/nSJ5V8HrAoJnDbb-_v3JJgjj69cUSU46O39hJxS5xs577MNWnkzJK4PxGhcQnT4FKCfvnIl13-U=s900-c-k-c0x00ffffff-no-rj')
                                      as ImageProvider<Object>,
                            ),
                            TextButton(
                                onPressed: () {
                                  context
                                      .read<PickerBloc>()
                                      .add(FilePickerRequesteed());
                                },
                                child: const Text(
                                  'Change progile photo',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ))
                          ],
                        ),
                      ),
                      TextFieldWidget(
                        destinationPage: const EditProfileScreenName(),
                        focusNode: myFocusNode,
                        name: 'Name',
                        // controller: _nameController,
                      ),
                      TextFieldWidget(
                        destinationPage: const EditProfileScreenUsername(),
                        focusNode: myFocusNode,
                        name: 'Username',
                        // controller: _usernameController,
                      ),
                      TextFieldWidget(
                        destinationPage: const EditProfileScreenBio(),
                        focusNode: myFocusNode,
                        name: 'Bio',
                        // controller: _bioController,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          'Add link',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFieldGenderWidget(
                          destinationPage: const EditProfileScreenGander(),
                          focusNode: myFocusNode,
                          name: 'Gender'),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 8, 8),
                        child: Text(
                          'Show Threads Badge',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const Divider(
                  thickness: 0.1,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Switch to professional account',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                const Divider(
                  thickness: 0.1,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Switch to professional account',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                const Divider(
                  thickness: 0.1,
                ),
                BlocBuilder<PickerBloc, PickerState>(
                  builder: (context, state) {
                    // if (state is PickerInitialSuccess) {
                    //   return Image.file(state.pickedFile!);
                    // } else if (state is PickerFileSuccess) {
                    //   return Column(
                    //     crossAxisAlignment: CrossAxisAlignment.center,
                    //     children: [
                    //       Text("Name: ${state.pickedFile!.name}"),
                    //       Text("Bytes: ${state.pickedFile!.bytes}"),
                    //       Text("Size: ${state.pickedFile!.size}"),
                    //       // Text("Identifier: ${state.pickedFile!.identifier}"),
                    //       Text("Extension: ${state.pickedFile!.extension}"),
                    //       Text("Path: ${state.pickedFile!.path}"),
                    //     ],
                    //   );
                    // }
                    if (state is PickerInitialLoadInPropgress) {
                      return const Center(
                        child: CircularProgressIndicator.adaptive(),
                      );
                    } else if (state is PickerInitialFailure) {
                      return Padding(
                        padding: const EdgeInsets.all(24),
                        child: Text(state.error),
                      );
                    } else {
                      return const SizedBox.shrink();
                    }
                  },
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
