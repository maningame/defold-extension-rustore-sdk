<!-- ── Language switch (RU active) ──────────────────────────────────── -->
<div align="left" style="margin:0 0 14px 0;">

  <span style="display:inline-block;
               padding:.28rem .6rem;
               border:1px solid rgba(0,0,0,.18);
               border-radius:10px 0 0 10px;
               font-weight:400;
               font-size:12px;
               letter-spacing:.06em;
               color:#111827;
               background:linear-gradient(180deg,#e9edf2,#ffffff);
               box-shadow:inset 0 2px 6px rgba(0,0,0,.10);">
    RU
  </span><span style="display:inline-block;
               margin-left:-1px;
               padding:.28rem .6rem;
               border:1px solid rgba(0,0,0,.14);
               border-radius:0 10px 10px 0;
               font-weight:400;
               font-size:12px;
               letter-spacing:.06em;
               background:linear-gradient(180deg,#ffffff,#f3f4f6);
               box-shadow:0 1px 0 rgba(0,0,0,.06);">
    [EN][en]
  </span>

</div>
<!-- ────────────────────────────────────────────────────────────────── -->

## История изменений

### Release 10.3.1
- Версия SDK Pay 10.3.1.
- Обновлены правила обработки deeplink (см. [Обработка deeplink](https://www.rustore.ru/help/sdk/pay/defold/history/10-3-1#deeplink)).

### Release 10.3.0
- Версия SDK Pay 10.3.0.
- Добавлен глобальный объект `RuStorePayEnums` — содержит наборы перечислений для типизации параметров:
  - `PurchaseType` — тип покупки,
  - `PreferredPurchaseType` — желаемый тип покупки,
  - `UserAuthorizationStatus` — статус авторизации пользователя,
  - `ProductType` — тип продукта,
  - `ProductPurchaseStatus` — состояние покупки,
  - `SubscriptionPurchaseStatus` — состояние подписки,
  - `SdkTheme` — цветовая тема платежной шторки.

### Release 10.2.0
- Версия SDK Pay 10.2.0.
- В методы `purchase` и `purchase_two_step` добавлен необязательный параметр `enablePurchaseEventListener` (булевый тип, принимает `true`/`false`).
- Обновлены правила обработки deeplink (см. [Обработка deeplink](https://www.rustore.ru/help/sdk/pay/defold/history/10-2-0#deeplink)).
- Исправлена ошибка в методе `confirm_two_step_purchase`, из-за которой опциональный параметр `developer_payload` ошибочно требовался как обязательный.
- Пакет протестирован и поддерживается на Defold 1.9.2+.

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

[en]: CHANGELOG.en.md
