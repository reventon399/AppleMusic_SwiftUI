//
//  CurrentTrackView.swift
//  AppleMusic_SwiftUI
//
//  Created by Алексей Лосев on 11.01.2023.
//

import SwiftUI

struct CurrentTrackView: View {
    
    var animation: Namespace.ID
    var safeArea = UIApplication.shared.windows.first?.safeAreaInsets
    var height = UIScreen.main.bounds.height / 3
    var totalTime: Double = 1.3 * 60.0
    
    @Binding var isExpanded: Bool
    @State var volume: CGFloat = 0
    @State var currentTime: CGFloat = 0
    
    var body: some View {
        VStack {
            
            Capsule()
                .fill(Color.gray)
                .frame(width: isExpanded ? 60 : 0, height: isExpanded ? 4 : 0)
                .opacity(isExpanded ? 1 : 0)
                .padding(.top, isExpanded ? safeArea?.top : 0)
                .padding(.vertical, isExpanded ? 30 : 0)
            
            HStack(spacing: 15) {
                if isExpanded { Spacer(minLength: 0)}
                Image("logan")
                    .resizable()
                    .cornerRadius(15)
                    .frame(width: isExpanded ? height : 55, height: isExpanded ? height : 55)
                    .aspectRatio(contentMode: .fill)
                
                if !isExpanded {
                    Text("Логан")
                        .font(.title2)
//                        .bold()
                        .matchedGeometryEffect(id: "Label", in: animation)
                }
                
                Spacer()
                
                if !isExpanded {
                    
                    Button(action: {}, label: {
                        Image(systemName: "play.fill")
                            .font(.title2)
                            .foregroundColor(.white)
                    })
                    
                    Button(action: {}, label: {
                        Image(systemName: "forward.fill")
                            .font(.title2)
                            .foregroundColor(.white)
                    })
                }
                
            }
            .padding(.horizontal)
            
            VStack(spacing: 15) {
                HStack {
                    if isExpanded {
                        VStack(alignment: .leading, spacing: 5) {
                            Text("Логан")
                                .font(.title2)
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .matchedGeometryEffect(id: "Label", in: animation)
                            Text("LIL KRYSTALL")
                                .font(.title2)
                                .foregroundColor(.gray)
                                .fontWeight(.medium)
                            
                        }
                    }
                    
                    Spacer(minLength: 0)
                    
                    Button(action: {}) {
                        Image(systemName: "ellipsis")
                            .font(.title2)
                            .foregroundColor(.black)
                            .opacity(0.8)
                            .frame(width: 30, height: 30, alignment: .center)
                            .background(
                                Color.gray
                                    .cornerRadius(20)
                            )
                    }
                }
                .padding()
                .padding(.top, 20)
                
                Slider(value: $currentTime, in: 0...totalTime)
                    .accentColor(.white).opacity(0.8)
                    .frame(maxWidth: UIScreen.main.bounds.size.width / 1.1)
                    .frame(height: 5)
                    .padding([.leading, .trailing], 10)
                    .padding(.top, 10)
                    .padding(.bottom, 5)
                
                HStack {
                    Text("\(timeString(time:currentTime))")
                    
                    Spacer()
                    
                    Text("-\(timeString(time: totalTime - currentTime))")
                }
                .foregroundColor(Color.gray).opacity(0.8)
                .frame(
                    maxWidth: (UIScreen.main.bounds.size.width / 1.1),
                    maxHeight: 3,
                    alignment: .leading
                )
                .padding(.bottom, 20)
                
                HStack(alignment: .center, spacing: 50) {
                    Button(action: {}) {
                        Image(systemName: "backward.fill")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    Button(action: {}) {
                        Image(systemName: "play.fill")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    Button(action: {}) {
                        Image(systemName: "forward.fill")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                }
                .padding()
                
                Spacer()
                
                HStack(spacing: 15) {
                    Image(systemName: "speaker.fill")
                    
                    Slider(value: $volume)
                    
                    Image(systemName: "speaker.wave.2.fill")
                }
                .padding()
                
                HStack(alignment: .center,spacing: 70) {
                    Button(action: {}) {
                        Image(systemName: "quote.bubble")
                            .font(.title2)
                            .foregroundColor(.white)
                    }
                    
                    Button(action: {}) {
                        Image(systemName: "airplayaudio")
                            .font(.title2)
                            .foregroundColor(.white)
                    }
                    
                    Button(action: {}) {
                        Image(systemName: "list.bullet")
                            .font(.title2)
                            .foregroundColor(.white)
                    }
                }
                .padding(.bottom, safeArea?.bottom == 0 ? 15 : safeArea?.bottom)
                Spacer()
            }
            .frame(width: isExpanded ? nil : 0, height: isExpanded ? nil : 0)
            .opacity(isExpanded ? 1 : 0)
        }
        .frame(maxHeight: isExpanded ? .infinity : 80)
        .background(
            VStack(spacing: 0) {
                BlurView()
                Divider()
            }
                .onTapGesture {
                    withAnimation(.spring()) {
                        isExpanded.toggle()
                    }
                }
        )
        .ignoresSafeArea()
        .offset(y: isExpanded ? 0 : -48)
    }
}

private func timeString(time: Double) -> String {
    let minute = Int(time) / 60 % 60
    let second = Int(time) % 60
    return String(format: "%02i:%02i", minute, second)
}
