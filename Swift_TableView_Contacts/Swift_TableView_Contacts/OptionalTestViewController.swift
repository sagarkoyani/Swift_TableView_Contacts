//
//  OptionalTestViewController.swift
//  Swift_TableView_Contacts
//
//  Created by Apple on 20/05/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class OptionalTestViewController: UIViewController {
    var level:Int!
    //var myString:String!
    var arrNames=[String]()
    var arrAges=[Int]()
    var arrAny=[Any]()
    
    var count:Int?
    var dicTest=[String:Any]()

    @IBOutlet weak var txtTitle: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        var name=String()
        name="sagar kantibhai "
        name+="koyani."
    //    print(name.uppercased())
        var _12="Faruk Ismail"
        arrNames.append("Sagar Koyani")
        arrNames.append("Vivek Bhadani")
        arrNames.append(_12)
      //  print(arrNames)
        arrAges=[18,22,13,25,36,14,25]
        arrAny=["sagar",22,"Indian","IOS Developer"]
        print(arrAny)
 //       print(arrAges)
        
        var someStrs=[String]()
        someStrs.append("Apple,")
        someStrs.append("Google,")
        someStrs.append("Shayonam")
 //       print(someStrs)
//        for i in someStrs{
//   //         print(i)
//        }
//        for (index) in someStrs.indices{
//            print("Value at \(index) is \(someStrs[index])")
//        }
        var dicJSON:[String:Any]=["name":"sagar","Age":21]
        dicJSON["Contact"]=9924901559
        print("dicJson[name]=\(dicJSON)")
        let cities = ["Delhi","Bangalore","Hyderabad"]
        let Distance = [2000,10, 620]
        
        let cityDistanceDict = Dictionary(uniqueKeysWithValues: zip(cities, Distance))
        print("CityDistanceDict:\(cityDistanceDict)") 
    dicTest=["names":"Sagar,AJay,Vijay,Vaibhav,Krunal","Ages":56]
        print("DicTest:=:-\(dicTest)")
//        var SetA=Set<Character>()
//        SetA.insert("a")
//        SetA.insert("b")
//        SetA.insert("c")
//        SetA.insert("d")
//        print("Set.Count:-\(SetA.count)")
//        if(SetA.isEmpty){
//            print("SetA is empty")
//        }else{
//            print("SetA is not Empty")
//        }
//        SetA.remove("a")
//        SetA.contains("c")
//        print("Contains:\(SetA.contains("c"))")
//
//        let evens: Set = [10,12,14,16,18]
//        let odds: Set = [5,7,9,11,13,14]
//        let primes = [2,3,5,7]
//        print("Odd + Even= \(odds.union(evens).sorted())")
//        print("ODD:-\(odds.intersection(evens))")
//        print("Substracting:-\(odds.subtracting(primes))")
    }
        
        
        
        
//        var error501 = (errorCode: 501, description: "Not Implemented",name:"sagar")
//        //print(error501.errorCode)   // prints 501.
//        //print(error501.name)
//        print("Hello , This is a \'Swift\' ")
       /* for var i in (1...12    ) {
            print(i)
        }*/
        
//        var index=0;
//        while index<11 {
//          //  print(index)
//            switch index {
//            case 0,1,2,3:
//                print("index:\(index)")
//                break
//                // print("index:\(index)")
//                /*case 2:
//                 print("index:\(index)")
//                 case 3:
//                 print("index:\(index)")*/
//            default:
//                print("default")
//            }
//            index+=1;
//
//        }/*
//        repeat{
//            if(index == 5){
//               // print("in 05 \(index)")
//                index+=1
//                break
//            }else{
//                print(index)}
//            index+=1
//        }while(index<11) */
//
//
//
//    }

}


//MATHS... S... S... S... S... S... S... S... S ......
