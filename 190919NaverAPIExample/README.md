#### 네이버 오픈 API를 이용한 영화 검색 어플리케이션

![](https://codershigh.github.io/WebSite/techblogs/tb_007_movieSearcher/tb007_media/0-0.png)





##### 오픈 API란?

> API 중에서 플랫폼의 기능 또는 콘텐츠를 외부에서 웹 프로토콜(HTTP)로 호출해 사용할 수 있게 개방(open)한 API를 의미한다.
>
> 현재 네이버 오픈 API로 활용할 수 있는 기술에는 네아로(네이버 아이디로 로그인), 지도, 검색이 있으며, Clova의 음성 인식 기술과 음성 합성 기술, 얼굴 인식 기술, Papago의 기계 번역 기술 등이 있다.





 **영화 검색 애플리케이션**

사용자로부터 영화 검색어를 입력받은 후, 네이버 오픈 API 호출을 통해 검색어와 일치하는 영화 정보를 불러와 테이블뷰에 표시한다. 그리고 원하는 영화를 터치하면 각 영화의 세부 정보를 보여준다.

![](https://codershigh.github.io/WebSite/techblogs/tb_007_movieSearcher/tb007_media/0-1.png)

영화 포스터 이미지 다운로드는 **비동기 작업**을 사용해 다운로드 작업을 뒤로 미루고, 포스터 이미지가 모두 다운로드 될 때까지 기다릴 필요 없이 바로 검색 결과를 확인할 수 있도록 테이블 뷰를 구성한다. 마지막으로, **HTTP Request**를 사용하여 영화의 세부 정보를 보여주는 사파리 뷰를 구성한다.





[출처]https://codershigh.github.io/WebSite/techblogs/tb_007_movieSearcher/tb007_script.html