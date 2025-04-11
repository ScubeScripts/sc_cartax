-- ░██████╗░█████╗░██╗░░░██╗██████╗░███████╗░██████╗░█████╗░██████╗░██╗██████╗░████████╗░██████╗
-- ██╔════╝██╔══██╗██║░░░██║██╔══██╗██╔════╝██╔════╝██╔══██╗██╔══██╗██║██╔══██╗╚══██╔══╝██╔════╝
-- ╚█████╗░██║░░╚═╝██║░░░██║██████╦╝█████╗░░╚█████╗░██║░░╚═╝██████╔╝██║██████╔╝░░░██║░░░╚█████╗░
-- ░╚═══██╗██║░░██╗██║░░░██║██╔══██╗██╔══╝░░░╚═══██╗██║░░██╗██╔══██╗██║██╔═══╝░░░░██║░░░░╚═══██╗
-- ██████╔╝╚█████╔╝╚██████╔╝██████╦╝███████╗██████╔╝╚█████╔╝██║░░██║██║██║░░░░░░░░██║░░░██████╔╝
-- ╚═════╝░░╚════╝░░╚═════╝░╚═════╝░╚══════╝╚═════╝░░╚════╝░╚═╝░░╚═╝╚═╝╚═╝░░░░░░░░╚═╝░░░╚═════╝░   

Config = {}

Config.Locale = 'en' --Here you can change the language

Config.Price = 30 --How much should it cost

Config.Time = 12 --Time between payments || Specified here in minutes

Config.Char = 'CHAR_MP_MORS_MUTUAL' -- Find other Chars: https://wiki.rage.mp/index.php?title=Notification_Pictures
Config.Name = 'MORS MUTUAL'

Config.Framework = 'QBCore' -- Change to 'QBCore' if using QBCore

Config.Notify = 'sc_notify' -- Use 'sc_notify' or 'standard'

--Standard Config

Config.Char = 'CHAR_MP_MORS_MUTUAL' -- Find other Chars: https://wiki.rage.mp/index.php?title=Notification_Pictures
Config.Name = 'MORS MUTUAL'

Translation = {
    ['de'] = {
        ['text'] = 'Du hast ~r~',
        ['text1'] = '$ ~w~an deine ~o~KFZ-Versicherung ~w~gezahlt.',
        ['pay_text'] = 'Versicherung bezahlt',
    },

    ['en'] = {
        ['text'] = 'You have paid ~g~',
        ['text1'] = '$ ~w~to your car insurance.',
        ['pay_text'] = 'Insurance paid',
    },
    
    ['dk'] = {
        ['text'] = 'Du har betalt ~g~',
        ['text1'] = '$ ~w~til din bilforsikring.',
        ['pay_text'] = 'Forsikring betalt',
    },
    
    ['es'] = {
        ['text'] = 'Ha pagado ~g~',
        ['text1'] = '$ ~w~a tu seguro de coche.',
        ['pay_text'] = 'Seguro pagado',
    },
    
    ['fr'] = {
        ['text'] = 'Tu as payé ~g~',
        ['text1'] = '$ ~w~à ton assurance auto.',
        ['pay_text'] = 'Assurance payée',
    },
}
