//
//  Day_4View.swift
//  WeatherOne
//
//  Created by Ignat K on 17/04/2023.
//

import SwiftUI

struct Day_4View: View {
    var weather: ResponseBody
    @Binding var noteDict: [String: String]
    @Binding var date: String
    
    var body: some View {
        NavigationView{
            let note = noteDict[date] ?? ""
            VStack{
                HStack{
                    Spacer()
                    Text("Date:").bold()
                    Spacer()
                    Text("Temp:").bold()
                    Spacer()
                    Text("Rain chance:").frame(maxWidth: 65).bold()
                    Spacer()
                    Text("icon").foregroundColor(.black)
                    Spacer()
                }
                HStack{
                    Text("\(weather.list[25].dt_txt)").bold().frame(maxWidth: 100)
                    Spacer()
                    Text("\(weather.list[25].main.temp.roundDouble()+"°C")").bold()
                    Spacer()
                    Text("\((weather.list[25].pop)*100)"+"%").foregroundColor(Color.black).font(.system(size: 15)).bold()
                    Spacer()
                    NavigationLink(destination: Pop_UpView(noteDict: $noteDict, lastModifiedDate: $date, date: weather.list[25].dt_txt, note: note)){Image(systemName: "square.and.pencil")}
                }.frame(maxWidth: 300, maxHeight: 100)
                HStack{
                        Text("\(weather.list[26].dt_txt)").bold().frame(maxWidth: 100)
                    Spacer()
                    Text("\(weather.list[26].main.temp.roundDouble()+"°C")").bold()
                    Spacer()
                    Text("\((weather.list[26].pop)*100)"+"%").foregroundColor(Color.black).font(.system(size: 15)).bold()
                    Spacer()
                    NavigationLink(destination: Pop_UpView(noteDict: $noteDict, lastModifiedDate: $date, date: weather.list[26].dt_txt, note: note)){Image(systemName: "square.and.pencil")}
                }.frame(maxWidth: 300, maxHeight: 100)
                HStack{
                        Text("\(weather.list[27].dt_txt)").bold().frame(maxWidth: 100)
                    Spacer()
                    Text("\(weather.list[27].main.temp.roundDouble()+"°C")").bold()
                    Spacer()
                    Text("\((weather.list[27].pop)*100)"+"%").foregroundColor(Color.black).font(.system(size: 15)).bold()
                    Spacer()
                    NavigationLink(destination: Pop_UpView(noteDict: $noteDict, lastModifiedDate: $date, date: weather.list[27].dt_txt, note: note)){Image(systemName: "square.and.pencil")}
                }.frame(maxWidth: 300, maxHeight: 100)
                HStack{
                        Text("\(weather.list[28].dt_txt)").bold().frame(maxWidth: 100)
                    Spacer()
                    Text("\(weather.list[28].main.temp.roundDouble()+"°C")").bold()
                    Spacer()
                    Text("\((weather.list[28].pop)*100)"+"%").foregroundColor(Color.black).font(.system(size: 15)).bold()
                    Spacer()
                    NavigationLink(destination: Pop_UpView(noteDict: $noteDict, lastModifiedDate: $date, date: weather.list[28].dt_txt, note: note)){Image(systemName: "square.and.pencil")}
                }.frame(maxWidth: 300, maxHeight: 100)
                HStack{
                        Text("\(weather.list[29].dt_txt)").bold().frame(maxWidth: 100)
                    Spacer()
                    Text("\(weather.list[29].main.temp.roundDouble()+"°C")").bold()
                    Spacer()
                    Text("\((weather.list[29].pop)*100)"+"%").foregroundColor(Color.black).font(.system(size: 15)).bold()
                    Spacer()
                    NavigationLink(destination: Pop_UpView(noteDict: $noteDict, lastModifiedDate: $date, date: weather.list[29].dt_txt, note: note)){Image(systemName: "square.and.pencil")}
                }.frame(maxWidth: 300, maxHeight: 100)
                HStack{
                        Text("\(weather.list[30].dt_txt)").bold().frame(maxWidth: 100)
                    Spacer()
                    Text("\(weather.list[30].main.temp.roundDouble()+"°C")").bold()
                    Spacer()
                    Text("\((weather.list[30].pop)*100)"+"%").foregroundColor(Color.black).font(.system(size: 15)).bold()
                    Spacer()
                    NavigationLink(destination: Pop_UpView(noteDict: $noteDict, lastModifiedDate: $date, date: weather.list[30].dt_txt, note: note)){Image(systemName: "square.and.pencil")}
                }.frame(maxWidth: 300, maxHeight: 100)
                HStack{
                        Text("\(weather.list[31].dt_txt)").bold().frame(maxWidth: 100)
                    Spacer()
                    Text("\(weather.list[31].main.temp.roundDouble()+"°C")").bold()
                    Spacer()
                    Text("\((weather.list[31].pop)*100)"+"%").foregroundColor(Color.black).font(.system(size: 15)).bold()
                    Spacer()
                    NavigationLink(destination: Pop_UpView(noteDict: $noteDict, lastModifiedDate: $date, date: weather.list[31].dt_txt, note: note)){Image(systemName: "square.and.pencil")}
                }.frame(maxWidth: 300, maxHeight: 100)
                HStack{
                    Text("\(weather.list[32].dt_txt)").bold().frame(maxWidth: 100)
                    Spacer()
                    Text("\(weather.list[32].main.temp.roundDouble()+"°C")").bold()
                    Spacer()
                    Text("\((weather.list[32].pop)*100)"+"%").foregroundColor(Color.black).font(.system(size: 15)).bold()
                    Spacer()
                    NavigationLink(destination: Pop_UpView(noteDict: $noteDict, lastModifiedDate: $date, date: weather.list[32].dt_txt, note: note)){Image(systemName: "square.and.pencil")}
                }.frame(maxWidth: 300, maxHeight: 100)
                
                
            }
        }
    }
}


