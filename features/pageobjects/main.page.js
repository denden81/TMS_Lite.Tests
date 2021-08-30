var Page = require('./page')

var MainPage = Object.create(Page, {
    /**
     * define elements
     */
    usernameMain: {
        get: function () {
            return ("//INPUT[@name='login']");
        }
    },
    passwordMain: {
        get: function () {
            return ("//INPUT[@name='password']");
        }
    },
    submitMain: {
        get: function () {
            return ("(//INPUT[@class='site-button'])[1]");
        }
    },
    Header: {
        get: function () {
            return ("//div[@id='root']/header/div");
        }
    },
	AdminProfile: {
        get: function () {
            return ("div.header-support > div.menu > div > div.text");
        }
    },
    submitAdmin: {
        get: function () {
            return ("//INPUT[@class='submit']");
        }
    },
	LoginError: {
        get: function () {
            return (".login-error");
        }
    },
	loaderAuth: {
        get: function () {
            return (".ui.loading.primary.right.floated.button");
        }
    },
    Loader: {
        get: function () {
            return ("//div[@class[contains(.,'dx-loadpanel-content-wrapper')] and contains(.,'Загрузка')]");
        }
    },
    bigLoader: {
        get: function () {
            return ("//div[@class='fa fa-spinner fa-spin loading-overlay-spinner']");
        }
    },
    OpenCloseOrderLoader: {
        get: function () {
            return (".ui.huge.active.text.loader.table-loader");
        }
    },
    messageAlert: {
        get: function () {
            return ("//div[@id='toast-root']//div[@class='Toastify__toast Toastify__toast--info']/div[@role='alert']");
        }
    },
    MinOrderNumber: {
        get: function () {
            return ("//div[text()='ao999999']");
        }
    },
    OrderWithoutOrderNumber: {
        get: function () {
            return ("//div[text()='ao999999-1']");
        }
    },
    OrderWithoutClientOrderNumber: {
        get: function () {
            return ("//div[text()='ao999999-2']");
        }
    },
    OrderWithoutOrderDate: {
        get: function () {
            return ("//div[text()='ao999999-3']");
        }
    },
    OrderWithoutOrderSoldto: {
        get: function () {
            return ("//div[text()='ao999999-4']");
        }
    },
    StatusOrderNumber: {
        get: function () {
            return ("//div[text()='ao999998']");
        }
    },
    CreateOrderButton: {
        get: function () {
            return $("div.ten.wide.column.grid-right-elements > button:nth-child(2)");
        }
    },
    orderNumber: {
        get: function () {
            return $("//input[@name='orderNumber']");
        }
    },
    clientOrderNumber: {
        get: function () {
            return $("//input[@name='clientOrderNumber']");
        }
    },
    MinOrderValue: {
        get: function () {
            return ("ao999999");
        }
    },
    OrderValueWithoutClientOrderNumber: {
        get: function () {
            return ("ao999999-2");
        }
    },
    OrderValueWithoutOrderDate: {
        get: function () {
            return ("ao999999-3");
        }
    },
    OrderValueWithoutOrderSoldto: {
        get: function () {
            return ("ao999999-4");
        }
    },
    StatusOrderValue: {
        get: function () {
            return ("ao999998");
        }
    },
    CreatedOrderNumber: {
        get: function () {
            return ("//div[text()='ao999138']");
        }
    },
    CreatedOrderValue: {
        get: function () {
            return ("ao999138");
        }
    },
    ShippedLostOrderNumbber: {
        get: function () {
            return ("//div[text()='ao999144']");
        }
    },
    ShippedLostOrderValue: {
        get: function () {
            return ("ao999144");
        }
    },
    FullReturnOrderNumbber: {
        get: function () {
            return ("//div[text()='ao999145']");
        }
    },
    FullReturnOrderValue: {
        get: function () {
            return ("ao999145");
        }
    },
    OrderCancelNumber: {
        get: function () {
            return ("//div[text()='ao999148']");
        }
    },
    OrderPickupNumber: {
        get: function () {
            return ("//div[text()='ao999150']");
        }
    },
    OrderCourierNumber: {
        get: function () {
            return ("//div[text()='ao999154']");
        }
    },
    OrderCancelValue: {
        get: function () {
            return ("ao999148");
        }
    },
    OrderPickupValue: {
        get: function () {
            return ("ao999150");
        }
    },
    OrderCourierValue: {
        get: function () {
            return ("ao999154");
        }
    },
    SomeOrderToConfirm1: {
        get: function () {
            return ("aoconf999991");
        }
    },
    SomeOrderToConfirm2: {
        get: function () {
            return ("aoconf999992");
        }
    },
    SomeOrderToConfirm3: {
        get: function () {
            return ("aoconf999993");
        }
    },
    SomeOrderToSentToTK1Value: {
        get: function () {
            return ("aosent999994");
        }
    },
    SomeOrderToSentToTK2Value: {
        get: function () {
            return ("aosent999995");
        }
    },
    SomeOrderToSentToTK3Value: {
        get: function () {
            return ("aosent999996");
        }
    },
    SomeOrderToSentToTK1: {
        get: function () {
            return ("//div[text()='aosent999994']");
        }
    },
    SomeOrderToSentToTK2: {
        get: function () {
            return ("//div[text()='aosent999995']");
        }
    },
    SomeOrderToSentToTK3: {
        get: function () {
            return ("//div[text()='aosent999996']");
        }
    },
    ClientOrderNumber: {
        get: function () {
            return $("//input[@name='clientOrderNumber']");
        }
    },
    MinClientOrderValue: {
        get: function () {
            return ("anco999999");
        }
    },
    OrderDate: {
        get: function () {
            return $("div > div:nth-child(1) > div:nth-child(3) > div > div > div > div > div > input[type=text]");
        }
    },
    TwentyDate: {
        get: function () {
            return $("//div[text()='20']");
        }
    },
    TwentyEightDate: {
        get: function () {
            return $("//div[text()='28']");
        }
    },
    EighteenDate: {
        get: function () {
            return $("//div[text()='18']");
        }
    },
    SoldToOrderCard: {
        get: function () {
            return $("div > div:nth-child(2) > div:nth-child(2) > div > div > div > input");
        }
    },
    ShippingWarehouseOrderCard: {
        get: function () {
            return $("div > div:nth-child(2) > div:nth-child(1) > div > div > div > input");
        }
    },
    AstrahanSoldToValue: {
        get: function () {
            return ("40276622");
        }
    },
    VnukovoSoldToValue: {
        get: function () {
            return ("40353173");
        }
    },
    PickupSoldToValue: {
        get: function () {
            return ("40184963");
        }
    },
    СourierSoldToValue: {
        get: function () {
            return ("40347925");
        }
    },
    ShippingsWarehouseValue: {
        get: function () {
            return ("Мейджор");
        }
    },
    ConfirmSoldTo: {
        get: function () {
            return $("div > div:nth-child(2) > div:nth-child(2) > div > div > div > div.visible.menu.transition > div.item");
        }
    },
    ConfirmShippingsWarehouse: {
        get: function () {
            return $("div > div:nth-child(2) > div:nth-child(1) > div > div > div > div.visible.menu.transition > div.item");
        }
    },
    SaveOrder: {
        get: function () {
            return $("div > div.card-actions-panel > div > button.ui.blue.button");
        }
    },
    FirstOrder: {
        get: function () {
            return ("div > div.card-header-panel > div.card-header-panel_title");
        }
    },
    EllipsisOrderPage: {
        get: function () {
            return (".ui.button.floating.scrolling.top.right.pointing.dropdown.icon");
        }
    },
    DeleteOrder: {
        get: function () {
            return ("//span[text()='Удалить заказ']");
        }
    },
    ConfirmDelButton: {
        get: function () {
            return ("//button[text()='Да']");
        }
    },
    ReqErrorInputOrder: {
        get: function () {
            return (".ui.error.input");
        }
    },
    ReqErrorInputOrderDate: {
        get: function () {
            return (".label-error");
        }
    },
    SelectRepr: {
        get: function () {
            return (".ui.fluid.selection.dropdown > .dropdown.icon");
        }
    },
    CreateRepr: {
        get: function () {
            return ("//span[text()='Создать']");
        }
    },
    ReprName: {
        get: function () {
            return $("[name='name']");
        }
    },
    ReprNameValue: {
        get: function () {
            return ("авто-тест");
        }
    },
    ReprSoldtoNumber: {
        get: function () {
            return $("//div[text()='Sold-to']");
        }
    },
    ReprDeliveryAdr: {
        get: function () {
            return $("//div[text()='Адрес доставки']");
        }
    },
    ReprSelectFields: {
        get: function () {
            return $("div.scrolling.content > div > div > div:nth-child(2) > div");
        }
    },
    ButtonSave: {
        get: function () {
            return ("//button[text()='Сохранить']");
        }
    },
    CreatedRepr: {
        get: function () {
            return $("div.ui.grid.grid-header-panel > div > div.five.wide.column > div > div > div > div.text");
        }
    },
    CreatedReprSoldtoNumber: {
        get: function () {
            return ("//span[text()='Sold-to']");
        }
    },
    CreatedReprDeliveryAdr: {
        get: function () {
            return ("//span[text()='Адрес доставки']");
        }
    },
    ReprSettings: {
        get: function () {
            return (".cogs.icon");
        }
    },
    ReprShippingsAdr: {
        get: function () {
            return $("//div[text()='Адрес отгрузки']");
        }
    },
    CreatedReprShippingsAdr: {
        get: function () {
            return ("//span[text()='Адрес отгрузки']");
        }
    },
    ButtonDel: {
        get: function () {
            return ("//button[text()='Удалить']");
        }
    },
    ConfirmDelButtonRepr: {
        get: function () {
            return ("//button[text()='OK']");
        }
    },
    DeliveryDate: {
        get: function () {
            return ("div.card-content > div > form > div > div:nth-child(2) > div:nth-child(4) > div > div > div > div > div > input[type=text]");
        }
    },
    PayerField: {
        get: function () {
            return $("[name=payer]");
        }
    },
    PayerOrderValue: {
        get: function () {
            return ("auto-payer");
        }
    },
    PalletsCount: {
        get: function () {
            return $("[name=palletsCount]");
        }
    },
    WeightKg: {
        get: function () {
            return $("[name=weightKg]");
        }
    },
    OrderAmountExcludingVAT: {
        get: function () {
            return $("[name=orderAmountExcludingVAT]");
        }
    },
    ReturnOrderPage: {
        get: function () {
            return (".arrow.left.icon");
        }
    },
    OrderCheckbox: {
        get: function () {
            return ("div.scroll-grid-container > div > table > tbody > tr:nth-child(1) > td.small-column > div.custom-checkbox > input[type=checkbox]");
        }
    },
    ConfirmOrder: {
        get: function () {
            return ("//button[text()='Подтвердить заказ']");
        }
    },
    OkButton: {
        get: function () {
            return ("//button[text()='OK']");
        }
    },
    CreateShipping: {
        get: function () {
            return ("//button[text()='Создать перевозку']");
        }
    },
    OrderShipped: {
        get: function () {
            return ("//button[text()='Заказ отгружен']");
        }
    },
    OrderDelivered: {
        get: function () {
            return ("//button[text()='Заказ доставлен']");
        }
    },
    OrderArchived: {
        get: function () {
            return ("//button[text()='Перевести в архив']");
        }
    },
    OrderRollBack: {
        get: function () {
            return ("//button[text()='Откатить заказ']");
        }
    },
    OrderRollBackEllipsis: {
        get: function () {
            return ("//span[text()='Откатить заказ']");
        }
    },
    OrderRemoveFromShipping: {
        get: function () {
            return ("//button[text()='Убрать из перевозки']");
        }
    },
    EllipsisOrdersDownPage: {
        get: function () {
            return (".ellipsis.horizontal.icon");
        }
    },
    OrderRollBackSpan: {
        get: function () {
            return ("//span[text()='Откатить заказ']");
        }
    },
    DictionaryWarehouseFieldClient: {
        get: function () {
            return ("//span[text()='Клиент']");
        }
    },
    DictionaryWarehouseFieldDeliveryMethod: {
        get: function () {
            return ("//span[text()='Способ доставки']");
        }
    },
    DictionaryWarehouseFieldAddress: {
        get: function () {
            return ("//span[text()='Адрес']");
        }
    },
    DictionaryWarehouseFieldSoldto: {
        get: function () {
            return ("//span[text()='SoldTo number']");
        }
    },
    DictionaryShippingWarehouseFieldCode: {
        get: function () {
            return ("//span[text()='Код']");
        }
    },
    DictionaryWarehouseFieldName: {
        get: function () {
            return ("//span[text()='Наименование склада']");
        }
    },
    DeleteOrderOrdersPage: {
        get: function () {
            return ("//button[text()='Удалить заказ']");
        }
    },
    OrderLost: {
        get: function () {
            return ("//button[text()='Заказ потерян']");
        }
    },
    OrderFullReturn: {
        get: function () {
            return ("//button[text()='Полный возврат']");
        }
    },
    CancelShipping: {
        get: function () {
            return ("//button[text()='Отменить перевозку']");
        }
    },
    CancelOrder: {
        get: function () {
            return ("//button[text()='Отменить заказ']");
        }
    },
    ReprDeliveryDate: {
        get: function () {
            return $("//div[text()='Дата доставки']");
        }
    },
    OrderNameFilter: {
        get: function () {
            return ("th.column-facet.column-ordernumber-facet.react-resizable > div > div.facet-actions > div.facet-actions__filter > button");
        }
    },
    ConfFilterOrderNameValue: {
        get: function () {
            return ("conf");
        }
    },
    SentFilterOrderNameValue: {
        get: function () {
            return ("sent");
        }
    },
    FirstCheckboxOrders: {
        get: function () {
            return ("//tbody/tr[1]/td[1]/div[2]/input");
        }
    },
    SecondCheckboxOrders: {
        get: function () {
            return ("//tbody/tr[2]/td[1]/div[2]/input");
        }
    },
    ThirdCheckboxOrders: {
        get: function () {
            return ("//tbody/tr[3]/td[1]/div[2]/input");
        }
    },
    FirstOrderStatusOrders: {
        get: function () {
            return ("//tbody/tr[1]/td[3]/div/div[1]/div/div");
        }
    },
    SecondOrderStatusOrders: {
        get: function () {
            return ("//tbody/tr[2]/td[3]/div/div[1]/div/div");
        }
    },
    ThirdOrderStatusOrders: {
        get: function () {
            return ("//tbody/tr[3]/td[3]/div/div[1]/div/div");
        }
    },
    FirstOrderStatusShipping: {
        get: function () {
            return ("//tbody/tr[1]/td[5]/div/div[1]/div/div");
        }
    },
    SecondOrderStatusShipping: {
        get: function () {
            return ("//tbody/tr[2]/td[5]/div/div[1]/div/div");
        }
    },
    ThirdOrderStatusShipping: {
        get: function () {
            return ("//tbody/tr[3]/td[5]/div/div[1]/div/div");
        }
    },
    CenterOfOrdersPage: {
        get: function () {
            return (".ten.wide.column.grid-right-elements");
        }
    },
    MoChoiceParametr: {
        get: function () {
            return ("//div[text()='Выберите параметр']");
        }
    },
    MoTransportCompany: {
        get: function () {
            return ("//span[text()='Транспортная компания']");
        }
    },
    MoNewValue: {
        get: function () {
            return ("//div[text()='Новое значение']");
        }
    },
    MoTkValueFmLogistic: {
        get: function () {
            return ("//div[text()='FM Logistic']");
        }
    },
    TkValueVesta: {
        get: function () {
            return ("//div[text()='Vesta']");
        }
    },
    TkValueDialavtotrans: {
        get: function () {
            return ("//div[text()='Диалавтотранс']");
        }
    },
    CityValueMoscow: {
        get: function () {
            return ("//div[text()='Москва']");
        }
    },
    CityValueIvanovo: {
        get: function () {
            return ("//div[text()='Иваново']");
        }
    },
    CityValueVolgograd: {
        get: function () {
            return ("//div[text()='Волгоград']");
        }
    },
    CityValueAstrahan: {
        get: function () {
            return ("//div[text()='Астрахань']");
        }
    },
    CityValueMoscowWithFirstSpace: {
        get: function () {
            return ("//div[text()=' Москва']");
        }
    },
    WarehouseNameAW99999: {
        get: function () {
            return ("//div[text()='aw99999']");
        }
    },
    MoSaveUpdate: {
        get: function () {
            return (".ui.icon.button.grid-mass-updates-save");
        }
    },
    OrderSentToTK: {
        get: function () {
            return ("//button[text()='Отправить заявку в ТК']");
        }
    },
    DictionaryCreateButton: {
        get: function () {
            return $("//div/div[2]/div/div[2]/button[1]");
        }
    },
    Dictionaries: {
        get: function () {
            return ("//div[text()='Справочники']");
        }
    },
    Tariffs: {
        get: function () {
            return ("//a[text()='Тарифы']");
        }
    },
    DictionaryUsers: {
        get: function () {
            return ("[name=users]");
        }
    },
    DictionaryRoles: {
        get: function () {
            return ("[name=roles]");
        }
    },
    DictionaryDocumentTypes: {
        get: function () {
            return ("[name=documentTypes]");
        }
    },
    DictionaryArticles: {
        get: function () {
            return ("[name=articles]");
        }
    },
    DictionaryTransportCompanies: {
        get: function () {
            return ("[name=transportCompanies]");
        }
    },
    DictionaryVehicleTypes: {
        get: function () {
            return ("[name=vehicleTypes]");
        }
    },
    DictionaryPikingTypes: {
        get: function () {
            return ("[name=pickingTypes]");
        }
    },
    DictionaryWarehouses: {
        get: function () {
            return ("[name=warehouses]");
        }
    },
    DictionaryShippingWarehouses: {
        get: function () {
            return ("[name=shippingWarehouses]");
        }
    },
    DictionaryTonnages: {
        get: function () {
            return ("[name=tonnages]");
        }
    },
    DictionaryBodyTypes: {
        get: function () {
            return ("[name=bodyTypes]");
        }
    },
    DictionaryCreateButton: {
        get: function () {
            return $("//div/div[2]/div/div[2]/button[1]");
        }
    },
    DictionaryFieldLogin: {
        get: function () {
            return $("[name=login]");
        }
    },
    DictionaryFieldName: {
        get: function () {
            return $("[name=name]");
        }
    },
    DictionaryFieldWarehouseName: {
        get: function () {
            return $("[name=warehouseName]");
        }
    },
    DictionaryFieldWarehouseSoldto: {
        get: function () {
            return $("[name=soldToNumber]");
        }
    },
    DictionaryFieldWarehouseAddress: {
        get: function () {
            return $("[name=address]");
        }
    },
    DictionaryFieldShippingWarehouseCode: {
        get: function () {
            return $("[name=code]");
        }
    },
    DictionaryFieldEmail: {
        get: function () {
            return $("[name=email]");
        }
    },
    DictionaryFieldUserName: {
        get: function () {
            return $("[name=userName]");
        }
    },
    DictionaryFieldNart: {
        get: function () {
            return $("[name=nart]");
        }
    },
    DictionaryFieldTitle: {
        get: function () {
            return $("[name=title]");
        }
    },
    DictionaryFieldShelfLife: {
        get: function () {
            return $("[name=shelfLife]");
        }
    },
    DictionaryUserValue: {
        get: function () {
            return ("auto_test_user");
        }
    },
    DictionaryUserValue1: {
        get: function () {
            return ("zauto_test_user1");
        }
    },
    DictionaryRoleValue: {
        get: function () {
            return ("Тестовая Роль");
        }
    },
    DictionaryRoleValue1: {
        get: function () {
            return ("Тестовая Роль1");
        }
    },
    DictionaryDocumentTypeValue: {
        get: function () {
            return ("ТестовыйТипДокумента");
        }
    },
    DictionaryDocumentTypeValue1: {
        get: function () {
            return ("ТестовыйТипДокумента1");
        }
    },
    DictionaryArticleNartValue: {
        get: function () {
            return ("testNART");
        }
    },
    DictionaryArticleNartValue1: {
        get: function () {
            return ("testNART1");
        }
    },
    DictionaryTkTitleValue: {
        get: function () {
            return ("Тест ТК");
        }
    },
    DictionaryTkTitleValue1: {
        get: function () {
            return ("Тест ТК1");
        }
    },
    DictionaryVehicleTypeValue: {
        get: function () {
            return ("Тест ТС");
        }
    },
    DictionaryVehicleTypeValue1: {
        get: function () {
            return ("Тест ТС1");
        }
    },
    DictionaryPickingTypeValue: {
        get: function () {
            return ("Тестовый тип комплектации");
        }
    },
    DictionaryPickingTypeValue1: {
        get: function () {
            return ("Тестовый тип комплектации1");
        }
    },
    DictionaryWarehouseNameValue1: {
        get: function () {
            return ("ТестКлиент1");
        }
    },
    DictionaryWarehouseNameValue2: {
        get: function () {
            return ("ТестКлиент2");
        }
    },
    DictionaryWarehouseNameValue3: {
        get: function () {
            return ("TestClient3");
        }
    },
    DictionaryShippingWarehouseNameValue: {
        get: function () {
            return ("ТестовыйСкладОтгрузки");
        }
    },
    DictionaryShippingWarehouseNameValue1: {
        get: function () {
            return ("ТестовыйСкладОтгрузки1");
        }
    },
    DictionaryWarehouseSoldToValue: {
        get: function () {
            return ("aw99999");
        }
    },
    DictionaryWarehouseSoldToValue1: {
        get: function () {
            return ("aw999997");
        }
    },
    DictionaryWarehouseSoldToValue2: {
        get: function () {
            return ("aw999998");
        }
    },
    DictionaryWarehouseSoldToValue3: {
        get: function () {
            return ("aw999999");
        }
    },
    DictionaryFieldShippingWarehouseCodeValue: {
        get: function () {
            return ("9999");
        }
    },
    DictionaryWarehouseSoldToValuesToFilter: {
        get: function () {
            return ("aw");
        }
    },
    DictionaryWarehouseAddressToValue1: {
        get: function () {
            return ("Тестовый адрес1");
        }
    },
    DictionaryWarehouseAddressToValue2: {
        get: function () {
            return ("Тестовый адрес2");
        }
    },
    DictionaryWarehouseAddressToValue3: {
        get: function () {
            return ("TestAdress3");
        }
    },
    DictionaryTonnagesNameValue: {
        get: function () {
            return ("test_tonnage");
        }
    },
    DictionaryTonnagesNameValue1: {
        get: function () {
            return ("test_tonnage1");
        }
    },
    DictionaryBodyTypeNameValue: {
        get: function () {
            return ("тестТипКузова");
        }
    },
    DictionaryBodyTypeNameValue1: {
        get: function () {
            return ("тестТипКузова1");
        }
    },
    DictionaryUserRoleInput: {
        get: function () {
            return ("//div/div[2]/div/form/div[5]/div/div/input");
        }
    },
    DictionaryUserRoleAdmin: {
        get: function () {
            return ("//div[text()='Administrator']");
        }
    },
    DictionaryActiveCheckbox: {
        get: function () {
            return ("//label[text()='Активен']");
        }
    },
    DictionaryFirstFilter: {
        get: function () {
            return ("//div/table/thead/tr/th[1]/div/div[2]/div[1]/button");
        }
    },
    DictionarySecondFilter: {
        get: function () {
            return ("//div/table/thead/tr/th[2]/div/div[2]/div[1]/button");
        }
    },
    DictionaryThirdFilter: {
        get: function () {
            return ("//div/table/thead/tr/th[3]/div/div[2]/div[1]/button");
        }
    },
    DictionaryFourthFilter: {
        get: function () {
            return ("//div/table/thead/tr/th[4]/div/div[2]/div[1]/button");
        }
    },
    DictionaryFifthFilter: {
        get: function () {
            return ("//div/table/thead/tr/th[5]/div/div[2]/div[1]/button");
        }
    },
    DictionarySixthFilter: {
        get: function () {
            return ("//div/table/thead/tr/th[6]/div/div[2]/div[1]/button");
        }
    },
    DictionaryNinthFilter: {
        get: function () {
            return ("//div/table/thead/tr/th[9]/div/div[2]/div[1]/button");
        }
    },
    CenterOfDictionaryPage: {
        get: function () {
            return (".right.aligned.eleven.wide.column");
        }
    },
    DictionaryAutoTestUser: {
        get: function () {
            return ("//div[text()='auto_test_user']");
        }
    },
    DictionaryAutoTestRole: {
        get: function () {
            return ("//div[text()='Тестовая Роль']");
        }
    },
    DictionaryAutoTestDocumentType: {
        get: function () {
            return ("//div[text()='ТестовыйТипДокумента']");
        }
    },
    DictionaryAutoTestVehicleType: {
        get: function () {
            return ("//div[text()='Тест ТС']");
        }
    },
    DictionaryAutoTestShippingWarehouse: {
        get: function () {
            return ("//div[text()='ТестовыйСкладОтгрузки']");
        }
    },
    DictionaryAutoTestPickingType: {
        get: function () {
            return ("//div[text()='Тестовый тип комплектации']");
        }
    },
    DictionaryAutoTestArticle: {
        get: function () {
            return ("//div[text()='testNART']");
        }
    },
    DictionaryAutoTestTK: {
        get: function () {
            return ("//div[text()='Тест ТК']");
        }
    },
    DictionaryAutoTestTonnage: {
        get: function () {
            return ("//div[text()='test_tonnage']");
        }
    },
    DictionaryAutoTestBodyType: {
        get: function () {
            return ("//div[text()='тестТипКузова']");
        }
    },
    DictionaryClearFilter: {
        get: function () {
            return (".ui.icon.button.clear-filter-btn");
        }
    },
    DictionaryUserFieldLogin: {
        get: function () {
            return ("//span[text()='Логин']");
        }
    },
    DictionariesFieldName: {
        get: function () {
            return ("//span[text()='Наименование']");
        }
    },
    DictionariesFieldTitle: {
        get: function () {
            return ("//span[text()='Название']");
        }
    },
    DictionaryArticleFieldNart: {
        get: function () {
            return ("//span[text()='NART']");
        }
    },
    DictionaryTKSendingToPooling: {
        get: function () {
            return ("//span[text()='Отправка в Pooling']");
        }
    },
    DictionariesFirstLineFirstValue: {
        get: function () {
            return $("//div/div[3]/div/table/tbody/tr[1]/td[1]/div");
        }
    },
    DictionariesFirstLineSecondValue: {
        get: function () {
            return $("//div/div[3]/div/table/tbody/tr[1]/td[2]/div");
        }
    },
    DictionariesFirstLineThirdValue: {
        get: function () {
            return $("//div/div[3]/div/table/tbody/tr[1]/td[3]/div");
        }
    },
    DictionariesFirstLineFourthValue: {
        get: function () {
            return $("//div/div[3]/div/table/tbody/tr[1]/td[4]");
        }
    },
    DictionariesFirstLineFifthValue: {
        get: function () {
            return $("//div/div[3]/div/table/tbody/tr[1]/td[5]/div");
        }
    },
    DictionariesFirstLineSixthValue: {
        get: function () {
            return $("//div/div[3]/div/table/tbody/tr[1]/td[6]/div");
        }
    },
    DictionariesFirstLineNinthValue: {
        get: function () {
            return $("//div/div[3]/div/table/tbody/tr[1]/td[9]/div");
        }
    },
    DictionariesSecondLineFirstValue: {
        get: function () {
            return ("//div/div[3]/div/table/tbody/tr[2]/td[1]/div");
        }
    },
    DictionaryRoleWatchOrdersPrivilegy: {
        get: function () {
            return ("//label[text()='Просмотр заказов']");
        }
    },
    NotSendToPoolingRadioButton: {
        get: function () {
            return ("//div/div[2]/div[4]/div/div[2]/label");
        }
    },
    DictionariesFilterNoAtt: {
        get: function () {
            return ("//label[text()='Нет']");
        }
    },
    FilterValueMoscow: {
        get: function () {
            return ("//label[text()='Москва']");
        }
    },
    FilterValueVolgograd: {
        get: function () {
            return ("//label[text()='Волгоград']");
        }
    },
    FilterValueLTL: {
        get: function () {
            return ("//label[text()='LTL']");
        }
    },
    TariffTKInput: {
        get: function () {
            return ("//div/div[2]/div/div[2]/div[1]/div/div/input");
        }
    },
    TariffShippingCityInput: {
        get: function () {
            return ("//div/div[2]/div/div[2]/div[2]/div/div/input");
        }
    },
    TariffDeliveryCityInput: {
        get: function () {
            return ("//div/div[2]/div/div[2]/div[3]/div/div/input");
        }
    },
    TariffTarifficationMethodInput: {
        get: function () {
            return ("//div/div[2]/div/div[2]/div[6]/div/div/input");
        }
    },
    TarifficationMethodValueFTL: {
        get: function () {
            return ("//div[text()='FTL']");
        }
    },
    TarifficationMethodValuePooling: {
        get: function () {
            return ("//div[text()='Pooling']");
        }
    },
    TariffStartDateInput: {
        get: function () {
            return ("//div/div[2]/div/div[2]/div[9]/div/div/div/div/input");
        }
    },
    TariffStopDateInput: {
        get: function () {
            return ("//div/div[2]/div/div[2]/div[10]/div/div/div/div/input");
        }
    },
    TarifficationMethodValueLTL: {
        get: function () {
            return ("//div[text()='LTL']");
        }
    },
    TariffDeleteButton: {
        get: function () {
            return (".trash.alternate.outline.icon");
        }
    },
    IvanovoCityValue: {
        get: function () {
            return ("Иваново");
        }
    },
    VolgogradCityValue: {
        get: function () {
            return ("Волгоград");
        }
    },
    AstrahanCityValue: {
        get: function () {
            return ("Астрахань");
        }
    },
    TariffDeliveryCitySortField: {
        get: function () {
            return ("//span[text()='Город доставки']");
        }
    },
    TariffTarifficationMethodSortField: {
        get: function () {
            return ("//span[text()='Способ тарификации']");
        }
    },
    TariffStartDateSortField: {
        get: function () {
            return ("//span[text()='Дата начала действия тарифов']");
        }
    },
    TariffFilterTKVesta: {
        get: function () {
            return ("//label[text()='Vesta']");
        }
    },
    WarehouseDeliveryMethodInput: {
        get: function () {
            return ("//div/div[2]/div/div[2]/div[9]/div/div/input");
        }
    },
    WarehouseDeliveryMethodValueDelivery: {
        get: function () {
            return ("//div[text()='Доставка']");
        }
    },
    WarehouseDeliveryMethodValueСourier: {
        get: function () {
            return ("//div[text()='Курьер']");
        }
    },
    WarehouseDeliveryMethodValuePickup: {
        get: function () {
            return ("//div[text()='Самовывоз']");
        }
    },
    WarehouseDeliveryMethodFilterOptionDelivery: {
        get: function () {
            return ("//label[text()='Доставка']");
        }
    },
    InfoWindow: {
        get: function () {
            return ("//div[@class='card-content-block_header_title']");
        }
    },
    gridOrders: {
        get: function () {
            return ("//div[@id='root']//table/tbody");
        }
    },
    footerSearchWarehouses: {
        get: function () {
            return ("//div[@class='visible menu transition']");
        }
    },
    gridShippings: {
        get: function () {
            return ("//div[@id='root']//form");
        }
    },
    gridTariffs: {
        get: function () {
            return ("//div[@id='root']//div[@class='card-content']");
        }
    },
    messageCheckOldTariff: {
        get: function () {
            return ("//*[contains(text(),'Тариф с указанными параметрами уже существует. Деактивировать старый тариф и продолжить сохранение? В случае отмены новый тариф не будет сохранен.')]");
        }
    },
    createNewShippings: {
        get: function () {
            return ("//*[contains(text(),'Выполнить действие \"Создать перевозку\"')]");
        }
    },
    statusOfDeliveryNoteSnipped: {
        get: function () {
            return ("//*[contains(text(),'Выполнить действие \"Накладная отгружена\"')]");
        }
    },
    statusReceivedbywarehouse: {
        get: function () {
            return ("//*[contains(text(),'Выполнить действие \"Получен складом\"')]");
        }
    },
    statusPickingUpStarted: {
        get: function () {
            return ("//*[contains(text(),'Выполнить действие \"Взят в подбор\"')]");
        }
    },
    statusPickingUpCompleted: {
        get: function () {
            return ("//*[contains(text(),'Выполнить действие \"Подбор завершен\"')]");
        }
    },
    statusTorg12Received: {
        get: function () {
            return ("//*[contains(text(),'Выполнить действие \"Торг-12 получен\"')]");
        }
    },
    statusCancelWaybill: {
        get: function () {
            return ("//*[contains(text(),'Выполнить действие \"Отменить заказ\"')]");
        }
    },
    statusDisbanded: {
        get: function () {
            return ("//*[contains(text(),'Выполнить действие \"Расформирован\"')]");
        }
    },
    statusWaybillShipped: {
        get: function () {
            return ("//*[contains(text(),'Выполнить действие \"Заказ отгружен\"')]");
        }
    },
    statusArrivedToUnloading: {
        get: function () {
            return ("//*[contains(text(),'Выполнить действие \"Прибыл на выгрузку\"')]");
        }
    },
    statusUnloaded: {
        get: function () {
            return ("//*[contains(text(),'Выполнить действие \"Выгружен\"')]");
        }
    },
    statusAccepted: {
        get: function () {
            return ("//*[contains(text(),'Выполнить действие \"Принят\"')]");
        }
    },
    statusAcceptedPartially: {
        get: function () {
            return ("//*[contains(text(),'Выполнить действие \"Принят частично\"')]");
        }
    },
    statusOfDeliveryNoteDelivered: {
        get: function () {
            return ("//*[contains(text(),'Выполнить действие \"Накладная доставлена\"')]");
        }
    },
    statusOfDeliveryNoteDeliveredCourier: {
        get: function () {
            return ("//*[contains(text(),'Выполнить действие \"Заказ доставлен\"')]");
        }
    },
    statusOfDeliveryNoteArchived: {
        get: function () {
            return ("//*[contains(text(),'Выполнить действие \"Перевести в архив\"')]");
        }
    },
    revertStatusWaybills: {
        get: function () {
            return ("//*[contains(text(),'Выполнить действие \"Откатить')]");
        }
    },
    revertStatusShipping: {
        get: function () {
            return ("//*[contains(text(),'Выполнить действие \"Откатить перевозку\"')]");
        }
    },
    deleteShippings: {
        get: function () {
            return ("//*[contains(text(),'Выполнить действие \"Удалить накладную\"')]");
        }
    },
    deleteWaybillsInShippings: {
        get: function () {
            return ("//*[contains(text(),'Выполнить действие \"Убрать из перевозки\"?')]");
        }
    },
    fullRefund: {
        get: function () {
            return ("//*[contains(text(),'Выполнить действие \"Полный возврат\"')]");
        }
    },
    refund: {
        get: function () {
            return ("//*[contains(text(),'Выполнить действие \"Возврат\"')]");
        }
    },
    recordFactOfLoss: {
        get: function () {
            return ("//div[@class[contains(.,'content')] and contains(.,'потерян')]");
        }
    },
    cancelWaybills: {
        get: function () {
            return ("//*[contains(text(),'Выполнить действие \"Отменить')]");
        }
    },
    sendWaybillsInTK: {
        get: function () {
            return ("//*[contains(text(),'Выполнить действие \"Отправить заявку в ТК\"')]");
        }
    },
    confirmRequestInTK: {
        get: function () {
            return ("//*[contains(text(),'Выполнить действие \"Подтвердить заявку\"')]");
        }
    },
    completeShipping: {
        get: function () {
            return ("//*[contains(text(),'Выполнить действие \"Завершить перевозку\"')]");
        }
    },
    bill: {
        get: function () {
            return ("//*[contains(text(),'Выполнить действие \"Выставить счет\"')]");
        }
    },
    moveToArchive: {
        get: function () {
            return ("//*[contains(text(),'Выполнить действие \"Перевести в архив\"')]");
        }
    },
    cancelShipping: {
        get: function () {
            return ("//*[contains(text(),'Выполнить действие \"Отменить отгрузку\"')]");
        }
    },
    resumeShipping: {
        get: function () {
            return ("//*[contains(text(),'Выполнить действие \"Возобновить отгрузку\"')]");
        }
    },
    cancelShipping2: {
        get: function () {
            return ("//*[contains(text(),'Выполнить действие \"Отменить перевозку\"')]");
        }
    },
    disruptionOfShipping: {
        get: function () {
            return ("//*[contains(text(),'Выполнить действие \"Срыв')]");
        }
    },
    rejectRequest: {
        get: function () {
            return ("//*[contains(text(),'Выполнить действие \"Отклонить заявку\"')]");
        }
    },
    deletelWaybills: {
        get: function () {
            return ("//*[contains(text(),'Выполнить действие \"Удалить накладную\"')]");
        }
    },
    createNewShippingsTwoWaybills: {
        get: function () {
            return ("//*[contains(text(),'Выполнить действие \"Объединить в перевозку\" для 2')]");
        }
    },
    deleteShippingsTwoWaybills: {
        get: function () {
            return ("//*[contains(text(),'Выполнить действие \"Убрать из перевозки\"')]");
        }
    },
    addToSeparateShipping: {
        get: function () {
            return ("//*[contains(text(),'Выполнить действие \"Выделить в отдельную перевозку\"')]");
        }
    },
    confirmRequest: {
        get: function () {
            return ("//*[contains(text(),'Выполнить действие \"Подтвердить заявку\"')]");
        }
    },
    confirmRequest2: {
        get: function () {
            return ("//*[contains(text(),'Выполнить действие \"Подтвердить заявку\" для 2')]");
        }
    },
    excludeRequest2: {
        get: function () {
            return ("//*[contains(text(),'Выполнить действие \"Исключить из общей перевозки\" для 2')]");
        }
    },
    deleteGrid: {
        get: function () {
            return ("//*[contains(text(),'Удалить представление')]");
        }
    },
    recordIsValid: {
        get: function () {
            return ("//*[contains(text(),'Выполнить действие \"Запись валидна\"')]");
        }
    },
    tariffDeactivate: {
        get: function () {
            return ("//*[contains(text(),'Выполнить действие \"Деактивировать тариф\"')]");
        }
    },
    deleteTariff: {
        get: function () {
            return ("//*[contains(text(),'Вы уверены, что хотите удалить эту запись?')]");
        }
    },
    addToShippingsInTK: {
        get: function () {
            return ("//*[contains(text(),'Выполнить действие \"Отправить заявку в ТК\"')]");
        }
    },
    addMaterial: {
        get: function () {
            return ("//input[@name='nart']");
        }
    },
    confirmAddMaterial: {
        get: function () {
            return ("//button[2]/i[@class='check icon']");
        }
    },
    historyWaybills: {
        get: function () {
            return ("//div[@class='tabs-card tabs-card_history']");
        }
    },
    historyShipping: {
        get: function () {
            return ("//div[@class='tabs-card tabs-card_history']");
        }
    },
    shippingsInWaybills: {
        get: function () {
            return ("//div[@id='root']//div[@class='card-header-panel']//div[@class='link-cell']");
        }
    },
    listWaybillsInShippings: {
        get: function () {
            return ("//div[@class='menu transition visible']");
        }
    },
    cardShippipngs: {
        get: function () {
            return ("//div[@class='card-content-block_menu']");
        }
    },
    waybillsInShippings: {
        get: function () {
            return ("//div[@id='root']//div[@class='grid-card-header']/div[1]/div[@role='alert']");
        }
    },
    headerWaybills: {
        get: function () {
            return ("//div[@id='root']//div[@class='card-header-panel']");
        }
    },
    fieldSearchAny: {
        get: function () {
            return ("//form/div[1]/div/input");
        }
    },
    fieldDataSearchAny: {
        get: function () {
            return ("//html/body/div[5]/div[@class='facet-input']/form//input[@class='react-datepicker-ignore-onclickoutside']");
        }
    },
    fieldDataSearchOnlyClick: {
        get: function () {
            return ("//form/div/div/div/div/input");
        }
    },
    gridDriver: {
        get: function () {
            return ("//table[@class='ui celled selectable table grid-table table-info']");
        }
    },
    gridUsers: {
        get: function () {
            return ("//div[@class='scroll-table-container']");
        }
    },
    gridAny: {
        get: function () {
            return ("//div[@class='scroll-table-container']");
        }
    },
    gridUsersSelectFields: {
        get: function () {
            return ("//div[@id='fieldModal']/div[2]//div[@class='flex-container-justify']/div[2]/div");
        }
    },
    gridUsersAcceptFields: {
        get: function () {
            return ("//div[@id='fieldModal']/div[2]//div[@class='flex-container-justify']/div[1]/div");
        }
    },
    gridRandomUsers: {
        get: function () {
            return ("//tr[@class[contains(.,'sticky-header')]]");
        }
    },
    gridMailnesia: {
        get: function () {
            return ("//body");
        }
    },
    iconDeleteMailnesia: {
        get: function () {
            return ("//img[@alt='Delete all mail']");
        }
    },
    iconYesDeleteMailnesia: {
        get: function () {
            return ("//input[@value='YES delete them !']");
        }
    },
});

module.exports = MainPage;
