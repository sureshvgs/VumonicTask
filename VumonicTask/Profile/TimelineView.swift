//
//  TimelineView.swift
//  VumonicTask
//
//  Created by Suresh Swaminathan on 26/05/21.
//


import SwiftUI

struct TimelineView: View {
    
    let previews:[Preview] = [
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
    ] // create array
    
    var body: some View {
            ScrollView{
                VStack(alignment: .center, spacing: 2){
                    ForEach(previews, id: \.id) { preview in
                        LineView(previewArray: [preview, preview, preview])// three images in single line view
                           .frame(alignment: .center)
                    }
                }
            }
    }
}

struct TimelineView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineView()
    }
}

struct Preview {
    var id: Int
    let imageUrl: String
}

struct LineView: View {
    let previewArray:[Preview]
    
    var body: some View {
        HStack(spacing: 2){ // three image
            PreviewView(preview: previewArray[0])
            PreviewView(preview: previewArray[1])
            PreviewView(preview: previewArray[2])
        }
    }
}

struct PreviewView: View {
    
    let preview: Preview
    
    var body: some View {
        Image(preview.imageUrl) // image name
        .resizable()
        .frame(width: 120, height: 120)
    }
}


