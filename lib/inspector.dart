import 'package:alice/alice.dart';
import 'package:draggable_float_widget/draggable_float_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pos/injector.dart';
import 'package:json_view/json_view.dart';
import 'package:realm/realm.dart';
import 'package:realm_studio_manager/realm_studio_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

Alice alice = Alice(showNotification: false);

class DebuggingScaffold extends StatelessWidget {
  DebuggingScaffold({
    super.key,
    required this.child,
    required this.navigatorKey,
    required this.realmDatabase,
  });
  final Widget? child;
  final GlobalKey<NavigatorState> navigatorKey;
  final ValueNotifier<bool> showButton = ValueNotifier(true);
  final Realm realmDatabase;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: child,
        resizeToAvoidBottomInset: false,
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniStartFloat,
        floatingActionButton: Overlay(
          initialEntries: [
            OverlayEntry(
              builder: (builder) => DraggableFloatWidget(
                config: const DraggableFloatWidgetBaseConfig(
                  borderTopContainTopBar: true,
                ),
                child: ValueListenableBuilder<bool>(
                  valueListenable: showButton,
                  builder: (context, value, child) {
                    if (!value) {
                      return const SizedBox.shrink();
                    }
                    return FloatingActionButton(
                      backgroundColor: Colors.green,
                      elevation: 0,
                      onPressed: () {
                        showDialog(
                          context: navigatorKey.currentContext!,
                          builder: (context) {
                            return Dialog(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ListTile(
                                    leading: const Icon(Icons.public),
                                    title: const Text('HTTP Monitor'),
                                    onTap: () {
                                      Navigator.pop(
                                        navigatorKey.currentContext!,
                                      );
                                      alice.showInspector();
                                    },
                                  ),
                                  ListTile(
                                    leading: const Icon(Icons.account_tree),
                                    title: const Text('DB Inspector'),
                                    onTap: () async {
                                      Navigator.pop(
                                        navigatorKey.currentContext!,
                                      );

                                      showButton.value = false;
                                      Navigator.push(
                                        navigatorKey.currentContext!,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              RealmStudioManager(
                                            realm: realmDatabase,
                                          ),
                                        ),
                                      ).then((value) {
                                        showButton.value = true;
                                      });
                                    },
                                  ),
                                  ListTile(
                                    leading: const Icon(Icons.account_tree),
                                    title: const Text('Preferences Inspector'),
                                    onTap: () async {
                                      Navigator.pop(
                                        navigatorKey.currentContext!,
                                      );
                                      final keys =
                                          getIt<SharedPreferences>().getKeys();
                                      final prefsMap = <String, dynamic>{};
                                      for (final key in keys) {
                                        prefsMap[key] =
                                            getIt<SharedPreferences>().get(key);
                                      }
                                      showButton.value = false;
                                      Navigator.push(
                                        navigatorKey.currentContext!,
                                        MaterialPageRoute(
                                          builder: (context) => Scaffold(
                                            appBar: AppBar(
                                              title: const Text(
                                                'Preferences View',
                                              ),
                                              actions: [
                                                TextButton(
                                                  onPressed: () async {
                                                    await getIt<
                                                            SharedPreferences>()
                                                        .clear();
                                                  },
                                                  child: const Text(
                                                    'Clear Preferences',
                                                  ),
                                                ),
                                              ],
                                            ),
                                            body: JsonView(
                                              itemPadding:
                                                  const EdgeInsets.all(8),
                                              shrinkWrap: true,
                                              json: prefsMap,
                                            ),
                                          ),
                                        ),
                                      ).then((value) {
                                        showButton.value = true;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: const Icon(
                        Icons.extension,
                        color: Colors.white,
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
