//
//  main.swift
//  Assessment4
//
//  Created by Ryan Brashear on 9/10/18.
//  Copyright © 2018 Ryan Brashear. All rights reserved.
//

import Foundation

//1. Create a class called School. Give it properties to model:
// -the name of the school
// -the number of students that attend
// -if it is a public or private school
// -the year it was built
//
// Add a function called schoolDescription to the School class that will print out "\(name of school) was founded in \(the year it was built) and has \(number of students) currently in attendance"

// Create an instance of school and then call it's schoolDescription function


class School {
    var schoolName: String
    var students: Int
    var isPublic: Bool
    var yearBuilt: Int
    
    init(schoolName: String, students: Int, isPublic: Bool, yearBuilt: Int) {
        self.schoolName = schoolName
        self.students = students
        self.isPublic = isPublic
        self.yearBuilt = yearBuilt
    }
    
    func schoolDescription() {
        print("The name of the school is \(schoolName)")
        print("The number of students is \(students)")
        if isPublic == true {
            print("The school is public")
        } else {
            print("The school is private")
        }
        print("The school was built in \(yearBuilt)")
    }
    
}

/*
let barren = School(schoolName: "Barren High", students: 1313, isPublic: true, yearBuilt: 1900)

barren.schoolDescription()
*/
 
//2. Create a HighSchool class that inherits from our base school class. Add a property that will represent a rival highschool. Additionally, add a property that will represent the school mascot.
//
// Add a function called pepRally that will print "\(school name) is the best! \(rival school name) is awful!"
//
// Override the schoolDescription function to make it print "\(school name) is the best in the state since \(the year it was built)! Go \(school mascot)'s!!!"
//
// Create an instance of a highschool and call both the schoolDescription and the pepRally functions.

class Highschool: School{
    let rivalSchool: String
    let mascot: String
    
    init(rivalSchool: String, mascot: String, schoolName: String, students: Int, isPublic: Bool, yearBuilt: Int) {
        self.rivalSchool = rivalSchool
        self.mascot = mascot
        super.init(schoolName: schoolName, students: students, isPublic: isPublic, yearBuilt: yearBuilt)
    }

    func pepRally() {
        print("\(schoolName) is the best, \(rivalSchool) sucks!")
    }
    
    override func schoolDescription() {
        print("\(schoolName) is the best, because it was founded in \(yearBuilt)! Go \(mascot)!!!")
    }
}

var barren = Highschool(rivalSchool: "Glasgow", mascot: "Trojans", schoolName: "Barren County High", students: 1313, isPublic: true, yearBuilt: 1900)

/*
barren.pepRally()
barren.schoolDescription()
*/

//3.Create a new class called MagicalHighSchool (think Hogwarts from Harry Potter) that inherits from our HighSchool class. Add new properties for the size of the castle in square feet and the number of secret passages it contains.
//
// Override the pepRally function to make it print "\(school name) is the most magical school on earth! It's castle is (\castle size) square feet, and it has \(number of secret passages) secret passageways! Hurray!"
//
// Create a new function called quidditchMatch that will print "Time for the big quidditch game!"
//
// Create an instance of a magical highschool. Then call all 3 of the functions that it contains/inherits.

class MagicSchool: Highschool {
    let castleSize: Int
    let magicPaths: Int
    
    init(castleSize: Int, magicPaths: Int, rivalSchool: String, mascot: String, schoolName: String, students: Int, isPublic: Bool, yearBuilt: Int) {
        self.castleSize = castleSize
        self.magicPaths = magicPaths
        super.init(rivalSchool: rivalSchool, mascot: mascot, schoolName: schoolName, students: students, isPublic: isPublic, yearBuilt: yearBuilt)
    }
    
    override func pepRally() {
        print("\(schoolName) is the most magical school in the universe! It's castle is \(castleSize) square meters, and it has \(magicPaths)!")
    }
    
    func quiddichMatch() {
        print("Time for the big quidditch game!")
    }
}

let hogwarts = MagicSchool(castleSize: 234567, magicPaths: 12345678, rivalSchool: "Ilvermorny", mascot: "Griffin", schoolName: "Hogwarts", students: 280, isPublic: false, yearBuilt: 990)

/*
hogwarts.pepRally()
hogwarts.quiddichMatch()
*/
 
//BONUS: Create a new Date() object that represents the current date. Create a date formatter and set the custom date format for it. Use the date formatter to create a formatted String from the date object, and print the formatted String.

var currentDate = Date()
var dateFormatter = DateFormatter()
dateFormatter.dateFormat = "MMM, d, YYY"

print(dateFormatter.string(from: currentDate))
