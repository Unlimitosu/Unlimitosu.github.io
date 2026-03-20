---
layout: default
title: 기본 리듬 설계 예시
parent: 리듬 설계    
last_modified_date: 2026-03-19
nav_order: 3
---

이번 장에서는 곡을 실제로 분석해보고 레이어링을 하는 방법, 그리고 기본 리듬을 설계하는 방법을 예시를 통해 알아봅니다. 더 나아가, 하위 레이어를 표현하는 방법과 서클/슬라이더의 활용에 대해 알아봅니다.

[ゆいこんぬ - 星達のメロディ](https://www.youtube.com/watch?v=OTFp-Qf96Wg)를 예시로 _인세인 이상 난이도를 기준으로_ 리듬 잡는 방법을 직접 보여드립니다. 사용된 `.osz` 파일은 [여기]()에서 다운로드할 수 있으며, 북마크(<span style="color: skyblue;">파란색 선</span>)가 있는 부분부터 리듬을 잡았습니다. 인세인 이상 난이도를 기준으로 하는 이유는, 하드 이하의 하위 난이도에서는 리듬의 단순화(simplification)가 적용되어 최상위 레이어에도 패시브 리듬을 사용하기 때문입니다. 최대한 액티브와 패시브 리듬의 차이를 보이기 위해 인세인 이상의 난이도를 가정합니다.

{:. warning}
이 장에서 보여드리는 방식은 **정답이 아닙니다.** 리듬 설계는 매퍼마다 다를 수 있으며, 아래의 예시는 하나의 참고용으로만 봐주세요. 

# 레이어링

먼저, 이 곡의 레이어를 단순하게 생각하면 다음 세 가지로 나뉩니다.

- 보컬
- 드럼
- 배경음 (기타 소리, 종종 나오는 피아노 음 등)

이 중에, 어떤 것에 가장 높은 우선 순위를 부여해야 할까요?

특별한 이유가 있지 않은 이상 보컬곡은 **보컬에 가장 높은 우선 순위**를 부여하는 것이 일반적입니다. 배경음이 약하고 보컬이 강하게 들리면 보컬을 우선으로 리듬을 설계하는 편입니다. 

그렇다면 이런 보컬곡에서 드럼이나 배경음에 가장 높은 우선 순위를 두지 않는 이유를 생각해 봅시다. 수많은 보컬곡들은 대개 단조로운 드럼 박자를 가지며, 대부분 보컬과 동일한 박자를 따라갑니다. 다시 말해, 보컬과 드럼이 겹치는 곳이 굉장히 많습니다. 배경음 또한 동일합니다. 그러므로 특별한 소리가 있거나 하위 레이어의 음이 눈에 띄게 커지는 경우 등, 몇몇 경우를 제외하면 보컬을 최상위 레이어로 설정하는 것은 합리적입니다.

그러나 보컬곡 중에서도 몇몇 곡은 드럼에 높은 우선 순위를 적용하는 것이 합리적일 수 있습니다. [サリー - Remind](https://www.youtube.com/embed/-DhLw8gQJn4?si=A5Vo_o3BGHMx--Eh&amp;start=87)와 같은 곡은 분명히 비슷한 레이어를 가지지만, 보컬이 단조로운 반면 드럼이 상당히 강하므로(보컬과 비슷하거나 때때로 보컬보다 강하므로), 드럼을 액티브 리듬으로 두는 것이 합리적입니다. 

만약 [寺島怜志 - GO GET'EM](https://osu.ppy.sh/beatmapsets/1860990#osu/4158054)과 같이, 보컬이 없고 메인 멜로디와 드럼 중 우선 순위를 고르기 어려운 경우는 어떨까요? 이런 경우는 우선 순위를 구간마다 변경하는 것이 좋은 선택이 될 수 있습니다. `oat's extra`에서 이를 잘 구현했으니 한 번 보시는 것을 추천합니다.

최상위 레이어를 위주로 리듬을 구성하더라도, 여전히 하위 레이어는 패시브 리듬으로 표현할 수 있다는 점을 기억해주세요. 뿐만 아니라, 플로우와 같이 리듬이 아닌 요소로도 표현할 수 있지만, 이는 후속 챕터에서 설명하므로 여기서는 생략합니다.

{: .note }
일반적으로 보컬곡은 **보컬을 최상위 레이어**로 두면서, 하위 레이어는 패시브 리듬 등으로 표현할 수 있습니다. 곡의 장르나 분위기에 따라 이런 선택은 유동적으로 바뀔 수 있습니다.

# 리듬 설계

한 소절 단위로 노래를 끊어 들으며 다음 과정을 따라가 봅시다.

- 먼저 보컬을 액티브 리듬으로 둔다.
- 하위 레이어에서 액티브로 둘만한 곳을 찾는다.
- 필러 사용을 결정한다. 

## 첫 번째 소절

먼저, 첫 번째 소절에서 **보컬만** 액티브로 표현하면 아래 영상과 같습니다.

<figure style="text-align: center; margin-bottom: 20px;">
  <div style="position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden; max-width: 100%;">
    <iframe 
      style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"
      src="https://www.youtube.com/embed/e-9-cYlRDuU?si=XAl9qLo4Ov027hs3" 
      title="YouTube video player" 
      frameborder="0" 
      allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" 
      referrerpolicy="strict-origin-when-cross-origin" 
      allowfullscreen>
    </iframe>
  </div>
  <figcaption style="font-size: 0.85em; color: #888; margin-top: 10px;">
    첫 번째 소절의 보컬을 액티브로 표현
  </figcaption>
</figure>

보컬을 액티브로 두고 보니, 리듬이 눈에 띄게 비어있는 곳이 보입니다. 바로 `10번 서클`과 그 다음 `1번 서클` 사이입니다. 인세인 이상에서, 그것도 곡의 하이라이트 부분에서 이 정도로 두 박자 이상의 큰 갭(gap)은 크게 어울리지 않을 수 있습니다. 

바로 이런 경우에 하위 레이어를 표현하는 것을 생각할 수 있습니다. 이 곡은 배경음이 다른 요소에 비해 약하기 때문에, 드럼을 표현하는 것을 생각해봅시다. 아래 그림은 첫 소절에서의 드림의 위치를 <span style="color: skyblue;">파란색</span>으로, 보컬의 위치를 <span style="color: red;">빨간색</span>으로 타임라인에 나타냈습니다.

<figure style="text-align: center;">
  <img src="{{ '/assets/images/chapter3/3_1.png' | relative_url }}" alt="" width="80%">
  <figcaption style="font-size: 0.85em; color: grey; margin-top: 5px;">
    첫 번째 소절에서의 보컬과 드럼의 위치
  </figcaption>
</figure>

그림에서 보컬과 드럼이 겹치는 부분과 겹치지 않는 부분을 봅시다. `10번 서클`까지는 모든 드럼이 보컬과 동일한 박자에 있습니다. 그러나 `10번 서클`과 `1번 서클` 사이에는 보컬이 전혀 없지만 드럼이 명확하게 들립니다. 이런 경우에는 다음과 같이 **드럼을 액티브 리듬으로 표현**할 수 있습니다.

<figure style="text-align: center;">
  <img src="{{ '/assets/images/chapter3/3_2.png' | relative_url }}" alt="" width="80%">
  <figcaption style="font-size: 0.85em; color: grey; margin-top: 5px;">
    액티브 리듬으로 표현된 드럼
  </figcaption>
</figure>

이를 바로 다음 구간에도 적용하여 리듬을 구성하면 아래 영상과 같이 됩니다.

<figure style="text-align: center; margin-bottom: 20px;">
  <div style="position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden; max-width: 100%;">
    <iframe 
      style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"
      src="https://www.youtube.com/embed/ZYI794A3nVc?si=_Yfqcc5TqGe11nUH" 
      title="YouTube video player" 
      frameborder="0" 
      allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" 
      referrerpolicy="strict-origin-when-cross-origin" 
      allowfullscreen>
    </iframe>
  </div>
  <figcaption style="font-size: 0.85em; color: #888; margin-top: 10px;">
    첫 번째 소절의 보컬과 드럼을 액티브로 표현
  </figcaption>
</figure>

여기까지 하면 기본 리듬은 설계했지만, 여전히 1/1 갭이 있기 때문에 이대로 노트를 배치하면 리듬이 서로 연결되지 않고 끊어진 느낌을 주기 쉽습니다. 이럴 때 어떤 식으로 리듬을 채울 수 있는지 알아봅시다.


### 리듬 채우기

리듬을 채울 때는 **최상위 레이어의 진행**에 따라 다르게 채울 수 있습니다. 크게 다음의 두 가지의 사고 흐름을 생각할 수 있습니다.

- **최상위 레이어가 일시적으로 진행되지 않는 상황** 
  -  노래(배경음, 메인 멜로디 등)는 계속해서 진행되는 상태 <br> -> 필러(filler) 적극 활용을 우선해서 고려

- **최상위 레이어가 일시적으로 진행되지 않는 상황**
  - 곡 구성 자체가 작곡가의 의도 등의 이유로 해당 구간의 브레이킹을 의도한 경우 등 <br> -> 필러 사용보다는 그 상황을 맵에 반영할 것을 우선해서 고려

여기서 **_필러_** 란, 단순히 리듬을 채우기 위한 오브젝트를 의미합니다. 최상위 레이어가 액티브 리듬으로 표현된다는 전제는 유지한 채, 하위 레이어를 표현함으로서 자연스러운 리듬을 구성하는 역할입니다. 

저는 여기서 필러로 슬라이더를 사용할 것이며, 슬라이더는 일반적으로 필러로서 굉장히 많이 사용됩니다. 그러나 단순히 1/2 슬라이더만 사용하면 리듬이 매우 단순해지기에, 슬라이더의 리듬을 서로 다르게 구성하여 사용합니다. 

주로 쓰이는 방법은 **보컬의 길이 또는 강세**에 따라 슬라이더의 리듬을 다르게 사용하는 것입니다. 드럼까지 채운 상태에서 1/1 갭의 시작점의 보컬 강세는 다음과 같습니다.

<figure style="text-align: center;">
  <img src="{{ '/assets/images/chapter3/3_3.png' | relative_url }}" alt="" width="80%">
  <figcaption style="font-size: 0.85em; color: grey; margin-top: 5px;">
    첫 소절의 보컬 강세
  </figcaption>
</figure>

특히, `7, 10번 서클`에서는 `4번 서클`보다 보컬이 더 크고, 오래 이어진다는 점을 주목하세요. 이런 경우에는 `4번 서클`에는 1/2 슬라이더를, `7, 10번 서클`에는 3/4 슬라이더를 사용할 수 있습니다. 1/2는 슬라이더가 상대적으로 약한 `4번 서클`의 보컬을 표현하며, 3/4 슬라이더는 더 크고, 오래 지속되는 `7, 10번 서클`의 보컬을 표현합니다. 바로 뒷 부분도 크게 다르지 않으니, 슬라이더를 적용한 영상을 참고하세요.

<figure style="text-align: center; margin-bottom: 20px;">
  <div style="position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden; max-width: 100%;">
    <iframe 
      style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"
      src="https://www.youtube.com/embed/O5JeNQxvrBI?si=WlU-hxy4FKLkxGcn" 
      title="YouTube video player" 
      frameborder="0" 
      allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" 
      referrerpolicy="strict-origin-when-cross-origin" 
      allowfullscreen>
    </iframe>
  </div>
  <figcaption style="font-size: 0.85em; color: #888; margin-top: 10px;">
    첫 번째 소절에 슬라이더를 적용한 리듬
  </figcaption>
</figure>

연속적으로 배치되면서, 보컬의 강세를 반영한 리듬이 완성되었습니다. 물론 여기서 더 변형을 하거나 킥슬라이더(1/4 슬라이더)를 활용한 리듬을 설계할 수도 있지만, 기본 리듬을 설계하는 과정에서는 이 정도로도 충분합니다.

그럼, 다음 소절로 넘어가 봅시다.

## 두 번째 소절

첫 번째 소절과 마찬가지로, 가장 먼저 보컬을 액티브로 둡니다.

<figure style="text-align: center; margin-bottom: 20px;">
  <div style="position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden; max-width: 100%;">
    <iframe 
      style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"
      src="https://www.youtube.com/embed/9poDXA50U8c?si=L7cZmoyMUS980evI" 
      title="YouTube video player" 
      frameborder="0" 
      allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" 
      referrerpolicy="strict-origin-when-cross-origin" 
      allowfullscreen>
    </iframe>
  </div>
  <figcaption style="font-size: 0.85em; color: #888; margin-top: 10px;">
    두 번째 소절의 보컬을 액티브로 표현
  </figcaption>
</figure>

두 번째 소절도 보컬만으로는 갭이 많이 있고, 배경음은 계속해서 진행하기 때문에 필러 사용을 고려해봅니다. 첫 번째 소절과 같이, 드럼의 위치를 <span style="color: skyblue;">파란색</span>으로, 보컬의 위치를 <span style="color: red;">빨간색</span>으로 타임라인에 나타내면 다음과 같습니다.

<figure style="text-align: center;">
  <img src="{{ '/assets/images/chapter3/3_4.png' | relative_url }}" alt="" width="80%">
  <figcaption style="font-size: 0.85em; color: grey; margin-top: 5px;">
    두 번째 소절에서의 보컬과 드럼의 위치 - 1
  </figcaption>
</figure>

상황이 조금 더 복잡해졌지만, 보컬과 드럼이 겹치지 않는 부분을 유심히 보며 아래 그림에 표시된 A~E 지점의 순서대로 필러를 채워봅시다.

### A 지점

먼저 `1번 서클`과 `2번 서클` 사이의 드럼을 봅시다. 현재 1/2 지점에서의 드럼 킥은 명확하게 들리는 상황입니다. 이런 경우에서는 다음 두 가지 중에 선택할 수 있습니다.

- **드럼을 표현하고자 할 경우** <br> -> 1/2 슬라이더, 또는 서클을 필러로 사용
- **드럼을 무시하고 보컬이나 배경음을 표현하고자 할 경우** <br>  -> 주어진 상황에 맞게 3/4, 1/1 등의 긴 슬라이더를 사용하여 슬라이더 바디(sliderbody)에 드럼이 묻혀가도록 함

지금과 같은 경우에는 1/2 지점에서 보컬이 끝나는 것으로 들리기 때문에, 저는 첫 번째 경우를 선택하여 1/2 슬라이더를 사용하겠습니다.

### B, C 지점

`3번 서클`과 `4번 서클`의 보컬의 톤이 모두 높으면서, 끌림음이 있습니다. 이런 경우 3/4 슬라이더를 사용하는 것이 보컬을 정직하게 표현하는 것이지만, C 지점에 드럼 스네어가 명확히 들리기 때문에 이를 반영하면 아래 사진과 같이 두 가지 조합이 나올 수 있습니다. 

<figure style="text-align: center;">
  <img src="{{ '/assets/images/chapter3/3_5.png' | relative_url }}" alt="" width="80%">
  <figcaption style="font-size: 0.85em; color: grey; margin-top: 5px;">
    3/4 슬라이더를 사용한 리듬 구성 예시
  </figcaption>
</figure>

위는 C 지점을 패시브로 두어, 히트사운드로 표현하는 방식입니다. 반면에 아래는 C 지점을 액티브로 두어 드럼을 표현하는 방식입니다. 두 가지 모두 좋은 선택이며, 곡의 상황과 취향에 따라 선택해서 사용하면 됩니다. 저는 뒤에 보컬을 잡은 서클이 연달아 나오는 점을 감안할 때, 서클을 너무 많이 사용하지 않기 위해 위쪽 그림과 같은 `3/4 + 1/2 슬라이더` 조합을 선택하겠습니다.

추가로, 1/2 슬라이더 2개는 패터닝이 어렵지 않기 때문에 1/2 슬라이더를 연속해서 사용하는 방법도 있습니다. 

### D, E 지점

D, E 지점 모두 보컬이 없지만, D 지점에는 드럼 스네어가 강하게 들립니다. 그에 비해, E 지점은 D 지점에 비해 약한 드럼이 들리기 때문에 D 지점에 1/2 슬라이더를 두는 것이 합리적으로 보입니다.

다음 구간으로 넘어가봅시다.

<figure style="text-align: center;">
  <img src="{{ '/assets/images/chapter3/3_6.png' | relative_url }}" alt="" width="80%">
  <figcaption style="font-size: 0.85em; color: grey; margin-top: 5px;">
    두 번째 소절에서의 보컬과 드럼의 위치 - 2
  </figcaption>
</figure>

### A 지점

`11번 서클`부터 `1번 서클`까지 보컬이 이어지면서, 1/4 드럼이 나옵니다. 보컬의 끌림음을 표현하기 위해 슬라이더를 사용하면서 드럼을 표현할 수 있는 박자는 아래와 같습니다.

<figure style="text-align: center;">
  <img src="{{ '/assets/images/chapter3/3_7.png' | relative_url }}" alt="" width="80%">
  <figcaption style="font-size: 0.85em; color: grey; margin-top: 5px;">
    보컬의 끌림음과 드럼을 표현할 수 있는 선택지
  </figcaption>
</figure>

두 번째와 같이 킥슬라이더를 사용할 경우, 순간적으로 1/4 밀도가 증가하면서 보컬의 끌림음을 정확히 반영하지 못합니다. 반면에 첫 번째와 같이 1/2 슬라이더를 사용하면 보컬의 끌림음을 보다 더 반영하면서 _드럼을 패시브로 놓을 수 있다_ 는 논리에 위배되지 않습니다. 따라서 저는 첫 번째를 선택하겠습니다.

### B 지점

1/2에 드럼 킥이 분명히 들리며, 바로 앞 구간의 A 지점과 유사한 곳입니다. 그러나 보컬이 앞 구간의 A 지점과는 다르게 조금 더 내지르는 느낌이 강하므로, 드럼을 무시하고 3/4 슬라이더를 사용합니다. 드럼을 표현하고자 할 경우 1/2 슬라이더를 써도 무방합니다.

### C 지점

특별한 음은 들리지 않으나, 배경음이 지속되므로 `3번 서클` 위치에 1/2 슬라이더를 필러로 활용합니다.

### D 지점

드럼 킥이 명확히 들립니다. 무시하기에는 배경음이 계속 진행되고, `4번 서클`에 1/2 슬라이더를 사용하여 패시브 리듬을 사용하기에는 D 지점의 소리의 표현이 부족하다고 생각됩니다. 따라서 서클을 하나 두어 액티브로 표현합니다. 

### E 지점

`5번 서클`에서 보컬이 길게 지속면서 E 지점에 별다른 소리가 없으므로, `5번 서클`에 3/4 슬라이더를 사용하는 것이 합리적입니다.

### F 지점

`8번 서클`은 E 지점과 동일한 논리로 3/4 슬라이더를 사용합니다. 그리고 그 뒤는 보컬 없이 드럼만 있으므로 드럼을 모두 서클로 두어 액티브 리듬을 사용합니다.

## 남은 구간의 리듬 설계

논리는 크게 달라지지 않습니다. 다만, 남은 구간의 뒷 부분 절반이 살짝 달라지는 부분이 있으므로 그 부분을 반영하여 리듬을 설계합니다. 아래 영상에서 전체 리듬 설계를 확인하세요.

<figure style="text-align: center; margin-bottom: 20px;">
  <div style="position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden; max-width: 100%;">
    <iframe 
      style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"
      src="https://www.youtube.com/embed/JGrEPxL1SI8?si=rCdHR9h1Dv5QsAEj" 
      title="YouTube video player" 
      frameborder="0" 
      allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" 
      referrerpolicy="strict-origin-when-cross-origin" 
      allowfullscreen>
    </iframe>
  </div>
  <figcaption style="font-size: 0.85em; color: #888; margin-top: 10px;">
    완성된 리듬
  </figcaption>
</figure>

제가 논리를 추가로 설명하지 않은 뒷 부분에 대해서, 다음 질문에 대한 답을 스스로 생각해보세요. 답변은 스포일러 박스로 달아두었으니 저의 의도와 본인이 생각한 답을 비교해보세요.

... 질문 TBA