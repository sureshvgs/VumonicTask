//
//  HomeView.swift
//  VumonicTask
//
//  Created by Suresh Swaminathan on 26/05/21.
//

import SwiftUI
struct HomeView: View {
    let lightBlueColor = Color(red: 36.0/255.0, green: 158.0/255.0, blue: 235.0/255.0, opacity: 1.0)
    var body: some View {
        GeometryReader { geometry in
            VStack{
                HStack{ // header view appname
                    Text("Vumonicgram")
                        .font(.title3).bold().italic()
                        .foregroundColor(lightBlueColor)
                    Spacer()
                    Button(action: {}){
                        Image(systemName: "plus.app") // All images SF Symbol Icon  using system image
                            .resizable()
                            .frame(width: 30, height: 30)
                    }.padding()
                    
                    Button(action: {}){
                        Image(systemName: "paperplane")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }.padding()
                    
                }.frame(height: 50)
                ScrollView(.horizontal, showsIndicators: false) { //scroll the horizontal
                    HStack { //horizontal Story view
                        ProfileStoryView() //calling ProfileStoryView
                        StroyView() //calling StroyView
                        StroyView()
                        StroyView()
                        StroyView()
                        StroyView()
                    }
                }.frame(height: 70) // horizontal Story view height

                
                TimelineDetailView().padding(.top, 20) //calling TimelineDetailView
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
struct ProfileStoryView: View {
    var body: some View {
        
        ZStack(alignment: .bottom){
            HStack{
                VStack {
                    ZStack(alignment: .bottomTrailing){ // + icon bottom corner
                        Image("profilepic")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                            .shadow(radius: 3)
                            .overlay(Circle().stroke(Color.pink, lineWidth: 1)) //profilepicture circle shape and pink color border
                        Image(systemName: "plus")// plus icon
                            .foregroundColor(.white)// icon color
                            .frame(width: 15, height: 15)
                            .background(Color.blue)// background
                            .clipShape(Circle())
                            
                            .overlay(Circle().stroke(Color.white, lineWidth: 1))//white color border
                    }
                    Text("Your Stories")
                        .font(.caption)
                }
            }
        }
    }
    
}

struct StroyView: View { // like same as ProfileStoryView without + icon
    var body: some View {
        ZStack(alignment: .bottom){
            HStack{
                VStack {
                    Image("profilepic")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                        .shadow(radius: 3)
                        .overlay(Circle().stroke(Color.pink, lineWidth: 1))
                    
                    Text("Your Stories")
                        .font(.caption)
                }
            }
        }
    }
}
