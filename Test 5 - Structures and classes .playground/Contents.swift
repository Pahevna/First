// 1. Синтактис объявления структуров и классов

struct Resolution {
    var widht = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let someResolution = Resolution()   //образование экземпляра структуры и класса
let someVideomode = VideoMode()

someResolution.height
someVideomode.resolution.widht   // доступ к свойствам
someVideomode.resolution.widht = 1280

let vga = Resolution(widht: 640, height: 480) // поэлементные инициализаторы структурных типов

let hd = Resolution (widht: 1920, height: 1080)
var cinema = hd
cinema.widht = 2040
cinema.widht   // струкруры - значения типа (value type) - значения скопированы в новый экземпляр
hd.widht

let TenEighty = VideoMode()
TenEighty.resolution = hd
TenEighty.interlaced = true
TenEighty.frameRate = 25.0
TenEighty.name = "1080i"

let alsoTenEighty = TenEighty
alsoTenEighty.frameRate = 40.0

TenEighty.frameRate
alsoTenEighty.frameRate  // классы - ссылочный тип. Классы TenEighty и AlsoEighty ссылаются на один и тот же экземпляр Videomode




