//
//  WelcomeView.swift
//  WeatherOne
//
//  Created by Ignat  on 31.01.2023.
//

import SwiftUI
import CoreLocationUI


struct WelcomeView: View {
    
    @EnvironmentObject var locationManager: LocationManager
    
    var body: some View{
        VStack{
            
            VStack(spacing: 20){
                Text("Welcome")
                    .bold().font(.title)
                
                Text("Please share your current location")
                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding()
            
                LocationButton(.shareCurrentLocation){
                    locationManager.requestLocation()
                }
                .cornerRadius(30)
                .symbolVariant(.fill)
                .foregroundColor(.white)

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
