//1
func greet (person: String) -> String {
    return "Hello," + person + "!"
}

print (greet(person: " Mickael"))


func greetAgain(person: String) -> String {
    return "Hello again, " + person + "!"
}
print(greetAgain(person: "Anna"))


func greet(person: String, alreadyGreeted: Bool) -> String {
    if alreadyGreeted == true {
        return greetAgain(person: person)
    } else {
        return greet(person: person)
    }
}
print(greet(person: "Tim", alreadyGreeted: true))


//2
func printAndCount (word: String) -> Int{
    print (word)
    return word.count
}

func printWithoutCount (word: String){
    let _ = printAndCount(word: word)
}
printAndCount(word: "Good Morning!")
printWithoutCount(word: "Good Morning!")

//3
func minAndMax (number array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
    if value < currentMin {
        currentMin = value
    } else if value > currentMax {
        currentMax = value
    }
}
return (currentMin, currentMax)
}

let calculate = minAndMax(number: [1,5,33,66,0,54,-4])
print ("min is \(calculate.min) and max is \(calculate.max)")


//4
func arithmeticMean (_ numberNew: Double...) -> Double {
    var total : Double = 0
    for number in numberNew {
        total += number
    }
    return total / Double(numberNew.count)
}

arithmeticMean (1,5,133,89,6)

//5 Сквозные параметры
func swapTwoInts (_ a: inout Int, _ b: inout Int) {
    let temporaryInt = a
    a = b
    b = temporaryInt
}
var someInt = 15
var anotherInt = 99
swapTwoInts(&someInt, &anotherInt)
print ("\(someInt), \(anotherInt)")

//6 Функциональные типы
func addTwoInts (a: Int, b: Int) -> Int{
    return a+b
}

print ("a + b = \(addTwoInts(a: 5, b: 9))")

let mathFunction = addTwoInts    // использование функциональных типов
print ("result \(mathFunction(2,3))")

//7 Фунциональные типы как типы параметров
func printMathResult(_ mathFunction: (_ a: Int, _ b: Int) -> Int, _ a: Int, _ b: Int) {
    print ("result \(mathFunction(a,b))")
}

printMathResult(addTwoInts, 5, 10)

//8 Функциональные типы как возвращаемые типы
/*func stepForward(_ input: Int) -> Int {
    return input + 1
}
func stepBackward(_ input: Int) -> Int {
    return input - 1
}

func chooseStepFunction (_ backward: Bool) -> (Int) -> Int {
    return backward ? stepBackward : stepForward
}


var currentValue = 2
let moveNearerToZero = chooseStepFunction(currentValue > 0)

print ("Counting to zero:")
while currentValue != 0 {
    print ("\(currentValue)...")
    currentValue = moveNearerToZero(currentValue)
}
print ("zero") */

//9 Вложенные функции
func chooseStepFunction (_ backward: Bool) -> (Int) -> Int {
    func stepForward(_ input: Int) -> Int { return input + 1 }
    func stepBackward(_ input: Int) -> Int { return input - 1 }
    return backward ? stepBackward : stepForward
}
var currentValue = -3
let moveNearerToZero = chooseStepFunction(currentValue > 0) //указатель на возвращаемую функцию 

print ("Counting to zero:")
while currentValue != 0 {
    print ("\(currentValue)...")
    currentValue = moveNearerToZero(currentValue)
}
print ("zero")
