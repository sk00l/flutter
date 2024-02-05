import 'package:assignment8/bloc/picker_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PickerScreen extends StatefulWidget {
  const PickerScreen({super.key});

  @override
  State<PickerScreen> createState() => PickerScreenState();
}

class PickerScreenState extends State<PickerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image And File Picker"),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  context.read<PickerBloc>().add(FilePickerRequesteed());
                },
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.purple),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text("pcik image"),
                ),
              ),
              InkWell(
                onTap: () {
                  context.read<PickerBloc>().add(FilePickerfileRequesteed());
                },
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.purple),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text("pcik file"),
                ),
              ),
            ],
          ),
          BlocBuilder<PickerBloc, PickerState>(
            builder: (context, state) {
              if (state is PickerInitialSuccess) {
                return Image.file(state.pickedFile!);
              } else if (state is PickerFileSuccess) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Name: ${state.pickedFile!.name}"),
                    Text("Bytes: ${state.pickedFile!.bytes}"),
                    Text("Size: ${state.pickedFile!.size}"),
                    Text("Extension: ${state.pickedFile!.extension}"),
                    Text("Path: ${state.pickedFile!.path}"),
                  ],
                );
              } else if (state is PickerInitialLoadInPropgress) {
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
      ),
    );
  }
}
