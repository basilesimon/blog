---
layout: post
title: Strava rides map in R
---

![]({{ site.baseurl }}/assets/strava-map-final.jpeg)

## Step one: getting Strava data

The process is slightly convoluted since May 2018. In the past, the Strava archive used to contain all your activities as GPX; however, GDPR regulations [led to a change in bulk export format](https://support.strava.com/hc/en-us/community/posts/360014914631-Activities-in-the-new-bulk-export-feature-have-meaningless-names-and-multiple-formats-).

[ Request your Strava archive ](https://www.strava.com/athlete/delete_your_account), wait for the email, download it.

From `activities.csv`, you can now scrape all the GPX files from your account. 

```
$ cat activities/activities.csv | head -5
id,date,name,type,description,elapsed_time,distance,commute,gear,filename
1988225457,2018-11-27 19:11:32,Evening Ride,Ride,"",1468,6075.0,true,1x1x8,activities/2125648250.fit.gz
1992478096,2018-11-29 10:02:58,Morning Ride,Ride,"",1449,5869.0,true,1x1x8,activities/2130096306.fit.gz
1992478209,2018-11-29 23:04:16,Night Ride,Ride,"",1166,5930.0,true,1x1x8,activities/2130096453.fit.gz
1992479540,2018-11-30 08:51:29,Morning Ride,Ride,"",1427,6563.0,true,Michel le fixie,activities/2130097780.fit.gz
```

Clone [hugovk/strava-tools](https://github.com/hugovk/strava-tools), a set of Python tools to scrape Strava. There are some instructions at the top of `download_fit_as_gpx.py`.

Follow these before running `$ python download_fit_as_gpx.py`

Here we are!

```
$ ls activities/activities | head -5
20160908-170525-Ride.gpx
20160909-080222-Ride.gpx
20160909-180740-Ride.gpx
20160912-081014-Ride.gpx
20160912-172611-Ride.gpx
```

---

## Step two: Ingesting activities in R

Install [ marcusvolz/strava ](https://github.com/marcusvolz/strava), an excellent suite of R functions that help us load activities in a (big, big) dataframe.

```r
library(devtools)
devtools::install_github("marcusvolz/strava")
library(strava)
library(tidyverse)

# main ingestion method
# ACHTUNG: slow!
data  <-  process_data("./activities/activities/")
data %>% head()

  id      lat      lon   ele                time dist_to_prev    cumdist time_diff_to_prev  cumtime
1  1 45.78514 4.717282 295.7 2015-12-26 11:21:48  0.000000000 0.00000000                 0        0
2  1 45.78512 4.717559 295.3 2015-12-26 11:22:12  0.021643479 0.02164348                24       24
3  1 45.78512 4.717573 295.2 2015-12-26 11:22:13  0.001111138 0.02275462                 1       25
4  1 45.78512 4.717583 295.2 2015-12-26 11:22:17  0.000785528 0.02354015                 4       29
5  1 45.78509 4.717684 295.1 2015-12-26 11:22:38  0.008715879 0.03225602                21       50
6  1 45.78508 4.717694 295.1 2015-12-26 11:22:39  0.001181249 0.03343727                 1        5
```

---

## Step three: Visualising our activities

We can piece together a simple plot (besides throwing a caveman-like `plot(data)`) limited to London:

```r
library(ggplot2)
theme_opts<-list(theme(panel.grid.minor = element_blank(),
                       panel.background = element_blank(),
                       plot.background = element_blank(),
                       axis.line = element_blank(),
                       axis.text.x = element_blank(),
                       axis.text.y = element_blank(),
                       axis.ticks = element_blank(),
                       axis.title.x = element_blank(),
                       axis.title.y = element_blank(),
                       plot.title = element_blank(),
                       panel.grid.major = element_line(colour = 'transparent'),
                       legend.position = "none"))

ggplot(data, aes(lon, lat, group = id)) +
  geom_path(colour="steelblue", alpha = 0.2) + 
  coord_map(projection = "mercator", 
            xlim = c(-0.41, 0.08), 
            ylim = c(51.42, 51.73), clip = "on") +
  theme_opts
```

![]({{ site.baseurl }}/assets/strava-map-1.png)

Obviously we are going to need some geographical landmarks to get our bearings. [geotheory/londonShapefiles](https://github.com/geotheory/londonShapefiles/) is one of the simplest and quickest ways to get London boundaries loaded in - and that includes the river Thames.


```r
library(devtools)
install_github("geotheory/londonShapefiles")
library("londonShapefiles")
thames <- load_thames()
thames.proj <- spTransform(thames, CRS("+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs"))
thames.df <- fortify(thames.proj)

ggplot() +
  geom_polygon(thames.df, mapping=aes(long, lat, group = group,
                                      fill = I("skyblue")), alpha = 0.4) +
  geom_path(data, mapping=aes(lon, lat, group = id,
                              alpha = 0.9, color = I("tomato")),
            size=1/3) +
  coord_map(projection = "mercator",
            xlim = c(-0.41, 0.08),
            ylim = c(51.42, 51.73)) +
  theme_opts
```

![]({{ site.baseurl }}/assets/strava-map-2.png)

```r
library(osmdata)
parks2 <- opq(bbox = c(-0.41, 51.42, 0.08, 51.73)) %>%
  add_osm_feature(key = 'leisure', value = "park") %>%
  osmdata_sf()

ggplot() +
  geom_polygon(thames.df, mapping=aes(long, lat, group = group,
                                      fill = I("skyblue")), alpha = 0.4) +
  geom_sf(parks2$osm_polygons, mapping=aes(fill = I("springgreen4"),
                                           color = I("transparent")), alpha = 0.4) +
  geom_sf(parks2$osm_multipolygons, mapping=aes(fill = I("springgreen4"),
                                                color = I("transparent")), alpha = 0.4) +
  geom_path(data, mapping=aes(lon, lat, group = id,
                              alpha = 0.9, color = I("tomato")),
            size=1/3) +
  coord_sf(xlim = c(-0.41, 0.08),
           ylim = c(51.42, 51.73)) +
  theme_opts
```

![]({{ site.baseurl }}/assets/strava-map-3.png)

```r
streets <- opq(bbox = c(-0.21, 51.47, 0.05, 51.61)) %>%
  add_osm_feature(key = 'highway', value = "primary") %>%
  osmdata_sf()
streets2 <- opq(bbox = c(-0.21, 51.47, 0.05, 51.61)) %>%
  add_osm_feature(key = 'highway', value = "secondary") %>%
  osmdata_sf()
streets3 <- opq(bbox = c(-0.21, 51.47, 0.05, 51.61)) %>%
  add_osm_feature(key = 'highway', value = "tertiary") %>%
  osmdata_sf()

+ geom_sf(streets$osm_lines, mapping=aes(fill = I("transparent"),
          color = I("darkgray")), size = 0.5) +
  geom_sf(streets2$osm_lines, mapping=aes(fill = I("transparent"),
          color = I("darkgray")), size = 0.3) +
  geom_sf(streets3$osm_lines, mapping=aes(fill = I("transparent"),
          color = I("darkgray")), size = 0.1) 
```

![]({{ site.baseurl }}/assets/strava-map-4.png)