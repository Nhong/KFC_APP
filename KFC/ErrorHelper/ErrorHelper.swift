//
//  ErrorHelper.swift
//  KFC
//
//  Created by Kittinun Chobtham on 26/4/2563 BE.
//  Copyright © 2563 Kittinun Chobtham. All rights reserved.
//

import Foundation

enum GeneralError: Error {
    case EmailInValid
    case PasswordIInvalid
    case CannotFoundUser
}


final class ErrorHelper {
    
    class func errorMessage(genernalError: GeneralError) -> String {
        switch genernalError {
        case .EmailInValid,
             .PasswordIInvalid:
            return "ข้อมูล Email หรือ Password ของท่านไม่ถูกต้อง, กรุณาลองใหม่อีกครั้ง"
        case .CannotFoundUser:
            return "ท่านไม่ได้ทำการลงทะเบียน กรุณาลงทะเบียน"
        }
    }
    
}
