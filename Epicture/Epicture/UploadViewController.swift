//
//  SearchViewController.swift
//  Epicture
//
//  Created by Victor maurin on 13/10/2020.
//  Copyright © 2020 Paul Erny. All rights reserved.
//

import UIKit
import Alamofire

class UploadViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    var accessToken = ""
    var refreshToken = ""
    let client_id = "b1e9460258e5434";
    var textInput = ""
    let headers: HTTPHeaders = [
        "Authorization": "Client-ID b1e9460258e5434"
    ]
    var imagePicker = UIImagePickerController()
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imgUrlLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        UIView.animate(withDuration: 0.3) {
            self.imgUrlLabel.isHidden = true
            self.progressBar.isHidden = true
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if !imageView.isHidden {
            UIView.animate(withDuration: 0.3) {
                self.imageView.isHidden = true
            }
        }
    }
    
    @IBAction func SelectImage(_ sender: Any) {
        if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum){
            print("Button capture")
            
            imagePicker.delegate = self
            imagePicker.sourceType = .savedPhotosAlbum
            imagePicker.allowsEditing = false
            
            present(imagePicker, animated: true, completion: nil)
        }
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        var newImage: UIImage

        if let possibleImage = info[.editedImage] as? UIImage {
            newImage = possibleImage
        } else if let possibleImage = info[.originalImage] as? UIImage {
            newImage = possibleImage
        } else {
            return
        }
        imageView.image = newImage;
        if imageView.isHidden {
            UIView.animate(withDuration: 0.3) {
                self.imageView.isHidden = false
            }
//            imageView.isHidden = false
        }
        dismiss(animated: true)
    }
    
    
    @IBAction func toImgur(_ sender: Any) {
        self.Post(image: imageView.image ?? UIImage())
    }
    
    func Post(image : UIImage?){

        let headers: HTTPHeaders = [
            "Authorization": "Client-ID b1e9460258e5434"
        ]
        let imageData = (image?.jpeg(.lowest)) ?? UIImage().jpeg(.lowest)
        let base64Image = imageData?.base64EncodedString(options: .lineLength64Characters)

        let params = [
            "image": base64Image
        ]

        AF.upload(multipartFormData: { multiPart in
            if !self.imgUrlLabel.isHidden {
                UIView.animate(withDuration: 0.3) {
                    self.imgUrlLabel.isHidden = true
                }
//                self.imgUrlLabel.isHidden = true
            }
            if self.progressBar.isHidden {
                UIView.animate(withDuration: 0.3) {
                    self.progressBar.isHidden = false
                }
//                self.progressBar.isHidden = false
            }
            for (key, value) in params {
                if let temp = value {
                    multiPart.append(temp.data(using: .utf8)!, withName: key)
                }
            }
            multiPart.append(imageData ?? Data(), withName: "file", fileName: "file.jpeg", mimeType: "image/jpeg")
        }, to: "https://api.imgur.com/3/image", method: .post, headers: headers)
            .uploadProgress(queue: .main, closure: { progress in
                //Current upload progress of file
                let progressFloat = Float(progress.fractionCompleted)
                self.progressBar.setProgress(progressFloat, animated: true)
                print("Upload Progress: \(progress.fractionCompleted)")
            })
            .response(completionHandler: { response in
                do {
                    let decoder = JSONDecoder()
                    let imagesData = try decoder.decode(ResponseImgUpload.self, from: response.data!)
                    
                    if !self.progressBar.isHidden {
                        UIView.animate(withDuration: 0.3) {
                            self.progressBar.isHidden = true
                        }
                        self.progressBar.progress = 0
                    }
                    if self.imgUrlLabel.isHidden {
                        UIView.animate(withDuration: 0.3) {
                            self.imgUrlLabel.isHidden = false
                        }
                    }
                    if (imagesData.success!) {
                        self.imgUrlLabel.text = imagesData.data?.link
                    } else {
                        self.imgUrlLabel.text = "error!"
                    }
                } catch {
                    print(error)
                    return
                }
            })
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension UIImage {
    enum JPEGQuality: CGFloat {
        case lowest  = 0
        case low     = 0.25
        case medium  = 0.5
        case high    = 0.75
        case highest = 1
    }
    func jpeg(_ jpegQuality: JPEGQuality) -> Data? {
        return jpegData(compressionQuality: jpegQuality.rawValue)
    }
}
