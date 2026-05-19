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
               background:linear-gradient(180deg,#ffffff,#e9edf2);
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

> ⚠️ Do not use the "Code → Download" button on the GitFlic website – this method does not download files from Git LFS. [Cloning instructions](README_CLONE.en.md).

## RuStore Defold plugin for payments through third-party applications

### [🔗 Developer documentation][10]

The "RuStoreDefoldPay" plugin helps integrate a payment mechanism through third-party applications (for example, SberPay or СБП).

The repository contains the "RuStoreDefoldPay" and "RuStoreDefoldCore" plugins, as well as a demo application with examples of usage and settings. Defold versions 1.9.2+ are supported.

### Building the sample application

You can explore the demo application containing an overview of all SDK methods:
- [pay_example](https://gitflic.ru/project/rustore/rustore-defold-pay/file?file=pay_example)

### Installing the plugin in your project

1. Copy the folders _“pay_example / extension_rustore_pay”_ and _“pay_example / extension_rustore_core”_ to the root of your project.

### Rebuilding the plugin

If you need to modify the plugin library code, you can make changes and rebuild the included .jar files.

1. Open the Android project in your IDE from the _“extension_libraries”_ folder.

2. Build the project using the gradle assemble command.

Upon successful completion, the following files will be updated in the folders _“pay_example / extension_rustore_pay / lib / android”_ and _“pay_example / extension_rustore_core / lib / android”_:
- RuStoreDefoldPay.jar
- RuStoreDefoldCore.jar

### Change log

[CHANGELOG](CHANGELOG.en.md)

### Licensing terms

This software, including source codes, binary libraries, and other files, is distributed under the MIT license. Licensing information is available in the [MIT-LICENSE](MIT-LICENSE.txt) document.

### Technical support

Additional help and instructions are available at [rustore.ru/help/](https://www.rustore.ru/help/en/) and by email [support@rustore.ru](mailto:support@rustore.ru).

[10]: https://www.rustore.ru/help/en/sdk/pay/defold/10-3-1

[ru]: README.md
[en]: README.en.md
