//
//  NewStory.swift
//  Journali
//
//  Created by Tahani Mohammed Alhawsawi on 05/05/1446 AH.
//

import SwiftUI
struct NewStoryView: View {
    @State private var isAddNewStoryPresented = false // الحالة للتحكم في عرض AddNewStoryView

    var body: some View {
        NavigationView {
            ZStack {
                Color.black
                    .ignoresSafeArea() // لتغطية الشاشة بالكامل
                VStack {
                    Image("Logo")
                        .resizable()
                        .frame(width: 77.0, height: 101.0)
                        .padding(.top, 150) // إضافة padding من الأعلى بمقدار 150 نقطة
                    
                    Text("Degin Your Journal 🕊️")
                        .foregroundColor(.color1)
                        .bold()
                        .font(.system(size: 24))
                        .padding()
                        
                    Text("Craft your personal diary, tap the plus icon to begin ")
                        .font(.system(size: 24))
                        .fontWeight(.regular)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)

                    Spacer() // لتجنب أي تداخل
                }
                .padding()
                .navigationTitle("Journal")
                .accentColor(.white)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        HStack {
                            Button(action: {
                                print("Settings tapped!")
                            }) {
                                Image(systemName: "line.3.horizontal.decrease")
                                    .foregroundColor(.color1)
                            }
                            Button(action: {
                                isAddNewStoryPresented.toggle() // فتح AddNewStoryView عند الضغط على الزر
                            }) {
                                Image(systemName: "plus.circle")
                                    .foregroundColor(.color1)
                            }
                        }
                    }
                }
            }
        }
        .fullScreenCover(isPresented: $isAddNewStoryPresented) { // عرض AddNewStoryView عند تغيير الحالة
            AddNewStoryView()
        }
    }
}
#Preview {
    NewStoryView()
}

