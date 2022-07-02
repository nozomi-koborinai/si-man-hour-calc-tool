import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:si_man_hour_calc_tool/domain_layer/providers.dart';

class CalcPage extends ConsumerWidget {
  const CalcPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TextButton用の共通のスタイルを作成
    TextStyle? textStyle = Theme.of(context).textTheme.headline4;
    if (textStyle != null) {
      textStyle = textStyle.copyWith(
          decoration: TextDecoration.underline, color: Colors.blue);
    }

    // Provider経由でViewModelを取得
    final vm = ref.watch(calcPageViewModelProvider);
    vm.setRef(ref);

    // ここからViewの作成
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(vm.pageTitle),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: SizedBox(
              width: 337.0,
              child: TextFormField(
                  controller: vm.managerController,
                  enabled: true,
                  style: const TextStyle(color: Colors.black),
                  obscureText: false,
                  maxLines: 1,
                  decoration: InputDecoration(
                      labelText: vm.managerLabel, hintText: vm.hintText)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    child: Text(
                      vm.startTimeOfDayLabel.format(context),
                      style: textStyle,
                    ),
                    onPressed: () => vm.onPressedFromStart(context)),
                Text('〜', style: Theme.of(context).textTheme.headline4),
                TextButton(
                    child: Text(
                      vm.endTimeOfDayLabel.format(context),
                      style: textStyle,
                    ),
                    onPressed: () => vm.onPressedFromEnd(context)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  onPrimary: Colors.black,
                  shape: const StadiumBorder(),
                  fixedSize: const Size(150.0, 45.0)),
              onPressed: () => vm.onPressedFromCalc(),
              child: Text(vm.btnCaption,
                  style: const TextStyle(fontSize: 17.5, color: Colors.white)),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 80.0, horizontal: 20.0),
            child: Container(
              alignment: Alignment.center,
              width: 350,
              height: 280,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 30.0, horizontal: 20.0),
                    child: Text(vm.resultText,
                        style: const TextStyle(
                            fontSize: 20.0, fontStyle: FontStyle.italic)),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
