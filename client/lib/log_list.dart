import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:logomotive/generated/api/v1/logomotive.pb.dart';
import 'package:logomotive/railroad.dart';

class LogList extends StatelessWidget {
  final List<LogEntry>? entries;
  final Future<void> Function()? onRefresh;

  const LogList({Key? key, this.entries, this.onRefresh}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomRefreshIndicator(
      onRefresh: onRefresh!,
      builder: (context, child, controller) {
        return AnimatedBuilder(
          animation: controller,
          builder: (context, _) {
            return Stack(
              alignment: Alignment.topCenter,
              children: [
                if (!controller.isIdle) ...{
                  Positioned(
                    top: 35.0 * controller.value,
                    child: SizedBox(
                      height: 40,
                      width: 75,
                      child: Opacity(
                        opacity: controller.value.clamp(0, 1).toDouble(),
                        child: Railroad(
                          animate: controller.isLoading,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                '🚂',
                                style: TextStyle(fontSize: 40),
                              ),
                              SizedBox(width: 8.0),
                              SizedBox(
                                height: 20,
                                width: 20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                },
                Transform.translate(
                  offset: Offset(0, 100.0 * controller.value),
                  child: child,
                ),
              ],
            );
          },
        );
      },
      child: ListView.builder(
        itemCount: entries!.length,
        itemBuilder: (context, index) {
          final entry = entries![index];
          return ListTile(
            title: Text(entry.message),
            subtitle: Text(entry.id),
            trailing: Text(entry.time.toDateTime().toIso8601String()),
          );
        },
      ),
    );
  }
}
