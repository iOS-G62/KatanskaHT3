//
//  ViewController.swift
//  HW3
//
//  Created by Ann Katanska on 5/10/18.
//  Copyright © 2018 Ann Katanska. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Strings easy
        
        print("String Easy 1")
        print("Number of names characters: \(myName(is: name))")
        
        print("String Easy 2")
        print(print("Underscore between name and surname: \((userName("Ann", "Katanska")))"))
        
        print("String Easy 3")
        print(print("Check: man or woman: \((task3Easy(someName)))"))
        
        
        // String Hard
        print("String Hard 1")
        let annsName = "AnnKatanska"
        print(print("Split the name: \(splitString(theName: annsName))"))
        
        print("String Hard 2")
        print(print("Reverse the word: \(task2StringHard(mirror: "Mirror"))"))
        
        
        //Collections Easy
        print("Collections Easy 1")
        print("Remove all elements (should be empty): \(removeAll(elements: arrayOfIntegers))")
        
        print("Collections Easy 2")
        print("Merge two arrays: \(mergeArrays(firsArray1, secondArray1))")
        
        print("Collections Easy 3")
        let yourFavorite = ["Color", "Book", "Movie", "Animal", "Food", "Drink", "Music"]
        print("Print collections elements: \(whatIs(yourFavorite: yourFavorite))")
        
        print("Collections Easy 4")
        let theseColos = ["Black", "Blue", "Lavender", "Gray", "Punch"]
        print(print("Return firs and last elements: \((iLove(theseColors: theseColos)))"))
        
        print("Collections Easy 5")
        usersNames.updateValue(30, forKey: "John")
        usersNames.updateValue(40, forKey: "Tom")
        print("Add two more values: \(usersNames)")
        
        print("Collections Easy 6")
        print("Remove element by key: \(firsThree(dict: astrologicalSigns, key: "Aries"))")
        
    }
    
    
    //String Easy:
    //1. Создать строку со своим именем. Написать метод который получает это имя и возвращает кол-во символов в строке с вашим именем. Возвращенное значение показать в консоль
    
    let name = "Ann"
    func myName(is name: String) -> Int {
        return name.count
    }
    
    
    //2. Написать метод который принимает 2 слова, например имя и фамилию, возвращает юзернейм который имеет буквы нижнего регистра и разделяет имя и фамилию символом “_”
    
    func userName(_ nameIs: String, _ surnameIs: String) -> String {
        let fullName = nameIs.lowercased() + "_" + surnameIs.lowercased()
        return fullName
    }
    
    
    //3. Создать строку с именем и своим отчеством. Создать метод который проверит его на окончание “ич/на”. Выводит “М” или “Ж” в зависимости от окончания. Также учитывать регистр букв, то есть ИЧ или Ич или На и тд. Подсказка: в классе написан метод который позволяет проверить на суффикс или префикс, найдите и используйте его
    
    var someName = "Ann Aleksandrovna"
    func task3Easy(_ mOrW: String) -> Substring {
        if mOrW.suffix(3) == "vna" {
            return "W"
        } else if mOrW.suffix(3) == "ich" {
            return "M"
        }
        return ""
    }
    
    
    //String Hard:
    
    // 1. Создать метод который будет принимать строку где слитно написано Ваши ИмяФамилия “TungFam" и возвращать строку, где они будут разделены пробелом input = “TungFam”
    
    func splitString(theName: String) -> String {
        var counter = 0
        var separ: Character = " "
        for char in theName {
            let strOfChar = String(char)
            if strOfChar.uppercased() == strOfChar {
                counter += 1
                
                if counter == 2 {
                    separ = char
                }
            }
        }
        return theName.split(separator: separ).joined(separator: " \(separ)")
    }
    
    // 2. Создать метод который принимает как аргумент строку. Метод выводит строку зеркально, например Ось -> ьсО, Привет -> тевирП. не используя reverse (сделать алгоритм самому посимвольно)
    
    func task2StringHard(mirror: String) -> String {
        var mirrorString = ""
        for charach in mirror {
            mirrorString = "\(charach)" + mirrorString
        }
        return mirrorString
    }
    
    
    
    // Collections Easy
    // 1. Создать массив со значениями типа Int. Выполнить удаление всех элементов массива.
    
    var arrayOfIntegers = [10, 20, 30, 40]
    func removeAll(elements: [Int]) {
        var elementsCopy = elements
        elementsCopy.removeAll()
    }
    
    // 2. Создать 2 массива со значениями типа  Int . Сделать соединение данных массивов. Результат вывести в консоль.
    
    var firsArray1 = [100, 200, 300, 400]
    var secondArray1 = [500, 600, 700, 800]
    func mergeArrays(_ array1: [Int], _ array2: [Int]) -> [Int] {
        return array1 + array2
    }
    
    // 3. Создать массив с любыми значениями типа строка(во viewDidLoad()). Создать метод который будет принимать как аргумент массив. Метод должен выводить в консоль элементы массива (по одному в одной строке)
    
    func whatIs(yourFavorite: [String]) {
        for someWord in yourFavorite {
            print(someWord)
        }
    }



    // 4. Создать массив с любыми значениями типа строка. Создать метод который будет принимать как аргумент массив. Метод должен возвращать массив который состоит из первого и последнего элемента массива, который был параметром

    func iLove(theseColors: [String]) -> [String] {
            return [theseColors.first!, theseColors.last!]
    }

    // 5. Создать словарь в котором ключ будет Строкой а значение Целым. Например ключ - имя, значение - возраст. Должно быть 3 элемента (3 пары). Добавить в данный словарь еще 2 новых элемента.

    var usersNames = ["Ann": 27,
                      "Vova": 27,
                      "Alex": 35]


    // 6. Создать словарь в котором ключ будет Строкой а значение Целым. Например ключ - имя, значение - возраст. Должно быть 3 элемента (3 пары). Создать метод который будет иметь 2 параметра: словарь (типа “Строка : Целое”) и ключ типа Строка. Данный метод должен удалить из полученного (как первый аргумент) словаря элемент ключ которого был передан (как второй аргумент).
    //Например: передаваемый словарь будет такой:
    //["Max": 1, "Dasha": 2, "Sergey": 3]
    //И если передать второй аргумент  "Sergey" , то метод должен удалить элемент из передаваемого массива с ключом  "Sergey" .

    let astrologicalSigns = ["Aries": 1,
                             "Taurus": 2,
                             "Gemini": 3
    ]

    func firsThree(dict: [String: Int], key: String) -> [String: Int] {
        var mutatedDict = dict
        mutatedDict.removeValue(forKey: key)
        return mutatedDict
    }
}
