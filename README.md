Monolog Fluent Handler
======================

Monolog handler for Fluent.
Also supporting data from optional field "extra", e.g. set by IntrospectionProcessor.


Usage
-----

```php
<?php

use Monolog\Logger;
use MehrAlsNix\Monolog\Handler\FluentHandler;

$logger = new Logger('name');
$logger->pushHandler(new FluentHandler());

$logger->alert('Something wrong.');
```

### Symfony

example) **`app/config/config.yml`**

```yaml
services:
    acme.monolog.fluent_handler:
        class: MehrAlsNix\Monolog\Handler\FluentHandler
        arguments:
            - "%acme.fluent.uri%"

monolog:
    handlers:
        fluent:
            type: service
            id: acme.monolog.fluent_handler
            level: debug
```


Installation
------------

```
composer require mehr-als-nix/monolog-fluent-handler
```


Author
------

SATO Keisuke - ksato@otobank.co.jp - https://github.com/riaf


License
-------

