// https://github.com/m760622/AlAqsaGrid
//  ContentView.swift
//  AlAqsaGrid
//  m7606225@gmail.com
//  Created by Mohammed Abunada on 2020-06-26.
//  https://github.com/m760622

import SwiftUI

struct ContentView: View {
    let AqsaDB = ["alaqsa01", "alaqsa02", "alaqsa03", "alaqsa04", "alaqsa05", "alaqsa06", "alaqsa07", "alaqsa08", "alaqsa09", "alaqsa10", "alaqsa11", "alaqsa12", "alaqsa13","alaqsa01", "alaqsa02", "alaqsa03", "alaqsa04", "alaqsa05", "alaqsa06", "alaqsa07", "alaqsa08", "alaqsa09", "alaqsa10", "alaqsa11", "alaqsa12", "alaqsa13","alaqsa01", "alaqsa02", "alaqsa03", "alaqsa04", "alaqsa05", "alaqsa06", "alaqsa07", "alaqsa08", "alaqsa09", "alaqsa10", "alaqsa11", "alaqsa12", "alaqsa13" ]
    
    let columns = [
        GridItem(.fixed(100)),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    let rows = [
        GridItem(.adaptive(minimum: 100))
    ]
        
    var body: some View {
        NavigationView{
            VStack {
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(AqsaDB, id: \.self) { aqsaImage in
                            Image(aqsaImage)
                                .resizable(capInsets: EdgeInsets(), resizingMode: .stretch)
                                .frame(width: 100, height: 100, alignment: .center)
                        }
                    }//LazyVGrid
                }//ScrollView
                .padding(.all, 10)
                .background(Color.black).opacity(0.9)
                
                ScrollView(.horizontal) {
                    LazyHGrid(rows: rows, spacing: 40) {
                        ForEach(AqsaDB, id: \.self) { aqsaImage in
                            Image(aqsaImage)
                                .resizable(capInsets: EdgeInsets(), resizingMode: .stretch)
                                .frame(width: 100, height: 100)
                        }
                    }//LazyHGrid
                }//ScrollView
                .padding(.all, 20)
                .background(Color.black).opacity(0.8)
            }
            .navigationBarTitle(Text("AlAqsa LazyVGrid and LazyHGrid in SwiftUI 2") , displayMode: .inline)
        }//NavigationView
    }//body
}//ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

