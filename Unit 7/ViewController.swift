//
//  ViewController.swift
//  Unit 7
//
//  Created by Andros Slowley on 10/23/23.
//

import UIKit

class ViewController: UIViewController {

    enum Status {
        case ready(Data)
        case loading
        case noStarted
        case cancelled
    }
    var status: [IndexPath:Status] = [IndexPath(row: 0, section: 0):.ready(Data())]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard


    }

    
}


protocol DataCollectable {
    func getName()
    func verifyInsurance()
    func updateWaitTime()
}

class DataManager: DataCollectable {
    func getName() {
        <#code#>
    }
    
    func verifyInsurance() {
        <#code#>
    }
    
    func updateWaitTime() {
        <#code#>
    }
    
    
}


protocol VitalsVerifing {
    var isTemperatureBelow100: Bool { get set }
}

class RegisteredNurse: VitalsVerifing {
    var isTemperatureBelow100: Bool
    
    
}













//struct TAS {
//    func getTopGrade(students: [Student]) {
//        students.max
//    }
////    func getTopForIOS(ios:[IOSStudents]) -> Int {
////
////    }
////
////    func getTopForAndroid(android:[AndroidStudents]) -> Int {
////
////    }
////
////    func getOverAllTop() {
////        getTopForIOS()
////        getTopForAndroid()
////        // Compare results
////    }
//}
//
//struct IOSStudents: Student {
//    func getAverage() {
//        <#code#>
//    }
//
//    var grades: [Double]
//
//
//}
//
//struct AndroidStudents: Student {
//    func getAverage() {
//        <#code#>
//    }
//
//    var grades: [Double]
//
//
//}
//
//struct BackendStudents: Student {
//    func getAverage() {
//        <#code#>
//    }
//
//    var grades: [Double]
//
//
//}
//
//protocol Student {
//    func getAverage()
//    var grades: [Double] { get set }
//}


















//struct Attraction: Codable {
//    let name: String
//    let location: String
//    let worldWonder: Bool
//    let city: City
//}
//
//struct City: Codable {
//    let population: Double
//    let unit: Unit
//    let topAttractions: [String]
//}
//
//enum Unit: String, Codable {
//    case million = "Mil"
//    case billion = "Bil"
//}
//
//let city = City.init(population: 9.4, unit: .million, topAttractions: [])
//let pyramid = Attraction(name: "Giza", location: "Egypt", worldWonder: true, city: city)
//
//let encoder = JSONEncoder()
//if let myStuff = try? encoder.encode(pyramid) {
//    defaults.set(myStuff, forKey: "Our Attraction")
//}
//
//let decoder = JSONDecoder()
//if let data = defaults.data(forKey: "Our Attraction") {
//    let attraction = try? decoder.decode(Attraction.self, from: data)
//}
