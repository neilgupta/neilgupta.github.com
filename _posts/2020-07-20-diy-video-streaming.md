---
layout: post
title: DIY Video Streaming
location: Chicago
---

While building [Hiome](https://hiome.com), I needed to show a demo video of the product in action. Like most people, I initially tried embedding a YouTube video, but there were too many trade-offs (particularly privacy concerns and the inability to turn off related videos at the end, which would whisk people away from Hiome). In general, I lean towards minimalist setups and wanted to just host the video myself in a native video player. Simple enough.

```
<video controls width="100%" preload="auto" poster="/images/poster.jpg">
    <source src="/media/video.mp4" type="video/mp4">
    Sorry, your browser doesn't support embedded videos.
</video>
```

**Not so fast.** Even if the video file is hosted on a blazing fast CDN, your users are still going to have to wait for the video to buffer when they hit play and if they skip around in the video. That's because their browser will download the entire file from the beginning when they hit play.

One of the key benefits of a video hosting website like YouTube is that it provides adaptive streaming of the video. In simplified terms, that means the video is split up into lots of small chunks that the browser can download as needed. Usually, the first chunk is downloaded on page load and the rest are streamed as the video plays. If the user skips to a different part of the video, the browser can immediately download the relevant chunk. It makes everything feel _much_ faster. The protocol to make all this happen is called [HLS](https://en.wikipedia.org/wiki/HTTP_Live_Streaming).

Luckily, setting up an HLS stream is much easier thank it looks. In fact, AWS provides the tools to convert your video into the necessary format in a couple clicks!


1. Upload your 4k video to an S3 bucket
2. In [AWS MediaConvert](https://aws.amazon.com/mediaconvert/), click on `Job Templates`, choose `System Templates` in the dropdown, and create a job from `System-Ott_Hls_Ts_Avc_Aac`
![MediaConvert Dashboard](/post_files/mediaconvert.png)
3. Set output to your S3 bucket and add your uploaded video as the input
4. Create an IAM role with access to your S3 bucket and MediaConvert
5. Start the job and wait for it to finish
6. Mark the newly created files as public in S3 and make sure there's a Cloudfront distribution for the S3 bucket

If you don't want to host from S3, you can copy the necessary files out of your S3 bucket with the following CLI command:

```
aws s3 cp s3://${NAME_OF_BUCKET}/ . --recursive --exclude "*"  --include "${FILE_NAME_WITHOUT_EXTENSION}*" --exclude "*.mp4"
```

We're almost there! Unfortunately, [browser support for HLS](https://caniuse.com/#feat=http-live-streaming) is pretty terrible today... To workaround that, we'll use the excellent [hls.js](https://github.com/video-dev/hls.js/) polyfill to add support when needed.

```
const video = document.getElementById('heroVid')
const src = '/hls/video.m3u8'
if (video.canPlayType('application/vnd.apple.mpegurl')) {
  // native HLS support
  video.src = src
} else if (Hls.isSupported()) {
  // fallback to hls.js
  const hls = new Hls();
  hls.loadSource(src)
  hls.attachMedia(video)
} else {
  // fallback to downloading whole media file like a chump
  video.src = '/video.mp4'
}
```

I made [a simple React wrapper around the video element](https://gist.github.com/neilgupta/2368403736ce1b81570632f5973b9e87) to handle this logic, as well as standardize how poster images behave between browsers. You can see a demo of all of this at work at [hiome.com](https://hiome.com)

I hope this helps more people own their content and move away from defaulting to embedding YouTube players everywhere!
