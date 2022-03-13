//
//  UserModel.swift
//  LoginApp
//
//  Created by Валерия Смецкая on 13.03.2022.
//

import Foundation
import UIKit

struct User {
    let userName: String
    let password: String
    let person: Person
}

struct Person {
    let name: String
    let surname: String
    let age: Int
    let picture: UIImage
    let fromCountry: String
    let liveInCity: String
    let hobbies: String
    let education: String
    let workExperience: String
}

let person = Person(
    name: "Валерия",
    surname: "Смецкая",
    age: 22,
    picture: #imageLiteral(resourceName: "Image"),
    fromCountry: "Украины",
    liveInCity: "Cанкт-Петербуге",
    hobbies:
"""
Я обожаю играть в консольные и компьютерные игры.
Как ни странно, этот мир другой реальности мне показали мама и дедушка. Первая моя игра была "Принц Персии". А любимых у меня две, конечно же это "Ведьмак 3" и "World of Warcraft"

Смена деятельности - лучший отдых, особенно когда он ещё и активный, поэтому всё где есть слова "кататься", "гулять", "поехать" и т.д. - это для меня 😃
""",
    education:
"""
Окончила 2,5 курса в медицинском университете. Поняла что не моё, сейчас мечтаю поступить в один из университетов Бостона, и развивать себя в IT сфере.
""",
    workExperience:
"""
С 16 лет стала подрабатывать в сфере общественного питания. Карьерная лестница была примерно такая: официант - бармен - менеджер. А не так давно я полностью погрузилась в учёбу, так как заинтересовалась IOS разработкой и хочу развиваться в этом направлении.
"""
)

let user = User(userName: "Valeriia", password: "Password", person: person)
