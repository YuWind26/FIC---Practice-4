import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ltsm_loading_controller.dart';

class LtsmLoadingView extends StatefulWidget {
  const LtsmLoadingView({Key? key}) : super(key: key);

  Widget build(context, LtsmLoadingController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtsmLoading"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              children: [
                /*
                ? Buat variabel loading di dalam State/Controller
                ! bool loading = false;

                ? Tambahkan statement ini di dalam Column:
                if(controller.loading)
                  CircularProgressIndicator();

                ? Buat sebuah button, dan tambahkan kode ini di dalam event onPressed()
                /*
                controller.loading = controller.loading!;
                controller.setState((){});
                */
                  
                */
                const SizedBox(
                  height: 20.00,
                ),
                Text("Loading : ${controller.loading}",
                    style: const TextStyle(
                      fontSize: 30.0,
                    )),
                const SizedBox(
                  height: 20.00,
                ),
                if (controller.loading)
                  const CircularProgressIndicator(
                    backgroundColor: Colors.green,
                    color: Colors.amber,
                  ),
                const SizedBox(
                  height: 20.00,
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    controller.loading = !controller.loading;
                    controller.setState(() {});
                  },
                  icon: const Icon(Icons.update),
                  label: const Text("Update Loading Condition"),
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.green)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<LtsmLoadingView> createState() => LtsmLoadingController();
}
