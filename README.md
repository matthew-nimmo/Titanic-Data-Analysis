# Titanic-Data-Analysis

## Exploratory Modelling with Bayesian Networks

> Bayesian Networks are a statistical modelling technique that represents the joint probability between variables. Mixed networks allow modelling of discrete and continuous variables but require that continuous variables are Gaussian and have linear relationships. Neither of which can be gauranteed when performing exploratory modelling. However, despite this restriction the technique can be used for exploratory modeling to gain insight into the data. Later, in modeling the data, any potential non-Gaussian and non-linearity in the data can be accounted for by adding additional variables to the Bayesian Network (Gaussian Mixture Models are great for this). The Titanic dataset is used to showcase the use of Bayesian Networks to focus Exploratory Data Analysis (EDA) on key data features to speed up the analysis. An added bonus is that a Bayesian Network can be trained on data that contain missing values.

On April 10 1912 the newly constructed British luxury passenger liner, the RMS Titanic, departed on its maiden voyage from Southampton in the United Kingdom to New York in the United States of America. The liner first crossed the English channel to Cherbourg France then back to Queenstown in Ireland before heading across the Atlantic Ocean to New York on April 11 1912. Passengers boarded the ship at Southampton, Cherbourg and then Queenstown.

The Titanic never reached its destination.

On April 14 1912, four days after departure, an iceberg was spotted and then struck the Titanic. Approximately two and a half hours after hitting the iceberg, the Titanic sank coming to rest on the ocean seabed at around 3,800m below the ocean surface and approximately 600km south-southeast off the coast of Newfoundland.

Some passengers survived, some did not.

The Kaggle Titanic - Machine Learning from Disaster knowledge competition challenges us to find patterns in the provided data that may help us understand why some passengers survived and others did not. This simple analysis uses the Kaggle Titanic data and is aimed at using Bayesian Networks for exploratory modelling and rapid data understanding.

For this analysis, rather than treating the problem as a prediction problem, I will be treating it as a missing value problem. I will be focusing primarily on exploratory modelling using Bayesian Networks. The idea here is to try and minimize the amount of exploratory data analysis that is done by exploiting Bayesian Networks to zoom in on key data features. Only the important relationships will be explored.

Bayesian Networks assume that numeric variables are continuous and follow a Gaussian distribution and that the relationship between numeric variables are linear. However, a Bayesian Network can still model data with non-Gaussian numeric variables and non-linear relationships. This can be done by converting all variables to factors but at a cost of losing information. Or, alternatively, adding latent discrete variables that deal with the two constraints. In exploratory modelling I will initially ignore these constraints but will endeavor to account for them in later versions of the Bayesian Network model.

Continue reading > [PDF](./docs/titanic-exploratory-modelling.pdf)

## Data

Kaggle Titanic - Machine Learning from Disaster dataset.

You can download data from [Kaggle](https://www.kaggle.com/competitions/titanic). But for convenience the source data (in CSV) format is included in the folder `./data`. The data includes a training set (./data/train.csv) and a test set (./data/test.csv). The test set includes the variables PassengerId, Pclass, Name, Sex, Age, SibSp, Parch, Ticket, Fare, Cabin, and Embarked. The train set also includes the variable Survived.

## Built With

* Rstudio
* Quarto
* R

Required R packages:
* tidyverse
* readr
* bnlearn
* ggdag
* ggthemes
* ggmosaic
* patchwork
* SEMgraph
* targets

## License

Distributed under the MIT License. See `LICENSE.txt` for more information.
