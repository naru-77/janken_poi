//
//  ContentView.swift
//  Shared
//
//  Created by ナルセ　ユウキ on 2021/09/27.
//

import SwiftUI

struct ContentView: View {
    
    @State var answerNumber = 0
    
    var body: some View {
        //垂直にレイアウト
        VStack {
            
            //スペースを追加
            Spacer()
            
            if answerNumber == 0 {
                Text("これからじゃんけんをします")
                
                    .padding(.bottom)
            } else if answerNumber == 1 {
                //グー画像指定
                Image("gu")
                //リサイズ指定
                .resizable()
                //画面内に収めるために縦横比を維持
                .aspectRatio(contentMode: .fit)
                
                //スペースを追加
                Spacer()
                //じゃんけんの種類指定
                Text("グー")
                
                    .padding(.bottom)
            } else if answerNumber == 2 {
                //グー画像指定
                Image("choki")
                //リサイズ指定
                .resizable()
                //画面内に収めるために縦横比を維持
                .aspectRatio(contentMode: .fit)
                //スペースを追加
                Spacer()
                //じゃんけんの種類指定
                Text("チョキ")
                    .padding(.bottom)
            } else {
                //グー画像指定
                Image("pa")
                //リサイズ指定
                .resizable()
                //画面内に収めるために縦横比を維持
                .aspectRatio(contentMode: .fit)
                //スペースを追加
                Spacer()
                //じゃんけんの種類指定
                Text("パー")
                    .padding(.bottom)
            }
            
            
            Button(action: {
                
                var newAnswerNumber = 0
                
                //前回と同じ結果の時は再度ランダムに結果を表示
                //repeatで繰り返し
                repeat {
                    newAnswerNumber = Int.random(in: 1...3)
                    
                    //前回と同じ時は再度ランダムに
                    //異なる時はrepeatを抜ける
                } while answerNumber == newAnswerNumber
                
                //新しいじゃんけんの結果を格納
                answerNumber = newAnswerNumber
            }) {
                Text("じゃんけんをする")
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .font(.title)
                    .background(Color.pink)
                    .foregroundColor(.white)
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
