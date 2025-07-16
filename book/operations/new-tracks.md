---
name: Adding New Tracks
---

# Adding New Tracks
If Team Spiral Racing goes to a new track and sets some times, it is important to add it to the website so that times can be tracked. To add new tracks you:
1. Create a new entry in the Team Spiral Racing website `tracks.json`.
2. Compile assets for the entry.
3. Add assets to the website.

Watch the YouTube video below if you are running into any trouble.
::youtube[adding new tracks video]{#77fi2uYeIxs}

## Creating a New Track Entry in TSR Web
1. Navigate to where the code of [TSR Web](/technical-systems/tsr-web) is hosted.
2. Clone the repository and load it into an IDE of your choice.
3. Navigate to `/src/lib/tracks.json`.
4. Add a new entry following the template below:
```json
"<UID OF TRACK>": {
    "name": "<NAME OF TRACK>",
    "type": "<`Race Track` OR `Road Course`>",
    "description": "<DESCRIPTION OF TRACK>",
    "turns": "NUMBER OF TURNS (INTEGER)",
    "location": "<COORDINATES OF TRACK WITH 3 DEGREE ACCURACY>",
    "configuration": ["<LIST OF CONFIGURATIONS>"]
},
```
Here is an example:
```json
"buttonwillow": {
    "name": "Buttonwillow Raceway",
    "type": "Race Track",
    "description": "Buttonwillow Raceway Park is one of the premiere road racing and testing facilities in The United States.",
    "turns": 21,
    "location": "35.489°, -119.544°",
    "configuration": ["13CW"]
},
```

## Compiling Assets
For each track, there needs to be a splash image (`splash.jpg`) and a track map outline (`map.png`). Splash is a JPG to save on build space while track map needs to be a PNG in order to get the transparency.
1. Find or take a picture of the track. Any configuration is fine. Ideally the picture should have an overhead view showing the track layout.
2. Find a map of the track online. You may also be able to get one from Assetto Crosa.
3. Use [Photoroom](https://www.photoroom.com/tools/outline-pictures) free tier and upload the image. You should get an outline. It is okay if there are smaller artifacts, they will be cleaned up later.
4. On the right side of Photoroom, you should see two layers: "Graphics" and "White". Click "White" and "Erase".
5. Now select "Grahpics". Under "Adjust", move the "Brightness" slider all the way to the right and the track map should turn white.
6. Now go back and select the track. Ensure that the actual track is selected and not the entire frame. Copy this and paste it into Figma. You can use the [Team Spiral](https://www.figma.com/design/iAp4UhnW6nX7oCYaE2E8x9/Team-Spiral?node-id=154-14&t=ZU0Pc9mNDECbtmkA-1) Figma page. Once it is pasted, right click it and select "Frame selection".
7. Move the image over a black element so you can see it clearly. If there artifacts, we will remove them now. To remove them, create shapes and place them over the artifacts. Make sure that the shape is inside of the frame. CTRL + select the map and the shape. On the top right, under the "X selected" section, you should be able to click a dropdown and perform a subtraction. The area on the map should be replaced by a transparency area. Perform until all artifacts are gone.
8. When done, select the frame, go to "Export" at the bottom right, and export as PNG under 1x sizing.

## Adding Assets to the Website
1. Go back to your IDE where you have TSR Web open.
2. Under `/static/tracks`, create a new folder. Name it whatever the key of the entry is in the `tracks.json`. Using the example above, it would be called `buttonwillow`.
3. Move your splash image and map into this folder. Rename the splash image to `splash.jpg` and the map into `map.png`.
4. In your terminal, run `npm run dev` then open up http://localhost:5173/times.
5. You should now see your track entry here with the image and map correctly displayed. Fix any mistakes if it does not show properly.
6. Once done, you can CTRL + C out of the application. Run `git add .`. Then run `git commit -m "feat: add track <TRACK NAME>"` and finally run `git push`. 