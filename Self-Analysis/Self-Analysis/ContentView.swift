//
//  ContentView.swift
//  Self-Analysis
//
//  Created by 出田和毅 on 2023/07/08.
//

import SwiftUI
import Charts

//ガラスのようなUIを作るための構造体
struct GlassBackGround: View {

    let width: CGFloat
    let height: CGFloat
    let color: Color

    var body: some View {
        ZStack{
            RadialGradient(colors: [.clear, color],
                           center: .center,
                           startRadius: 1,
                           endRadius: 100)
                .opacity(0.6)
            Rectangle().foregroundColor(color)
        }
        .opacity(0.2)
        .blur(radius: 2)
        .cornerRadius(10)
        .frame(width: width, height: height)
    }
}

//「現在のスキル」のビュー
struct FirstView:View,Identifiable {
    let id = UUID()
    //計測結果を格納
    @Binding var test1:Int
    //Sliderの結果を格納
    @State var item_1:Float = 0.0
    @State var item_2:Float = 0.0
    @State var item_3:Float = 0.0
    @State var item_4:Float = 0.0
    @State var item_5:Float = 0.0
    //遷移用の変数
    @Binding var isActive1:Bool
    //定数
    let w = UIScreen.main.bounds.size.width
    var body: some View {
        ScrollView {
            VStack {
                //トップに戻るボタン
                Button (action:{
                    isActive1 = false
                }, label: {
                    Text("< back")
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black)
                })
                .position(x: 40, y: 30)
                Spacer(minLength:40)
                VStack {
                    Text("Q1 : 専攻関連の資格を持っている")
                        .frame(width:340, height:30, alignment:.leading)
                    HStack {
                        Text("当てはまらない")
                            .font(.caption)
                            .fontWeight(.regular)
                        Text("少し当てはまる")
                            .font(.caption)
                            .fontWeight(.regular)
                        Text("よく当てはまる")
                            .font(.caption)
                            .fontWeight(.regular)
                        
                    }
                    Slider(value: $item_1, in:0...2, step:1)
                        .padding(10)
                }
                VStack {
                    Text("Q2 : 希望職種関連の資格を持っている")
                        .frame(width:340, height:30, alignment:.leading)
                    HStack {
                        Text("当てはまらない")
                            .font(.caption)
                            .fontWeight(.regular)
                        Text("少し当てはまる")
                            .font(.caption)
                            .fontWeight(.regular)
                        Text("よく当てはまる")
                            .font(.caption)
                            .fontWeight(.regular)
                        
                    }
                    Slider(value: $item_2, in:0...2, step:1)
                        .padding(10)
                }
                VStack {
                    Text("Q3 : 学業での実績がある")
                        .frame(width:340, height:30, alignment:.leading)
                    HStack {
                        Text("当てはまらない")
                            .font(.caption)
                            .fontWeight(.regular)
                        Text("少し当てはまる")
                            .font(.caption)
                            .fontWeight(.regular)
                        Text("よく当てはまる")
                            .font(.caption)
                            .fontWeight(.regular)
                        
                    }
                    Slider(value: $item_3, in:0...2, step:1)
                        .padding(10)
                }
                VStack {
                    Text("Q4 : 部活動や課外活動での実績がある")
                        .frame(width:340, height:30, alignment:.leading)
                    HStack {
                        Text("当てはまらない")
                            .font(.caption)
                            .fontWeight(.regular)
                        Text("少し当てはまる")
                            .font(.caption)
                            .fontWeight(.regular)
                        Text("よく当てはまる")
                            .font(.caption)
                            .fontWeight(.regular)
                        
                    }
                    Slider(value: $item_4, in:0...2, step:1)
                        .padding(10)
                }
                VStack {
                    Text("Q5 : その他客観的な実績がある")
                        .frame(width:340, height:30, alignment:.leading)
                    HStack {
                        Text("当てはまらない")
                            .font(.caption)
                            .fontWeight(.regular)
                        Text("少し当てはまる")
                            .font(.caption)
                            .fontWeight(.regular)
                        Text("よく当てはまる")
                            .font(.caption)
                            .fontWeight(.regular)
                        
                    }
                    Slider(value: $item_5, in:0...2, step:1)
                        .padding(10)
                }
                //計測に関する設定
                HStack {
                    Button (action:{
                        test1 = Int(item_1)*10+Int(item_2)*10+Int(item_3)*10+Int(item_4)*10+Int(item_5)*10
                    }, label: {
                        Text("計算ボタン")
                            .foregroundColor(Color.white)
                            .padding(.all)
                            .background(Color(red: 0.0, green: 0.0, blue: 0.5, opacity: 0.7))
                            .cornerRadius(15)
                    })
                    Text("得点は\(test1)")
                }
                Spacer(minLength:30)
            }
        }
    }
}
//「成長慣性力」のビュー
struct SecondView:View,Identifiable {
    let id = UUID()
    //計測結果を格納
    @Binding var test2:Int
    //Sliderの結果を格納
    @State var item_1:Float = 0.0
    @State var item_2:Float = 0.0
    @State var item_3:Float = 0.0
    @State var item_4:Float = 0.0
    @State var item_5:Float = 0.0
    //遷移用の変数
    @Binding var isActive2:Bool
    //定数
    let w = UIScreen.main.bounds.size.width
    var body: some View {
        ScrollView {
            VStack {
                //トップに戻るボタン
                Button (action:{
                    isActive2 = false
                }, label: {
                    Text("< back")
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black)
                })
                .position(x: 40, y: 30)
                Spacer(minLength:40)
                VStack {
                    Text("Q1 : 毎月成長を実感している")
                        .frame(width:340, height:30, alignment:.leading)
                    HStack {
                        Text("当てはまらない")
                            .font(.caption)
                            .fontWeight(.regular)
                        Text("少し当てはまる")
                            .font(.caption)
                            .fontWeight(.regular)
                        Text("よく当てはまる")
                            .font(.caption)
                            .fontWeight(.regular)
                        
                    }
                    Slider(value: $item_1, in:0...2, step:1)
                        .padding(10)
                }
                VStack {
                    Text("Q2 : 目標設定は高めだ")
                        .frame(width:340, height:30, alignment:.leading)
                    HStack {
                        Text("当てはまらない")
                            .font(.caption)
                            .fontWeight(.regular)
                        Text("少し当てはまる")
                            .font(.caption)
                            .fontWeight(.regular)
                        Text("よく当てはまる")
                            .font(.caption)
                            .fontWeight(.regular)
                        
                    }
                    Slider(value: $item_2, in:0...2, step:1)
                        .padding(10)
                }
                VStack {
                    Text("Q3 : 新しいことを始めるのが好きだ")
                        .frame(width:340, height:30, alignment:.leading)
                    HStack {
                        Text("当てはまらない")
                            .font(.caption)
                            .fontWeight(.regular)
                        Text("少し当てはまる")
                            .font(.caption)
                            .fontWeight(.regular)
                        Text("よく当てはまる")
                            .font(.caption)
                            .fontWeight(.regular)
                        
                    }
                    Slider(value: $item_3, in:0...2, step:1)
                        .padding(10)
                }
                VStack {
                    Text("Q4 : 大学生から始めて今も継続しているものがある")
                        .frame(width:340, height:30, alignment:.leading)
                    HStack {
                        Text("当てはまらない")
                            .font(.caption)
                            .fontWeight(.regular)
                        Text("少し当てはまる")
                            .font(.caption)
                            .fontWeight(.regular)
                        Text("よく当てはまる")
                            .font(.caption)
                            .fontWeight(.regular)
                        
                    }
                    Slider(value: $item_4, in:0...2, step:1)
                        .padding(10)
                }
                VStack {
                    Text("Q5 : 大人になるのが楽しみだ")
                        .frame(width:340, height:30, alignment:.leading)
                    HStack {
                        Text("当てはまらない")
                            .font(.caption)
                            .fontWeight(.regular)
                        Text("少し当てはまる")
                            .font(.caption)
                            .fontWeight(.regular)
                        Text("よく当てはまる")
                            .font(.caption)
                            .fontWeight(.regular)
                        
                    }
                    Slider(value: $item_5, in:0...2, step:1)
                        .padding(10)
                }
                //計測に関する設定
                HStack {
                    Button (action:{
                        test2 = Int(item_1)*10+Int(item_2)*10+Int(item_3)*10+Int(item_4)*10+Int(item_5)*10
                    }, label: {
                        Text("計算ボタン")
                            .foregroundColor(Color.white)
                            .padding(.all)
                            .background(Color(red: 0.0, green: 0.0, blue: 0.5, opacity: 0.7))
                            .cornerRadius(15)
                    })
                    Text("得点は\(test2)")
                }
                Spacer(minLength:30)
            }
        }
    }
}
//「コミュニケーション能力」のビュー
struct ThirdView:View,Identifiable {
    let id = UUID()
    //計測結果を格納
    @Binding var test3:Int
    //Sliderの結果を格納
    @State var item_1:Float = 0.0
    @State var item_2:Float = 0.0
    @State var item_3:Float = 0.0
    @State var item_4:Float = 0.0
    @State var item_5:Float = 0.0
    //遷移用の変数
    @Binding var isActive3:Bool
    //定数
    let w = UIScreen.main.bounds.size.width
    var body: some View {
        ScrollView {
            VStack {
                //トップに戻るボタン
                Button (action:{
                    isActive3 = false
                }, label: {
                    Text("< back")
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black)
                })
                .position(x: 40, y: 30)
                Spacer(minLength:40)
                VStack {
                    Text("Q1 : 初対面の人とも問題なく話せる")
                        .frame(width:340, height:30, alignment:.leading)
                    HStack {
                        Text("当てはまらない")
                            .font(.caption)
                            .fontWeight(.regular)
                        Text("少し当てはまる")
                            .font(.caption)
                            .fontWeight(.regular)
                        Text("よく当てはまる")
                            .font(.caption)
                            .fontWeight(.regular)
                        
                    }
                    Slider(value: $item_1, in:0...2, step:1)
                        .padding(10)
                }
                VStack {
                    Text("Q2 : 結論ファーストができる")
                        .frame(width:340, height:30, alignment:.leading)
                    HStack {
                        Text("当てはまらない")
                            .font(.caption)
                            .fontWeight(.regular)
                        Text("少し当てはまる")
                            .font(.caption)
                            .fontWeight(.regular)
                        Text("よく当てはまる")
                            .font(.caption)
                            .fontWeight(.regular)
                        
                    }
                    Slider(value: $item_2, in:0...2, step:1)
                        .padding(10)
                }
                VStack {
                    Text("Q3 : 友人の相談相手になることが多い")
                        .frame(width:340, height:30, alignment:.leading)
                    HStack {
                        Text("当てはまらない")
                            .font(.caption)
                            .fontWeight(.regular)
                        Text("少し当てはまる")
                            .font(.caption)
                            .fontWeight(.regular)
                        Text("よく当てはまる")
                            .font(.caption)
                            .fontWeight(.regular)
                        
                    }
                    Slider(value: $item_3, in:0...2, step:1)
                        .padding(10)
                }
                VStack {
                    Text("Q4 : 読みやすい文章だと言われる")
                        .frame(width:340, height:30, alignment:.leading)
                    HStack {
                        Text("当てはまらない")
                            .font(.caption)
                            .fontWeight(.regular)
                        Text("少し当てはまる")
                            .font(.caption)
                            .fontWeight(.regular)
                        Text("よく当てはまる")
                            .font(.caption)
                            .fontWeight(.regular)
                        
                    }
                    Slider(value: $item_4, in:0...2, step:1)
                        .padding(10)
                }
                VStack {
                    Text("Q5 : 聞き返されることはほとんどない")
                        .frame(width:340, height:30, alignment:.leading)
                    HStack {
                        Text("当てはまらない")
                            .font(.caption)
                            .fontWeight(.regular)
                        Text("少し当てはまる")
                            .font(.caption)
                            .fontWeight(.regular)
                        Text("よく当てはまる")
                            .font(.caption)
                            .fontWeight(.regular)
                        
                    }
                    Slider(value: $item_5, in:0...2, step:1)
                        .padding(10)
                }
                //計測に関する設定
                HStack {
                    Button (action:{
                        test3 = Int(item_1)*10+Int(item_2)*10+Int(item_3)*10+Int(item_4)*10+Int(item_5)*10
                    }, label: {
                        Text("計算ボタン")
                            .foregroundColor(Color.white)
                            .padding(.all)
                            .background(Color(red: 0.0, green: 0.0, blue: 0.5, opacity: 0.7))
                            .cornerRadius(15)
                    })
                    Text("得点は\(test3)")
                }
                Spacer(minLength:30)
            }
        }
    }
}
//「自己管理能力」のビュー
struct FourthView:View,Identifiable {
    let id = UUID()
    //計測結果を格納
    @Binding var test4:Int
    //Sliderの結果を格納
    @State var item_1:Float = 0.0
    @State var item_2:Float = 0.0
    @State var item_3:Float = 0.0
    @State var item_4:Float = 0.0
    @State var item_5:Float = 0.0
    //遷移用の変数
    @Binding var isActive4:Bool
    //定数
    let w = UIScreen.main.bounds.size.width
    var body: some View {
        ScrollView {
            VStack {
                VStack {
                    //トップに戻るボタン
                    Button (action:{
                        isActive4 = false
                    }, label: {
                        Text("< back")
                            .fontWeight(.semibold)
                            .foregroundColor(Color.black)
                    })
                    .position(x: 40, y: 30)
                    Spacer(minLength:40)
                    Text("Q1 : 時間を守る")
                        .frame(width:340, height:30, alignment:.leading)
                    HStack {
                        Text("当てはまらない")
                            .font(.caption)
                            .fontWeight(.regular)
                        Text("少し当てはまる")
                            .font(.caption)
                            .fontWeight(.regular)
                        Text("よく当てはまる")
                            .font(.caption)
                            .fontWeight(.regular)
                        
                    }
                    Slider(value: $item_1, in:0...2, step:1)
                        .padding(10)
                }
                VStack {
                    Text("Q2 : 風邪を引くことはほとんどない")
                        .frame(width:340, height:30, alignment:.leading)
                    HStack {
                        Text("当てはまらない")
                            .font(.caption)
                            .fontWeight(.regular)
                        Text("少し当てはまる")
                            .font(.caption)
                            .fontWeight(.regular)
                        Text("よく当てはまる")
                            .font(.caption)
                            .fontWeight(.regular)
                        
                    }
                    Slider(value: $item_2, in:0...2, step:1)
                        .padding(10)
                }
                VStack {
                    Text("Q3 : スケジュール管理が得意")
                        .frame(width:340, height:30, alignment:.leading)
                    HStack {
                        Text("当てはまらない")
                            .font(.caption)
                            .fontWeight(.regular)
                        Text("少し当てはまる")
                            .font(.caption)
                            .fontWeight(.regular)
                        Text("よく当てはまる")
                            .font(.caption)
                            .fontWeight(.regular)
                        
                    }
                    Slider(value: $item_3, in:0...2, step:1)
                        .padding(10)
                }
                VStack {
                    Text("Q4 : 単位を落としたことがない")
                        .frame(width:340, height:30, alignment:.leading)
                    HStack {
                        Text("当てはまらない")
                            .font(.caption)
                            .fontWeight(.regular)
                        Text("少し当てはまる")
                            .font(.caption)
                            .fontWeight(.regular)
                        Text("よく当てはまる")
                            .font(.caption)
                            .fontWeight(.regular)
                        
                    }
                    Slider(value: $item_4, in:0...2, step:1)
                        .padding(10)
                }
                VStack {
                    Text("Q5 : 趣味が充実している")
                        .frame(width:340, height:30, alignment:.leading)
                    HStack {
                        Text("当てはまらない")
                            .font(.caption)
                            .fontWeight(.regular)
                        Text("少し当てはまる")
                            .font(.caption)
                            .fontWeight(.regular)
                        Text("よく当てはまる")
                            .font(.caption)
                            .fontWeight(.regular)
                        
                    }
                    Slider(value: $item_5, in:0...2, step:1)
                        .padding(10)
                }
                //計測に関する設定
                HStack {
                    Button (action:{
                        test4 = Int(item_1)*10+Int(item_2)*10+Int(item_3)*10+Int(item_4)*10+Int(item_5)*10
                    }, label: {
                        Text("計算ボタン")
                            .foregroundColor(Color.white)
                            .padding(.all)
                            .background(Color(red: 0.0, green: 0.0, blue: 0.5, opacity: 0.7))
                            .cornerRadius(15)
                    })
                    Text("得点は\(test4)")
                }
                Spacer(minLength:30)
            }
        }
    }
}

//トップのUI設定
struct ContentView: View {
    //各分析項目ビューの遷移状態の監視
    @State var toggle1 = false
    @State var toggle2 = false
    @State var toggle3 = false
    @State var toggle4 = false
    //結果のビューの遷移状態の監視
    @State var toggleResult = false
    //前回結果のビューの遷移状態の監視
    @State var toggleLookBack = false
    //Int型の状態変数testを定義
    @State var test1:Int = 0
    @State var test2:Int = 0
    @State var test3:Int = 0
    @State var test4:Int = 0
    //結果の監視
    @State var result1:Int = 0
    @State var result2:Int = 0
    @State var result3:Int = 0
    @State var result4:Int = 0
    //ボタンデザイン関連の定数
    let bgColor = Color.init(red:0.90, green: 0.92, blue: 0.98)
    let buttonColor = Color.init(red: 0.38, green: 0.28, blue: 0.86)
    let lightColor = Color.init(red: 0.54, green: 0.41, blue: 0.95)
    let shadowColor = Color.init(red: 0.25, green: 0.17, blue: 0.75)
    let radius = CGFloat(25)

    var body: some View {
        ZStack {
            GlassBackGround(width: 700, height: 1500, color: Color(red: 0.6, green: 0.0, blue: 0.4, opacity: 0.5))
                .shadow(color: .blue, radius: 2, x: 2, y: 2)
            VStack {
                HStack {
                    Image(systemName: "cup.and.saucer")
                    Text("自己分析")
                        .font(.title2)
                        .fontWeight(.bold)
                    Image(systemName: "cup.and.saucer")
                }
                .padding(.bottom,20.0)
                Text("Hope your hard work pays off")
                VStack {
                    //各分析項目への遷移ボタンを作成
                    Button(action: {
                        toggle1 = true
                    }){
                        Text("現在のスキル")
                            .font(.system(size: 20, weight: .semibold, design: .default))
                            .foregroundColor(.white)
                            .padding(.horizontal, 85)
                            .padding(.vertical, 20)
                            .background(
                                RoundedRectangle(cornerRadius: radius)
                                    .fill(
                                        // shadowでボタン上部に光沢を持たせる
                                        .shadow(.inner(color: lightColor, radius: 6, x: 4, y: 4))
                                        // shadowでボタン下部に影を落とす
                                        .shadow(.inner(color: shadowColor, radius: 6, x: -2, y: -2))
                                    )
                                    .foregroundColor(buttonColor)
                                    // ボタンのshadowはボタンの色に合わせる
                                    .shadow(color: buttonColor, radius: 20, y: 10)
                            )
                    }
                    .fullScreenCover(isPresented: $toggle1) {
                        FirstView(test1:$test1,isActive1:$toggle1)
                    }
                    .padding(.all)
                    Button(action: {
                        toggle2 = true
                    }){
                        Text("成長慣性力")
                            .font(.system(size: 20, weight: .semibold, design: .default))
                            .foregroundColor(.white)
                            .padding(.horizontal, 96)
                            .padding(.vertical, 20)
                            .background(
                                RoundedRectangle(cornerRadius: radius)
                                    .fill(
                                        // shadowでボタン上部に光沢を持たせる
                                        .shadow(.inner(color: lightColor, radius: 6, x: 4, y: 4))
                                        // shadowでボタン下部に影を落とす
                                        .shadow(.inner(color: shadowColor, radius: 6, x: -2, y: -2))
                                    )
                                    .foregroundColor(buttonColor)
                                    // ボタンのshadowはボタンの色に合わせる
                                    .shadow(color: buttonColor, radius: 20, y: 10)
                            )
                    }
                    .fullScreenCover(isPresented: $toggle2) {
                        SecondView(test2:$test2,isActive2:$toggle2)
                    }
                    .padding(.all)
                    Button(action: {
                        toggle3 = true
                    }){
                        Text("コミュニケーション能力")
                            .font(.system(size: 20, weight: .semibold, design: .default))
                            .foregroundColor(.white)
                            .padding(.horizontal, 35)
                            .padding(.vertical, 20)
                            .background(
                                RoundedRectangle(cornerRadius: radius)
                                    .fill(
                                        // shadowでボタン上部に光沢を持たせる
                                        .shadow(.inner(color: lightColor, radius: 6, x: 4, y: 4))
                                        // shadowでボタン下部に影を落とす
                                        .shadow(.inner(color: shadowColor, radius: 6, x: -2, y: -2))
                                    )
                                    .foregroundColor(buttonColor)
                                    // ボタンのshadowはボタンの色に合わせる
                                    .shadow(color: buttonColor, radius: 20, y: 10)
                            )
                    }
                    .fullScreenCover(isPresented: $toggle3) {
                        ThirdView(test3:$test3,isActive3:$toggle3)
                    }
                    .padding(.all)
                    Button(action: {
                        toggle4 = true
                    }){
                        Text("自己管理能力")
                            .font(.system(size: 20, weight: .semibold, design: .default))
                            .foregroundColor(.white)
                            .padding(.horizontal, 85)
                            .padding(.vertical, 20)
                            .background(
                                RoundedRectangle(cornerRadius: radius)
                                    .fill(
                                        // shadowでボタン上部に光沢を持たせる
                                        .shadow(.inner(color: lightColor, radius: 6, x: 4, y: 4))
                                        // shadowでボタン下部に影を落とす
                                        .shadow(.inner(color: shadowColor, radius: 6, x: -2, y: -2))
                                    )
                                    .foregroundColor(buttonColor)
                                    // ボタンのshadowはボタンの色に合わせる
                                    .shadow(color: buttonColor, radius: 20, y: 10)
                            )
                    }
                    .fullScreenCover(isPresented: $toggle4) {
                        FourthView(test4:$test4,isActive4:$toggle4)
                    }
                    .padding(.all)
                }
                //結果のビュー（ResultView）への遷移ボタン
                Button(action: {
                    toggleResult = true
                }) {
                    Text("結果はこちら")
                        .font(.headline)
                        .padding(.top, 40.0)
                        .fontWeight(.black)
                        .foregroundColor(.purple)
                }
                .fullScreenCover(isPresented: $toggleResult) {
                    ResultView(isActiveResult: $toggleResult, test1: $test1, test2: $test2, test3: $test3, test4: $test4,result1: $result1, result2: $result2, result3: $result3, result4: $result4)
                }
                //前回結果（LookBack）のビューへの遷移ボタン
                Button(action: {
                    toggleLookBack = true
                }) {
                    Text("前回結果はこちら")
                        .font(.headline)
                        .padding(.top, 40.0)
                        .fontWeight(.black)
                        .foregroundColor(.purple)
                }
                .fullScreenCover(isPresented: $toggleLookBack) {
                    LookBack(isActiveLookBack: $toggleLookBack,result1: $result1,result2: $result2,result3: $result3,result4: $result4)
                }
            }
        }
    }
}
//結果のビュー
struct ResultView: View {
    //遷移用変数
    @Binding var isActiveResult:Bool
    //各分析項目の合計値を監視
    @Binding var test1:Int
    @Binding var test2:Int
    @Binding var test3:Int
    @Binding var test4:Int
    //チャート作成用の変数を設定
    @Binding var result1:Int
    @Binding var result2:Int
    @Binding var result3:Int
    @Binding var result4:Int
    
    var body: some View {
        VStack {
            VStack {
                Text("現在のスキルの得点は\(Int(test1))")
                    .padding(5)
                    .frame(width:340, height:30, alignment:.leading)
                Text("成長慣性力の得点は\(Int(test2))")
                    .padding(5)
                    .frame(width:340, height:30, alignment:.leading)
                Text("コミュニケーションの得点は\(Int(test3))")
                    .padding(5)
                    .frame(width:340, height:30, alignment:.leading)
                Text("自己管理能力の得点は\(Int(test4))")
                    .padding(5)
                    .frame(width:340, height:30, alignment:.leading)
            }
            Divider()
            //チャート表示用ボタン
            ZStack {
                GlassBackGround(width: 80, height: 50, color: Color(red: 0.9, green: 0.2, blue: 0.9, opacity: 0.9))
                    .shadow(color: .blue, radius: 6, x: 2, y: 2)
                Button(action : {
                    result1 = test1
                    result2 = test2
                    result3 = test3
                    result4 = test4
                }) {
                    Text("tap!")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                }
            }
            Divider()
            //チャートの作成
            Chart {
                BarMark(
                    // value_1の値がnilの場合、0を代入する
                    x: .value("Value", result1),
                    y: .value("Name", "現在のスキル")
                )
                .foregroundStyle(Color.red)
                BarMark(
                    x: .value("Value", result2),
                    y: .value("Name", "成長慣性力")
                )
                .foregroundStyle(Color.green)
                BarMark(
                    x: .value("Value", result3),
                    y: .value("Name","コミュニケーション能力")
                )
                .foregroundStyle(Color.blue)
                BarMark(
                    x: .value("Value", result4),
                    y: .value("Name", "自己管理能力")
                )
                .foregroundStyle(Color.yellow)
            }
            .padding()
            //トップへの遷移ボタン
            Button (action:{
                isActiveResult = false
            }) {
                Text("ホームに戻る")
                    .fontWeight(.semibold)
                    .frame(width: 190, height: 48)
                    .foregroundColor(Color(.white))
                    .background(Color(red: 0.6, green: 0.18, blue: 6.0, opacity: 0.7))
                    .cornerRadius(24)
            }
            .padding(.bottom, 13.0)
        }
    }
}
//前回結果のビュー
struct LookBack:View, Identifiable {
    var id = UUID()
    @Binding var isActiveLookBack:Bool
    //resultiewの@Binding var result1 ~ 4を監視
    @Binding var result1:Int
    @Binding var result2:Int
    @Binding var result3:Int
    @Binding var result4:Int
    //result1 ~ 4の結果を保持するための変数を設定
    @AppStorage("key1") var lookBack1:Int = 0
    @AppStorage("key2") var lookBack2:Int = 0
    @AppStorage("key3") var lookBack3:Int = 0
    @AppStorage("key4") var lookBack4:Int = 0
    
    var body:some View {
        VStack {
            VStack {
                //トップへの遷移ボタン
                Button(action: {
                    isActiveLookBack = false
                }) {
                    Text("< back")
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black)
                }
                .position(x: 40, y: 30)
                //データの上書き用ボタン
                Button(action: {
                    lookBack1 = result1
                    lookBack2 = result2
                    lookBack3 = result3
                    lookBack4 = result4
                }) {
                    Text("今回のデータを保存")
                        .fontWeight(.semibold)
                        .frame(width: 190, height: 48)
                        .foregroundColor(Color(.white))
                        .background(Color(red: 0.2, green: 0.58, blue: 0.0, opacity: 0.9))
                        .cornerRadius(24)
                        .padding(.bottom,50)
                }
                //データ消去用ボタン
                Button(action: {
                    lookBack1 = 0
                    lookBack2 = 0
                    lookBack3 = 0
                    lookBack4 = 0
                }) {
                    Text("全データの消去")
                        .fontWeight(.semibold)
                        .frame(width: 190, height: 48)
                        .foregroundColor(Color(.white))
                        .background(Color(red: 0.2, green: 0.2, blue: 0.8, opacity: 0.9))
                        .cornerRadius(24)
                        .padding(.bottom,100)
                }
            }
            //チャートの表示
            Chart {
                            BarMark(
                                // value_1の値がnilの場合、0を代入する
                                x: .value("Value", lookBack1),
                                y: .value("Name", "現在のスキル")
                            )
                            .foregroundStyle(Color.red)
                            BarMark(
                                x: .value("Value", lookBack2),
                                y: .value("Name", "成長慣性力")
                            )
                            .foregroundStyle(Color.green)
                            BarMark(
                                x: .value("Value", lookBack3),
                                y: .value("Name","コミュニケーション能力")
                            )
                            .foregroundStyle(Color.blue)
                            BarMark(
                                x: .value("Value", lookBack4),
                                y: .value("Name", "自己管理能力")
                            )
                            .foregroundStyle(Color.yellow)
                        }
                        .padding()
        }
    }
}
//プレビュー用の構造体
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
