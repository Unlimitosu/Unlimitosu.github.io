---
layout: default
title: 에디터 기본 기능
parent: 에디터 사용법      
last_modified_date: 2026-03-15
nav_order: 2
---

# 오브젝트 놓기

osu!standard에서 '처리'해야 하는 것을 _오브젝트_ 라고 하며, 
매핑에 사용되는 오브젝트의 종류는 **서클, 슬라이더, 스피너**로 나뉩니다. 각 오브젝트가 어떤 것인지는 이미 알고 있다고 가정하여 추가로 설명하지 않습니다. 이 절에서는 오브젝트를 에디터에서 어떻게 놓을 수 있는지 알아봅니다.

## 공통

오브젝트를 놓기 위해서는 우선 노트를 놓을 `타임라인`으로 이동해야 합니다. `타임라인`이란 노트의 리듬 배치를 곡의 진행과 함께 확인할 수 있는 창으로, 에디터 상단에 위치합니다. 아래 그림에서 빨간색 박스가 타임라인입니다. 모든 오브젝트를 놓을 때마다 해당 위치의 타임라인으로 이동해야 합니다. 타임라인 이동은 에디터에서 **마우스 스크롤**으로 이동할 수 있습니다. 

<figure style="text-align: center;">
  <img src="{{ '/assets/images/chapter2/timeline.png' | relative_url }}" alt="" width="80%">
  <figcaption style="font-size: 0.85em; color: grey; margin-top: 5px;">
    에디터에서의 타임라인 위치
  </figcaption>
</figure>

{: .note }
모든 오브젝트는 **해당하는 타임라인**에 위치해야 합니다. 

## 서클

서클은 에디터 좌측의 **_Circle 버튼_** 을 누르거나, 단축키 **_2_** 를 누른 다음 원하는 에디터 공간에 _마우스 좌클릭_ 으로 추가할 수 있습니다.  

<figure style="text-align: center;">
  <img src="{{ '/assets/images/chapter2/circle_descript.png' | relative_url }}" alt="" width="80%">
  <figcaption style="font-size: 0.85em; color: grey; margin-top: 5px;">
    서클을 놓는 방법 (에디터 설명)
  </figcaption>
</figure>

## 슬라이더

슬라이더는 에디터 좌측의 **_Slider 버튼_** 을 누르거나, 단축키 **_3_** 를 누른 다음 원하는 에디터 공간에 _마우스 좌클릭_ 으로 슬라이더를 시작할 수 있습니다. 그 다음, 원하는 경로로 마우스를 뻗어 슬라이더 경로를 설정할 수 있으며, 원하는 위치에 _마우스 우클릭_ 을 하면 슬라이더를 끝낼 수 있습니다.

<figure style="text-align: center;">
  <img src="{{ '/assets/images/chapter2/slider_descript.png' | relative_url }}" alt="" width="80%">
  <figcaption style="font-size: 0.85em; color: grey; margin-top: 5px;">
    슬라이더를 놓는 방법 (에디터 설명)
  </figcaption>
</figure>

슬라이더는 **_앵커(anchor)_** 라고 하는 점을 추가하여 다양한 모양을 표현할 수 있습니다. 앵커는 슬라이더를 생성하는 도중, 또는 이미 완성된 슬라이더에 _마우스 좌클릭_ 으로 추가할 수 있습니다. 앵커는 **흰색과 빨간색**으로 나뉘며, 흰색은 곡선을, 빨간색은 꺾인 선을 그릴 수 있습니다. 추가된 앵커는 _마우스 우클릭_ 으로 제거할 수 있습니다. 아래 예시를 참고하세요.

<figure style="text-align: center;">
  <img src="{{ '/assets/images/chapter2/slider_anchor_example.png' | relative_url }}" alt="" width="80%">
  <figcaption style="font-size: 0.85em; color: grey; margin-top: 5px;">
    슬라이더의 앵커 예시
  </figcaption>
</figure>

## 스피너

스피너는 에디터 좌측의 **_Spinner 버튼_** 을 누르거나, 단축키 **_4_** 를 누른 다음 _마우스 좌클릭_ 으로 스피너를 시작할 수 있습니다. 그리고 _마우스 스크롤_ 로 원하는 스피너 종료 지점으로 이동한 수, _마우스 우클릭_ 으로 스피너를 끝낼 수 있습니다.

<figure style="text-align: center;">
  <img src="{{ '/assets/images/chapter2/spinner_descript.png' | relative_url }}" alt="" width="80%">
  <figcaption style="font-size: 0.85em; color: grey; margin-top: 5px;">
    스피너를 놓는 방법 (에디터 설명)
  </figcaption>
</figure>

이제 각 오브젝트를 놓는 방법을 알았으니, 에디터의 다른 기능들을 알아봅시다.

# 기타 기능

## 뉴콤보

**_뉴콤보(New Combo, NC)_** 는 노트에 적힌 번호를 _초기화_ 하여 1부터 다시 시작하도록 합니다. 아래 사진을 참고하세요.

<figure style="text-align: center;">
  <img src="{{ '/assets/images/chapter2/nc_example.png' | relative_url }}" alt="" width="80%">
  <figcaption style="font-size: 0.85em; color: grey; margin-top: 5px;">
    뉴콤보가 적용된 예시 (오른쪽의 보라색 1번 서클)
  </figcaption>
</figure>

뉴콤보는 **뉴콤보를 적용할 노트를 선택한 상태에서** 에디터 우측의 **_뉴콤보 버튼_** 을 클릭하거나, 단축키 **_Q_** 로 넣을 수 있습니다. 아래의 에디터 설명을 참고하세요.

<figure style="text-align: center;">
  <img src="{{ '/assets/images/chapter2/nc_descript.png' | relative_url }}" alt="" width="80%">
  <figcaption style="font-size: 0.85em; color: grey; margin-top: 5px;">
    뉴콤보가 적용된 예시 (오른쪽의 보라색 1번 서클)
  </figcaption>
</figure>

적절한 뉴콤보 사용은 미관상의 깔끔함은 물론, 다양한 표현이 가능합니다. 이에 대해서는 이후 챕터에서 다루도록 하니, 현재는 이런 기능이 있다고만 알고 넘어가시면 됩니다.

## 나머지 기능

나머지 기능들은 이후 챕터에서 자세하게 다루거나, 사용할 일이 거의 없는 기능입니다. 간단하게만 설명하고 이후 챕터에서 다루겠습니다.

- Whistle, Finish, Clap
  - 히트사운딩을 할 때 사용합니다. 
- Grid Snap
  - _그리드 스타일_ 매핑을 할 때 주로 사용하며, 일반적으로는 사용할 일이 거의 없습니다.
- Distance Snap
  - 노트 간의 간격을 고정한 상태로 놓을 수 있습니다. 
- Lock Notes
  - 해당 노트를 고정하여 수정할 수 없게 합니다. 사용할 일이 거의 없습니다.

# 단축키

단축키는 모두 외울 필요는 없습니다. 그러나 단축키가 익숙해지면 매핑이 한결 편해지기에, 되도록 사용하려고 노력하는 것을 추천합니다.

## 노트 배치 관련 단축키

|단축키|기능|
|:--|:--|
|ctrl+C/V|선택한 노트 복사/붙혀넣기|
|ctrl+H/J|선택한 노트 X축/Y축 대칭 이동|
|ctrl+G|선택한 노트 순서 반전|
|ctrl+</>|선택한 노트 반시계/시계 방향으로 90도 회전|

## 변환 관련 단축키

|단축키|기능|
|:--|:--|
|ctrl+Shift+R|선택한 노트 회전|
|ctrl+Shift+S|선택한 노트 스케일링|
|ctrl+Shift+F|선택한 슬라이더를 노트로 변환|
|ctrl+Shift+D|다각형 노트 패턴 생성|

## 히트사운딩 관련 단축키

|단축키|기능|
|:--|:--|
|W|Whistle 추가|
|E|Finish 추가|
|R|Clap 추가|
|ctrl+W/E/R|Additions Normal/Soft/Drum 설정|
|ctrl+Shift+W/E|Sampleset Normal/Soft 설정|
|Shift+R|Sampleset Drum 설정|

## 타이밍 관련 단축키

|단축키|기능|
|:--|:--|
|F6|Timing Setup Panel 열기|
|ctrl+P|Herited Timing Point 생성 (Timing Setup Panel 열림)|
|ctrl+Shift+P|Inherited Timing Point 생성 (Timing Setup Panel 열림)|

## 기타 단축키

|단축키|기능|
|:--|:--|
|ctrl+Z|실행 취소|
|ctrl+Y|원상 복구|
|ctrl+S|비트맵 저장|
|ctrl+L|현재 에디터 새로고침|
|ctrl+O|현재 스프레드에서 난이도 선택|
|Z|첫 노트로 이동<br>두 번 누르면 곡 진행도 0%로 이동|
|X|첫 노트부터 재생|
|C|현재 위치부터 재생|
|V|마지막 노트로 이동<br>두 번 누르면 곡 진행도 마지막으로 이동|
|F1~4|Compose/Design/Timing/Song Setup 이동|


