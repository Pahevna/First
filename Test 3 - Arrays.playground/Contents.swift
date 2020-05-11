//1. создать массив "дни в месяцах" - 12 элементов содержащих количество дней в соответствующем месяце
// Используя цикл for и этот массив
//- выведите количество дней в каждом месяце (без имен месяцев)
//- используйте еще один массив с именами месяцев чтобы вывести название месяца + количество дней
//- сделайте тоже самое, но используя массив тюплов с параметрами (имя месяца, кол-во дней)
//- сделайте тоже самое, только выводите дни в обратном порядке (порядок в массиве не меняется)
//- для произвольно выбранной даты (месяц и день) посчитайте количество дней до этой даты от начала года
//
//2. Сделайте первое задание к уроку номер 4 используя массивы:
//
//(создайте массив опшинал интов и посчитайте сумму)
//
//- в одном случае используйте optional binding
//- в другом forced unwrapping
//- а в третьем оператор ??
//
//3. создайте строку алфавит и пустой массив строк. В цикле пройдитесь по всем символам строки попорядку, преобразовывайте каждый в строку и добавляйте в массив, причем так, чтобы на выходе получился массив с алфавитом задом-наперед

let daysOfMonth = [31, 28, 31, 31, 30, 31, 30, 30, 31, 31, 30, 31]
for index in daysOfMonth {
    print ("\(index)")
}

let nameMonths = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November","December"]
for (index,value) in nameMonths.enumerated() {
    print ("\rIn \(value) \(daysOfMonth[index]) days")
}

let daysAndName = [("January", 31), ("February", 28), ("March", 31), ("April", 31), ("May", 30), ("June", 30), ("July", 30), ("August", 31), ("September", 30), ("October", 31), ("November",30), ("December",31)]
for (index, value) in daysAndName {
    print ("\r In \(index) \(value) days")
}

for (index, value) in daysAndName.reversed() {
print ("\r In \(index) \(value) days")
}

let randomDate = (months: "March", day: 2)
var result = 0
for (name, days) in daysAndName {
    if name != randomDate.months {
        result += days
    } else {
        result += randomDate.day
    break
    }
}
    print ("\(result)")




// swiftBook
//var myNumber = [1, 3, 5, 7, 10]
//
//if myNumber.isEmpty {
//print ("вывы")
//} else {
//    print ("Tttt")
//}
//
//myNumber.append(100)
//myNumber += [1, 100, 5]
//
//var fistNumber = myNumber[0]
//myNumber.insert(999, at: 3)
//
//for (index, number) in myNumber.enumerated() {
//    print ("number \(index+1) : \(number)")
//}
//let num = 20
//for index in 1..<num {
//    print ("\(index) умножить на 5 будет \(index * 5)")
//}
//











