import 'package:aqueduct_restful_services/aqueduct_restful_services.dart';

Future main() async {
  final app = Application<AqueductRestfulServicesChannel>()
      ..options.configurationFilePath = "config.yaml"
      ..options.port = 8888;

  final count = Platform.numberOfProcessors ~/ 2;
  await app.start(numberOfInstances: count > 0 ? count : 1);

  print("Application started on port: ${app.options.port}.");
  print("Use Ctrl-C (SIGINT) to stop running the application.");
}