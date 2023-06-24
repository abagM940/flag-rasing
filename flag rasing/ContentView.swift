//
//  ContentView.swift
//  flag rasing
//
//  Created by Abag Magdi  on 24/06/2023.
//
import SwiftUI

struct ContentView: View {
    
    @AppStorage("count") private var counter = 0.0
    @State private var message = ""
    var body: some View {
        
        VStack {
            
            Text("\(Int(counter))")
        
                HStack(alignment: .bottom, spacing: -10){
                    
              Rectangle()
                    .frame(width: 20)
                Text("🇸🇩")
                    .font(.system(size: 60))
                    .offset(y: -10 * counter)
                
                
            }
            
            Button{
                
                withAnimation{
                    print("bye bye cookie")
                    counter += 1
                    if counter >= 20 {
                        message = "عيشي بلادي"
                    }else if counter >= 30 {
                        message = "عاش اتحاد اماراتنا"
                    }else if counter >= 40 {
                        message = "عشتي لشعبا "
                    }
                }
            } label: {
                Text("Raise Flag")
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .shadow(color: .white.opacity(0.3), radius: 10, x: 0.0, y: 0.0)
            
            Button{
                
                withAnimation{
                    print("bye bye cookie")
                    counter += 1
                    if counter >= 20 {
                        message = "عيشي بلادي"
                    }else if counter >= 30 {
                        message = "عاش اتحاد اماراتنا"
                    }else if counter >= 40 {
                        message = "عشتي لشعبا "
                    }
                }
            } label: {
                Text("Reset")
                    .padding()
                    .background(.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .shadow(color: .white.opacity(0.3), radius: 10, x: 0.0, y: 0.0)
            
            
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
