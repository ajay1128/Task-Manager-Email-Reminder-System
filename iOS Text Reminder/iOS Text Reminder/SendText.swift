//
//  SendText.swift
//  - methods needed for sending text messages
//  iOS Text Reminder
//
//  Created by Jonathan Steward on 11/7/18.
//  Copyright © 2018 Jonathan Steward. All rights reserved.
//

import Foundation
import Alamofire

//Send text messages via twilio functions
//note - cannot delay twilio function for longer than 5 seconds
//number - destination phone number
//reminder - msg to user
func sendText(number: String, msg: String) {
    let headers = [
        "Content-Type": "application/x-www-form-urlencoded"
    ]
    
    let parameters: Parameters = [
        "To":  number ,
        "Body": msg
        
    ]
    
    Alamofire.request("https://black-locust-4228.twil.io/sms", method: .post, parameters: parameters, headers: headers).response { response in
        print(response)
        
    }
}


//send text messages via local backend
//allows the ability to delay text messages for a short time, but can only call send one at a time
//

//func sendTextServer(number: String, msg: String,time ) {
//    let headers = [
//        "Content-Type": "application/x-www-form-urlencoded"
//    ]
//
//    let parameters: Parameters = [
//        "To":  number ,
//        "Body": msg
//        "Time": time
//
//    ]
//                      //link will change
//    Alamofire.request("https://28f3b391.ngrok.io/sms", method: .post, parameters: parameters, headers: headers).response { response in
//        print(response)
//
//    }
//}



// returns the number of seconds between the current time and the set reminder time, r
// currentTime- current time
// reminderTime - reminder time

func timeCalc(currentTime: String, reminderTime: String)->CLongLong{
    //stuff to do
    return 0;
}

