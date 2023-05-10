//
//  Day_2View.swift
//  WeatherOne
//
//  Created by Ignat K on 17/04/2023.
//

import SwiftUI

struct Day_2View: View {
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
                        Text("\(weather.list[9].dt_txt)").bold().frame(maxWidth: 100)
                    Spacer()
                    Text("\(weather.list[9].main.temp.roundDouble()+"°C")").bold()
                    Spacer()
                    Text("\((weather.list[9].pop)*100)"+"%").foregroundColor(Color.black).font(.system(size: 15)).bold()
                    Spacer()
                    NavigationLink(destination: Pop_UpView(noteDict: $noteDict, lastModifiedDate: $date, date: weather.list[9].dt_txt, note: note)){Image(systemName: "square.and.pencil")}
                }.frame(maxWidth: 300, maxHeight: 100)
                HStack{
                        Text("\(weather.list[10].dt_txt)").bold().frame(maxWidth: 100)
                    Spacer()
                    Text("\(weather.list[10].main.temp.roundDouble()+"°C")").bold()
                    Spacer()
                    Text("\((weather.list[10].pop)*100)"+"%").foregroundColor(Color.black).font(.system(size: 15)).bold()
                    Spacer()
                    NavigationLink(destination: Pop_UpView(noteDict: $noteDict, lastModifiedDate: $date, date: weather.list[10].dt_txt, note: note)){Image(systemName: "square.and.pencil")}
                }.frame(maxWidth: 300, maxHeight: 100)
                HStack{
                        Text("\(weather.list[11].dt_txt)").bold().frame(maxWidth: 100)
                    Spacer()
                    Text("\(weather.list[11].main.temp.roundDouble()+"°C")").bold()
                    Spacer()
                    Text("\((weather.list[11].pop)*100)"+"%").foregroundColor(Color.black).font(.system(size: 15)).bold()
                    Spacer()
                    NavigationLink(destination: Pop_UpView(noteDict: $noteDict, lastModifiedDate: $date, date: weather.list[11].dt_txt, note: note)){Image(systemName: "square.and.pencil")}
                }.frame(maxWidth: 300, maxHeight: 100)
                HStack{
                        Text("\(weather.list[12].dt_txt)").bold().frame(maxWidth: 100)
                    Spacer()
                    Text("\(weather.list[12].main.temp.roundDouble()+"°C")").bold()
                    Spacer()
                    Text("\((weather.list[12].pop)*100)"+"%").foregroundColor(Color.black).font(.system(size: 15)).bold()
                    Spacer()
                    NavigationLink(destination: Pop_UpView(noteDict: $noteDict, lastModifiedDate: $date, date: weather.list[12].dt_txt, note: note)){Image(systemName: "square.and.pencil")}
                }.frame(maxWidth: 300, maxHeight: 100)
                HStack{
                        Text("\(weather.list[13].dt_txt)").bold().frame(maxWidth: 100)
                    Spacer()
                    Text("\(weather.list[13].main.temp.roundDouble()+"°C")").bold()
                    Spacer()
                    Text("\((weather.list[13].pop)*100)"+"%").foregroundColor(Color.black).font(.system(size: 15)).bold()
                    Spacer()
                    NavigationLink(destination: Pop_UpView(noteDict: $noteDict, lastModifiedDate: $date, date: weather.list[13].dt_txt, note: note)){Image(systemName: "square.and.pencil")}
                }.frame(maxWidth: 300, maxHeight: 100)
                HStack{
                        Text("\(weather.list[14].dt_txt)").bold().frame(maxWidth: 100)
                    Spacer()
                    Text("\(weather.list[14].main.temp.roundDouble()+"°C")").bold()
                    Spacer()
                    Text("\((weather.list[14].pop)*100)"+"%").foregroundColor(Color.black).font(.system(size: 15)).bold()
                    Spacer()
                    NavigationLink(destination: Pop_UpView(noteDict: $noteDict, lastModifiedDate: $date, date: weather.list[14].dt_txt, note: note)){Image(systemName: "square.and.pencil")}
                }.frame(maxWidth: 300, maxHeight: 100)
                HStack{
                        Text("\(weather.list[15].dt_txt)").bold().frame(maxWidth: 100)
                    Spacer()
                    Text("\(weather.list[15].main.temp.roundDouble()+"°C")").bold()
                    Spacer()
                    Text("\((weather.list[15].pop)*100)"+"%").foregroundColor(Color.black).font(.system(size: 15)).bold()
                    Spacer()
                    NavigationLink(destination: Pop_UpView(noteDict: $noteDict, lastModifiedDate: $date, date: weather.list[15].dt_txt, note: note)){Image(systemName: "square.and.pencil")}
                }.frame(maxWidth: 300, maxHeight: 100)
                HStack{
                        Text("\(weather.list[16].dt_txt)").bold().frame(maxWidth: 100)
                    Spacer()
                    Text("\(weather.list[16].main.temp.roundDouble()+"°C")").bold()
                    Spacer()
                    Text("\((weather.list[16].pop)*100)"+"%").foregroundColor(Color.black).font(.system(size: 15)).bold()
                    Spacer()
                    NavigationLink(destination: Pop_UpView(noteDict: $noteDict, lastModifiedDate: $date, date: weather.list[16].dt_txt, note: note)){Image(systemName: "square.and.pencil")}
                }.frame(maxWidth: 300, maxHeight: 100)
                
                
            }
        }
    }
}

