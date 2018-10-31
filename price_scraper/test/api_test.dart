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

  test("GET /get-forex returns 200 'forex price'", () async {
    expectResponse(await harness.agent.get("/get-forex"), 200, body: {
      "RateList": [
        {
          "bankBuyingRateTT": 1.375,
          "bankSellingRate": 1.395,
          "fromCurrency": "SGD",
          "toCurrency": "USD",
          "unit": 1
        },
        {
          "bankBuyingRateTT": 0.9694,
          "bankSellingRate": 0.9974,
          "fromCurrency": "SGD",
          "toCurrency": "AUD",
          "unit": 1
        },
        {
          "bankBuyingRateTT": 1.0448,
          "bankSellingRate": 1.0663,
          "fromCurrency": "SGD",
          "toCurrency": "CAD",
          "unit": 1
        },
        {
          "bankBuyingRateTT": 19.6738,
          "bankSellingRate": 20.1738,
          "fromCurrency": "SGD",
          "toCurrency": "CNH",
          "unit": 100
        },
        {
          "bankBuyingRateTT": 20.8207,
          "bankSellingRate": 21.4286,
          "fromCurrency": "SGD",
          "toCurrency": "DKK",
          "unit": 100
        },
        {
          "bankBuyingRateTT": 1.5524,
          "bankSellingRate": 1.5889,
          "fromCurrency": "SGD",
          "toCurrency": "EUR",
          "unit": 1
        },
        {
          "bankBuyingRateTT": 17.4473,
          "bankSellingRate": 17.8673,
          "fromCurrency": "SGD",
          "toCurrency": "HKD",
          "unit": 100
        },
        {
          "bankBuyingRateTT": 0.0,
          "bankSellingRate": 1.9005,
          "fromCurrency": "SGD",
          "toCurrency": "INR",
          "unit": 100
        },
        {
          "bankBuyingRateTT": 0.0,
          "bankSellingRate": 0.0094,
          "fromCurrency": "SGD",
          "toCurrency": "IDR",
          "unit": 100
        },
        {
          "bankBuyingRateTT": 1.2093,
          "bankSellingRate": 1.2389,
          "fromCurrency": "SGD",
          "toCurrency": "JPY",
          "unit": 100
        },
        {
          "bankBuyingRateTT": 0.8951,
          "bankSellingRate": 0.9221,
          "fromCurrency": "SGD",
          "toCurrency": "NZD",
          "unit": 1
        },
        {
          "bankBuyingRateTT": 16.2992,
          "bankSellingRate": 16.7246,
          "fromCurrency": "SGD",
          "toCurrency": "NOK",
          "unit": 100
        },
        {
          "bankBuyingRateTT": 0.0,
          "bankSellingRate": 0.8095,
          "fromCurrency": "SGD",
          "toCurrency": "LKR",
          "unit": 100
        },
        {
          "bankBuyingRateTT": 1.7394,
          "bankSellingRate": 1.78,
          "fromCurrency": "SGD",
          "toCurrency": "GBP",
          "unit": 1
        },
        {
          "bankBuyingRateTT": 14.9473,
          "bankSellingRate": 15.3381,
          "fromCurrency": "SGD",
          "toCurrency": "SEK",
          "unit": 100
        },
        {
          "bankBuyingRateTT": 136.4087,
          "bankSellingRate": 139.5,
          "fromCurrency": "SGD",
          "toCurrency": "CHF",
          "unit": 100
        },
        {
          "bankBuyingRateTT": 4.0801,
          "bankSellingRate": 4.2337,
          "fromCurrency": "SGD",
          "toCurrency": "THB",
          "unit": 100
        }
      ],
      "disclaimer":
          "The data returned are indicative and are subjected to changes without prior notice. Please use the data at your own discretion and risk."
    });
  });
}
