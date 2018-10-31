import 'harness/app.dart';

Future main() async {
  final harness = Harness()..install();

  test("GET /example returns 200 {'key': 'value'}", () async {
    expectResponse(await harness.agent.get("/example"), 200,
        body: {"key": "value"});
  });

  test("GET /hello returns 200 'world'", () async {
    expectResponse(await harness.agent.get("/hello"), 200, body: "world");
  });
}
