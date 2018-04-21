# Shifting Gears

> As part of our Information Visualization-1 module, we were given an assignment in line with the ***DearData*** project by 'Stefanie Posavec' and 'Giorgia Lupi'. Design a layered visualization based on an area from our personal lives. 

Being an avid cyclist, I decided to visualize my cycling rides over the past two years. The motivations in this endeavour were to observe seasonal variation in my cycling rides. I gathered few other interesting insights during my analysis.


### Dataset
---
The list below describes the variables and their description in the dataset. While some of these variablse are obtained from the web app **Strava**, others are personal annotations to add a layer of qualitative description.

#### Variable Description

##### Quantitative
  - **date**: Date of the ride
  - **day**: Day of the ride
  - **ride_name**: Ride name as enetered by the user while saving the ride.
  - **origin**: Place of origin for the ride
  - **prim_destn**: Intended destination for the ride
  - **secn_destn**: Additional areas covered on the ride
  - **time**: Time (hour:min) taken to complete the cycle ride
  - **distance**: Distance covered (meters) in the ride
  - **speed**: Average speed (kmph) of the ride.
  - **elevation**: Height gained (meters climbed overall) during the ride
 ##### Qualitative
  - **ride_type**: Describes the type of cycle ride - workout/errand/commute/leisure
  - **ride_nature**: Describes if the ride was a roundtrip (bothways) or a oneway trip
  - **achievements**: Strava measures the rider's performance in local segments(ections of the road). Achievements highlights when the rider outdoes his previous 3 best attempts (*Gold - Personal Record , Silver - Second Best, Bronze - Third Best*)
  - **upload_type**: How the ride was saved/tracked in Strava - Live(During the ride); Later (Post the ride)
  - **kudos**: Appreciations given by your followers/ friends on Strava
  - **eateries**: Places where I would stop for breakfast or a small food break
  - **highlights**: Interesting events that occured during the ride (Derived from memory.)

> Interstingly, during the initial phases of data analysis, I found that people (community members) tend to appreciate my commute rides more, than my workout rides.
Commute ride - 6kms/ 1 kudos.
Workout ride - 20kms/ 1 kudos.


##### Initial Explorations
- Since I wanted to analyze my cycling rides over the past months. I began drafting concepts for how a month would appear.
 - Considering the cycle and its parts as the background context, I decided to consider each month as a wheel and the bike rides during the month be depicted as the wheel spokes.
 - Further, I explored other bike parts to analogize with variables in my dataset (ride type, origin, destination, ride_nature etc.)

![sketch](https://github.com/IllusionInk/personaldata/blob/master/assets/initial_sketches.jpg)
### Visualization
---
##### Schema
- Wheel Hub Size - Distance cycled in the month
- Wheel Hub Cap - Pie chart depicting the share of cycle rides by distance.
- Spoke length - Length of the cycle ride 
- Spoke color - Type of ride (commute, workout, errand, leisure)
- Brake Pads - Indicators for origin and destination (spots where I stop my bike ride).
- Tread Length - Kudos by the community (how the community appreciates my cycle rides).
- Gear Icon - Achievement in the ride stages as measured by **Strava** *(gold: PR, silver: second best time, bronze: third best time)*.
 
![schema](https://github.com/IllusionInk/personaldata/blob/master/assets/viz_schema_rgb-08.jpg)

##### Final Visualization
[full sized visualization](https://www.dropbox.com/s/7h0a9ezfp69qidm/Deardata-%20Shifting%20Gears.jpg?dl=0)


### Tasks to be done
---
-[ ] Refine acheivement icons
-[ ] Resize wheel hub
-[ ] Add annotations.

### Tools
---
- **MS Excel** - Collating, cleaning the ride data and structuring it into the final required data framework.
- **Tableau + RAW** - Basic intial plotting of the data to observe trends. Generating the required charts for the final visualization.
- **Illustrator** - Composing the rendered charts in the final layout. Adding annotations and insights to the visualization. Apart from this, I also designed the required glyphs *(brake pads for origin-destination, achievement icons, speed indicator)* in Illustrator.

### References
---
- [Strava web app](https://www.strava.com/athlete/training) - Ride Statistics tracked via the mobile app.
- Accurat (tumblr account)

