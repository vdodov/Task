##### UIAlertController 와 비슷한 기능을 구현



- FirstViewController 에서 버튼을 생성하고 present 를 통해 SecondVIewController 를 띄운다

- 회색의 UIView 를 하나 생성하고 안에 색을 바꿀수있는 버튼과 FirstViewController 로 돌아올수있는 버튼을 만든다



FirstViewController 에서 SecondViewController 를 Present 할때

```swift
secondVC.modalPresentationStyle = .overCurrentContext
present(secondVC, animated: true)
```

위 코드를 작성.

```swift
secondVC.modalPresentationStyle = .overCurrentContext
```

는 present 하게 되었을때 이전 ViewController 를 뒤에 보여준다.



<img width="457" alt="스크린샷 2019-04-23 오후 9 08 10" src="https://user-images.githubusercontent.com/26297049/56579772-f6a20f00-660b-11e9-8c46-5774f0a98705.png">



<img width="457" alt="스크린샷 2019-04-23 오후 9 07 27" src="https://user-images.githubusercontent.com/26297049/56579770-f6a20f00-660b-11e9-8071-9a89707aeccb.png">

<img width="345" alt="스크린샷 2019-04-23 오후 9 07 59" src="https://user-images.githubusercontent.com/26297049/56579771-f6a20f00-660b-11e9-89ab-2faaefd12db1.png">

