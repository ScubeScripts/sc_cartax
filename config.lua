Config = {}

Config.Locale = 'en' --Here you can change the language

Config.BulletinEnable = false --https://forum.cfx.re/t/free-standalone-bulletin-customisable-notifications/4360505

Config.OxmysqlEnable = false --https://github.com/overextended/oxmysql/

Config.Price = 50 --How much should it cost

Config.Time = 10 * 60000 --Time between payments

Translation = {
    ['de'] = {
        ['text'] = 'Du hast ~r~',
        ['text1'] = '$ ~w~an ~o~KFZ-Steuern ~w~gezahlt.',
        ['mm'] = 'MORS MUTUAL',
        ['pay_text'] = 'Gebüren bezahlt',
    },

    ['en'] = {
        ['text'] = 'You have paid ~g~',
        ['text1'] = '$ ~w~for your Car taxes.',
        ['mm'] = 'MORS MUTUAL',
        ['pay_text'] = 'Fees paid',
    },
}