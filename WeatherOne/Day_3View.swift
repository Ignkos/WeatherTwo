//
//  Day_3View.swift
//  WeatherOne
//
//  Created by Ignat K on 17/04/2023.
//

import SwiftUI

struct Day_3View: View {
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
                    Text("Rain chance:").frame(maxWidth: 100).bold()
                    Spacer()
                    Text("icon").foregroundColor(.black)
                    Spacer()
                }

                HStack{
                        Text("\(weather.list[17].dt_txt)").bold().frame(maxWidth: 100)
                    Spacer()
                    Text("\(weather.list[17].main.temp.roundDouble()+"°C")").bold()
                    Spacer()
                    Text("\((weather.list[17].pop)*100)"+"%").foregroundColor(Color.white).font(.system(size: 15)).bold()
                    Spacer()
                    NavigationLink(destination: Pop_UpView(noteDict: $noteDict, lastModifiedDate: $date, date: weather.list[17].dt_txt, note: note)){Image(systemName: "square.and.pencil")}
                }.frame(maxWidth: 300, maxHeight: 100)
                HStack{
                        Text("\(weather.list[18].dt_txt)").bold().frame(maxWidth: 100)
                    Spacer()
                    Text("\(weather.list[18].main.temp.roundDouble()+"°C")").bold()
                    Spacer()
                    Text("\((weather.list[18].pop)*100)"+"%").foregroundColor(Color.white).font(.system(size: 15)).bold()
                    Spacer()
                    NavigationLink(destination: Pop_UpView(noteDict: $noteDict, lastModifiedDate: $date, date: weather.list[18].dt_txt, note: note)){Image(systemName: "square.and.pencil")}
                }.frame(maxWidth: 300, maxHeight: 100)
                HStack{
                        Text("\(weather.list[19].dt_txt)").bold().frame(maxWidth: 100)
                    Spacer()
                    Text("\(weather.list[19].main.temp.roundDouble()+"°C")").bold()
                    Spacer()
                    Text("\((weather.list[19].pop)*100)"+"%").foregroundColor(Color.white).font(.system(size: 15)).bold()
                    Spacer()
                    NavigationLink(destination: Pop_UpView(noteDict: $noteDict, lastModifiedDate: $date, date: weather.list[19].dt_txt, note: note)){Image(systemName: "square.and.pencil")}
                }.frame(maxWidth: 300, maxHeight: 100)
                HStack{
                        Text("\(weather.list[20].dt_txt)").bold().frame(maxWidth: 100)
                    Spacer()
                    Text("\(weather.list[20].main.temp.roundDouble()+"°C")").bold()
                    Spacer()
                    Text("\((weather.list[20].pop)*100)"+"%").foregroundColor(Color.white).font(.system(size: 15)).bold()
                    Spacer()
                    NavigationLink(destination: Pop_UpView(noteDict: $noteDict, lastModifiedDate: $date, date: weather.list[20].dt_txt, note: note)){Image(systemName: "square.and.pencil")}
                }.frame(maxWidth: 300, maxHeight: 100)
                HStack{
                        Text("\(weather.list[21].dt_txt)").bold().frame(maxWidth: 100)
                    Spacer()
                    Text("\(weather.list[21].main.temp.roundDouble()+"°C")").bold()
                    Spacer()
                    Text("\((weather.list[21].pop)*100)"+"%").foregroundColor(Color.white).font(.system(size: 15)).bold()
                    Spacer()
                    NavigationLink(destination: Pop_UpView(noteDict: $noteDict, lastModifiedDate: $date, date: weather.list[21].dt_txt, note: note)){Image(systemName: "square.and.pencil")}
                }.frame(maxWidth: 300, maxHeight: 100)
                HStack{
                        Text("\(weather.list[22].dt_txt)").bold().frame(maxWidth: 100)
                    Spacer()
                    Text("\(weather.list[22].main.temp.roundDouble()+"°C")").bold()
                    Spacer()
                    Text("\((weather.list[22].pop)*100)"+"%").foregroundColor(Color.white).font(.system(size: 15)).bold()
                    Spacer()
                    NavigationLink(destination: Pop_UpView(noteDict: $noteDict, lastModifiedDate: $date, date: weather.list[22].dt_txt, note: note)){Image(systemName: "square.and.pencil")}
                }.frame(maxWidth: 300, maxHeight: 100)
                HStack{
                        Text("\(weather.list[23].dt_txt)").bold().frame(maxWidth: 100)
                    Spacer()
                    Text("\(weather.list[23].main.temp.roundDouble()+"°C")").bold()
                    Spacer()
                    Text("\((weather.list[23].pop)*100)"+"%").foregroundColor(Color.white).font(.system(size: 15)).bold()
                    Spacer()
                    NavigationLink(destination: Pop_UpView(noteDict: $noteDict, lastModifiedDate: $date, date: weather.list[23].dt_txt, note: note)){Image(systemName: "square.and.pencil")}
                }.frame(maxWidth: 300, maxHeight: 100)
                HStack{
                        Text("\(weather.list[24].dt_txt)").bold().frame(maxWidth: 100)
                    Spacer()
                    Text("\(weather.list[24].main.temp.roundDouble()+"°C")").bold()
                    Spacer()
                    Text("\((weather.list[24].pop)*100)"+"%").foregroundColor(Color.white).font(.system(size: 15)).bold()
                    Spacer()
                    NavigationLink(destination: Pop_UpView(noteDict: $noteDict, lastModifiedDate: $date, date: weather.list[24].dt_txt, note: note)){Image(systemName: "square.and.pencil")}
                }.frame(maxWidth: 300, maxHeight: 100)
                
                
            }
        }
    }
}


