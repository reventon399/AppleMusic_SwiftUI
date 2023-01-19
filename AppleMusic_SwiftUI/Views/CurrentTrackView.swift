//
//  CurrentTrackView.swift
//  AppleMusic_SwiftUI
//
//  Created by Алексей Лосев on 11.01.2023.
//

import SwiftUI

struct CurrentTrackView: View {
    
    var animation: Namespace.ID
    @Binding var expand: Bool
    var height = UIScreen.main.bounds.height / 3
    var safeArea = UIApplication.shared.windows.first?.safeAreaInsets
    @State var volume: CGFloat = 0
    
    var body: some View {
        VStack {
            
            Capsule()
                .fill(Color.gray)
                .frame(width: expand ? 60 : 0, height: expand ? 4 : 0)
                .opacity(expand ? 1 : 0)
                .padding(.top, expand ? safeArea?.top : 0)
                .padding(.vertical, expand ? 30 : 0)
            
            HStack(spacing: 15) {
                if expand { Spacer(minLength: 0)}
                Image("logan")
                    .resizable()
                    .cornerRadius(15)
                    .frame(width: expand ? height : 55, height: expand ? height : 55)
                    .aspectRatio(contentMode: .fill)
                
                if !expand {
                    Text("Логан")
                        .font(.title2)
                        .bold()
                        .matchedGeometryEffect(id: "Label", in: animation)
                }
                
                Spacer()
                
                if !expand {
                    
                    Button(action: {}, label: {
                        Image(systemName: "play.fill")
                            .font(.title2)
                            .foregroundColor(.black)
                    })
                    
                    Button(action: {}, label: {
                        Image(systemName: "forward.fill")
                            .font(.title2)
                            .foregroundColor(.black)
                    })
                }
                
            }
            .padding(.horizontal)
            
            VStack(spacing: 15) {
                
//                Spacer(minLength: 20)
                
                HStack {
                    if expand {
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
                        Image(systemName: "ellipsis.circle")
                            .font(.title2)
                            .foregroundColor(.primary)
                    }
                }
                .padding()
                .padding(.top, 20)
                
                //line
                
                HStack {
                    Capsule()
                        .fill(
                            LinearGradient(gradient: .init(colors: [Color.white.opacity(0.7), Color.white.opacity(0.1)]), startPoint: .leading, endPoint: .trailing)
                        )
                        .frame(height: 4)
                    Text("LIVE")
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    
                    Capsule()
                        .fill(
                            LinearGradient(gradient: .init(colors: [Color.white.opacity(0.1), Color.white.opacity(0.7)]), startPoint: .leading, endPoint: .trailing)
                        )
                        .frame(height: 4)
                }
                .padding()
                
                // Next Stop/Play Prefiously Buttons
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
                
                HStack(spacing: 22) {
                    Button(action: {}) {
                        Image(systemName: "arrow.up.message")
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
            }
            // stretch effect
            .frame(width: expand ? nil : 0, height: expand ? nil : 0)
            .opacity(expand ? 1 : 0)
        }
            .frame(maxHeight: expand ? .infinity : 80)
            .background(
                VStack(spacing: 0) {
                    BlurView()
                    Divider()
                }
                    .onTapGesture {
                        withAnimation(.spring()) {
                            expand.toggle()
                        }
                    }
            )
            .ignoresSafeArea()
            .offset(y: expand ? 0 : -48)
    }
}


