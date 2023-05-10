//
//  Day_1View.swift
//  WeatherOne
//
//  Created by Ignat K on 17/04/2023.
//

import SwiftUI

struct Day_1View: View {
    var weather: ResponseBody
    @Binding var noteDict: [String: String]
    @Binding var date: String
    @State var key1 = ""
    @State var key2 = ""
    @State var key3 = ""
    @State var key4 = ""
    @State var key5 = ""
    @State var key6 = ""
    @State var key7 = ""
    @State var key8 = ""
    
    
    
    var body: some View {
        NavigationView{
            let note = noteDict[date] ?? ""
            let key1 = weather.list[1].dt_txt
            let key2 = weather.list[2].dt_txt
            let key3 = weather.list[3].dt_txt
            let key4 = weather.list[4].dt_txt
            let key5 = weather.list[5].dt_txt
            let key6 = weather.list[6].dt_txt
            let key7 = weather.list[7].dt_txt
            let key8 = weather.list[8].dt_txt
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
                        Text("\(weather.list[1].dt_txt)").bold().frame(maxWidth: 100)
                    Spacer()
                    Text("\(weather.list[1].main.temp.roundDouble()+"°C")").bold()
                    Spacer()
                    Text("\((weather.list[1].pop)*100)"+"%").foregroundColor(Color.white).font(.system(size: 15)).bold()
                    Spacer()
                    
                    NavigationLink(destination: Pop_UpView(noteDict: $noteDict, date: $key1, note: note)){Image(systemName: "square.and.pencil")}
                }.frame(maxWidth: 300, maxHeight: 100)
                HStack{
                        Text("\(weather.list[2].dt_txt)").bold().frame(maxWidth: 100)
                    Spacer()
                    Text("\(weather.list[2].main.temp.roundDouble()+"°C")").bold()
                    Spacer()
                    Text("\((weather.list[2].pop)*100)"+"%").foregroundColor(Color.white).font(.system(size: 15)).bold()
                    Spacer()
                    Image(systemName: "square.and.pencil")
                }.frame(maxWidth: 300, maxHeight: 100)
                HStack{
                        Text("\(weather.list[3].dt_txt)").bold().frame(maxWidth: 100)
                    Spacer()
                    Text("\(weather.list[3].main.temp.roundDouble()+"°C")").bold()
                    Spacer()
                    Text("\((weather.list[3].pop)*100)"+"%").foregroundColor(Color.white).font(.system(size: 15)).bold()
                    Spacer()
                    Image(systemName: "square.and.pencil")
                }.frame(maxWidth: 300, maxHeight: 100)
                HStack{
                        Text("\(weather.list[4].dt_txt)").bold().frame(maxWidth: 100)
                    Spacer()
                    Text("\(weather.list[4].main.temp.roundDouble()+"°C")").bold()
                    Spacer()
                    Text("\((weather.list[4].pop)*100)"+"%").foregroundColor(Color.white).font(.system(size: 15)).bold()
                    Spacer()
                    Image(systemName: "square.and.pencil")
                }.frame(maxWidth: 300, maxHeight: 100)
                HStack{
                        Text("\(weather.list[5].dt_txt)").bold().frame(maxWidth: 100)
                    Spacer()
                    Text("\(weather.list[5].main.temp.roundDouble()+"°C")").bold()
                    Spacer()
                    Text("\((weather.list[5].pop)*100)"+"%").foregroundColor(Color.white).font(.system(size: 15)).bold()
                    Spacer()
                    Image(systemName: "square.and.pencil")
                }.frame(maxWidth: 300, maxHeight: 100)
                HStack{
                        Text("\(weather.list[6].dt_txt)").bold().frame(maxWidth: 100)
                    Spacer()
                    Text("\(weather.list[6].main.temp.roundDouble()+"°C")").bold()
                    Spacer()
                    Text("\((weather.list[6].pop)*100)"+"%").foregroundColor(Color.white).font(.system(size: 15)).bold()
                    Spacer()
                    Image(systemName: "square.and.pencil")
                }.frame(maxWidth: 300, maxHeight: 100)
                HStack{
                        Text("\(weather.list[7].dt_txt)").bold().frame(maxWidth: 100)
                    Spacer()
                    Text("\(weather.list[7].main.temp.roundDouble()+"°C")").bold()
                    Spacer()
                    Text("\((weather.list[7].pop)*100)"+"%").foregroundColor(Color.white).font(.system(size: 15)).bold()
                    Spacer()
                    Image(systemName: "square.and.pencil")
                }.frame(maxWidth: 300, maxHeight: 100)
                HStack{
                        Text("\(weather.list[8].dt_txt)").bold().frame(maxWidth: 100)
                    Spacer()
                    Text("\(weather.list[8].main.temp.roundDouble()+"°C")").bold()
                    Spacer()
                    Text("\((weather.list[8].pop)*100)"+"%").foregroundColor(Color.white).font(.system(size: 15)).bold()
                    Spacer()
                    Image(systemName: "square.and.pencil")
                }.frame(maxWidth: 300, maxHeight: 100)
                
            }
        }
    }
    
//    struct Day_1View_Previews: PreviewProvider {
//        var previews: some View {
//            Day_1View(weather: previewWeather, note: note)
//        }
//    }
}
