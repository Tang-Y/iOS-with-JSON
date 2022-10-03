//
//  CityView.swift
//  FinalB_QingqingWu
//
//  Created by Qingqing Wu on 2021-12-13.
//  Student ID: 991500423
//

import SwiftUI

struct CityView: View {
    
    // property
    var city = City()
    
    var body: some View
    {
        NavigationView
                {
                    VStack
                    {
                        Text("Name: \(city.name)")
                        Text("Country Code: \(city.countryCode)")
                        Text("District: \(city.district)")
                        Text("Population: \(city.population)")
                        Spacer()
                    }
                }
    }
}

struct CityView_Previews: PreviewProvider {
    static var previews: some View {
        CityView()
    }
}
