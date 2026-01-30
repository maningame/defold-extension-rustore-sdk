## История изменений

### Release 10.1.0
- Версия SDK Pay 10.1.0.
- Удалено значение `ProductType.APPLICATION` и добавлено — `ProductType.SUBSCRIPTION`.
- Удалена модель `PurchaseStatus`. Вместо нее используются модели `ProductPurchaseStatus` и `SubscriptionPurchaseStatus`.
- Удалено значение `ProductPurchaseStatus.CONSUMED` и добавлено — `ProductPurchaseStatus.REFUNDING`.
- Добавлено новое поле `ProductType productType` в модель `ProductPurchaseResult`.
- Добавлено новое поле `ProductType? productType` в модели `ProductPurchaseCancelled` и `ProductPurchaseException`.
- Вместо модели `Purchase` используются модели `ProductPurchase` и `SubscriptionPurchase` реализующие интерфейс `Purchase`.
- В методе `get_purchases` обновлен фильтр по статусу покупки: теперь поддерживаются статусы `PAID`, `CONFIRMED`, `ACTIVE` и `PAUSE`.
- Добавлены модели `SubscriptionInfo`, `SubscriptionPeriod`, `SdkTheme`.
- В модель `Product` добавлено поле `SubscriptionInfo? subscriptionInfo`.
- В методы `purchase` и `purchase_two_step` добавлен дополнительный опциональный параметр `sdkTheme`.
	- `sdkTheme` — цветовая тема платежной шторки.
- Добавлена перегрузка метода `proceedIntent` с дополнительным параметром `sdkTheme: SdkTheme`.
	- `sdkTheme` — цветовая тема платежной шторки.

### Release 9.1.1
- Версия SDK pay 9.1.0.
- Обновлен класс `RuStoreIntentFilterActivity` и правила его объявления в `AndroidManifest.xml` для корректной обработки deeplink.

### Release 9.1.0
- Версия SDK pay 9.1.0.
