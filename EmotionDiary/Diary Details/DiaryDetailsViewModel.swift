//
//  DiaryDetailsViewModel.swift
//  EmotionDiary
//
//  Created by wooju on 2022/10/05.
//

import Foundation
import SwiftUI

final class DiaryDetailsViewModel: ObservableObject {
    @Published var diaries: Binding<[MoodDiary]>
    @Published var diary:  MoodDiary
    
    init(diaries: Binding<[MoodDiary]>, diary: MoodDiary) {
        self.diary = diary
        self.diaries = diaries
    }
    func delete() {
        diaries.wrappedValue = diaries.wrappedValue.filter{ $0.id != diary.id }
    }
}
