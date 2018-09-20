# Exploring Data Science Programs

*Michelle Audirac*

*Valeria Perez-Cong*

**If you're looking for the Data Science program that is right for you, this [notebook](./working/eda_dsp.Rmd) will help you get started in your search!**

Finding the graduate program that best fits you has never been an easy task. Finding the right Data Science program might even be harder! the soaring hunger for data-savvy workforce in all industries has rocketed the offering of Data Science programs. 

If you are interested in data, then there is a good chance that instead of surfing the web for DS programs you plan on storing scraped university pages data, to then build a dashboard and explore it.

**Good news is**, you found this repo and you won't have to begin your project from scratch since we munged and explored a [kaggle dataset](https://www.kaggle.com/sriharirao/datascience-universities-across-us) containing web scraped DS programs data.

Before you jump into this repo's content, chill! Not so fast...

Data Science programs come in a variety of colors and flavors. As wide-ranging, interdisciplinary and clouded in hype as the term -Data Science- can be, first figure out what is the data outfit you want to wear:

**Step 1** make sure you understand whether you are looking to style your business intelligence skills or if your looking to fly your machine learning ship, as these are different journeys. Deep-dive into whether you would like to specialize in bio or urban applications. 

**Step 2** depending on where you arrived at in step 1, filter out programs and departments.  Ask yourself if you wish to continue working as you might want to consider the online and part time programs space.

**Step 3** go through this repo's content to get insights,

In our exploratory data analysis we munge the [raw dataset](./input/timesMergedData.csv) to create useful categorical columns:

* `TYPE` 
* `DELIVERY`
* `PGRM_CAT`
* `DEPT_CAT`

We also work on an association rules analysis to find frequent types of ds programs according to these categorical columns. This analysis will help you get insights about the ds program offering accross different departments.

**Step 4** check out the complete [munged dataset](../output/dsp.csv) we create in this repo and filter programs according to your own interests. Visit their webpages using the links in the dataset. 

Finally use your newly gained insights to extend your web surf and make a decision!

**hApPy DS program search!!**

In addition, if you are learning how to use hadley's `tidyverse` this repo takes advantage of tidyverse's grammar to make data analysis. We also make use of the `arules` package to find association rules between itemsets.

## How to use

Fork this repo.

The [notebook](./working/eda_dsp.Rmd) can be run with a [rocker image](https://www.rocker-project.org) built with the Dockerfile in this repo.

In a terminal run

```{bash}
docker build -t rstudio .
docker run --rm -e PASSWORD=m1ch3ll3 -p 8787:8787 rstudio
```

Then your browser go to localhost:8787 and use the password m1ch3ll3 with user rstudio.

## To go

We managed to **extract relevant categories from program and department names** to create categorical columns that helped us find association rules between programs. We show the school, state, city, program name, department name and website link for the **programs that matched with the most relevant rules for each department category**.

## Where to find more?

This notebook is the result of several hours spent playing in kaggle, creating notebooks and exploring previous work on the matter. Here, some of the material that was used:

*  Srihari Rao's kaggle's dataset: [Data Science Universities across US](https://www.kaggle.com/sriharirao/datascience-universities-across-us)
*  Benjamin Lott's kaggle's notebook: [Examining Data Science Related Programs in the US](https://www.kaggle.com/benjaminlott/examining-data-science-related-programs-in-the-us)
*  UC Business Analytics R Programming Guide: [Advanced Plots with ggplot](http://uc-r.github.io/ggplot)

For the frequent itemsets analysis we used the content found in:

* Felipe Gonzalez's [repo](https://github.com/felipegonzalez/metodos-analiticos-2018)

Please take a look into this wonderful book too!! 

* Leskovec, Jure, Anand Rajaraman, and Jeffrey David Ullman. 2014. Mining of Massive Datasets. 2nd ed. New York, NY, USA: Cambridge University Press.

## About the authors

[Michelle](www.linkedin.com/in/audiracmichelle) and Valeria are currently working at [Julieta](https://julieta.ai/), Mexican -machine learning as a service- provider.
