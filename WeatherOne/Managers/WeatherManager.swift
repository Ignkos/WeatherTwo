//
//  WeatherManager.swift
//  WeatherOne
//
//  Created by Ignat  on 02.02.2023.
//

import Foundation
import CoreLocation
import UIKit
import MapKit

class WeatherManager{
    func getWeather(latitude: CLLocationDegrees, longitude: CLLocationDegrees) async throws -> ResponseBody {
        guard let url = URL(string:"https://api.openweathermap.org/data/2.5/forecast?lat=\(latitude)&lon=\(longitude)&appid=75468027886366d99adf85530b78f384&units=metric") else{
            fatalError("missing weather URL")
        }
        
        var urlRequest = URLRequest(url: url)
        
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else { fatalError("Error fetching weather data")}
        
        let decData = try JSONDecoder().decode(ResponseBody.self, from: data)
        return decData
        
        
    }
    
}
struct MainResponse: Codable{
    let temp: Double
    let feels_like: Double
}


struct WeatherResponse: Codable{
    let description: String
}

struct WeatherPeriod: Codable {
    let dt_txt: String
    let main: MainResponse
    let weather: [WeatherResponse]
    let pop: Double 
}

struct CityID: Codable{
    let name: String
}


struct ResponseBody: Codable {
    let list: [WeatherPeriod]
    let city: CityID
}


