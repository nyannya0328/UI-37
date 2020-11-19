//
//  ContentView.swift
//  UI-37
//
//  Created by にゃんにゃん丸 on 2020/11/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home : View {
    
    @State var number = ["1","2","3","4","5","6"]
    var body: some View{
        
        NavigationView{
            
            List{
                
                ForEach(number,id:\.self){i in
                    
                    
                    Text(i)
                    
                }.onDelete(perform: { index in
                    self.number.remove(atOffsets: index)
                    
                }).onMove(perform: { index, destination in
                    self.number.move(fromOffsets: index, toOffset: destination)
                })
                
            }
            
            
           
            .navigationBarTitle("Number")
            .navigationBarItems(trailing: EditButton())
        }
        
    }
}
