//
//  Day_1View.swift
//  WeatherOne
//
//  Created by Ignat K on 17/04/2023.
//

import SwiftUI

struct Day_1View: View {
    var weather: ResponseBody
    @State var note: [String: Binding<String>]
    var body: some View {
        NavigationView{
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
                    NavigationLink(destination: Pop_Up(note: $note, date: weather.list[1].dt_txt)){
                        Image(systemName: "square.and.pencil")
                    }
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
