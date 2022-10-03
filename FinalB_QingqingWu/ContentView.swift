//
//  ContentView.swift
//  FinalB_QingqingWu
//
//  Created by Qingqing Wu on 2021-12-13.
//  Student ID: 991500423
//

import SwiftUI

struct ContentView: View {
    
    // properties
    var cities = [City]()
    
    var body: some View {
        NavigationView
        {
            List(cities) { c in
                NavigationLink(destination: CityView(city: c))
                {
                    Text("\(c.name)")
                }
            }
            .navigationBarTitle("World Cities")
        }
    }
    
    // load JSON
    init()
    {
        
        // load JSON file using JSONDecoder
        // The type for decode() is an array of City
        let decoder = JSONDecoder()
        if let url = Bundle.main.url(forResource: "city",
                                             withExtension: "json"),
           let data = try? Data(contentsOf: url),
           let json = try? decoder.decode(JsonData.self, from: data)
        {
            // iterate through cities and add to List
            for c in json.city
            {
                cities.append(c)
            }
        }
        else
        {
            // error msg when failed to load JSON
            print("ERROR: Failed to load JSON file")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
