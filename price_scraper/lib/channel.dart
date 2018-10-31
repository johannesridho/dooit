import 'dart:convert';

import 'package:http/http.dart' as http;

import 'price_scraper.dart';

/// This type initializes an application.
///
/// Override methods in this class to set up routes and initialize services like
/// database connections. See http://aqueduct.io/docs/http/channel/.
class PriceScraperChannel extends ApplicationChannel {
  /// Initialize services in this method.
  ///
  /// Implement this method to initialize services, read values from [options]
  /// and any other initialization required before constructing [entryPoint].
  ///
  /// This method is invoked prior to [entryPoint] being accessed.
  @override
  Future prepare() async {
    logger.onRecord.listen(
        (rec) => print("$rec ${rec.error ?? ""} ${rec.stackTrace ?? ""}"));
  }

  /// Construct the request channel.
  ///
  /// Return an instance of some [Controller] that will be the initial receiver
  /// of all [Request]s.
  ///
  /// This method is invoked after [prepare].
  @override
  Controller get entryPoint {
    final router = Router();

    // Prefer to use `link` instead of `linkFunction`.
    // See: https://aqueduct.io/docs/http/request_controller/
    router.route("/example").linkFunction((request) async {
      return Response.ok({"key": "value"});
    });

    router.route("/hello").linkFunction((request) async {
      return Response.ok("world");
    });

    router.route("/get-forex").linkFunction((request) async {
      const url = "https://api.ocbc.com:8243/Forex/1.1";

      final request = await http.get(url, headers: {
        "Authorization": "Bearer 8f9e7f99f5bd9c8f0ea50e67fe04ce1f"
      });

      return Response.ok(jsonDecode(request.body));
    });

    return router;
  }
}
