//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct ColorSchemeTester1: View {
    var body: some View {
        ZStack {
            Color.themeBackground
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Rectangle()
                    .fill(Color.themeSecondary)
                    .overlay(Text("Home")
                        .font(.title)
                        .fontWeight(.bold))
                    .overlay(MenuView())
                    .frame(height: 120.0)
                    .edgesIgnoringSafeArea(.top)
                
                ScrollView {
                    VStack(spacing: 20) {
                        LiveGameView()
                        
                        UpcomingView()
                        
                        MyContestsView()
                        
                        HStack(alignment: .bottom) {
                            Text("Video Clip")
                                .font(.title)
                                .fontWeight(.medium)
                                .foregroundColor(.themeForeground)
                            Spacer()
                            Button(action: {}) {
                                Text("VIEW ALL")
                                    .font(.footnote)
                                    .fontWeight(.bold)
                                    .foregroundColor(.themeAccent)
                            }
                        }
                        
                        VideoClipView()
                    }
                    .foregroundColor(Color.themeTertiary)
                    .padding(.horizontal)
                }
            }
        }
        .foregroundColor(.themeForeground)
    }
}

struct ColorSchemeTester1_Previews: PreviewProvider {
    static var previews: some View {
        ColorSchemeTester1()
            .preferredColorScheme(.dark)
    }
}

struct LiveGameView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .frame(height: 200)
            .shadow(radius: 3, y: 3)
            .overlay(
                HStack {
                    VStack {
                        Image("Dolphins")
                        Text("MIA")
                            .fontWeight(.black)
                    }
                    VStack(spacing: 16.0) {
                        RoundedRectangle(cornerRadius: 4)
                            .fill(Color.green)
                            .frame(width: 100, height: 30)
                            .overlay(Text("Live").foregroundColor(.white))
                        
                        Group {
                            Text("V/S")
                                .font(.largeTitle)
                                .fontWeight(.medium)
                                .frame(maxHeight: .infinity)
                            Text("National Football League")
                                .font(.footnote)
                                .padding(.bottom)
                        }
                        
                    }
                    
                    VStack {
                        Image("Rams")
                        Text("MIA")
                            .fontWeight(.black)
                    }
                }
                .foregroundColor(.themeForeground)
        )
    }
}

struct UpcomingView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .frame(height: 50)
            .shadow(radius: 3, y: 3)
            .overlay(VStack {
                Spacer()
                HStack {
                    Button(action: {}) {
                        Text("Upcoming")
                    }
                    Spacer()
                    Image(systemName: "arrow.right")
                }
                .font(Font.system(.body).weight(.bold))
                .foregroundColor(.themeAccent)
                .padding([.leading, .bottom, .trailing])
            })
    }
}

struct MyContestsView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .frame(height: 50)
            .shadow(radius: 3, y: 3)
            .overlay(VStack {
                Spacer()
                HStack {
                    Button(action: {}) {
                        Text("My Contests")
                    }
                    Spacer()
                    Image(systemName: "arrow.right")
                    
                }
                .font(Font.system(.body).weight(.bold))
                .foregroundColor(.themeAccent)
                .padding([.leading, .bottom, .trailing])
            })
    }
}

struct VideoClipView: View {
    var body: some View {
        VStack(spacing: 22) {
            RoundedRectangle(cornerRadius: 10)
                .frame(height: 200)
                .overlay(
                    Image("game")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .overlay(Image(systemName: "play.circle").font(.largeTitle).foregroundColor(.white)))
                .cornerRadius(10)
                .shadow(radius: 3, y: 3)
            
            HStack {
                Capsule()
                    .fill(Color.themeAccent)
                Capsule()
                Capsule()
            }
            .frame(width: 200)
        }
    }
}

struct MenuView: View {
    var body: some View {
        GeometryReader { gp in
            ZStack {
                Capsule()
                    .fill(Color.white)
                
                Capsule()
                    .fill(Color.themeAccent)
                    .frame(width: gp.size.width * 0.8 / 3)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                HStack {
                    Text("Football")
                        .frame(maxWidth: .infinity)
                        .foregroundColor(Color.white)
                    Text("Baseball")
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.themeBackground)
                    Text("Hockey")
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.themeBackground)
                }
                .font(Font.system(.body).weight(.bold))
            }
            .frame(width: gp.size.width * 0.8, height: 44)
            .offset(y: 60)
        }
    }
}
