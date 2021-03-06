class Overview {
  String symbol = '';
  String assetType = '';
  String name = '';
  String description = '';
  String cIK = '';
  String exchange = '';
  String currency = '';
  String country = '';
  String sector = '';
  String industry = '';
  String address = '';
  String fiscalYearEnd = '';
  String latestQuarter = '';
  String marketCapitalization = '';
  String eBITDA = '';
  String pERatio = '';
  String pEGRatio = '';
  String bookValue = '';
  String dividendPerShare = '';
  String dividendYield = '';
  String ePS = '';
  String revenuePerShareTTM = '';
  String profitMargin = '';
  String operatingMarginTTM = '';
  String returnOnAssetsTTM = '';
  String returnOnEquityTTM = '';
  String revenueTTM = '';
  String grossProfitTTM = '';
  String dilutedEPSTTM = '';
  String quarterlyEarningsGrowthYOY = '';
  String quarterlyRevenueGrowthYOY = '';
  String analystTargetPrice = '';
  String trailingPE = '';
  String forwardPE = '';
  String priceToSalesRatioTTM = '';
  String priceToBookRatio = '';
  String eVToRevenue = '';
  String eVToEBITDA = '';
  String beta = '';
  String s52WeekHigh = '';
  String s52WeekLow = '';
  String s50DayMovingAverage = '';
  String s200DayMovingAverage = '';
  String sharesOutstanding = '';
  String sharesFloat = '';
  String sharesShort = '';
  String sharesShortPriorMonth = '';
  String shortRatio = '';
  String shortPercentOutstanding = '';
  String shortPercentFloat = '';
  String percentInsiders = '';
  String percentInstitutions = '';
  String forwardAnnualDividendRate = '';
  String forwardAnnualDividendYield = '';
  String payoutRatio = '';
  String dividendDate = '';
  String exDividendDate = '';
  String lastSplitFactor = '';
  String lastSplitDate = '';

  // ignore: sort_constructors_first
  Overview.fromJson(Map<String, dynamic> json) {
    symbol = json['Symbol'] as String;
    assetType = json['AssetType'] as String;
    name = json['Name'] as String;
    description = json['Description'] as String;
    cIK = json['CIK'] as String;
    exchange = json['Exchange'] as String;
    currency = json['Currency'] as String;
    country = json['Country'] as String;
    sector = json['Sector'] as String;
    industry = json['Industry'] as String;
    address = json['Address'] as String;
    fiscalYearEnd = json['FiscalYearEnd'] as String;
    latestQuarter = json['LatestQuarter'] as String;
    marketCapitalization = json['MarketCapitalization'] as String;
    eBITDA = json['EBITDA'] as String;
    pERatio = json['PERatio'] as String;
    pEGRatio = json['PEGRatio'] as String;
    bookValue = json['BookValue'] as String;
    dividendPerShare = json['DividendPerShare'] as String;
    dividendYield = json['DividendYield'] as String;
    ePS = json['EPS'] as String;
    revenuePerShareTTM = json['RevenuePerShareTTM'] as String;
    profitMargin = json['ProfitMargin'] as String;
    operatingMarginTTM = json['OperatingMarginTTM'] as String;
    returnOnAssetsTTM = json['ReturnOnAssetsTTM'] as String;
    returnOnEquityTTM = json['ReturnOnEquityTTM'] as String;
    revenueTTM = json['RevenueTTM'] as String;
    grossProfitTTM = json['GrossProfitTTM'] as String;
    dilutedEPSTTM = json['DilutedEPSTTM'] as String;
    quarterlyEarningsGrowthYOY = json['QuarterlyEarningsGrowthYOY'] as String;
    quarterlyRevenueGrowthYOY = json['QuarterlyRevenueGrowthYOY'] as String;
    analystTargetPrice = json['AnalystTargetPrice'] as String;
    trailingPE = json['TrailingPE'] as String;
    forwardPE = json['ForwardPE'] as String;
    priceToSalesRatioTTM = json['PriceToSalesRatioTTM'] as String;
    priceToBookRatio = json['PriceToBookRatio'] as String;
    eVToRevenue = json['EVToRevenue'] as String;
    eVToEBITDA = json['EVToEBITDA'] as String;
    beta = json['Beta'] as String;
    s52WeekHigh = json['52WeekHigh'] as String;
    s52WeekLow = json['52WeekLow'] as String;
    s50DayMovingAverage = json['50DayMovingAverage'] as String;
    s200DayMovingAverage = json['200DayMovingAverage'] as String;
    sharesOutstanding = json['SharesOutstanding'] as String;
    sharesFloat = json['SharesFloat'] as String;
    sharesShort = json['SharesShort'] as String;
    sharesShortPriorMonth = json['SharesShortPriorMonth'] as String;
    shortRatio = json['ShortRatio'] as String;
    shortPercentOutstanding = json['ShortPercentOutstanding'] as String;
    shortPercentFloat = json['ShortPercentFloat'] as String;
    percentInsiders = json['PercentInsiders'] as String;
    percentInstitutions = json['PercentInstitutions'] as String;
    forwardAnnualDividendRate = json['ForwardAnnualDividendRate'] as String;
    forwardAnnualDividendYield = json['ForwardAnnualDividendYield'] as String;
    payoutRatio = json['PayoutRatio'] as String;
    dividendDate = json['DividendDate'] as String;
    exDividendDate = json['ExDividendDate'] as String;
    lastSplitFactor = json['LastSplitFactor'] as String;
    lastSplitDate = json['LastSplitDate'] as String;
  }

  Map<String, String> getProperties() => <String, String>{
        'symbol': symbol,
        'assetType': assetType,
        'name': name,
        'description': description,
        'cIK': cIK,
        'exchange': exchange,
        'currency': currency,
        'country': country,
        'sector': sector,
        'industry': industry,
        'address': address,
        'fiscalYearEnd': fiscalYearEnd,
        'latestQuarter': latestQuarter,
        'marketCapitalization': marketCapitalization,
        'eBITDA': eBITDA,
        'pERatio': pERatio,
        'pEGRatio': pEGRatio,
        'bookValue': bookValue,
        'dividendPerShare': dividendPerShare,
        'dividendYield': dividendYield,
        'ePS': ePS,
        'revenuePerShareTTM': revenuePerShareTTM,
        'profitMargin': profitMargin,
        'operatingMarginTTM': operatingMarginTTM,
        'returnOnAssetsTTM': returnOnAssetsTTM,
        'returnOnEquityTTM': returnOnEquityTTM,
        'revenueTTM': revenueTTM,
        'grossProfitTTM': grossProfitTTM,
        'dilutedEPSTTM': dilutedEPSTTM,
        'quarterlyEarningsGrowthYOY': quarterlyEarningsGrowthYOY,
        'quarterlyRevenueGrowthYOY': quarterlyRevenueGrowthYOY,
        'analystTargetPrice': analystTargetPrice,
        'trailingPE': trailingPE,
        'forwardPE': forwardPE,
        'priceToSalesRatioTTM': priceToSalesRatioTTM,
        'priceToBookRatio': priceToBookRatio,
        'eVToRevenue': eVToRevenue,
        'eVToEBITDA': eVToEBITDA,
        'beta': beta,
        's52WeekHigh': s52WeekHigh,
        's52WeekLow': s52WeekLow,
        's50DayMovingAverage': s50DayMovingAverage,
        's200DayMovingAverage': s200DayMovingAverage,
        'sharesOutstanding': sharesOutstanding,
        'sharesFloat': sharesFloat,
        'sharesShort': sharesShort,
        'sharesShortPriorMonth': sharesShortPriorMonth,
        'shortRatio': shortRatio,
        'shortPercentOutstanding': shortPercentOutstanding,
        'shortPercentFloat': shortPercentFloat,
        'percentInsiders': percentInsiders,
        'percentInstitutions': percentInstitutions,
        'forwardAnnualDividendRate': forwardAnnualDividendRate,
        'forwardAnnualDividendYield': forwardAnnualDividendYield,
        'payoutRatio': payoutRatio,
        'dividendDate': dividendDate,
        'exDividendDate': exDividendDate,
        'lastSplitFactor': lastSplitFactor,
        'lastSplitDate': lastSplitDate
      };
}
