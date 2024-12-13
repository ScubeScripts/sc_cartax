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

Config.Notify = {
    {name = "bulletin", enabled = false},
    {name = "default", enabled = false},
    {name = "ox_lib", enabled = true},
}

--Bulletin Config
Config.Delay = 5000 --How long should the notification be displayed || Default 5 seconds
Config.Position = 'bottomleft' -- "bottomleft", "topleft", "topright", "bottomright", "bottom", "top"
Config.Progress = true -- true/false
Config.exitAnim = 'fadeOut'
Config.Theme = 'default' -- Other Themes: (default, success, info, warning, error)

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
