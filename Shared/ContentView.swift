//
//  ContentView.swift
//  Shared
//
//  Created by AJ Picard on 12/11/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack {
                Header()
                Spacer().frame(height: 50)
                FavoritesHeader()
                Spacer().frame(height: 35)
                ScrollView(.horizontal, showsIndicators: false) {
                    Cards()
                }
                Spacer().frame(height: 50)
                FoldersHeader()
                Spacer().frame(height: 25)
                VStack {
                    RowCardOne()
                        .frame(height: 80)
                        .background(Color(#colorLiteral(red: 0.1725282371, green: 0.1725648344, blue: 0.2024515271, alpha: 1)))
                        .cornerRadius(30)
                    
                    RowCardTwo()
                        .frame(height: 80)
                        .background(Color(#colorLiteral(red: 0.1725282371, green: 0.1725648344, blue: 0.2024515271, alpha: 1)))
                        .cornerRadius(30)
                    RowCardThree()
                        .frame(height: 80)
                        .background(Color(#colorLiteral(red: 0.1725282371, green: 0.1725648344, blue: 0.2024515271, alpha: 1)))
                        .cornerRadius(30)
                }
                .padding(.horizontal, 15)
            }
        }
        .frame(maxHeight: .infinity)
        .background(Color(#colorLiteral(red: 0.0901831463, green: 0.09020692855, blue: 0.1284418702, alpha: 1)))
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Header: View {
    var body: some View {
        HStack {
            Image(systemName: "arrow.backward")
                .font(.system(size: 25, weight: .bold, design: .rounded))
                .foregroundColor(.white)
            Spacer()
            Image("aj")
                .resizable()
                .frame(width: 50, height: 50)
        }
        .padding(.horizontal, 25)
    }
}

struct Cards: View {
    var body: some View {
        HStack {
            VStack (alignment: .leading) {
                VStack (alignment: .leading){
                    VStack (alignment: .leading) {
                        Text("Photos")
                            .font(.system(size: 22, weight: .bold, design: .rounded))
                        Text("4,524")
                            .font(.system(size: 16, weight: .medium, design: .rounded))
                            .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                    }
                    .foregroundColor(.white)
                    HStack (spacing: -5) {
                        Circle()
                            .frame(width: 30, height: 30)
                            .foregroundColor(Color(#colorLiteral(red: 0.8007219434, green: 0.3977988958, blue: 0.360170424, alpha: 1)))
                        
                        Circle()
                            .frame(width: 30, height: 30)
                            .foregroundColor(Color(#colorLiteral(red: 0.9476208091, green: 0.7574166059, blue: 0.2802497447, alpha: 1)))
                        
                        Circle()
                            .frame(width: 30, height: 30)
                            .foregroundColor(Color(#colorLiteral(red: 0.7427334189, green: 0.4867807031, blue: 0.7189747691, alpha: 1)))
                        
                        Image(systemName: "plus")
                            .frame(width: 30, height: 30)
                            .background(Color.white)
                            .foregroundColor(.black)
                            .cornerRadius(15)
                        
                        
                    }
                }
                .padding(.trailing, 50)
                
            }
            .frame(width: 220, height: 200)
            .background(Color(#colorLiteral(red: 0.1725282371, green: 0.1725648344, blue: 0.2024515271, alpha: 1)))
            .cornerRadius(30)
            .padding(.trailing, 20)
            VStack (alignment: .leading) {
                VStack (alignment: .leading){
                    VStack (alignment: .leading) {
                        Text("Videos")
                            .font(.system(size: 22, weight: .bold, design: .rounded))
                        Text("190 Files")
                            .font(.system(size: 16, weight: .medium, design: .rounded))
                            .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                    }
                    .foregroundColor(.white)
                    HStack (spacing: -5) {
                        Circle()
                            .frame(width: 30, height: 30)
                            .foregroundColor(Color(#colorLiteral(red: 0.8007219434, green: 0.3977988958, blue: 0.360170424, alpha: 1)))
                        
                        Circle()
                            .frame(width: 30, height: 30)
                            .foregroundColor(Color(#colorLiteral(red: 0.9476208091, green: 0.7574166059, blue: 0.2802497447, alpha: 1)))
                        
                        Circle()
                            .frame(width: 30, height: 30)
                            .foregroundColor(Color(#colorLiteral(red: 0.7427334189, green: 0.4867807031, blue: 0.7189747691, alpha: 1)))
                        
                        Image(systemName: "plus")
                            .frame(width: 30, height: 30)
                            .background(Color.white)
                            .foregroundColor(.black)
                            .cornerRadius(15)
                        
                        
                    }
                }
                .padding(.trailing, 50)
                
            }
            .frame(width: 220, height: 200)
            .background(Color(#colorLiteral(red: 0.1725282371, green: 0.1725648344, blue: 0.2024515271, alpha: 1)))
            .cornerRadius(30)
        }
        .padding(.leading, 20)
    }
}

struct FoldersHeader: View {
    var body: some View {
        HStack {
            Text("My Folders")
                .font(.system(size: 25, weight: .bold, design: .rounded))
                .foregroundColor(.white)
            Spacer()
            Image(systemName: "plus")
                .frame(width: 34, height: 34)
                .background(Color(#colorLiteral(red: 0.9977484345, green: 0.7261039615, blue: 0.3507856131, alpha: 1)))
                .font(.system(size: 18, weight: .bold, design: .rounded))
                .cornerRadius(25)
        }
        .padding(.horizontal, 25)
    }
}

struct RowCardOne: View {
    var body: some View {
        HStack {
            Image(systemName: "folder.fill")
                .font(.system(size: 30))
                .foregroundColor(Color(#colorLiteral(red: 0.4990731478, green: 0.3631205261, blue: 0.1773020327, alpha: 1)))
                .padding(.leading, 15)
            Spacer()
            VStack {
                Text("Products")
                    .font(.system(size: 19, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                Text("150 Files")
                    .font(.system(size: 16, weight: .medium, design: .rounded))
                    .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
            }
            Spacer()
            VStack (spacing: 1) {
                Circle()
                    .frame(width: 6, height: 6)
                Circle()
                    .frame(width: 6, height: 6)
                Circle()
                    .frame(width: 6, height: 6)
            }
            .frame(width: 40)
            .foregroundColor(.white)
            .padding(.trailing, 15)
        }
        
    }
}

struct RowCardTwo: View {
    var body: some View {
        HStack {
            Image(systemName: "folder.fill")
                .font(.system(size: 30))
                .foregroundColor(Color(#colorLiteral(red: 0.4990731478, green: 0.3631205261, blue: 0.1773020327, alpha: 1)))
                .padding(.leading, 15)
            Spacer()
            VStack{
                Text("Web Design")
                    .font(.system(size: 19, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                Text("150 Files")
                    .font(.system(size: 16, weight: .medium, design: .rounded))
                    .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
            }
            Spacer()
            VStack (spacing: 1) {
                Circle()
                    .frame(width: 6, height: 6)
                Circle()
                    .frame(width: 6, height: 6)
                Circle()
                    .frame(width: 6, height: 6)
            }
            .frame(width: 40)
            .foregroundColor(.white)
            .padding(.trailing, 15)
        }
        
    }
}

struct RowCardThree: View {
    var body: some View {
        HStack {
            Image(systemName: "folder.fill")
                .font(.system(size: 30))
                .foregroundColor(Color(#colorLiteral(red: 0.4990731478, green: 0.3631205261, blue: 0.1773020327, alpha: 1)))
                .padding(.leading, 15)
            Spacer()
            VStack {
                Text("Photos")
                    .font(.system(size: 19, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                Text("140 Files")
                    .font(.system(size: 16, weight: .medium, design: .rounded))
                    .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
            }
            Spacer()
            VStack (spacing: 1) {
                Circle()
                    .frame(width: 6, height: 6)
                Circle()
                    .frame(width: 6, height: 6)
                Circle()
                    .frame(width: 6, height: 6)
            }
            .frame(width: 40)
            .foregroundColor(.white)
            .padding(.trailing, 15)
        }
      
    }
}

struct FavoritesHeader: View {
    var body: some View {
        HStack {
            Text("Favorites")
                .font(.system(size: 25, weight: .bold, design: .rounded))
                .foregroundColor(.white)
            Spacer()
        }
        .padding(.leading, 25)
    }
}
