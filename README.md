# SCHParticle_swift
This is a swift library showing cool particle on the screen. The library receive UIImageView as parameter . You can customized UIImageView shape and add it as parameter to create a cool particle flying. 

This project is dedicated for "អូនស្អាតរបស់បង"

this project shows method how use

<h3>My Linkin</h3>
<a target="_blank" href="http://www.linkedin.com/in/cheamseta"><img width="100px" src="https://cdn4.iconfinder.com/data/icons/social-media-pro-icons/1080/Linkin-01-128.png"/></a>

<h3>My Profile</h3>
<a target="_blank" href="http://cheamseta.herokuapp.com/"><img width="100px" src="https://graph.facebook.com/10205416160197106/picture?type=large&return_ssl_resources=1"/></a>

## How to use

```
// create circle shape
self.theImgView.image = img;
self.theImgView.layer.borderWidth = 3;
self.theImgView.layer.borderColor = UIColor(white: 1, alpha: 1).cgColor;
self.theImgView.layer.cornerRadius = self.theImgView.bounds.width / 2;
self.theImgView.clipsToBounds = true;

// emit circle shape image as particle
var particle : SCHParticle  = SCHParticle(imageView: ' self.theImgView ');
```


## Preview

<img src="https://firebasestorage.googleapis.com/v0/b/hubgit-cea1c.appspot.com/o/particle.png?alt=media&token=8e0ac64c-d55e-403f-9a86-45359611dd40" width="230"/>
<img src="https://firebasestorage.googleapis.com/v0/b/hubgit-cea1c.appspot.com/o/particle2.png?alt=media&token=4fe108e8-f6ba-43e2-b54a-941373f05c2b" width="230"/>
<img src="https://firebasestorage.googleapis.com/v0/b/hubgit-cea1c.appspot.com/o/particle3.png?alt=media&token=11a95e05-2c82-4c7c-9f23-1ceb7211dbfc" width="230"/>


