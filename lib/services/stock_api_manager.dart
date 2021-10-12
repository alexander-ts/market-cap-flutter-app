import 'package:market_cap_chart/models/overview.dart';

/// StockApiManager - абстрактный класс, определяющий метлды для работы с API.
abstract class StockApiManager
{
  /// Запрос к API - возвращает общую информацию о компании и ключевые метрики.
  Future<Overview> getCompanyOverview(String companyName); 
}