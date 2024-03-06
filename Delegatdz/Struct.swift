//
//  Struct.swift
//  Delegatdz
//
//  Created by Swift on 01.03.2024.
//

import Foundation

//создать таблицу, которая будет отображать персонажей из фильма "Гарри Поттер". В таблице будут селдующие данные: имя, Фамилия, Факультет, Палочка.
//Каждая ячейка должна соотвествовать цвету факультета.
//Грифиндор - красный
//Слизерин - зеленый
//Коктовран - синий
//Пуффендуй - желтый

struct HarryPotterCharacter {
    let name: String
    let surname: String
    let house: String
    let wand: String

    init(name: String, surname: String, house: String, wand: String) {
        self.name = name
        self.surname = surname
        self.house = house
        self.wand = wand
    }
}

