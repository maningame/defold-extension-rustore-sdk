> ⚠️ Не используйте кнопку "Код → Скачать" на сайте GitFlic – этот метод не загружает файлы из Git LFS. [Инструкция по клонированию](README_CLONE.md).

## RuStore Defold плагин для приема платежей через сторонние приложения

### [🔗 Документация разработчика][10]

Плагин “RuStoreDefoldPay” помогает интегрировать в ваш проект механизм оплаты через сторонние приложения (например, SberPay или СБП).

Репозиторий содержит плагины “RuStoreDefoldPay” и “RuStoreDefoldCore”, а также демонстрационное приложение с примерами использования и настроек. Поддерживаются версии Defold 1.6.2+.


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

[10]: https://www.rustore.ru/help/sdk/pay/defold/10-1-0
