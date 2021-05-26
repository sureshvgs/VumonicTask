//
//  ProfileView.swift
//  VumonicTask
//
//  Created by Suresh Swaminathan on 26/05/21.
//

import SwiftUI
struct ProfileView: View {
    let lightBlueColor = Color(red: 36.0/255.0, green: 158.0/255.0, blue: 235.0/255.0, opacity: 1.0)
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .leading){
                HStack{ //heade section user name and menu view
                    Text("Suresh Swaminathan")
                    .foregroundColor(lightBlueColor)
                        .fontWeight(.semibold)
                        .padding(.leading, 10)
                    
                    Button(action: {}){
                        Image("arrow-down")
                        .resizable()
                        .frame(width: 10, height: 10)
                    }
                    .padding(.top, 5)
                    
                    Spacer()
                    
                    Button(action: {}){
                            Image("menu")
                        .resizable()
                        .frame(width: 20, height: 20)
                    }.padding()
                    
                }.frame(height: 50)
                .padding(.leading, 10)
                
                HStack{ //profile picture nad post followers and following
                    VStack{
                        Image("profilepic")
                        .resizable()
                        .frame(width: 90, height: 90)
                            .clipShape(Circle())
                            .shadow(radius: 3)
                            .overlay(Circle().stroke(Color.pink, lineWidth: 1))
                        
                        Text("Suresh")
                            .foregroundColor(lightBlueColor)
                            .fontWeight(.semibold)
                    }//.padding(.leading, 10)
                    
                    VStack{
                        Text("10")
                        .font(.system(size: 30))
                        .foregroundColor(lightBlueColor)
                        .fontWeight(.bold)
                        
                        Text("Posts")
                        .font(.system(size: 13))
                        .foregroundColor(lightBlueColor)
                    }.padding(.leading, 20)
                    
                    VStack{
                        Text("100")
                        .font(.system(size: 30))
                        .foregroundColor(lightBlueColor)
                        .fontWeight(.bold)
                        
                        Text("Followers")
                        .font(.system(size: 13))
                        .foregroundColor(lightBlueColor)
                    }.padding(.leading, 10)
                    
                    VStack{
                        Text("1000")
                        .font(.system(size: 30))
                        .foregroundColor(lightBlueColor)
                        .fontWeight(.bold)
                        
                        Text("Following")
                        .font(.system(size: 13))
                        .foregroundColor(lightBlueColor)
                    }.padding(.leading, 10)
                    
                }.frame(height: 100)
               .padding(.trailing, 10)
                
                
                
                Button(action: {}){
                    Text("Edit Profile") //edit button
                    .fontWeight(.bold)
                    .foregroundColor(lightBlueColor)
                }.frame(width: 380)
                .padding()
                
                Divider() //seperate line
                HStack{ // three buttom
                Button(action: {}){
                    Text("Promotions")
                    .fontWeight(.bold)
                    .foregroundColor(lightBlueColor)
                }.frame(width: 100)
                .padding()
                    Button(action: {}){
                        Text("Insights")
                        .fontWeight(.bold)
                        .foregroundColor(lightBlueColor)
                    }.frame(width: 100)
                    .padding()
                    Button(action: {}){
                        Text("Email")
                        .fontWeight(.bold)
                        .foregroundColor(lightBlueColor)
                    }.frame(width: 100)
                    .padding()
                }
                .fixedSize(horizontal: true, vertical: false)
                Divider()
                TimelineView().padding(.leading, 5)// calling TimelineView
                
            }
        }
    }
}
