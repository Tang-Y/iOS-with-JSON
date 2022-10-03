//
//  City.swift
//  FinalB_QingqingWu
//
//  Created by Qingqing Wu on 2021-12-13.
//  Student ID: 991500423
//

import Foundation

struct City : Codable, Identifiable
{
    var id = UUID()
    var name = ""
    var countryCode = ""
    var district = ""
    var population = ""
    
    enum CodingKeys : String, CodingKey
    {
        case name = "Name"
        case countryCode = "CountryCode"
        case district = "District"
        case population = "Population"
    }
    
}

// to map the named array, "city"
struct JsonData: Codable
{
    var city = [City]()
    
    enum CodingKeys : String, CodingKey
    {
        case city = "City"
    }
}
