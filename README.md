# market_cap_chart

Функционал:
 - Приложение отображает на графике капитализации компаний Apple, Amazon, Google (Alphabet), Microsoft, Facebook, Netflix. 
 - При клике по сектору графика отображает подробную информацию о компании.

Работает с API Alphavantage. Для запуска необходимо указать ключ к API в файле services/alphavantage_stock_api_manager.dart:

```
final apiKey = 'ключ_к_API'; 
```