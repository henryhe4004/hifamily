//
//  ImagePickerView.swift
//  HifamilySwiftUI
//
//  Created by 潘炳名 on 2021/9/18.
//

import SwiftUI
import YPImagePicker

struct ImagePickerView: View {
    @State private var showYPImagePickerView = true
        
       var body: some View {
           VStack {
            HStack {
                Image("Iconly-Bulk-Setting")
                    .resizable()
                    .frame(width:23,
                           height:23,
                           alignment:.center)
                Spacer()
                Text("Family album")
                    .foregroundColor(Color("AccentColor"))
                    .font(.system(size: 18))
                Spacer()
                Image("Iconly-Bulk-Plus")
                    .resizable()
                    .frame(width:23,
                           height:23,
                           alignment:.center)
            }.padding()
                   MediaPicker()
               
           }

       }
}
struct MediaPicker: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> YPImagePicker {
        let config = YPImagePickerConfiguration()
        
        let picker = YPImagePicker(configuration: config)
        picker.didFinishPicking { [unowned picker] items, _ in
            if let photo = items.singlePhoto {
                print(photo.fromCamera) // Image source (camera or library)
                print(photo.image) // Final image selected by the user
                print(photo.originalImage) // original image selected by the user, unfiltered
                print(photo.modifiedImage ?? "not modified !") // Transformed image, can be nil
                print(photo.exifMeta ?? "no exif metadata") // Print exif meta data of original image."
            }
            picker.dismiss(animated: true, completion: nil)
        }
    
        return picker
    }
    
    func updateUIViewController(_ uiViewController: YPImagePicker, context: Context) {}
    
    typealias UIViewControllerType = YPImagePicker
    
}
struct ImagePickerView_Previews: PreviewProvider {
    static var previews: some View {
        ImagePickerView()
    }
}
