# 📺 YouTube LongForm Video Specifications



## 🎯 Purpose

Long-form videos are designed for \*\*education, tutorials, reviews, and brand storytelling\*\*.  

They provide in-depth content and build authority.



\---



## ⚙️ Technical Requirements

\- \*\*Length:\*\* 5–15+ minutes

\- \*\*Resolution:\*\* 1920×1080 (16:9)

\- \*\*Format:\*\* MP4 (H.264 video + AAC audio)

\- \*\*Bitrate:\*\* Optimized for streaming (\~4–8 Mbps)

\- \*\*Subtitles:\*\* Mandatory (.srt file)



\---



## ✅ Content Guidelines

\- Include \*\*intro/outro branding\*\*.

\- Add \*\*clear CTA\*\* (e.g., Subscribe, Visit Website).

\- Maintain \*\*professional tone\*\*.

\- Ensure \*\*metadata\*\* (title, description, tags) is optimized for SEO.



\---



## 🛠️ Optimization Command (FFmpeg Example)

```powershell

ffmpeg -i input.mp4 -vf "scale=1920:1080" -c:v libx264 -preset fast -crf 23 -c:a aac -b:a 192k -movflags +faststart -map\_metadata -1 output\_longform.mp4

```



\---


