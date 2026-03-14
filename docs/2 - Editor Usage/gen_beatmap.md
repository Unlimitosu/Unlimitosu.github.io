---
layout: default
title: 비트맵 생성하기
parent: 에디터 사용법      
nav_order: 1
---

# **선곡**

매핑을 하기 위해서는 가장 먼저 어떤 노래를 만들지 정해야 합니다. **자신이 원하는 곡**을 매핑하는 것이 가장 중요하지만, 매핑의 기초가 잡히지 않은 상태에서는 매핑하기 어려운 곡들이 분명히 있습니다. 어떤 곡을 매핑할지 고민하는 분들은 아래의 가이드라인을 참고하시는 것을 추천드립니다.

- 박자가 난해한 곡은 피하자
  - 박자가 난해하면 리듬부터 설계하기가 어렵습니다. 상대적으로 리듬을 편하게 설계할 수 있는 곡들을 추천합니다. 
- 정박 위주의 160~210 bpm 사이의 곡을 찾자
  - bpm이 너무 낮으면 리듬 구성이 어려울 수 있고, 너무 높으면 빠른 곡을 스스로 제어하지 못해 리듬 설계가 어려울 수 있습니다. 

위의 가이드라인은 그저 가이드라인일 뿐이며, 본인이 특별히 매핑하고 싶은 곡이 있다면 그 곡을 선정하시는 것이 좋습니다. 매핑은 같은 곡을 오랜 시간 들어야 하는 만큼, 질리지 않고 들을 수 있는 곡을 고르시는 것을 추천합니다. 
 

# **음원 구하기**

음원을 구하는 방법은 크게 **FA 음원 활용, 랭크맵 음원 활용, 직접 추출** 등의 방법이 있습니다. 

- **FA 음원 활용**
  - **[osu! Featured Artists](https://osu.ppy.sh/beatmaps/artists)**가 제공한 음원을 활용합니다. `.osz` 파일로 제공되기에 가장 간편하지만, 원하는 음원이 없는 경우에는 사용할 수 없는 방법입니다.
- **랭크맵 음원 활용**
  - 이미 랭크된 맵의 음원을 가져다가 쓰는 방법입니다. `osu/Songs` 폴더 안에서 비트맵 폴더를 찾고, 그 안의 음원을 사용합니다. 오프셋, BPM 등을 추가로 측정할 필요가 없어 간편합니다.
- **직접 추출**
  - [yt-dlp](https://github.com/yt-dlp/yt-dlp), 혹은 유튜브 음원 추출 사이트 등을 통해 직접 추출하는 방법입니다. 음질 이슈가 있을 수 있어 추출 후 음질 확인이 필요합니다. 

{: .warning }
**[Content Usage Permission](https://osu.ppy.sh/wiki/en/Rules/Content_usage_permissions)**에 등재된 아티스트 중, **Allowed, with exceptions**와 **Disallowed** 섹션에 있는 아티스트는 음원 사용이 (일부)불가능합니다. 업로드 자체는 가능하지만 랭크는 불가하며, 아티스트가 사용하지 말 것을 권고한 것이기에 매핑하기 이전에 반드시 확인해야 합니다.


# **비트맵 생성**

이제, 가져온 음원으로 **비트맵을 생성**해봅시다. 먼저, osu! 메인 화면에서 Edit 버튼을 눌러 다음 화면으로 진입합니다.

<p align="center">
  <img src="{{ '/assets/images/chapter2/screenshot005.jpg' | relative_url }}">
</p>

저는 [이 맵셋](https://osu.ppy.sh/beatmapsets/1619982#osu/3307569)의 음원으로 비트맵을 생성해보겠습니다. 아래와 같이 비트맵 에디터로 진입하고, 좌측 상단에서 `파일 - Songs 폴더 열기`를 클릭합니다.

<p align="center">
  <img src="{{ '/assets/images/chapter2/song_diropen.png' | relative_url }}">
</p>

파일 탐색기에 비트맵 폴더가 열렸다면, 다시 Esc를 눌러 곡 선택창으로 이동한 후, 비트맵 폴더에서 음원을 osu!로 드래그합니다. 음원은 보통 `.mp3`나 `.ogg` 파일입니다.

<p align="center">
  <img src="{{ '/assets/images/chapter2/drag_song.png' | relative_url }}">
</p>

이제 다음과 같이 비트맵이 생성되었습니다. 

<p align="center">
  <img src="{{ '/assets/images/chapter2/empty_map.png' | relative_url }}">
</p>

## **Song Setup**
생성된 비트맵을 클릭하면, 처음에는 **_메타데이터_** 를 입력하기 위해 아래와 같은 창이 나타납니다.

<p align="center">
  <img src="{{ '/assets/images/chapter2/need_metadata.png' | relative_url }}">
</p>

이 창은 `Song Setup` 창으로, 나중에 에디터에서 따로 편집이 가능하지만, 대부분 맵을 만드는 데 필수적인 요소이기 때문에 미리 작성해두는 것이 좋습니다.

먼저 `General` 탭부터 살펴봅시다.

### **General**
각 필드의 의미는 아래 표와 같습니다.

| 필드 | 의미 |
| :--- | :--- |
| Artist | 해당 곡의 아티스트 (**원어**) |
| Romanaised Artist | 해당 곡의 아티스트 (**로마자**)|
| Title | 해당 곡의 제목 (**원어**) |
| Romanaised Title | 해당 곡의 제목 (**로마자**)|
| Beatmap Creator | 비트맵 제작자 (자동 생성) |
| Difficulty | 비트맵 난이도 이름 (**로마자 추천**) |
| Source | 곡의 출처 <br>(곡이 등장한 작품 또는 게임 등, 선택 사항) |
| Tags | 곡의 검색 노출을 위한 필드.  <br>곡/맵과 관련된 어떤 것이라도 좋음 |

**_Romanised_** 필드는 유니코드 문자가 아티스트나 제목에 포함될 경우만 활성화됩니다. 비활성화된 경우 그대로 작성할 필요가 없으며, 활성화된 경우만 작성하면 됩니다. 

저의 경우, 다음과 같이 작성했습니다.

| 필드 | 의미 |
| :--- | :--- |
| Artist | solfa feat. 茶太 |
| Romanaised Artist | solfa feat. Chata |
| Title | ミラクルinfinity |
| Romanaised Title | Miracle infinity |
| Beatmap Creator | Sutherland (자동 생성) |
| Difficulty | Insane |
| Source | ゆめこい～夢見る魔法少女と恋の呪文～ <br>(곡이 등장한 게임 제목) |
| Tags | Featured Artist fa Yumekoi ~Yume Miru Mahou Shoujo to Koi no Jumon~ Parasol Japanese Pop Jpop J-pop Eroge Galgame Visual Novel Video Game VN Opening op Full Ver Version |

`Tags`에는 **곡의 장르, 언어, 게스트 매퍼 닉네임**이 필수로 들어가야 하며, FA일 경우 태그에 명시해야 합니다. 나머지는 이 곡의 출처의 로마자 명칭을 포함해 어떤 것을 넣어도 무방합니다. 물론, 넣지 않을 수도 있지만 비트맵 검색 노출을 위해 다양한 태그를 넣는 것이 좋습니다.

### **Difficulty**

<p align="center">
  <img src="{{ '/assets/images/chapter2/difficulty.png' | relative_url }}">
</p>

`Difficulty` 탭에는 해당 난이도의 HP, CS, AR, OD를 설정할 수 있습니다. 각 필드가 무엇인지는 따로 설명하지 않습니다. 각 필드의 값을 드래그하여 변경할 수 있습니다. Shift를 누른 상태로 드래그하면 소수점 단위의 값을 설정할 수 있습니다.

### **Colours**

<p align="center">
  <img src="{{ '/assets/images/chapter2/combocolor.png' | relative_url }}">
</p>
콤보 컬러를 설정할 수 있습니다. 최소한 2개의 콤보 컬러를 사용해야 하며, 최대 8개까지 사용할 수 있습니다. 

`Combo n` 버튼을 누르면 아래와 같이 색 선택 창이 나타나며, 여기서 색을 선택할 수 있습니다. 일반적으로는 곡의 배경과 연관된 색을 사용합니다.

![]({{ "/assets/images/chapter2/colorsetting.png" | relative_url }})

하단의 `Backgound Colour`버튼은 현재 사용하는 경우가 극히 드뭅니다.

### **Design**

<p align="center">
  <img src="{{ '/assets/images/chapter2/design.png' | relative_url }}">
</p>
카운트다운 설정 및 플레이 관련 디자인을 설정할 수 있습니다. 기본 값으로 사용해도 무방합니다.

### **Advanced**

<p align="center">
  <img src="{{ '/assets/images/chapter2/advanced.png' | relative_url }}">
</p>

`Stack Leneiency`를 설정할 수 있습니다. 값이 높을수록 더 오랜 시간이 지나야 노트가 완벽히 겹쳐집니다.

(사진 추가)

