//
//  Validators.swift
//  SwiftJsonSchema
//
//  Created by Yuankun Zhang on 22/10/2016.
//  Copyright © 2016 Yuankun Zhang. All rights reserved.
//

import Foundation

enum ValidationResult {
    case valid
    case invalid(String)
    
    var valid: Bool {
        switch self {
        case .valid:    return true
        case .invalid:  return false
        }
    }
    
    var error: String? {
        switch self {
        case .valid:                return nil
        case .invalid(let error):   return error
        }
    }
}

typealias Validator = (_ instance: Any, _ schema: Any) -> ValidationResult

func allOf(instance: Any, schema: Any) -> ValidationResult {
    return .valid
}
    
func anyOf(instance: Any, schema: Any) -> ValidationResult {
    return .valid
}

func dependences(instance: Any, schema: Any) -> ValidationResult {
    return .valid
}

func `enum`(instance: Any, schema: Any) -> ValidationResult {
    return .valid
}

func format(instance: Any, schema: Any) -> ValidationResult {
    return .valid
}

func items(instance: Any, schema: Any) -> ValidationResult {
    return .valid
}

func maxItems(instance: Any, schema: Any) -> ValidationResult {
    return .valid
}

func maxLength(instance: Any, schema: Any) -> ValidationResult {
    guard let instance = instance as? String else {
        return .invalid("Wrong instance type: string expected")
    }
    
    guard let schema = schema as? Int else {
        return .invalid("Wrong schema type: int expected")
    }
    
    guard instance.characters.count <= schema else {
        return .invalid("Length of \(instance) is expected to be less than or equal to \(schema)")
    }
    
    return .valid
}

func maxProperties(instance: Any, schema: Any) -> ValidationResult {
    return .valid
}

func maximum(instance: Any, schema: Any) -> ValidationResult {
    guard let instance = instance as? Int else {
        return .invalid("Wrong instance type: int expected")
    }
    
    guard let schema = schema as? Int else {
        return .invalid("Wrong schema type: int expected")
    }
    
    guard instance <= schema else {
        return .invalid("\(instance) is expected to be less than or equal to \(schema)")
    }
    
    return .valid
}

func minItems(instance: Any, schema: Any) -> ValidationResult {
    return .valid
}

func minLength(instance: Any, schema: Any) -> ValidationResult {
    guard let instance = instance as? String else {
        return .invalid("Wrong instance type: string expected")
    }
    
    guard let schema = schema as? Int else {
        return .invalid("Wrong schema type: int expected")
    }
    
    guard instance.characters.count >= schema else {
        return .invalid("Length of \(instance) is expected to be greater than or equal to \(schema)")
    }
    
    return .valid
}

func minProperties(instance: Any, schema: Any) -> ValidationResult {
    return .valid
}

func minimum(instance: Any, schema: Any) -> ValidationResult {
    guard let instance = instance as? Int else {
        return .invalid("Wrong instance type: int expected")
    }
    
    guard let schema = schema as? Int else {
        return .invalid("Wrong schema type: int expected")
    }
    
    guard instance >= schema else {
        return .invalid("\(instance) is expected to be greater than or equal to \(schema)")
    }
    
    return .valid
}

func multipleOf(instance: Any, schema: Any) -> ValidationResult {
    return .valid
}

func not(instance: Any, schema: Any) -> ValidationResult {
    return .valid
}

func oneOf(instance: Any, schema: Any) -> ValidationResult {
    return .valid
}

func pattern(instance: Any, schema: Any) -> ValidationResult {
    return .valid
}

func patternProperties(instance: Any, schema: Any) -> ValidationResult {
    return .valid
}

func properties(instance: Any, schema: Any) -> ValidationResult {
    return .valid
}

func required(instance: Any, schema: Any) -> ValidationResult {
    return .valid
}

func type(instance: Any, schema: Any) -> ValidationResult {
    return .valid
}

func uniqueItems(instance: Any, schema: Any) -> ValidationResult {
    return .valid
}

let validators: [String: Validator] = [
    "allOf": allOf,
    "anyOf": anyOf,
    "dependencies": dependences,
    "enum": `enum`,
    "format": format,
    "items": items,
    "maxItems": maxItems,
    "maxLength": maxLength,
    "maxProperties": maxProperties,
    "maximum": maximum,
    "minItems": minItems,
    "minLength": minLength,
    "minProperties": minProperties,
    "minimum": minimum,
    "multipleOf": multipleOf,
    "not": not,
    "oneOf": oneOf,
    "pattern": pattern,
    "patternProperties": patternProperties,
    "properties": properties,
    "required": required,
    "type": type,
    "uniqueItems": uniqueItems
]
