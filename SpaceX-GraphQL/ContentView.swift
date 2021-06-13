//
//  ContentView.swift
//  SpaceX-GraphQL
//
//  Created by Macbook Pro on 13/06/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var id = ""
    @State var active = false
    let fuberBlue = Color("Fuber blue")
   
  /*  var body: some View {
        Text(id).onAppear(perform: {
            Network.shared.apollo.fetch(query: SpecificRocketQuery()){ result in
                switch result{
                
                case .success(let graphQLResult):
                    DispatchQueue.main.async {
                        if let ID = graphQLResult.data?.capsule?.dragon?.id{
                            self.id = "ID:  "
                            self.id += ID
                        }
                    }
                    
                case .failure(let error):
                    print("Error: ", error)
                }
                
            }
        })
            .padding()
    }*/
    
    @StateObject var page1: Page = .first()
    @StateObject var page2: Page = .first()
    @State var showSplash = true
    var data = Array(0..<10)


    @State var alignment: ExamplePositionAlignment = .start

    var body: some View {
        NavigationView {
            GeometryReader { proxy in
                ScrollView {
                    ZStack {
                        
                        Rectangle().fill(Color.white)
                        Pager(page: self.page1,
                              data: self.data,
                              id: \.self) { page in
                                self.pageView(page)
                        }
                        .interactive(rotation: true)
                        .interactive(scale: 0.7)
                        .interactive(opacity: 0.5)
                        .itemSpacing(10)
                        .itemAspectRatio(0.8, alignment: .end)
                        .padding(8)
                        .frame(width: min(proxy.size.height, proxy.size.width),
                              height: min(proxy.size.height, proxy.size.width))
                       // .background(Color.black.opacity(0.2))

                      //  Text("Other alignments")
                        //    .bold()
                          //  .padding(.top, 40)

                        //Picker(selection: self.$alignment, label: Text("Position Alignment")) {
                          //  ForEach(ExamplePositionAlignment.allCases, id: \.self) {
                            //    Text($0.rawValue)
                           // }
                       // }
                        //.pickerStyle(SegmentedPickerStyle())
                        //.padding(EdgeInsets(top: 0, leading: 12, bottom: 0, trailing: 12))

                      //  Pager(page: self.page2,
                        //      data: self.data,
                          //    id: \.self) { page in
                            //    self.pageView(page)
                        //}
                      //  .alignment(PositionAlignment(alignment: self.alignment))
                       // .itemSpacing(10)
                        //.itemAspectRatio(0.8, alignment: .end)
                        //.padding(8)
                        //.frame(width: proxy.size.width, height: 300)
                        //.background(Color.black.opacity(0.2))
                        SplashScreen()
                          .opacity(showSplash ? 1 : 0)
                          .onAppear {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                              SplashScreen.shouldAnimate = false
                              withAnimation() {
                                self.showSplash = false
                              }
                            }
                        }
                    }
                    
                }
                
            }//.navigationBarTitle("SpaceX", displayMode: .inline)
            
        }//.navigationViewStyle(StackNavigationViewStyle())
        
        .font(.system(.largeTitle, design: .rounded)).foregroundColor(.white)
    }

    func pageView(_ page: Int) -> some View {
        ZStack {
            
            
            Rectangle().fill(fuberBlue)
                
                
           // Image("Space")
            VStack{
                
                Image("Rocket")
               
            Text(id).onAppear(perform: {
               
                
                Network.shared.apollo.fetch(query: SpecificRocketQuery()){ result in
                    switch result{
                    
                    case .success(let graphQLResult):
                        DispatchQueue.main.async {
                            if let ID = graphQLResult.data?.capsule?.id{
                                //self.id = "ID:  "
                                self.id = ID
                            }
                        }
                        
                    case .failure(let error):
                        print("Error: ", error)
                    }
                    
                }
                
                
                
                
            }).font(Font.headline.weight(.bold)).foregroundColor(.white)
            
            
          
                NavigationLink(destination: DetailView()) {
                                    Text("Detail")
                                }
            }
            
            
            
            
              //.padding()
            
            
        }
        .cornerRadius(5)
        .shadow(radius: 5)
        .edgesIgnoringSafeArea(.all)
        
        
        
    }
    
    
    
}

struct DetailView: View{
    let fuberBlue = Color("Fuber blue")
    @State var name = ""
    @State var activeCheck = false
    @State var crewCap = ""
    
    var body: some View{
    
        ZStack{
            Rectangle().fill(fuberBlue).edgesIgnoringSafeArea(.all)
        VStack{
            
            //Image("Space")
            Text(String(activeCheck)).onAppear(perform: {
                  Network.shared.apollo.fetch(query: SpecificRocketQuery()){ result in
                      switch result{
                      
                      case .success(let graphQLResult):
                          DispatchQueue.main.async {
                              if let ACT = graphQLResult.data?.capsule?.dragon?.active{
                                 //self.id = "ID:  "
                                  self.activeCheck = ACT
                              }
                          }
                          
                      case .failure(let error):
                          print("Error: ", error)
                      }
                      
                  }
                  
                  
            }).font(Font.headline.weight(.bold)).foregroundColor(.white)
            
            
            Text(name).onAppear(perform: {
                  Network.shared.apollo.fetch(query: SpecificRocketQuery()){ result in
                      switch result{
                      
                      case .success(let graphQLResult):
                          DispatchQueue.main.async {
                              if let nameID = graphQLResult.data?.capsule?.dragon?.id{
                                 //self.id = "ID:  "
                                self.name = "ID: "
                                  self.name += nameID
                              }
                          }
                          
                      case .failure(let error):
                          print("Error: ", error)
                      }
                      
                  }
              }).font(Font.headline.weight(.bold)).foregroundColor(.white)
            
            Text(crewCap).onAppear(perform: {
                  Network.shared.apollo.fetch(query: SpecificRocketQuery()){ result in
                      switch result{
                      
                      case .success(let graphQLResult):
                          DispatchQueue.main.async {
                              if let cap = graphQLResult.data?.capsule?.dragon?.crewCapacity{
                                 //self.id = "ID:  "
                                self.crewCap = "Crew Capacity: "
                                  self.crewCap += String(cap)
                              }
                          }
                          
                      case .failure(let error):
                          print("Error: ", error)
                      }
                      
                  }
              }).font(Font.headline.weight(.bold)).foregroundColor(.white)
                  
        }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


enum ExamplePositionAlignment: String, CaseIterable {
    case start
    case justified
    case end
}

extension PositionAlignment {
    init(alignment: ExamplePositionAlignment) {
        switch alignment {
            case .start:
                self = .start(10)
            case .end:
                self = .end(10)
            case .justified:
                self = .justified(10)
        }
    }
}


