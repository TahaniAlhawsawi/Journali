//
//  AddNewStoryView.swift
//  Journali
//
//  Created by Tahani Mohammed Alhawsawi on 05/05/1446 AH.
//

import SwiftUI

struct AddNewStoryView: View {
    @State private var title: String = "" // استخدام اسم صغير للحالة
    @State private var date: Date = Date() // تحديد التاريخ الحالي كقيمة افتراضية

    var body: some View {
        NavigationView { // تأكد من أن لديك NavigationView
            ZStack {
                Color.black // تغيير لون الخلفية
                    .ignoresSafeArea() // لملء الشاشة بالكامل
                VStack {
                    TextField("Title", text: $title)
                        .foregroundColor(Color("color2"))
                        .frame(width: 360.0, height: 41.0)
                        .font(.system(size: 34))

                   
                       
                    Spacer() // لتوزيع المساحة
                }
               
                            .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {
                            print("Cancel tapped!") // إجراء عند الضغط على الزر
                        }) {
                            Text("Cancel")
                        }
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            print("Save tapped!") // إجراء عند الضغط على الزر
                        }) {
                            Text("Save")
                        }
                    }
                }
                .accentColor(.color1) // تغيير لون العناصر في شريط الأدوات
            }
        }
    }
}

#Preview {
    AddNewStoryView() // عرض الصفحة
}
