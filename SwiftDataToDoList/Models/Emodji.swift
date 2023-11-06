//
//  Emodji.swift
//  Shopping List
//
//  Created by Pavel Moroz on 19.04.2020.
//  Copyright © 2020 Pavel Moroz. All rights reserved.
//

import Foundation

struct Emodji {

    let name: String = ""
    let dictEmodji:[[String:String]] = createDictEmodji()

    func setupName(_ name: String) -> String {
        var emodji = "default"

        for index in dictEmodji {
            for (key,value) in index {

                if name.lowercased().contains(key.lowercased()) ||
                    //name.lowercased().prefix(4) == key.lowercased().prefix(4) ||
                    name.lowercased().prefix(5) == key.lowercased().prefix(5) {
                    emodji = value
                    //return emodji
                }
            }
        }
        return emodji

    }
}

func createDictEmodji() -> [[String:String]] {

    var dict: [[String:String]] = [[:]]
    var dictRUf: [String:String] = [:]
    var dictUAf: [String:String] = [:]
    var dictEAf: [String:String] = [:]

    for i in 0...massiveNameImage.count - 1{

        dictRUf[dictRU[i]] = massiveNameImage[i]
        dictUAf[dictUA[i]] = massiveNameImage[i]
        dictEAf[dictEA[i]] = massiveNameImage[i]
    }
    dict.append(dictEAf)
    dict.append(dictUAf)
    dict.append(dictRUf)

    return dict
}


//MARK: - NameImage
let massiveNameImage = ["baked_corn",
                        "fried_fish",
                        "pastry",
                        "crackers",
                        "cappuccino",
                        "salt",
                        "nuts_cake",
                        "roll_cake",
                        "oat_meal",
                        "custard",
                        "vanilla_cream_biscuit",
                        "roast_turkey",
                        "beer",
                        "ginger_cookies",
                        "cashew_nuts",
                        "macaroni",
                        "apple_pie",
                        "lime_cordial",
                        "irish_coffee",
                        "mayonnaise",
                        "pizza_slice",
                        "beans",
                        "chocolate_cookies",
                        "chocolate_pie",
                        "toast_marmalade",
                        "strawberry_cream_biscuit",
                        "soft_cream",
                        "boiled_egg",
                        "parmesan_cheese",
                        "strawberry_ice_cream",
                        "scotch_whisky",
                        "chocolate_glaze",
                        "chocolate",
                        "chewing_gum",
                        "fruits",
                        "macadamia_nuts",
                        "pepper",
                        "tomato_soup",
                        "sugar",
                        "eclair",
                        "green_apple",
                        "cheese",
                        "tea_bag",
                        "pudding",
                        "brazil_nuts",
                        "cola_drink",
                        "chocolate_bar",
                        "cereal",
                        "tutti_frutti_ice_cream",
                        "milk",
                        "pop_corn",
                        "strawberry",
                        "macaroons",
                        "fruitcake",
                        "soup",
                        "blueberries",
                        "cup_ice_cream",
                        "beef",
                        "frozen_banana",
                        "almond",
                        "cranberry_juice",
                        "coffee_pot",
                        "pork",
                        "bread",
                        "banana",
                        "baked_salmon",
                        "french_wine",
                        "walnut",
                        "mushrooms",
                        "pine_nuts",
                        "chocolate_ice_cream_bar",
                        "kastera",
                        "toast",
                        "clarified_butter",
                        "ketchup",
                        "grapes",
                        "potato_chips",
                        "hazelnuts",
                        "apple_juice",
                        "chest_nuts",
                        "croissant",
                        "club_sandwich",
                        "danish_cookies",
                        "peanuts_butter",
                        "cranberries",
                        "bacon",
                        "rice_cracker",
                        "butter_scotch_ice_cream",
                        "espresso",
                        "muffin",
                        "ice_cubes",
                        "sundae",
                        "sandwich",
                        "hot_chocolate",
                        "honey",
                        "ice_cream_shake",
                        "mustard",
                        "cone_ice_cream",
                        "sugar_cubes",
                        "loaf",
                        "pistachios",
                        "chocolate_mousse",
                        "grape_cake",
                        "cutlet",
                        "steamed_lobster",
                        "tomato_puree",
                        "candy",
                        "waffle",
                        "coffee",
                        "green_tea",
                        "orange",
                        "squash",
                        "chocolate_muffins",
                        "plum_cake",
                        "corn_flakes",
                        "chocolate_cake",
                        "red_apple",
                        "canned_food",
                        "wafers",
                        "cotton_candy",
                        "hamburguer",
                        "toffees",
                        "dark_rum",
                        "raspberry_syrup",
                        "flour",
                        "pear",
                        "sweets",
                        "roast_duck",
                        "roast_chicken",
                        "pineapple",
                        "white_rum",
                        "orange_juice",
                        "salad",
                        "rocket_pop",
                        "fudgesicle",
                        "sliced_bread",
                        "soft_drinks",
                        "mutton",
                        "pickle",
                        "chocolate_biscuits",
                        "butter",
                        "grilled_fish",
                        "soda_bar",
                        "lemon",
                        "buns",
                        "chocolate_cream_biscuit",
                        "egg",
                        "kebab",
                        "brown_bread",
                        "french_fries",
                        "black_forest_pastry",
                        "cherries",
                        "popsicle",
                        "hot_dog",
                        "cocktail",
                        "spaghetti",
                        "porridge",
                        "vermicelli",
                        "ice_pop",
                        "omelette",
                        "fig_tart",
                        "noodles",
                        "sausage",
                        "vanilla_ice_cream",
                        "birthday_cake",
                        "peanuts",
                        "caramel_apple",
                        "brioche",
                        "rock_candy",
                        "biscotti",
                        "pizza",
                        "fried_chicken",
                        "apples",
                        "milk_shake",
                        "cake",
                        "lollipop",
                        "ham",
                        "pasta",
                        "corn_dog",
                        "choux_pastry",
                        "carrot",
                        "kukurudza",
                        "lemon",
                        "kartoshka",
                        "dinya",
                        "cocos",
                        "chesnok",
                        "brokkol",
                        "baklajan",
                        "pomidor",
                        "persik",
                        "ogurec",
                        "mango",
                        "luk"

]

//MARK: - EA TEXT

let dictEA = ["baked corn",
              "fried fish",
              "pastry",
              "crackers",
              "cappuccino",
              "salt",
              "nuts cake",
              "roll cake",
              "oat meal",
              "custard",
              "vanilla cream biscuit",
              "roast turkey",
              "beer",
              "ginger cookies",
              "cashew nuts",
              "macaroni",
              "apple pie",
              "lime cordial",
              "irish coffee",
              "mayonnaise",
              "pizza slice",
              "beans",
              "chocolate cookies",
              "chocolate pie",
              "toast marmalade",
              "strawberry cream biscuit",
              "soft cream",
              "boiled egg",
              "parmesan cheese",
              "strawberry ice cream",
              "scotch whisky",
              "chocolate glaze",
              "chocolate",
              "chewing gum",
              "fruits",
              "macadamia nuts",
              "pepper",
              "tomato soup",
              "sugar",
              "eclair",
              "green apple",
              "cheese",
              "tea bag",
              "pudding",
              "brazil nuts",
              "cola drink",
              "chocolate bar",
              "cereal",
              "tutti frutti ice cream",
              "milk",
              "pop corn",
              "strawberry",
              "macaroons",
              "fruitcake",
              "soup",
              "blueberries",
              "cup ice cream",
              "beef",
              "frozen banana",
              "almond",
              "cranberry juice",
              "coffee pot",
              "pork",
              "bread",
              "banana",
              "baked salmon",
              "french wine",
              "walnut",
              "mushrooms",
              "pine nuts",
              "chocolate ice cream bar",
              "kastera",
              "toast",
              "clarified butter",
              "ketchup",
              "grapes",
              "potato chips",
              "hazelnuts",
              "apple juice",
              "chest nuts",
              "croissant",
              "club sandwich",
              "danish cookies",
              "peanuts butter",
              "cranberries",
              "bacon",
              "rice cracker",
              "butter scotch ice cream",
              "espresso",
              "muffin",
              "ice cubes",
              "sundae",
              "sandwich",
              "hot chocolate",
              "honey",
              "ice cream shake",
              "mustard",
              "cone ice cream",
              "sugar cubes",
              "loaf",
              "pistachios",
              "chocolate mousse",
              "grape cake",
              "cutlet",
              "steamed lobster",
              "tomato puree",
              "candy",
              "waffle",
              "coffee",
              "green tea",
              "orange",
              "squash",
              "chocolate muffins",
              "plum cake",
              "corn flakes",
              "chocolate cake",
              "red apple",
              "canned food",
              "wafers",
              "cotton candy",
              "hamburguer",
              "toffees",
              "dark rum",
              "raspberry syrup",
              "flour",
              "pear",
              "sweets",
              "roast duck",
              "roast chicken",
              "pineapple",
              "white rum",
              "orange juice",
              "salad",
              "rocket pop",
              "fudgesicle",
              "sliced bread",
              "soft drinks",
              "mutton",
              "pickle",
              "chocolate biscuits",
              "butter",
              "grilled fish",
              "soda bar",
              "lemon",
              "buns",
              "chocolate cream biscuit",
              "egg",
              "kebab",
              "brown bread",
              "french fries",
              "black forest pastry",
              "cherries",
              "popsicle",
              "hot dog",
              "cocktail",
              "spaghetti",
              "porridge",
              "vermicelli",
              "ice pop",
              "omelette",
              "fig tart",
              "noodles",
              "sausage",
              "vanilla ice cream",
              "birthday cake",
              "peanuts",
              "caramel apple",
              "brioche",
              "rock candy",
              "biscotti",
              "pizza",
              "fried chicken",
              "apples",
              "milk shake",
              "cake",
              "lollipop",
              "ham",
              "pasta",
              "corn dog",
              "choux pastry",
              "carrot",
              "Kukurudza",
              "Lime",
              "Potato",
              "Melon",
              "Coconut",
              "Garlic",
              "Broccoli",
              "Eggplant",
              "A tomato",
              "Peach",
              "Cucumber",
              "Mango",
              "Bow"
]


//MARK: - RU TEXT

let dictRU = ["печеная кукуруза",
              "рыба",
              "Тесто",
              "крекеры",
              "капучино",
              "соль",
              "пирог",
              "рулет",
              "овсянка",
              "Заварной крем",
              "печенье",
              "индейка",
              "пиво",
              "печенье",
              "кешью",
              "макароны",
              "пирог",
              "лайм",
              "кофе",
              "майонез",
              "пицца",
              "фасоль",
              "шоколадные печеньки",
              "шоколадный пирог",
              "мармелад",
              "печенье",
              "крем",
              "яйца",
              "пармезан",
              "мороженое",
              "виски",
              "глазурь",
              "шоколад",
              "жевательная резинка",
              "фрукты",
              "макадамские",
              "перец",
              "томатный суп",
              "Сахар",
              "эклер",
              "яблоко",
              "сыр",
              "чай",
              "пудинг",
              "орех",
              "кола",
              "плитка шоколада",
              "крупа",
              "Мороженое",
              "молоко",
              "Попкорн",
              "клубника",
              "миндальное",
              "Кекс",
              "суп",
              "черника",
              "чашка мороженого",
              "Говядина",
              "замороженный банан",
              "Миндаль",
              "клюквенный сок",
              "чайник",
              "свинина",
              "хлеб",
              "банан",
              "лосось",
              "******вино",
              "орех",
              "грибы",
              "кедровые орешки",
              "шоколадное мороженое",
              "Kastera",
              "тост",
              "масло",
              "кетчуп",
              "виноград",
              "чипсы",
              "фундук ",
              "яблочный сок",
              "грудные орехи",
              "Круассан ",
              "сендвич",
              "датское печенье",
              "арахисовое масло",
              "клюква ",
              "бекон",
              "крекер",
              "сливочное шотландское мороженое",
              "эспрессо",
              "Кекс ",
              "кубики льда",
              "Пломбир ",
              "Сэндвич ",
              "горячий шоколад",
              "мед",
              "коктейль из мороженого",
              "Горчица ",
              "конусное мороженое",
              "кубики сахара",
              "Буханка ",
              "фисташки ",
              "шоколадный мусс",
              "****** торт",
              "Котлета ",
              "омар на пару",
              "томатное пюре",
              "конфеты",
              "Заверять ",
              "кофе",
              "чай",
              "оранжевый",
              "сквош",
              "шоколадные маффины",
              "сливовый торт",
              "кукурузные хлопья",
              "шоколадный торт",
              "красное яблоко",
              "консервы",
              "вафли ",
              "сахарная вата",
              "гамбургер",
              "ирис ",
              "ром",
              "малиновый сироп",
              "мука",
              "груша",
              "сладости",
              "жаркое из утки",
              "жареный цыпленок",
              "ананас",
              "белый ром",
              "апельсиновый сок",
              "салат",
              "ракета поп",
              "Fudgesicle",
              "нарезанный хлеб",
              "безалкогольные напитки",
              "Баранина ",
              "соленый огурец",
              "шоколадное печенье",
              "масло",
              "рыба на гриле",
              "Содовый бар",
              "лимон",
              "плюшки ",
              "шоколадно-кремовое печенье",
              "яйцо",
              "кебаб",
              "коричневый хлеб",
              "фри",
              "Шварцвальдская выпечка",
              "вишня ",
              "Эскимо ",
              "хотдог",
              "Коктейль ",
              "спагетти",
              "Каша ",
              "вермишель",
              "ледяной поп",
              "омлет",
              "фиговый пирог",
              "лапша ",
              "колбаса",
              "Ванильное мороженое",
              "Торт на день рождения",
              "Арахис ",
              "карамельное яблоко",
              "Булочка ",
              "карамель",
              "бисквит ",
              "пицца",
              "жареный цыпленок",
              "яблоки ",
              "молочный коктейль",
              "торт",
              "леденец",
              "ветчина",
              "макаронные изделия",
              "кукурузная собака",
              "Заварное тесто",
              "морковь",
              "Кукурудза",
              "Лемон",
              "Картошка",
              "Дыня",
              "Кокос",
              "Чеснок",
              "Брокколи",
              "Баклажан",
              "Помидор",
              "Персик",
              "Огурец",
              "Манго",
              "Лук"
]

//MARK: - UA TEXT

let dictUA = [ "печена кукурудза",
               "Риба",
               "Тісто",
               "Крекери",
               "Капучино",
               "Сіль",
               "Пиріг",
               "Рулет",
               "Вівсянка",
               "Заварний крем",
               "Печиво",
               "Індичка",
               "Пиво",
               "Печиво",
               "Кешью",
               "Макарони",
               "Пиріг",
               "Лайм",
               "кава",
               "Майонез",
               "Піца",
               "Квасоля",
               "Шоколадні печеньки",
               "шоколадний пиріг",
               "Мармелад",
               "Печиво",
               "Крем",
               "Яйце",
               "Пармезан",
               "Морозиво",
               "Віскі",
               "Глазур",
               "Шоколад",
               "жувальна гумка",
               "Фрукти",
               "Макадамского",
               "Перець",
               "томатний суп",
               "Цукор",
               "Еклер",
               "Яблуко",
               "Сир",
               "Чай",
               "Пудинг",
               "Горіх",
               "Кола",
               "плитка шоколаду",
               "Крупа",
               "Морозиво",
               "Молоко",
               "Попкорн",
               "Полуниця",
               "Мигдальне",
               "Кекс",
               "Суп",
               "Чорниця",
               "Чашка морозива",
               "Яловичина",
               "Заморожений банан",
               "Мигдаль",
               "журавлиновий сік",
               "Кавник",
               "Свинина",
               "Хліб",
               "Банан",
               "Лосось",
               "Вино",
               "Горіх",
               "Гриби",
               "кедрові горішки",
               "шоколадне морозиво",
               "Kastera",
               "Тост",
               "олія",
               "Кетчуп",
               "Виноград",
               "чіпси",
               "Фундук",
               "яблучний сік",
               "Грудні горіхи",
               "Круасан",
               "Сендвіч",
               "Данське печиво",
               "арахісове масло",
               "Журавлина",
               "Бекон",
               "Крекер",
               "Вершкове шотландське морозиво",
               "Еспресо",
               "Кекс",
               "кубики льоду",
               "Пломбір",
               "Сендвіч",
               "гарячий шоколад",
               "Мед",
               "Коктейль з морозива",
               "Гірчиця",
               "Конусное морозиво",
               "Кубики цукру",
               "Буханець",
               "Фісташки",
               "шоколадний мус",
               "Виноградний торт",
               "Котлета",
               "Омар на пару",
               "Томатне пюре",
               "Цукерки",
               "Завіряти",
               "кава",
               "зелений чай",
               "Помаранчевий",
               "Сквош",
               "Шоколадні маффіни",
               "Сливовий торт",
               "кукурудзяні пластівці",
               "шоколадний торт",
               "червоне яблуко",
               "Консерви",
               "Вафлі",
               "цукрова вата",
               "Гамбургер",
               "Ірис",
               "Ром",
               "Малиновий сироп",
               "Мука",
               "Груша",
               "Солодощі",
               "Печеня з качки",
               "смажене курча",
               "Ананас",
               "Білий ром",
               "апельсиновий сік",
               "Салат",
               "Ракета поп",
               "Fudgesicle",
               "Нарізаний хліб",
               "безалкогольні напої",
               "Баранина",
               "солоний огірок",
               "шоколадне печиво",
               "олія",
               "Риба на грилі",
               "Содовий бар",
               "Лимон",
               "Плюшки",
               "Шоколадно-кремове печиво",
               "Яйця",
               "Кебаб",
               "Коричневий хліб",
               "фрі",
               "Шварцвальдська випічка",
               "Вишня",
               "Ескімо",
               "хот дог",
               "Коктейль",
               "Спагетті",
               "Каша",
               "Вермішель",
               "Крижаний поп",
               "Омлет",
               "Фіговий пиріг",
               "Локшина",
               "Ковбаса",
               "Ванільне морозиво",
               "Торт на день народження",
               "Арахіс",
               "Карамелеве яблуко",
               "Булочка",
               "Карамель",
               "Бісквіт",
               "Піца",
               "смажене курча",
               "Яблука",
               "молочний коктейль",
               "Торт",
               "Льодяник",
               "Шинка",
               "макаронні вироби",
               "Кукурудзяна собака",
               "Заварне тісто",
               "морква",
               "Кукурудза",
               "Лемон",
               "Картопля",
               "Диня",
               "Кокос",
               "Часник",
               "Брокколі",
               "Баклажан",
               "Помідор",
               "Персик",
               "Огірок",
               "Манго",
               "Цибуля"

]