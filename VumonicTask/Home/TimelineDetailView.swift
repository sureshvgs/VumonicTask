
import SwiftUI

struct TimelineDetailView: View {
    public  let previews:[Preview] = [
        Preview(id: 0, imageUrl: "1"),
        Preview(id: 1, imageUrl: "2"),
        Preview(id: 2, imageUrl: "3"),
        Preview(id: 3, imageUrl: "4"),
        Preview(id: 4, imageUrl: "5"),
        Preview(id: 5, imageUrl: "6"),
        Preview(id: 6, imageUrl: "7"),
        Preview(id: 7, imageUrl: "8"),
        Preview(id: 8, imageUrl: "9"),
        Preview(id: 9, imageUrl: "10"),
        Preview(id: 10, imageUrl: "11"),
        Preview(id: 11, imageUrl: "12"),
        Preview(id: 12, imageUrl: "13")
    ]   //creating array in Preview()
    
    var body: some View {
        ScrollView{
            VStack(alignment: .trailing, spacing: 2){ //
                ForEach(previews, id: \.id) { preview in // foreach loop 13 time execute the loop using id
                    PreviewDetailView(preview: preview).padding(.bottom, 20)// passing id PreviewDetailView and calling
                }
            }
        }
    }
}

struct TimelineDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineDetailView()
    }
}

struct PreviewDetailView: View {
    let lightBlueColor = Color(red: 36.0/255.0, green: 158.0/255.0, blue: 235.0/255.0, opacity: 1.0)
    let preview: Preview
    var body: some View {
        VStack(alignment: .leading){ //post detail view using vertical view
            HStack{
                Image("profilepic")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                    .shadow(radius: 3)
                    .overlay(Circle().stroke(Color.pink, lineWidth: 1))
                    .padding(.leading, 5)
                VStack(alignment: .leading){
                    Text("Suresh").font(.headline).foregroundColor(lightBlueColor)
                    Text("Chennai,Tamilnadu").foregroundColor(Color(.lightGray)).font(.subheadline)
                }
                Spacer()
                Button(action: {}){
                    Image("threeDots")
                        .resizable()
                        .frame(width: 20, height: 20)
                }
                .padding(.trailing, 5)
            }
            Image(preview.imageUrl)
                .resizable()
                .frame(alignment: .center)
                .aspectRatio(contentMode: .fill)
            HStack{ // like comment share and section using horizontal view
                Button(action: {}){
                    Image(systemName: "heart")
                        .resizable()
                        .frame(width: 30, height: 30)
                }.padding(.leading, 5)
                Button(action: {}){
                    Image(systemName: "message")
                        .resizable()
                        .frame(width: 30, height: 30)
                }.padding(.leading, 5)
                Button(action: {}){
                    Image(systemName: "paperplane")
                        .resizable()
                        .frame(width: 30, height: 30)
                }.padding(.leading, 5)
                Spacer()
                Button(action: {}){
                    Image("flag")
                        .resizable()
                        .renderingMode(.template)
                        .foregroundColor(.blue)
                        .frame(width: 30, height: 30)
                } .padding()
            }
            VStack(alignment: .leading){
                Text("Liked by Arun and Mahesh").foregroundColor(lightBlueColor)
                Text("See all comments").foregroundColor(Color(.lightGray)).font(.subheadline)
            }.padding(.leading, 5)
        }
    }
}


