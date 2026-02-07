# 🎥 YouTube Shorts Video Specifications



## 🎯 Purpose

Shorts are designed for \*\*quick engagement, trends, and viral reach\*\*.  

They are vertical, short, and optimized for mobile consumption.



\---



## ⚙️ Technical Requirements

\- \*\*Length:\*\* ≤ 60 seconds

\- \*\*Resolution:\*\* 1080×1920 (9:16 vertical)

\- \*\*Format:\*\* MP4 (H.264 video + AAC audio)

\- \*\*Bitrate:\*\* Optimized for mobile (\~2–4 Mbps)

\- \*\*Subtitles:\*\* Strongly recommended



\---



## ✅ Content Guidelines

\- Focus on \*\*fast hooks\*\* (first 3 seconds).

\- Use \*\*trendy music or sounds\*\*.

\- Add \*\*hashtags\*\* (#Shorts, #Trending).

\- Keep \*\*CTA short and clear\*\*.



\---



## 🛠️ Optimization Command (FFmpeg Example)

```powershell

ffmpeg -i input.mp4 -vf "scale=1080:1920" -c:v libx264 -preset fast -crf 23 -c:a aac -b:a 128k -movflags +faststart -map\_metadata -1 output\_shorts.mp4

```



\---


