/* eslint-disable indent,no-undef */
var Page = require('./page')

var LoginPage = Object.create(Page, {
    /**
     * define elements
     */
    usernameMain: {
        get: function () {
            return  $("//input[@name='login']");
        }
    },
    passwordMain: {
        get: function () {
            return $("//input[@name='password']");
        }
    },
    submitButton: {
        get: function () {
            return $("//form/button[.='Войти']");
        }
    },
    select_lang: {
        get: function () {
            return $("//div[@id='root']//div[@role='listbox']");
        }
    },
    selectedRussian: {
        get: function () {
            return $("//div[@role[contains(.,'alert')] and contains(.,'Русский')]");
        }
    },
    russian: {
        get: function () {
            return $("//span[@class[contains(.,'text')] and contains(.,'Русский')]");
        }
    },
	american: {
        get: function () {
            return $("//span[@class[contains(.,'text')] and contains(.,'English')]");
        }
    },
    buttonEnter: {
        get: function () {
            return $("//button[@class[contains(.,'ui primary right floated button')]]");
        }
    },
    buttonTrashInTariff: {
        get: function () {
            return $("//div[@class='card-header-panel']/div[@class='card-header-panel_actions']/div/button");
        }
    },
    gridOrders: {
        get: function () {
            return $("//div[@id='root']/header/div/a[@href='/grid/orders']");
        }
    },
    createOrderButton: {
        get: function () {
            return $("//div[@id='root']/div[@class='container']//div[@class='row']/div[4]/button[1]");
        }
    },
    createShippingsButton: {
        get: function () {
            return $("//div[@id='root']/div/div[2]/div/div[4]/button");
        }
    },
    createTariffsButton: {
        get: function () {
            return $("//div[@id='root']/div/div[2]/div/div[2]/button");
        }
    },
    selectShippingWarehouses: {
        get: function () {
            return $("//span[.='Склад отгрузки']/../..//div[@role='combobox']/input");
        }
    },
    selectShipToCodeWarehouses: {
        get: function () {
            return $("//span[.='Ship To Code *']/../..//div[@role='combobox']/input");
        }
    },
    selectDeliveryWarehouses: {
        get: function () {
            return $("//span[.='Склад доставки']/../..//div[@role='combobox']/input");
        }
    },
    selectDataShipping: {
        get: function () {
            return $("//span[.='Дата отгрузки *']/../..//div[@class='react-datepicker__input-container']/input");
        }
    },
    selectDataDelivery: {
        get: function () {
            return $("//span[.='Дата доставки *']/../..//div[@class='react-datepicker__input-container']/input");
        }
    },
    CountPalletInOrder: {
        get: function () {
            return $("//span[.='Предварительное *']/..//..//input[@name='palletsCount']");
        }
    },
    CountMonoPalletInOrder: {
        get: function () {
            return $("//input[@name='monoPalletsCount']");
        }
    },
    CountMixPalletInOrder: {
        get: function () {
            return $("//input[@name='mixPalletsCount']");
        }
    },
    FieldSearchOrdersGrid: {
        get: function () {
            return $("//div[@id='root']/div[@class='container']//input");
        }
    },
    fieldSearchAnyField: {
        get: function () {
            return $("//div[@id='root']/div//input");
        }
    },
    fieldNumberSCJinSap: {
        get: function () {
            return $("//input[@name='sapOrderNumber']");
        }
    },
    CountBoxesInOrder: {
        get: function () {
            return $("//input[@name='boxesCount']");
        }
    },
    CountWeightInOrder: {
        get: function () {
            return $("//input[@name='weightKg']");
        }
    },
    CountVolumeInOrder: {
        get: function () {
            return $("//input[@name='volume']");
        }
    },
    deliveryNumber: {
        get: function () {
            return $("//input[@name='deliveryNumber']");
        }
    },
    tabShippings: {
        get: function () {
            return $("//a[contains(text(),'Перевозки')]");
        }
    },
    tabWaybills: {
        get: function () {
            return $("//a[contains(text(),'Накладные')]");
        }
    },
    columnTransportCompany: {
        get: function () {
            return $("//span[contains(text(),'Транспортная компания')]");
        }
    },
    CreateShippingsButton: {
        get: function () {
            return $("//div[4]/button");
        }
    },
    gridTariffs: {
        get: function () {
            return $("//span[@class[contains(.,'table-header-menu_title')] and contains(.,'Тарифы')]");
        }
    },
    firstElementInList: {
        get: function () {
            return $("//td[2]");
        }
    },
    arrowMainMenu: {
        get: function () {
            return $("//div[@id='root']/header/div/div[@class='header-support']/div[@class='menu']/div[@role='listbox']");
        }
    },
    buttonLogout: {
        get: function () {
            return $("//div[.='Выйти']");
        }
    },
    firstCheckboxInList: {
        get: function () {
            return $("//td/div[2]/input");
        }
    },
    firstCheckboxInListSCJ: {
        get: function () {
            return $("//td/div/input");
        }
    },
    allCheckboxInList: {
        get: function () {
            return $("//input[@type='checkbox']");
        }
    },
    panelMO: {
        get: function () {
            return $("//div[@id='scroll-grid-container']//div[@class='row']");
        }
    },
    iconPencil: {
        get: function () {
            return $("//table/tbody/tr/td[3]/button[1]");
        }
    },
    iconBacket: {
        get: function () {
            return $("//table/tbody/tr/td[3]/button[2]");
        }
    },
    addOptionsMO: {
        get: function () {
            return $("//div[@role='listbox']/i[@class='ellipsis horizontal icon']");
        }
    },
    numberCarriageInHeader: {
        get: function () {
            return $("//div[@class='card-header-panel']//div[@class='link-cell']");
        }
    },
    numberCarriageInHeaderInMessage: {
        get: function () {
            return $("//div/div[@class='header']");
        }
    },
    numberCarriageInHeaderInGrid: {
        get: function () {
            return $("//div[@id='scroll-grid-container']//table//tr/td[4]");
        }
    },
    numberCarriageInHeaderInGridSCJ: {
        get: function () {
            return $("//div[@id='scroll-grid-container']//table//tr/td[4]");
        }
    },
    addWaybillsinShippingsMO: {
        get: function () {
            return $("//button[contains(text(),'в перевозку')]");
        }
    },
    fieldFormAddWaybilssInShippings: {
        get: function () {
            return $("//div[@class[contains(.,'header')] and contains(.,'Заполните форму')]");
        }
    },
    numberFieldShippings: {
        get: function () {
            return $("//div[@role='combobox']/input");
        }
    },
    buttonOk: {
        get: function () {
            return $("//button[contains(text(),'Ok')]");
        }
    },
    optionsChangeStatusShippings: {
        get: function () {
            return $("//div[@id='root']//div[@class='grid-card-header']/div[2]/i[@class='ellipsis horizontal icon']");
        }
    },
    optionsChangeStatusWaybills: {
        get: function () {
            return $("//div[@id='root']//div[@class='grid-card-header']/div[@role='listbox']/i[@class='ellipsis horizontal icon']");
        }
    },
    createNewDriver: {
        get: function () {
            return $("//div[@id='root']/div//div[@class='row']/div[2]/button[1]");
        }
    },
    createNewUser: {
        get: function () {
            return $("//div[@id='root']/div//i[@class='add icon']");
        }
    },
    createNewAny: {
        get: function () {
            return $("//div[@id='root']/div//i[@class='add icon']");
        }
    },
    buttonInTransportation: {
        get: function () {
            return $("//span[contains(text(),'Создать перевозку')]");
        }
    },
    statusOfDeliveryNoteSnipped: {
        get: function () {
            return $("//span[contains(text(),'Накладная отгружена')]");
        }
    },
    statusReceivedbywarehouse: {
        get: function () {
            return $("//span[contains(text(),'Получен складом')]");
        }
    },
    statusPickingUpStarted: {
        get: function () {
            return $("//span[contains(text(),'Взят в подбор')]");
        }
    },
    statusPickingUpCompleted: {
        get: function () {
            return $("//span[contains(text(),'Подбор завершен')]");
        }
    },
    statusTorg12Received: {
        get: function () {
            return $("//span[contains(text(),'Торг-12 получен')]");
        }
    },
    statusCancelWaybill: {
        get: function () {
            return $("//span[contains(text(),'Отменить заказ')]");
        }
    },
    statusDisbanded: {
        get: function () {
            return $("//span[contains(text(),'Расформирован')]");
        }
    },
    statusWaybillShipped: {
        get: function () {
            return $("//span[contains(text(),'Заказ отгружен')]");
        }
    },
    statusArrivedToUnloading: {
        get: function () {
            return $("//span[contains(text(),'Прибыл на выгрузку')]");
        }
    },
    statusUnloaded: {
        get: function () {
            return $("//span[contains(text(),'Выгружен')]");
        }
    },
    statusAccepted: {
        get: function () {
            return $("//span[contains(text(),'Принят')]");
        }
    },
    statusAcceptedPartially: {
        get: function () {
            return $("//span[contains(text(),'Принят частично')]");
        }
    },
    statusOfDeliveryNoteDelivered: {
        get: function () {
            return $("//span[contains(text(),'Накладная доставлена')]");
        }
    },
    statusOfDeliveryNoteDeliveredCourier: {
        get: function () {
            return $("//span[contains(text(),'Заказ доставлен')]");
        }
    },
    statusOfDeliveryNoteArchived: {
        get: function () {
            return $("//span[contains(text(),'Перевести в архив')]");
        }
    },
    revertStatusWaybills: {
        get: function () {
            return $("//span[contains(text(),'Откатить')]");
        }
    },
    revertStatusShipping: {
        get: function () {
            return $("//span[contains(text(),'Откатить перевозку')]");
        }
    },
    deleteShippings: {
        get: function () {
            return $("//span[contains(text(),'Убрать из перевозки')]");
        }
    },
    fullRefund: {
        get: function () {
            return $("//span[contains(text(),'Полный возврат')]");
        }
    },
    refund: {
        get: function () {
            return $("//span[contains(text(),'Возврат')]");
        }
    },
    recordFactOfLoss: {
        get: function () {
            return $("//span[contains(text(),'потерян')]");
        }
    },
    cancelWaybills: {
        get: function () {
            return $("//span[contains(text(),'Отменить')]");
        }
    },
    deleteWaybills: {
        get: function () {
            return $("//span[contains(text(),'Удалить')]");
        }
    },
    sendWaybillsInTK: {
        get: function () {
            return $("//span[contains(text(),'Отправить заявку в ТК')]");
        }
    },
    confirmRequestInTK: {
        get: function () {
            return $("//span[contains(text(),'Подтвердить заявку')]");
        }
    },
    completeShipping: {
        get: function () {
            return $("//span[contains(text(),'Завершить перевозку')]");
        }
    },
    bill: {
        get: function () {
            return $("//span[contains(text(),'Выставить счет')]");
        }
    },
    moveToArchive: {
        get: function () {
            return $("//span[contains(text(),'Перевести в архив')]");
        }
    },
    cancelShipping: {
        get: function () {
            return $("//span[contains(text(),'Отменить отгрузку')]");
        }
    },
    resumeShipping: {
        get: function () {
            return $("//span[contains(text(),'Возобновить отгрузку')]");
        }
    },
    cancelShipping2: {
        get: function () {
            return $("//span[contains(text(),'Отменить перевозку')]");
        }
    },
    disruptionOfShipping: {
        get: function () {
            return $("//span[contains(text(),'Срыв')]");
        }
    },
    rejectRequest: {
        get: function () {
            return $("//span[contains(text(),'Отклонить заявку')]");
        }
    },
    optionsSelectGrid: {
        get: function () {
            return $("//div[@id='root']/div[@class='container']//div[@role='listbox']/i[@class='dropdown icon']");
        }
    },
    searchFieldsInNewGrid: {
        get: function () {
            return  $("//div[@id='fieldModal']//form/div[2]/input");
        }
    },
    optionsSettingGrid: {
        get: function () {
            return $("//div[@id='root']/div[@class='container']/div[2]//i[@class='cogs icon']");
        }
    },
    iconSortUp: {
        get: function () {
            return $("//div[@class='facet-actions__sort']/i[@class='sort amount up icon']");
        }
    },
    iconSortDown: {
        get: function () {
            return $("//div[@class='facet-actions__sort']/i[@class='sort amount down icon']");
        }
    },
    alertMessage: {
        get: function () {
            return $("//div[@class='Toastify__toast-container Toastify__toast-container--top-right']/div[@class='Toastify__toast Toastify__toast--info']/div[@role='alert']");
        }
    },
    alertMessageClose: {
        get: function () {
            return $("//div[@class='Toastify__toast-container Toastify__toast-container--top-right']/div/button[@class='Toastify__close-button Toastify__close-button--info']");
        }
    },
    returnCostWithoutVAT: {
        get: function () {
            return $("//input[@name='returnCostWithoutVAT']");
        }
    },
    returnComment: {
        get: function () {
            return $("//textarea[@name='comment']");
        }
    },
    returnReasonIcon: {
        get: function () {
            return $("//label[.='Причина возврата']/../..//i[@class='dropdown icon']");
        }
    },
    returnTypeIcon: {
        get: function () {
            return $("//label[.='Тип возврата']/../..//i[@class='dropdown icon']");
        }
    },
    searchEmailMailnesia: {
        get: function () {
            return $("//input");
        }
    },
    searchArrowMailnesia: {
        get: function () {
            return $("//input[@id='sm']");
        }
    },
    iconDeleteMailnesia: {
        get: function () {
            return $("//img[@alt='Delete all mail']");
        }
    },
    iconYesDeleteMailnesia: {
        get: function () {
            return $("//input[@value='YES delete them !']");
        }
    },
    messageEmptyMailbox: {
        get: function () {
            return $("//div[@id='empty_mailbox']");
        }
    },
});


module.exports = LoginPage;
