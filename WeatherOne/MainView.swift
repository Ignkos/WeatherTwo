//
//  MainView.swift
//  WeatherOne
//
//  Created by Ignat K on 28/02/2023.
//

import SwiftUI

struct MainView: View {
    var weather: ResponseBody
    @State var note: [String: Binding<String>] = [:]
    var body: some View {
        
        NavigationView{
            VStack{
                Text("\(weather.city.name)").bold().font(.largeTitle).foregroundColor(Color.black)
                Text("\(weather.list[0].dt_txt)").foregroundColor(Color.black)
                //Spacer()
                Text("Weather now:").font(.title).foregroundColor(Color.black)
                Text("\(weather.list[0].main.temp.roundDouble() )"+"°C").foregroundColor(Color.black).font(.system(size: 50)).bold()
                Text("Feels like:").font(.title).foregroundColor(Color.black).font(.system(size: 100))
                Text("\(weather.list[0].main.feels_like.roundDouble())"+"°C").foregroundColor(Color.black).font(.system(size: 25)).bold()
                Text("Chance of rain:").foregroundColor(Color.black).font(.system(size: 20))
                Text("\((weather.list[0].pop)*100)"+"%").foregroundColor(Color.black).font(.system(size: 15)).bold()
                Text(note.first?.value.wrappedValue ?? "f")
                
                VStack {
                    Spacer()
                    Image("Moscow_sk")
                    HStack{
                        NavigationLink(destination: Day_1View(weather: weather, note: note)){
                            Capsule().fill(Color.black).padding().frame(maxWidth:100,maxHeight: 75).overlay(Text("24h").foregroundColor(Color.white))
                        }
                        NavigationLink(destination: Day_2View(weather: weather)){
                            Capsule().fill(Color.black).padding().frame(maxWidth:100,maxHeight: 75).overlay(Text("48h").foregroundColor(Color.white))
                        }
                        NavigationLink(destination: Day_3View(weather: weather)){
                            Capsule().fill(Color.black).padding().frame(maxWidth:100,maxHeight: 75).overlay(Text("72h").foregroundColor(Color.white))
                        }
                        NavigationLink(destination: Day_4View(weather: weather)){
                            Capsule().fill(Color.black).padding().frame(maxWidth:100,maxHeight: 75).overlay(Text("96h").foregroundColor(Color.white))
                        }
                    }

                }
            }.background(.white)
        }
    }
}


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(weather: previewWeather)
    }
}
