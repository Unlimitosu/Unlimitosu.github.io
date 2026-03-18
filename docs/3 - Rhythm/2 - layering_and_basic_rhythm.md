---
layout: default
title: 레이어링과 기본 리듬
parent: 리듬 설계    
last_modified_date: 2026-03-18
nav_order: 2
---

# 리듬의 우선 순위

리듬의 **레이어링(layering, 또는 우선 순위)** 란, 곡의 구성 요소(보컬, 드럼, 배경음 등)에서 어떤 것을 우선으로 리듬을 잡을지에 대한 추상적인 개념입니다. 레이어링가 없다면 리듬이 곡의 구성 요소를 랜덤하게 따라갈 수 있으며, 이는 곧 맵의 구조가 약함은 물론, 플레이어가 곡을 '연주하고 있다'는 느낌이 들기 어렵게 됩니다. 

물론, 곡 전체에서 같은 우선 순위를 두고 매핑할 필요는 없습니다. 주어진 곡의 진행 상황에 따라 유동적으로 판단하여 우선 순위를 바꿀 수 있습니다. 그러나 그 이유는 명확히 존재해야 하며, 일반적인 우선 순위 변경에 대해서는 이 장의 뒷부분에서 설명하도록 합니다.

레이어링의 개념과 필요한 이유를 알았으니, 이제 실제로 레이어링을 하는 방법과 이를 이용한 기본 리듬 구성을 알아봅시다.

# 기본 리듬 구성

레이어링을 하는 가장 간단한 예시는 다음과 같습니다.

- 하나의 구성 요소를 선택한 후, 그 구간에서 이를 액티브 리듬으로 매핑
- 다른 구성 요소는 모두 패시브 리듬으로 매핑

여기서 중요한 것은 **하나의 구성 요소를 선택하면 그것은 특별한 이유가 있지 않은 이상 액티브 리듬으로 구성**한다는 것과, **그러한 구성은 곡의 같은 구간에서 일관적으로 적용**되어야 한다는 것입니다.

다음의 예시 자료를 참고해주세요.

<figure style="text-align: center; margin-bottom: 20px;">
  <div style="position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden; max-width: 100%;">
    <iframe 
      style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"
      src="https://www.youtube.com/embed/FhtOuc5Nfwg?si=IsSnITVp0o0SM8KO" 
      title="YouTube video player" 
      frameborder="0" 
      allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" 
      referrerpolicy="strict-origin-when-cross-origin" 
      allowfullscreen>
    </iframe>
  </div>
  <figcaption style="font-size: 0.85em; color: #888; margin-top: 10px;">
    액티브 리듬을 메인 멜로디로 설정한 예시<br>
    <a href="https://osu.ppy.sh/beatmapsets/368060#osu/807074" target="_blank" style="color: #5480C7; text-decoration: underline;">Sound Souler - Absent Color [ExpertPlus] by Sonnyc</a>
  </figcaption>
</figure>

<figure style="text-align: center; margin-bottom: 20px;">
  <div style="position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden; max-width: 100%;">
    <iframe 
      style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"
      src="https://www.youtube.com/embed/xwLAI_PrYh4?si=eDE6Pqs9zAVHBi-x" 
      title="YouTube video player" 
      frameborder="0" 
      allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" 
      referrerpolicy="strict-origin-when-cross-origin" 
      allowfullscreen>
    </iframe>
  </div>
  <figcaption style="font-size: 0.85em; color: #888; margin-top: 10px;">
    액티브 리듬을 보컬로 설정한 예시<br>
    <a href="https://osu.ppy.sh/beatmapsets/368060#osu/807074" target="_blank" style="color: #5480C7; text-decoration: underline;">solfa feat. Chata - Miracle infinity [Suou's Insane] by Dored</a>
  </figcaption>
</figure>

첫 번째 영상에서는 곡에 1/4 드럼이 군데군데 나옴에도 불구하고, **메인 멜로디에 가장 높은 우선 순위를 부여**하여 드럼을 무시했습니다. 잘 들어보면 히트사운드도 드럼이 반영되어 있지 않고, 메인 멜로디만을 따라가는 것을 볼 수 있습니다. 

두 번째 영상에서는 **보컬에 가장 높은 우선 순위를 부여**하여, 보컬에 모두 액티브 리듬을 사용한 것을 볼 수 있습니다. 물론 영상 중간부분에 드럼을 액티브로 잡기는 했지만, 여전히 보컬에도 액티브가 적용되는 것을 볼 수 있습니다. 

만약 두 번째 영상에서 중간 부분인 `01:16:568 (2,3,1,1,2,3,4,5) - `에서 드럼을 반영하지 않았다면 인세인이라는 난이도를 생각했을 때, 보컬 없이 배경음과 드럼만 나오기 때문에 리듬이 많이 비어보일 수 있습니다. 이런 부분들은 곡의 난이도에 따라서 유동적으로 낮은 우선 순위의 레이어에 액티브 리듬을 사용하는 것입니다. 이런 부분들은 매퍼의 취향에 따라 패시브 리듬(리버스 등)을 사용하는 등 차이가 있을 수 있습니다. 

{: .note }
기본 리듬을 잡을 때는 **최우선 순위의 레이어에는 액티브, 나머지는 패시브 리듬**을 기본으로 합니다. 필요에 따라 하위 우선 순위의 레이어에 액티브 리듬을 사용하기도 합니다.

다음 장에서는 곡의 구성 요소를 분석하며 실제로 리듬을 구성하는 예시를 설명합니다. 어떤 식으로 리듬을 구성하는지 더 자세히 알고 싶으신 분은 참고해주세요.