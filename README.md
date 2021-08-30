1.Установить git
2.Скачать репозиторий тестов (для тмс lite git@gitlab.devlogics.ru:artlogics/tms-lite.tests.git )
Установить node (12)
Установить yarn  https://yarnpkg.com/en/
В корне директории с тестами выполнить команду yarn install
Переключить ветку с master на develop в репозитории
В консоли запустить тесты командой:

BDF
npx wdio wdio.bdftest1.conf.ts --cucumberOpts.tagExpression='@MainBDF'

Plus
npx wdio wdio.plustest1.conf.ts --cucumberOpts.tagExpression='@MainPlus'

Roust
npx wdio wdio.roustdev.conf.ts --cucumberOpts.tagExpression='@MainRoust'

