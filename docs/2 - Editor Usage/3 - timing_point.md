---
layout: default
title: 타이밍 포인트
parent: 에디터 사용법      
last_modified_date: 2026-03-16
nav_order: 3
---

# 타이밍 포인트

타이밍 포인트는 [이전](https://unlimitosu.github.io/docs/2%20-%20Editor%20Usage/1%20-%20gen_beatmap/#bpm--%EC%98%A4%ED%94%84%EC%85%8B-%EC%84%A4%EC%A0%95)에 잠깐 언급했었지만, 생각보다 다양한 기능이 있습니다. 이 절에서는 타이밍 포인트의 종류와 역할, 그리고 기능을 살펴봅니다.

## Uninherited Timing Point (빨간선, red line)

**_Uninherited Timing Point(상속되지 않은 타이밍 포인트, 이하 <span style="color: red;">빨간선</span>)_** 는 아래 사진과 같이 타임라인에서 <span style="color: red;">빨간색 선</span>으로 표시됩니다. 

<figure style="text-align: center;">
  <img src="{{ '/assets/images/chapter2/uninherited_timingpoint.png' | relative_url }}" alt="" width="80%">
  <figcaption style="font-size: 0.85em; color: grey; margin-top: 5px;">
    타임라인에서의 <span style="color: red;">빨간선</span>
  </figcaption>
</figure>

<span style="color: red;">빨간선</span>는 다음과 같은 역할을 수행합니다.

- 곡의 첫 오프셋을 설정할 때 (BPM과 함께 설정)
- 곡의 시작 박자가 달라질 때
- 곡의 박자, BPM이 달라질 때

각각의 예시는 아래 영상을 참고해주세요.

<figure style="text-align: center; margin-bottom: 20px;">
  <div style="position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden; max-width: 100%;">
    <iframe 
      style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"
      src="https://www.youtube.com/embed/NBaBy2uCjRE?si=kEoqH3W7CdgDN2vB" 
      title="YouTube video player" 
      frameborder="0" 
      allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" 
      referrerpolicy="strict-origin-when-cross-origin" 
      allowfullscreen>
    </iframe>
  </div>
  <figcaption style="font-size: 0.85em; color: #888; margin-top: 10px;">
    곡의 첫 오프셋을 설정할 때 예시<br>
    <a href="https://osu.ppy.sh/beatmapsets/2345539#osu/5042966" target="_blank" style="color: #5480C7; text-decoration: underline;">SmilyBruh - "AKAGE" (feat. Hatsune Miku) [Repetition] by smolship</a>
  </figcaption>
</figure>

<figure style="text-align: center; margin-bottom: 20px;">
  <div style="position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden; max-width: 100%;">
    <iframe 
      style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"
      src="https://www.youtube.com/embed/ObcS3lo97Ok?si=1bXGk4DrsVt3R7lA" 
      title="YouTube video player" 
      frameborder="0" 
      allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" 
      referrerpolicy="strict-origin-when-cross-origin" 
      allowfullscreen>
    </iframe>
  </div>
  <figcaption style="font-size: 0.85em; color: #888; margin-top: 10px;">
    곡의 시작 박자가 달라질 때 예시<br>
    <a href="https://osu.ppy.sh/beatmapsets/1144550#osu/2389725" target="_blank" style="color: #5480C7; text-decoration: underline;">Primary - STRUGGLES [Faith] by Sylvarus</a>
  </figcaption>
</figure>

<figure style="text-align: center; margin-bottom: 20px;">
  <div style="position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden; max-width: 100%;">
    <iframe 
      style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"
      src="https://www.youtube.com/embed/CPUAxwgUN3Q?si=hb-i-vb5Nwqdv0pq" 
      title="YouTube video player" 
      frameborder="0" 
      allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" 
      referrerpolicy="strict-origin-when-cross-origin" 
      allowfullscreen>
    </iframe>
  </div>
  <figcaption style="font-size: 0.85em; color: #888; margin-top: 10px;">
    곡의 박자, BPM이 달라질 때 예시<br>
    <a href="https://osu.ppy.sh/beatmapsets/942284#osu/1967557" target="_blank" style="color: #5480C7; text-decoration: underline;">ShinRa-Bansho - Dramatic Hizakurige [Athy's Endless Dream] by -Mikan</a>
  </figcaption>
</figure>

첫 번째 영상에서는 가장 첫 노트가 시작할 때 <span style="color: red;">빨간선</span>이 사용되었습니다. 항상 가장 첫 노트부터 시작하는 것은 아니지만, 곡의 박자가 메트로놈에 맞게 진행되도록 하는 첫 부분에는 항상 <span style="color: red;">빨간선</span>을 사용해야 합니다.

두 번째 영상에서는 선택된 노트가 한 박자 뒤로 밀려있습니다. 정박에서 메트로놈의 시작 타이밍이 바뀐 것이므로 <span style="color: red;">빨간선</span>을 사용합니다.

세 번째 영상에서는 노트 두 개가 선택되어 있습니다. 첫 번째로 선택된 `노란색 1번 서클`은 BPM이 140에서 199로 바뀌는 곳이기 때문에 <span style="color: red;">빨간선</span>을 사용했습니다. 두 번째로 선택된 `주황색 1번 슬라이더`는 BPM이 동일하게 199지만, 곡이 정박에 시작하지 않아 따로 타이밍을 맞추기 위해 <span style="color: red;">빨간선</span>을 사용했습니다. 

영상에서 촬영한 맵들은 캡션에 하이퍼링크를 달아두었으니 에디터에서 직접 확인해보시면 더욱 이해가 되리라 생각합니다.

{: .note }
<span style="color: red;">빨간선</span>은 비트맵의 가장 처음 오프셋과 BPM을 맞추기 위해 사용합니다. 추가로 BPM, 타이밍, 박자 등이 바뀌는 곳에도 사용해야 합니다.

{: .warning }
**불필요한 <span style="color: red;">빨간선</span>은 언랭커블 요소**입니다. 반드시 필요한 경우만 <span style="color: red;">빨간선</span>을 사용해 주세요. 

## Inherited Timing Point (초록선, green line)

**_Inherited Timing Point(상속된 타이밍 포인트, 이하 <span style="color: green;">초록선</span>)_** 는 아래 사진과 같이 타임라인에서 <span style="color: green;">초록색 선</span>으로 표시됩니다. 

<figure style="text-align: center;">
  <img src="{{ '/assets/images/chapter2/inherited_timingpoint.png' | relative_url }}" alt="" width="80%">
  <figcaption style="font-size: 0.85em; color: grey; margin-top: 5px;">
    타임라인에서의 <span style="color: green;">초록선</span>
  </figcaption>
</figure>

<span style="color: green;">초록선</span>은 이전 타이밍 포인트의 설정을 _상속받아(inherit)_ 사용합니다. <span style="color: green;">초록선</span>은 다음과 같은 역할을 수행합니다.

- 슬라이더 속도 변경
- 히트사운드 볼륨 및 샘플셋 변경
- 키아이(Kiai) 타임 활성화/비활성화

각각의 예시는 아래 영상을 참고해주세요.

<figure style="text-align: center; margin-bottom: 20px;">
  <div style="position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden; max-width: 100%;">
    <iframe 
      style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"
      src="https://www.youtube.com/embed/4tZGL-JnUIs?si=vlJPjPc_cZM-2OPp" 
      title="YouTube video player" 
      frameborder="0" 
      allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" 
      referrerpolicy="strict-origin-when-cross-origin" 
      allowfullscreen>
    </iframe>
  </div>
  <figcaption style="font-size: 0.85em; color: #888; margin-top: 10px;">
    슬라이더 속도 변경 예시<br>
    <a href="https://osu.ppy.sh/beatmapsets/611367#osu/1290650" target="_blank" style="color: #5480C7; text-decoration: underline;">Aqours - Aozora Jumping Heart [Sunshine!!] by Sakurauchi Riko</a>
  </figcaption>
</figure>

<figure style="text-align: center; margin-bottom: 20px;">
  <div style="position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden; max-width: 100%;">
    <iframe 
      style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"
      src="https://www.youtube.com/embed/g0CO74NCa0s?si=394rfb35bdEr5EfM" 
      title="YouTube video player" 
      frameborder="0" 
      allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" 
      referrerpolicy="strict-origin-when-cross-origin" 
      allowfullscreen>
    </iframe>
  </div>
  <figcaption style="font-size: 0.85em; color: #888; margin-top: 10px;">
    히트사운드 볼륨 및 샘플셋 변경 예시 (음악 볼륨 0% 재생)<br>
    <a href="https://osu.ppy.sh/beatmapsets/368060#osu/807074" target="_blank" style="color: #5480C7; text-decoration: underline;">xi - Ascension to Heaven [Final Moment] by Kroytz</a>
  </figcaption>
</figure>

<figure style="text-align: center; margin-bottom: 20px;">
  <div style="position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden; max-width: 100%;">
    <iframe 
      style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"
      src="https://www.youtube.com/embed/MCCunBmYdD4?si=C5_V7IgrT4k-7CAj" 
      title="YouTube video player" 
      frameborder="0" 
      allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" 
      referrerpolicy="strict-origin-when-cross-origin" 
      allowfullscreen>
    </iframe>
  </div>
  <figcaption style="font-size: 0.85em; color: #888; margin-top: 10px;">
    키아이 타임 설정 예시 (feat. 슬라이더 속도 변경)<br>
    <a href="https://osu.ppy.sh/beatmapsets/2368781#osu/5110495" target="_blank" style="color: #5480C7; text-decoration: underline;">Sizuk feat. Kotoha - Cotton Days (TV Size) [Extra] by [Hansu]</a>
  </figcaption>
</figure>

첫 번째 영상에서는 슬라이더의 속도를 점점 느리게 하기 위해서 선택된 슬라이더의 시작점마다 <span style="color: green;">초록선</span>을 설정했습니다. 

두 번째 영상에서는 피아노 히트사운드의 샘플셋을 계속해서 바꾸기 위해 1/4 간격으로 <span style="color: green;">초록선</span>을 사용하고 있습니다.

세 번째 영상에서는 키아이 타임을 활성화하기 위해 <span style="color: green;">초록선</span>을 사용했습니다. 추가로 `2번 슬라이더`에 슬라이더 속도를 늘리기 위해 타이밍 포인트를 추가한 것을 알 수 있습니다.

하나의 <span style="color: green;">초록선</span>은 위의 세 가지 기능 중 하나만을 수행하는 것이 아니라, 여러 가지를 동시에 수행할 수 있습니다. 예를 들어, 두 번째 영상에서는 히트사운드 샘플셋을 바꾸면서 키아이 타임을 활성화했습니다. 또한, 세 번째 영상에서도 키아이 타임을 활성화하면서 `1번 슬라이더`의 속도를 느리게 조절한 것을 확인할 수 있습니다.

아래 사진은 세 번째 영상 맵의 `Timing Setup Panel` 일부입니다. 

<figure style="text-align: center;">
  <img src="{{ '/assets/images/chapter2/inherited_timingpoints_descript.png' | relative_url }}" alt="" width="80%">
  <figcaption style="font-size: 0.85em; color: grey; margin-top: 5px;">
    Inherited Timing Point의 구성 요소
  </figcaption>
</figure>

각 구성 요소는 다음과 같습니다.

1. <span style="color: green;">초록선</span>의 시작 지점
2. 슬라이더 속도 설정 
3. 히트사운드 샘플셋 설정
4. 히트사운드 볼륨 설정
5. 키아이 타임 활성화/비활성화 (☆: 활성화)

사진에서 두 번째 타이밍 포인트 (`00:50:985 - `)가 영상에서의 `1번 슬라이더`에 해당합니다. 키아이 타임을 활성화하면서 슬라이더 속도는 `x0.25`로 줄이고, 히트사운드 볼륨은 `80%`로 키운 것을 확인할 수 있습니다. 이 설정은 다음 타이밍 포인트 직전인 `00:51:333`까지 유지되며, 새로운 타이밍 포인트가 있는 `00:51:334`부터 새로운 설정이 적용됩니다.  

{: .note}
<span style="color: green;">초록선</span>은 슬라이더 속도, 히트사운드 설정, 키아이 타임 설정을 위해 사용합니다. 한 번에 여러 설정을 동시에 적용할 수 있습니다.

{: .warning}
**같은 타이밍에 두 개의 <span style="color: green;">초록선</span>을 두는 것은 언랭커블 요소**입니다. 반드시 한 번에 하나의 Inherited Timing Point만 사용하세요.

