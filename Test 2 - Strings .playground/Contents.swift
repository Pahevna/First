/*//  STRINGS AND CHARACTERS

// Test1
var string = "123"
string.isEmpty

// Test 2
for c in "Hello, World" {
    print (c)
}

// Test 3
let char1: Character = "x"
string.append(char1)

// Test 4
let myStr = "privet !"
myStr.count
myStr.hasPrefix ("privet")


// Test 5
let quotation = """

The White Rabbit put on his spectacles. "Where shall I begin,
please your Majesty?" he asked.
"Begin at the beginning," the King said gravely, "and go on
till you come to the end; then stop."
"""
print (quotation)

// Test 6
// символ переноса строки (\)
let softWrappedQuotation = """
The White Rabbit put on his spectacles. "Where shall I begin, \
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on \
till you come to the end; then stop."

"""
print (softWrappedQuotation)

// Test 7
let linesWithIndentation = """
    Эта строка начинается без пробелов в начале.
        Эта строка имеет 4 пробела.
    Эта строка так же начинается без пробелов.
    """
print (linesWithIndentation)


let aStr = "\"Hello, world\" - Man"
print (aStr)

// Test 8
let dollarSign = "\u{24}"
let blackHeart = "\u{2665}"
let znak = "\u{906}"

// Test 9
let threeDoubleQuotes = """
Escaping the first quote "Hello, World" "Bye"
Escaping all three quotes Hello, Privet, Solut \"\"\"
"""
print (threeDoubleQuotes)

// Test 10
let line = #"Line 1\#nLine 2"#
print (line)

let threeMoreDoubleQuotationMarks = #"""
Here are three more double quotes: """
"""#
print (threeMoreDoubleQuotationMarks)

// Test 11 Интерполяция строк!!!

let a = 6
let str = "\(a) человек в группе нв \(Double(a) * 2.3) мест"
print (str)

// Test 12 Расширяемые наборы графем
let regionalIndicatorForUS: Character = "\u{1F1FA}\u{1F1F8}"  // U + S = флаг USA

// Test 13 Индексы строки
let greeting = "Guten Tag!"
greeting[greeting.startIndex] // G
greeting[greeting.index(before: greeting.endIndex)] // !
greeting[greeting.index(after: greeting.startIndex)] // u

let index = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[index] // a

//greeting[greeting.endIndex] // ошибка
//greeting.index(after: endIndex) // ошибка

for index in greeting.indices {
print ("\(greeting[index]) ", terminator: " ")
 } // Выведет "G u t e n T a g !"

// Test 14 Добавление и удаление символа и строки
var welcome = "Hello, World"
welcome.insert("!", at: welcome.endIndex)  //вставка символа
welcome.insert(contentsOf: " this", at: welcome.index(before: welcome.endIndex))  // вставка строки

var privet = "Hello, Mr."
privet.remove(at: privet.index(after: privet.startIndex))   //удаление символа
print (privet)

let range = privet.index(privet.endIndex, offsetBy: -5)..<privet.endIndex   // указывам диапазон индексов от -5 символов с последнего до последнего символа
privet.removeSubrange(range)  // удаление значения по указаному диапазону индексов

// Test 15 Подстроки
let str1 = "London is a capital GB"
let indexx = str1.firstIndex(of: "i") ?? str1.endIndex  //  сокращенный тернарный оператор. Если выражение - nil (в строке нет символа i), то возвращаем endIndex, иначе значение выражения
let str2 = str1[..<indexx] // подстрока строки str1
let newString = String(str2) // конвертируем подстроку в строку

// Test 16 Равенство строк и символов
let latinCapitalLetterA: Character = "\u{41}"
let cyrillicCapitalLetterA: Character = "\u{0410}"
if latinCapitalLetterA != cyrillicCapitalLetterA {
  print("Эти строки считаются не равными")   // так латинская А не равна А (кириллица)
}

// Test 17 Равенство префиксов и суффиксов
let scoresManUnited = [
"Season 1 Game 1: goals Van Persi and Rooney",
"Season 1 Game 2: goals Giggs and Rooney",
"Season 1 Game 3: goal Vidic",     //массив строк
"Season 2 Game 1: goals scores Evra and Rooney",
"Season 2 Game 2: goals scores Park and Vidic"
]

var season1GameCount = 0
for game in scoresManUnited {
    if game.hasPrefix("Season 1") {     //метод hasPrefix с массивом scoresManUnited
        season1GameCount += 1
    }
}
print ("Всего \(season1GameCount) игры в первом сезоне")

var RonneyGoal = 0
var VidicGoal = 0

for goals in scoresManUnited {
    if goals.hasSuffix("Rooney"){
    RonneyGoal += 1
    } else
        if goals.hasSuffix("Vidic") {
    VidicGoal += 1
    }
}
print ("\(RonneyGoal) голов забил Руни; \(VidicGoal) голов забил Видич")

let privetWorld = "Hello, world!"
let indexNew = privetWorld.firstIndex(of: "o") ?? privetWorld.endIndex //
let beginning = privetWorld[..<indexNew] // beginning is "Hello"
let StringNew = String(beginning)// Конвертируем в строку для хранения более продолжительное время.


//var myNewString = "Saratov is city"
//let Newrange = myNewString.index(myNewString.endIndex, offsetBy: -3)..<myNewString.endIndex
//myNewString.removeSubrange(Newrange)

// homeWork: 1 Создать пять строковых констант. Одни из констант это только цифры, другие содержат еще и буквы. Посчитать сумму всех констант, привидя их к Int. Затем представить полученное выраженние в виде строки (например, 5 + nil + 10 + nil = 15) с исипользованием интерполяции и конкатенации.
 
let myNewString1 = "128"
let myNewString2 = "19"
let myNewString3 = "1ad"
let myNewString4 = "9"
let myNewString5 = "4ta"

var myOpt1 = Int(myNewString1) ?? 0
var myOpt2 = Int(myNewString2) ?? 0
var myOpt3 = Int(myNewString3) ?? 0
var myOpt4 = Int(myNewString4) ?? 0
var myOpt5 = Int(myNewString5) ?? 0

var total = myOpt1 + myOpt2 + myOpt3 + myOpt4 + myOpt5
var total1 = String(total)

var string1 = (Int(myNewString1) != nil) ? String(myOpt1) : "nil" // тернарный условный оператор
var string2 = (Int(myNewString2) != nil) ? String(myOpt2) : "nil"
var string3 = (Int(myNewString3) != nil) ? String(myOpt3) : "nil"
var string4 = (Int(myNewString4) != nil) ? String(myOpt4) : "nil"
var string5 = (Int(myNewString5) != nil) ? String(myOpt5) : "nil"

print (string1 + " + " + string2 + " + " + string3 + " + " + string4 + " + " + string5 + " = " + total1) // конкатенация
print ("\(string1) + \(string2) + \(string3) + \(string4) + \(string5) = \(total)") // интерполяция

// homeWork: 2 Создать строку малые английские буквы от а до z. Задать константу один из символов и используя цикл for определить под каким он номером в строке

let alphabet = "absdefghijklmnopqrstyuvwxyz"
let oneSimbool : Character = "e"

var indexChar = 0

for i in alphabet {
    indexChar += 1
    if i == oneSimbool {
        print("В английском алфавите под номером \(indexChar) - буква \(i)")
    }
} */


 // Practice from book # 1

 for character in "Privetik!@#$" {
    print (character)
}

var dog : [Character] = ["d","o","g"]
let cat = String (dog)
print(cat)

let city = "Saratov"
let quality = " is dirty"
var sum = city + quality

sum += quality

let symbol : Character = "!"
sum.append(symbol)

let message = "\(city) имеет свойство \(quality)"

print ("Выражение имеет \(message.count) символа")


var london = "London is the capital of GB"

//london [london.startIndex]
//london [london.index(after: london.startIndex)]
//let indexLondon = london.index(london.startIndex, offsetBy: 3)
//london[indexLondon]

for londonIndex in london.indices {
    print ("\(london[londonIndex])", terminator: " ")
}

london.insert("!", at: london.endIndex)
london.insert(contentsOf: " but very", at: london.index(before: london.endIndex))

london.remove(at: london.startIndex)

let indexLondon = london.index(london.startIndex, offsetBy: 4)..<london.endIndex
london.removeSubrange(indexLondon)


// Practice for book #2

var str1 = "hello"
let str2 = " world"

var summ = "\(str1) \" \(str2)"

if str1.isEmpty {
    print ("String is empty")
} else {
    print ("String is not empty")
}

    

if str1.count == 0 {
    print("String is not empty")
}

for character in summ {
    print(character)
}

let a = "!"
summ.append(a)
print (summ)

let index = str1.index(str1.startIndex, offsetBy: 2)
str1.insert("a", at: index)
print (str1)

//let newIndex = str1.firstIndex(of: "e")!
let newIndex = str1.index(after: str1.startIndex)
str1.remove(at: newIndex)
print (str1)











