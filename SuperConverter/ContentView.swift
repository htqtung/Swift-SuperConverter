//
//  ContentView.swift
//  SuperConverter
//
//  Created by Tung Huynh on 27.4.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var degreeInF: Double = 0
    var degreeInC: Double {
        return (degreeInF - 32) * (5 / 9)
    }
    
    @State private var volumeInOz: Double = 0
    var volumeInMl: Double {
        return volumeInOz * 29.574
    }
    
    @State private var lengthInFt: Double = 0
    var lengthInMeter: Double {
        return lengthInFt / 3.281
    }
    
    @State private var lengthInMile: Double = 0
    var lengthInKm: Double {
        return lengthInMile * 1.609
    }
    
    var body: some View {
        NavigationView {
            Form {
                // Fahrenheit to Celsius
                Section {
                    TextField("Temperature in F", value: $degreeInF, format: .number)
                    Text("\(degreeInF, specifier: "%.2f")°F = \(degreeInC, specifier: "%.2f")°C").foregroundColor(Color.blue).padding()
                } header: {
                    Text("Fahrenheit to Celsius")
                }
                
                // Oz to ml
                Section {
                    TextField("Volume in oz", value: $volumeInOz, format: .number)
                    Text("\(volumeInOz, specifier: "%.2f")oz = \(volumeInMl, specifier: "%.2f")ml").foregroundColor(Color.blue).padding()
                } header: {
                    Text("Fluid ounce to Mililiter")
                }
                
                // Ft to m
                Section {
                    TextField("Length in ft", value: $lengthInFt, format: .number)
                    Text("\(lengthInFt, specifier: "%.2f")ft = \(lengthInMeter, specifier: "%.2f")m").foregroundColor(Color.blue).padding()
                } header: {
                    Text("Foot to Meter")
                }
                
                // Mile to Kilometer
                Section {
                    TextField("Length in mile", value: $lengthInMile, format: .number)
                    Text("\(lengthInMile, specifier: "%.2f")mi = \(lengthInKm, specifier: "%.2f")km").foregroundColor(Color.blue).padding()
                } header: {
                    Text("Mile to Kilometer")
                }
            }
            .navigationTitle("Super Converter")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
