//
//  ContentView.swift
//  CenterAdd Tabbar
//
//  Created by 张亚飞 on 2021/2/4.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var index : Int = 0
    var body: some View {
        
        VStack {
            
            ZStack {
                
                Color.red
            }
            .padding(.bottom, -35)
            
            CustomTabs(index: self.$index)
        }
        .background(Color.black.opacity(0.05))
        .ignoresSafeArea(edges: .top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct CustomTabs : View {
    
    @Binding var index : Int
    
    var body: some View {
        
        HStack {
            
            Button(action: { self.index = 0 }, label: {
                
                Image(systemName: "house")
            })
            .font(.title3)
            .foregroundColor(Color.black.opacity(index == 0 ? 1 : 0.3))
            
            Spacer()
            
            Button(action: { self.index = 1 }, label: {
                
                Image(systemName: "magnifyingglass.circle")
            })
            .font(.title3)
            .foregroundColor(Color.black.opacity(index == 1 ? 1 : 0.3))
            .offset(x: 10)
           
            
            Spacer()
            
            Button(action: { self.index = 4 }, label: {
                
                Image(systemName: "plus")
                    .padding()
                    .background(Color.red)
                    .clipShape(Circle())
            })
            .font(.title3)
            .foregroundColor(Color.white)
            .offset(y : -25)
            
            Spacer()
            
            Button(action: { self.index = 2 }, label: {
                
                Image(systemName: "suit.heart")
            })
            .font(.title3)
            .foregroundColor(Color.black.opacity(index == 2 ? 1 : 0.3))
            .offset(x: -10)
            
            Spacer()
            
            Button(action: { self.index = 3 }, label: {
                
                Image(systemName: "person.circle")
            })
            .font(.title3)
            .foregroundColor(Color.black.opacity(index == 3 ? 1 : 0.3))
            
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal, 35)
        .padding(.top, 35)
        .background(Color.white)
        .clipShape(CShap())
    }
}


struct CShap : Shape {
    
    func path(in rect: CGRect) -> Path {
        
        return Path {path  in
            
            path.move(to: CGPoint(x: 0, y: 35))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: 35))
            
            path.addArc(center: CGPoint(x: rect.width / 2 + 2, y: 35), radius: 35, startAngle: .zero, endAngle: .init(degrees: 180), clockwise: true)
        }
    }
}
