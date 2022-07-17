//
//  Person.swift
//  PersonMgr
//
//  Created by Utilisateur invité on 20/06/2022.
//

import Foundation

class Person {
    
var firstName: String?
var LastName: String?
var YofBirth:Int?
var Nationality : String?
var Gender: String?
    var Age : Int? {
        2022 - YofBirth!
    }
    

    init (_ fn: String, _ ln: String, year: Int,_ nation: String, gender: String){
        self.firstName = fn
        self.LastName =  ln
        self.YofBirth = year
        self.Nationality = nation
        self.Gender = gender
    }
    
    
    
    
    
    
}
