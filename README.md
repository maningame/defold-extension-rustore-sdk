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

> ⚠️ Не используйте кнопку "Код → Скачать" на сайте GitFlic – этот метод не загружает файлы из Git LFS. [Инструкция по клонированию](README_CLONE.md).

## RuStore Defold плагин для приема платежей через сторонние приложения

### [🔗 Документация разработчика][10]

Плагин “RuStoreDefoldPay” помогает интегрировать в ваш проект механизм оплаты через сторонние приложения (например, SberPay или СБП).

Репозиторий содержит плагины “RuStoreDefoldPay” и “RuStoreDefoldCore”, а также демонстрационное приложение с примерами использования и настроек. Поддерживаются версии Defold 1.9.2+.


### Сборка примера приложения

Вы можете ознакомиться с демонстрационным приложением содержащим представление работы всех методов sdk:
- [pay_example](https://gitflic.ru/project/rustore/rustore-defold-pay/file?file=pay_example)


### Установка плагина в свой проект

1. Скопируйте папки _“pay_example / extension_rustore_pay”_ и _“pay_example / extension_rustore_core”_ в корень вашего проекта.


### Пересборка плагина

Если вам необходимо изменить код библиотек плагинов, вы можете внести изменения и пересобрать подключаемые .jar файлы.

1. Откройте в вашей IDE проект Android из папки _“extension_libraries”_.

2. Выполните сборку проекта командой gradle assemble.

При успешном выполнении сборки в папках _“pay_example / extension_rustore_pay / lib / android”_ и _“pay_example / extension_rustore_core / lib / android”_ будут обновлены файлы:
- RuStoreDefoldPay.jar
- RuStoreDefoldCore.jar


### История изменений

[CHANGELOG](CHANGELOG.md)


### Условия распространения

Данное программное обеспечение, включая исходные коды, бинарные библиотеки и другие файлы распространяется под лицензией MIT. Информация о лицензировании доступна в документе [MIT-LICENSE](MIT-LICENSE.txt).


### Техническая поддержка

Дополнительная помощь и инструкции доступны на странице [rustore.ru/help/](https://www.rustore.ru/help/) и по электронной почте [support@rustore.ru](mailto:support@rustore.ru).

[10]: https://www.rustore.ru/help/sdk/pay/defold/10-3-1

[en]: README.en.md
