<!-- ── Language switch (EN active) ──────────────────────────────────── -->
<div align="left" style="margin:0 0 14px 0;">

  <span style="display:inline-block;
               padding:.28rem .6rem;
               border:1px solid rgba(0,0,0,.18);
               border-radius:10px 0 0 10px;
               font-weight:400;
               font-size:12px;
               letter-spacing:.06em;
               color:#111827;
               background:linear-gradient(180deg,#ffffff,#f3f4f6);
               box-shadow:0 1px 0 rgba(0,0,0,.06);">
    [RU][ru]
  </span><span style="display:inline-block;
               margin-left:-1px;
               padding:.28rem .6rem;
               border:1px solid rgba(0,0,0,.14);
               border-radius:0 10px 10px 0;
               font-weight:400;
               font-size:12px;
               letter-spacing:.06em;
               background:linear-gradient(180deg,#e9edf2,#ffffff);
               box-shadow:inset 0 2px 6px rgba(0,0,0,.10);">
    EN
  </span>

</div>
<!-- ────────────────────────────────────────────────────────────────── -->

## Changelog

### Release 10.3.1
- SDK Pay version 10.3.1.
- Deeplink handling rules have been updated (see [Deeplink handling](https://www.rustore.ru/help/sdk/pay/defold/10-3-1#deeplink)).

### Release 10.3.0
- SDK Pay version 10.3.0.
- Added global object `RuStorePayEnums` — contains sets of enumerations for parameter typing:
  - `PurchaseType` — purchase type,
  - `PreferredPurchaseType` — preferred purchase type,
  - `UserAuthorizationStatus` — user authorization status,
  - `ProductType` — product type,
  - `ProductPurchaseStatus` — purchase status,
  - `SubscriptionPurchaseStatus` — subscription status,
  - `SdkTheme` — payment sheet color theme.


### Release 10.2.0
- SDK Pay version 10.2.0.
- Added an optional parameter `enablePurchaseEventListener` (boolean type, accepts `true`/`false`) to the `purchase` and `purchase_two_step` methods.
- Deeplink handling rules have been updated (see [Deeplink handling](https://www.rustore.ru/help/sdk/pay/defold/history/10-2-0#deeplink)).
- Fixed an error in the `confirm_two_step_purchase` method where the optional `developer_payload` parameter was incorrectly required.
- The package has been tested and is supported on Defold 1.9.2+.

### Release 10.1.0
- SDK Pay version 10.1.0.
- Removed the value `ProductType.APPLICATION` and added `ProductType.SUBSCRIPTION`.
- Removed the `PurchaseStatus` model. Instead, models `ProductPurchaseStatus` and `SubscriptionPurchaseStatus` are used.
- Removed the value `ProductPurchaseStatus.CONSUMED` and added `ProductPurchaseStatus.REFUNDING`.
- Added a new field `ProductType productType` to the `ProductPurchaseResult` model.
- Added a new field `ProductType? productType` to the `ProductPurchaseCancelled` and `ProductPurchaseException` models.
- Instead of the `Purchase` model, the `ProductPurchase` and `SubscriptionPurchase` models that implement the `Purchase` interface are now used.
- In the `get_purchases` method, the purchase status filter has been updated: now supported statuses include `PAID`, `CONFIRMED`, `ACTIVE`, and `PAUSE`.
- Added models `SubscriptionInfo`, `SubscriptionPeriod`, and `SdkTheme`.
- Added the `SubscriptionInfo? subscriptionInfo` field to the `Product` model.
- Added an additional optional parameter `sdkTheme` to the `purchase` and `purchase_two_step` methods.
	- `sdkTheme` — color theme for the payment sheet.
- Added an overload of the `proceedIntent` method with an additional `sdkTheme: SdkTheme` parameter.
	- `sdkTheme` — color theme for the payment sheet.

### Release 9.1.1
- SDK Pay version 9.1.0.
- Updated the `RuStoreIntentFilterActivity` class and its declaration rules in `AndroidManifest.xml` for correct deeplink handling.

### Release 9.1.0
- SDK Pay version 9.1.0.

[ru]: CHANGELOG.md
[en]: CHANGELOG.en.md
