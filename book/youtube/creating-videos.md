---
name: Creating Videos
---

# Creating Videos for YouTube
When creating videos for YouTube, you will need to:
1. Edit the video if necessary.
2. Create a YouTube thumbnail.
3. Upload to YouTube.

## Editing the Video
Most footage on the Team Spiral Racing YouTube is Raw Footage but if you would like to cut certain parts out (like waiting at pits) then you can use the provided `videoCut` command line functionality. If you would like to anything more complicated than cutting and stitching, then it is recommended to use video editing software like Davinci Resolve or similar.

#### videoCut
You can use `videoCut` from TSR command line tooling to cut videos. If you haven't set it up on your computer, follow the instructions under [Technical Documentation](). To use:

::::tabs{id="os"}
:::tab{title="Windows" id="windows"}
Consult the video below if you are stuck.
1. Launch "Git Bash".
2. Find the video that you want cut. Move it to the "Videos" folder.
3. Open the video you want to edit (ex. "GX012345.MP4").
4. Find the start time you want (ex. "1:32").
5. Find the end time you want (ex. "4:35").
6. Run the command with the following template.
```
videoCut <filename> <start_time> <end_time>

# Sample command run with example details
videoCut GX012345.MP4 132 435
```
7. The file will be cut and saved under "Downloads"
:::

:::tab{title="Mac" id="mac"}
Consult the video below if you are stuck.
1. Launch "Terminal".
2. Find the video that you want cut. Move it to the "Movies" folder.
3. Open the video you want to edit (ex. "GX012345.MP4").
4. Find the start time you want (ex. "1:32").
5. Find the end time you want (ex. "4:35").
6. Run the command with the following template.
```
videoCut <filename> <start_time> <end_time>

# Sample command run with example details
videoCut GX012345.MP4 132 435
```
7. The file will be cut and saved under "Downloads"
:::

::::

## Creating a YouTube Thumbnail
YouTube thumbnails are created in Figma under "[TSR Thumbnails](https://www.figma.com/design/QJfDf0NlwKQNDaPxd1PSch/TSR-Thumbnails?node-id=0-1&t=kXWi4qKPKh8KNrxf-1)" page. Follow the steps below to use the existing template. Consult the video if you are stuck.

1. Copy and paste one of the existing thumnail frames. Move it to a new line ensuring the spacing is equal to all the others.
2. Change the name of the frame into the format `<YYYYMMDD> <Unique Name> - Run 1`. An example being `20241223 GMR Raw - Run 1`.
3. Paste in your thumbnail picture. Ideal pictures are larger in side that can be downscaled.
4. Resize the image to 1920 x 1080. You can do this by selecting the image, on the right under "Layout" unselect the "Lock aspect ratio" button, and typing in 1920 for W and 1080 for H.
5. Move the image over the new frame, it should join automatically.
6. Move the image to the bottom layer of the frame. This can be done by going to the right under "Layers", finding your image element and drag it down within its frame section.
7. Delete the old image from the Layers menu.
8. Adjust the opacity of the layer to ensure that the text shows up well against the picture. To do this, select the "Opacity" layer under your frame, and adjust the RGB opacity value under "Fill" on the right. Generally 10-20% is good.
9. Adjust the text in the image. From top to bottom it is location, type of video, and video number in series (runs).
10. Export the thumbnail to its highest quality size. YouTube's max size for a thumbnail is 2MB. Generally if we export it directly, we will exceed this file size which is why we need to downscale it. To do this, select your thumbnail frame and locate the "Export" section on the right. Use PNG format and adjust the downscale value until you find a value just below 2MB (2000 Kb). Use the value to export the rest of the thumbnail frames.

## Uploading to YouTube
Video uploads to YouTube are done via scheduling in the future. If you have a series of videos, they should be scheduled on the coming Monday, with each video being scheduled the day after. A sample upload schedule is below for a series with 3 videos. If a video series is longer than 7 videos (a week) then continue to loop it back to Monday.

| Monday | Tuesday | Wednesday | Thursday  | Friday    |
|--------|---------|-----------|-----------|-----------|
| Run 1  | Run 2   | Run 3     | No upload | No upload |

To upload the video, follow the steps below. Consult the video if you are stuck.

1. Simply drag and drop the video to the upload.
2. Instead of filling out the the title, description, etc. Select the "Reuse details" button the top right. Select any of the videos.
3. Update the title to match the context of the video.
4. In the description add details about the event, run, etc. A nice to have is including the driver name as well as a link to the event if possible.
5. Under playlist, create a new playlist. Follow the template of the other playlists with the title being `<Month> <Date>, <Year> <Name>` (ex. `May 24th, 2025 BW CW13 Track Day`). Add some additional information in the description similar to what you had in the video.
6. Select "Not for Kids" and go to next.
7. Schedule the upload on the next Monday that doesn't have a YouTube video already scheduled.
8. For the rest of the videos follow the same steps. When reusing the details select the video you just created so you don't need to copy as much over. Just update the run number in the title. When scheduling the videos in a series it should fall on the next day.