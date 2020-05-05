///*
/////Test1
//
//let MyDate = 2
//let MyMonth = 3
//let SecondInDay = 60 * 60 * 24
//let Result = (31 + 28 + (MyDate - 1)) * SecondInDay
//print ("Со дня моего рождения прошло - \(Result) секунд")
//Test2
//
//if MyMonth >= 1 && MyMonth <= 3 {
//    print ("Я родился в первом квартале 1989 года")
//} else if MyMonth >= 4 && MyMonth <= 6 {
//    print ("Я родился во втором квартале")
//} else if MyMonth >= 7 && MyMonth <= 9 {
//print ("Я родился во третьем квартале")
//}    else if MyMonth >= 10 && MyMonth <= 12 {
//print ("Я родился в четвертом квартале")
//}
//Test 3
//
//var cell = (x:5, y:3)
//
//if cell.x % 2 == cell.y % 2 {
//    print ("Цвет клетки - черный")
//} else {
//    print ("Цвет клетки - белый")
//}
//Test 4
//
//let StartNumberOfPlayers = 12
//let RedCardForPlayer = true
//let NumberOfPlayers = StartNumberOfPlayers - (RedCardForPlayer ? 1:0)  тернарный условный оператор выражение ? действие1 : действие2
//print ("Количество игроков на поле после удаления - \(NumberOfPlayers)")
//
// Test 5
//
//let TeamFromManchester1 = "Manchester United"
//let TeamFromManchester2 : String? = "ManCity"
//var GreatTeamFromManchester = TeamFromManchester2 ?? TeamFromManchester1  оператор объединения по nil, извлекает опционал TeamFromManchester2, так как он имеет значение. Если опционал равен nil (по умолчанию), то возвращает значение константы "TeamFromManchester1"
//
//Test 6
//
//let Players = ["Ronaldo", "Figo", "Raul"]
//let count = Players.count
//
//for i in 1...3 {
//    print ("Top player \(i) Real Madrid \(Players[i-1])") // оператор замкнутого диапазона
//}
//
//for i in 0..<count {
//    print ("Top player \(i+1) Real Madrid \(Players[i])") // оператор полузамкнутого диапазона
//}
//
//for name in Players[1...] {   оператор одностороннего диапазона
//print (name)
//}
//
// Test 7
//
//let MessiTheBestPlayer = false
//if !MessiTheBestPlayer {          логическое НЕ
//    print ("The best player - Ronaldo")
//}
//
//let SpartakFromMoscow = true
//let ZenitFromMoscow = false
//if SpartakFromMoscow && ZenitFromMoscow {   логическое И
//    print ("Дерби столицы")
//}
//else {
//    print ("Это не дерби Москвы")
//}
//
//let Smoking = false
//let Walk = true
//let ReadBook = true
//let DrinkAlcohol = false
//
//if (Smoking && Walk) || ReadBook || DrinkAlcohol {   комбинирование логических операторов
//    print ("Bad action")
//}else {
//    print ("Good action")
//}
//
// */
//
//let a = 20
//let p = 15
//let l = a < p ? a : p     // тернарный условный оператор идентичен записи
//
//if a < p {
//    l = a
//} else if p < a {
//    l = p
//}
//print (l)
//
//let a = 1
//let b = 2
//let c = 3
//
//if a > b || b > c {
//    print (a)
//}




