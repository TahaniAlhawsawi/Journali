//
//  ContentView.swift
//  Journali
//
//  Created by Tahani Mohammed Alhawsawi on 05/05/1446 AH.
//
import SwiftUI

struct ContentView: View {
    @State private var isActive = false
    var body: some View {
        if isActive {
            NewStoryView() // الانتقال إلى NewstoryView عند تفعيل isActive
        } else {
            ZStack {
                Color.black
                    .ignoresSafeArea() // لتغطية الشاشة بالكامل
                VStack {
                    Image("Logo")
                        .resizable()
                        .padding()
                        .frame(width: 150, height: 150)
                        .padding()
                    Text("Journali")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                        .padding(.bottom, 1.0)
                    Text("Your thoughts,your story")
                        .font(.headline)
                    
                }
                .padding()
            }
            .onAppear {
                // تحديد مدة ظهور الشاشة
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    withAnimation {
                        self.isActive = true // تغيير الحالة للتوجه إلى NewstoryView
                    }
                }
            }
        }
    }
}
#Preview {
    ContentView()
}

