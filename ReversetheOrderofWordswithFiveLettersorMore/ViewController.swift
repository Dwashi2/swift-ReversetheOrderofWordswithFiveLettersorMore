//
//  ViewController.swift
//  ReversetheOrderofWordswithFiveLettersorMore
//
//  Created by Daniel Washington Ignacio on 21/06/21.
//


/*
 Write a function that takes a string of one or more words as an argument and returns the same string, but with all five or more letter words reversed. Strings passed in will consist of only letters and spaces. Spaces will be included only when more than one word is present.

 Examples

 reverse("Reverse") ➞ "esreveR"

 reverse("This is a typical sentence.") ➞ "This is a lacipyt .ecnetnes"

 reverse("The dog is big.") ➞ "The dog is big."
 Notes

 You can expect a valid string to be provided for each test case.
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(self.reverse("Reverse"))
        print(self.reverse("This is a typical sentence."))
        print(self.reverse("The dog is big."))
    }

    func reverse(_ str: String) -> String {
     var newStr = ""
        for n in str.components(separatedBy: " "){
            if n.count >= 5 {
                newStr += n.reversed()
                newStr += " "
            }else{
                newStr += n
                newStr += " "
            }
        }
        return newStr
    }
    
}

