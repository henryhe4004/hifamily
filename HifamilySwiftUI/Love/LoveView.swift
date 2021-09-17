//
//  LoveView.swift
//  HifamilySwiftUI
//
//  Created by 游 on 2021/9/14.
//

import SwiftUI


struct NavigationConfigurator : UIViewControllerRepresentable{
    var configure:(UINavigationController) -> Void = { _ in }
    func makeUIViewController(context: UIViewControllerRepresentableContext<NavigationConfigurator>)->UIViewController{
        UIViewController()
    }
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<NavigationConfigurator>){
    if let nc = uiViewController.navigationController{
    self.configure(nc)
    }
    }
}
struct MyButtonStyle : ButtonStyle{
    func makeBody(configuration: Configuration) -> some View{
        configuration.label
            .frame(width: 62, height: 20, alignment: .center)
            .padding()
//            .foregroundColor(configuration.isPressed ? .white :.black)
//            .background(configuration.isPressed ? LinearGradient(gradient: Gradient(colors: [Color.init(red : 255/255,green: 144/255,blue: 13/255), Color.init(red: 255/255, green: 169/255, blue: 54/255)]), startPoint: .topLeading, endPoint: .bottomTrailing) : LinearGradient(gradient: Gradient(colors: [Color.white, Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing))
//            .cornerRadius(20.0)
            .overlay(Capsule(style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/).stroke(Color.init(red: 255/255, green: 169/255, blue: 54/255),lineWidth: 1.4)).shadow(radius: 1)
//            .border(Color.init(red : 255/255,green: 144/255,blue: 13/255), width: 1).cornerRadius(20).shadow(radius: 5)

    }
}
class Contact: ObservableObject {
    @Published var name: String
    @Published var age: Int
    @Published var isUpdate : Bool
    init(name: String, age: Int, isUpdate:Bool) {
        self.name = name
        self.age = age
        self.isUpdate = isUpdate
    }
}


struct LoveView: View {
//
    @ObservedObject var test = Contact(name: "xiaowang", age: 21,isUpdate: false)
    let imgsLove = ["big love","Like","love2"]
    @State var selectedPerson = ["爸爸","妈妈","爷爷"]
    @State  var truePerson = [0,0,0];
    @State var isSelected = false
    @State  private var indexLove = 2
    @State private var presenting = false
    @State private var present = false
    @State  var num = 5
    var body: some View {
        ScrollView(.vertical, showsIndicators: false)
        {
        VStack{
            HStack {
                Image("three line")
                    .resizable()
                    .frame(width:23,
                           height:23,
                           alignment:.center)
                Spacer()
                Text("Miss family")
                    .foregroundColor(Color("AccentColor"))
                
                Spacer()
                Image("person")
                    .resizable()
                    .frame(width:23,
                           height:23,
                           alignment:.center)
            }.padding()
            
            Divider()
            HStack{
                VStack(alignment: .leading){
                    Text("选择思念对象")   .font(.system(size: 20))
                }
                Spacer()
            }.padding()
            HStack{
                Button(action: {
                    if(truePerson[0] == 0 && isSelected == false){
                        isSelected = true
                        truePerson[0] = 1
                    }else{
                        truePerson[0] = 0
                    }
                }){
                    Text(selectedPerson[0])
                        .frame(width: 62, height: 20, alignment: .center)
                        .cornerRadius(20)
                        .foregroundColor(truePerson[0] == 1 ? .white :.black)
                        
                }
                .buttonStyle(MyButtonStyle())
                .background(truePerson[0] == 1 ? LinearGradient(gradient: Gradient(colors: [Color.init(red : 255/255,green: 144/255,blue: 13/255), Color.init(red: 255/255, green: 169/255, blue: 54/255)]), startPoint: .topLeading, endPoint: .bottomTrailing) : LinearGradient(gradient: Gradient(colors: [Color.white, Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)).cornerRadius(20)
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 10))
                
                Spacer()
                Button(action: {
                    if(truePerson[1] == 0 && isSelected == false){
                        isSelected = true
                        truePerson[1] = 1
                    }else{
                        truePerson[1] = 0
                    }
                }){
                    Text(selectedPerson[1])
                }
                
                .foregroundColor(truePerson[1] == 1 ? .white :.black)
                .background(truePerson[1] == 1 ? LinearGradient(gradient: Gradient(colors: [Color.init(red : 255/255,green: 144/255,blue: 13/255), Color.init(red: 255/255, green: 169/255, blue: 54/255)]), startPoint: .topLeading, endPoint: .bottomTrailing) : LinearGradient(gradient: Gradient(colors: [Color.white, Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)).cornerRadius(20)
                .buttonStyle(MyButtonStyle())
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 10))
                
                Spacer()
                Button(action: {
                    if(truePerson[2] == 0 && isSelected == false){
                        isSelected = true
                        truePerson[2] = 1
                    }else{
                        
                        truePerson[2] = 0
                    }
                }){
                    Text(selectedPerson[2])
                }
                .buttonStyle(MyButtonStyle())
                .foregroundColor(truePerson[2] == 1 ? .white :.black)
                .background(truePerson[2] == 1 ? LinearGradient(gradient: Gradient(colors: [Color.init(red : 255/255,green: 144/255,blue: 13/255), Color.init(red: 255/255, green: 169/255, blue: 54/255)]), startPoint: .topLeading, endPoint: .bottomTrailing) : LinearGradient(gradient: Gradient(colors: [Color.white, Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)).cornerRadius(20)
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
            }
            
            
            HStack{
                VStack(alignment: .leading, spacing: nil, content: {
                    Text("点击爱心进行思念")   .font(.system(size: 20))
                }).padding()
                Spacer()
                
            }
            
            HStack{
                if(num>0){
                Button(action: {
                    num=num-1;
                    self.present.toggle()
                }){
                Image(imgsLove[indexLove])
                    .animation(.interpolatingSpring(stiffness: 50, damping: 3))
                    .padding()
                }
                .alert(isPresented: $present, content: {
                    Alert(title: Text("寄出你的思念成功，消耗一张思念卷，你还剩下\(num)思念卷"))
                })
            
                }
                else{
                    Button(action: {
                        
                        self.present.toggle()
                    }){
                    Image(imgsLove[indexLove])
                        .animation(.interpolatingSpring(stiffness: 50, damping: 3))
                        .padding()
                    }
                    .alert(isPresented: $present, content: {
                        Alert(title: Text("寄出你的思念失败，请领取思念卷"))
                    })
                }
            }
            HStack{
                VStack{
                    if(presenting == false){
                    Button(action: {
                        self.presenting.toggle()
                        num=num+5;
                    })
                    {
                        HStack{
                            VStack {
                                Image("second tag")
                                    .foregroundColor(Color("AccentColor"))
                            }
                            .frame(width: 40, height: 40, alignment: .center)
                            .cornerRadius(20.0)
                            .background(Color.white)
                            .overlay(Capsule(style: .continuous).stroke( lineWidth: 1)
                            )
                            Text("思念卷x\(num)")
                                .foregroundColor(.black)
                            
                            
                        }
                        Spacer()
                    }.padding(EdgeInsets(top: 5, leading: 20, bottom: 0, trailing: 10))
                    .alert(isPresented: $presenting, content: {
                        Alert(title: Text("今日领取5张思念券成功"))
                    })
                    }
                    if(presenting == true){
                    Button(action: {
                        self.presenting.toggle()
                        
                    })
                    {
                        HStack{
                            VStack {
                                Image("second tag")
                                    .foregroundColor(Color("AccentColor"))
                            }
                            .frame(width: 40, height: 40, alignment: .center)
                            .cornerRadius(20.0)
                            .background(Color.white)
                            .overlay(Capsule(style: .continuous).stroke( lineWidth: 1)
                            )
                            Text("思念卷x\(num)")
                                .foregroundColor(.black)
                         
                            
                        }
                        Spacer()
                    }.padding(EdgeInsets(top: 5, leading: 20, bottom: 0, trailing: 10))
                    .alert(isPresented: $presenting, content: {
                        Alert(title: Text("今日已经领取5张思念券，请明天再来领取"))
                    })
                    }
                
                    VStack{
                        Button(action: {
                            if indexLove == 2{
                                indexLove = 0
                            }else{
                                indexLove = indexLove + 1
                            }
                        })
                        {
                            HStack{
                                VStack {
                                    Image("second loop arrow")
                                        .foregroundColor(Color("AccentColor"))
                                }.padding(8)
                                .frame(width: 40, height: 40, alignment: .center)
                                .cornerRadius(20.0)
                                .background(Color.white)
                                .overlay(Capsule(style: .continuous).stroke( lineWidth: 1)
                                )
                                VStack{
                                    Text("切换爱心")
                                        .foregroundColor(.black)
                                }
                            }
                            Spacer()
                        }.padding(EdgeInsets(top: 5, leading: 20, bottom: 30, trailing: 10))
                       
                    }
                }
                
            }
            VStack{
                HStack{
                    Text("我收到的今日思念")
                        .font(.system(size: 20))
                    Spacer()
                }.padding(EdgeInsets(top: 10, leading: 20, bottom: 5, trailing: 10))
                HStack{
                    Text("爷爷向你寄送了两份思念")
                        .foregroundColor(.gray)
                        .padding(EdgeInsets(top: 5, leading: 20, bottom: 5, trailing: 10))
                    Image("new")
                    Spacer()
                    Text("AM09:41").foregroundColor(.gray)
                        .padding(EdgeInsets(top: 5, leading: 20, bottom: 5, trailing: 20))
                }
                Divider().padding(EdgeInsets(top: 0, leading: 20, bottom: 5, trailing: 20))
                HStack{
                    Text("妈妈亲了你一下，送了一份思念")
                        .foregroundColor(.gray)
                        .padding(EdgeInsets(top: 5, leading: 20, bottom: 5, trailing: 10))
                    Spacer()
                    Text("AM08:45").foregroundColor(.gray)
                        .padding(EdgeInsets(top: 5, leading: 20, bottom: 5, trailing: 20))
                }
                Divider().padding(EdgeInsets(top: 0, leading: 20, bottom: 5, trailing: 20))
                
            }
            HStack{
                VStack{
                    Button(action: {
                       
                    })
                    {
                        HStack{
                            VStack {
                                Image("eye")
                                    .foregroundColor(Color("AccentColor"))
                            }
                            .frame(width: 40, height: 40, alignment: .center)
                            .cornerRadius(20.0)
                            .background(Color.white)
                            .overlay(Capsule(style: .continuous).stroke( lineWidth: 1)
                            )
                            Text("查看历史思念")
                                .foregroundColor(.black)
                            
                        }
                        Spacer()
                    }.padding(EdgeInsets(top: 20, leading: 20, bottom: 0, trailing: 10))
                    VStack{
                        Button(action: {
                        })
                        {
                            HStack{
                                VStack {
                                    Image("setting")
                                        .foregroundColor(Color("AccentColor"))
                                }.padding(8)
                                .frame(width: 40, height: 40, alignment: .center)
                                .cornerRadius(20.0)
                                .background(Color.white)
                                .overlay(Capsule(style: .continuous).stroke( lineWidth: 1)
                                )
                                VStack{
                                    Text("设置思念语句")
                                        .foregroundColor(.black)
                                }
                            }
                            Spacer()
                        }.padding(EdgeInsets(top: 5, leading: 20, bottom: 30, trailing: 10))
                       
                    }
                }
                
            }
            
        }.frame(minWidth: 0/*@END_MENU_TOKEN@*/,  maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,  maxHeight: /*@START_MENU_TOKEN@*/.infinity, alignment: .topLeading)
    
        }
    }
    
}

struct LoveView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LoveView()
          
        }
    }
}