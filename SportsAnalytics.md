---
name: SportsAnalytics
topic: Sports Analytics
maintainer: Ben Baumer, Quang Nguyen, Greg Matthews
email: ben.baumer@gmail.com
version: 2022-04-21
---

This CRAN Task View contains a list of packages useful for sports analytics, grouped by sport. Following the list of packages, we have included a list of selected books and articles that use some of these packages in substantive ways. Our goal in compiling this list is to help researchers find the tools they need to complete their work in R.

The list of packages is aspirationally comprehensive. If there is a sports analytics package on CRAN that we have missed, please let us know. Contributions are always welcome, and encouraged. The source file for this particular task view file resides in a GitHub repository (see below). Please read the [Guide to Contributing](Contributing.md), then open an issue and/or submit a pull request.

### Sport-Specific Packages

#### American Football

-   `r pkg("nflfastR", priority = "core")` contains functions to efficiently scrape NFL play-by-play data from 1999 to present. It is similar to [nflscrapR](https://github.com/maksimhorowitz/nflscrapR), but much faster.
-   `r pkg("nflreadr")` efficiently downloads data from **GitHub** repositories of the [nflverse](https://github.com/nflverse) project, including precomputed `r pkg("nflfastR")` dataframes.
-   `r pkg("nfl4th")` contains functions to calculate optimal Fourth Down decisions in the National Football League. Data on 4th downs is collected from [NFL](https://www.nfl.com/) and [ESPN](https://www.espn.com/).
-   `r pkg("nflseedR")` contains functions for ranking NFL teams based on the complex NFL tie breaking rules. It includes division ranking, playoff seeding, and draft order.
-   `r pkg("fflr")` contains functions for accessing ESPN raw fantasy football data from the ESPN fantasy football API and formatting the raw data.
-   `r pkg("ffscrapr")` helps access various fantasy football APIs including MFL, Sleeper, ESPN, and Fleaflicker with a consistent interface and built-in authentication, rate-limiting, and caching.
-   `r pkg("ffsimulator")` allows users to simulate fantasy football seasons using bootstrap resampling. Simulations are based on historical rankings and data from the package `r pkg("nflfastR")`. In addition, functions for computing optimal lineups and aggregating results are provided.
-   `r pkg("gsisdecoder")` contains functions to decode NFL Player IDs for use in conjunction with the `r pkg("nflfastR")` package.
-   `r pkg("cfbfastR")` provides function for accessing college football play-by-play data from [collegefootballdata.com](https://collegefootballdata.com/).

#### Association Football (Soccer)

-   European soccer data is available through the `r pkg("engsoccerdata")` package, which contains match results for English and other European soccer leagues dating back to 1871.
-   `r pkg("socceR")` provides functions for evaluating soccer predictions and simulating results from soccer matches and tournament.
-   `r pkg("fbRanks")` helps with estimating team strengths and rankings using time dependent Poisson regression and data on number of goals scored.
-   `r pkg("ggsoccer")` provides functions for visualizing soccer event data in **ggplot2**.
-   `r pkg("qqr")` is a collection of [Brazilian Soccer Championship](https://brasileirao.cbf.com.br/) data on match statistics since 2014.
-   `r pkg("footballpenaltiesBL")` contains data and plotting functions for analyzing penalty kicks in the [German Men's Bundesliga](https://www.bundesliga.com/) from 1963-64 to 2016-17.
-   `r pkg("footBayes")` consists of functions for fitting widely known soccer models (double Poisson, bivariate Poisson, Skellam, Student's t) through Hamiltonian Monte Carlo and Maximum Likelihood estimation approaches using Stan. The package also provides tools for visualizing team strengths and predicting match outcomes.
-   `r pkg("itscalledsoccer")` enables access to American soccer (MLS, NWSL, and USL) data through the [American Soccer Analysis app API](https://app.americansocceranalysis.com/).
<!-- no longer on CRAN
-   `r pkg("worldfootballR")` provides clean and tidy soccer game data from a number of popular sites, including [FBref](https://fbref.com/en/), transfer and valuations data from [Transfermarkt](https://www.transfermarkt.com/) and shooting location data from [Understat](https://understat.com/).
-->

#### Australian Rules Football

-   `r pkg("fitzRoy")` is a package for scraping and processing Australian Football League (AFL) data. `r pkg("fitzRoy")` provides access to publicly data sources such as [AFL Tables](https://afltables.com/afl/afl_index.html), [Footy Wire](https://www.footywire.com), and [The Squiggle](https://squiggle.com.au).

#### Baseball

-   Historical baseball data is available through the `r pkg("Lahman", priority = "core")` package, which contains season-level data for Major League Baseball going back to 1871.
-   `r pkg("retrosheet")` facilitates downloading game log, team IDs, rosters, and play-by-play and other files from [Retrosheet.org](http://wwws.retrosheet.org/), and returning the results as data frames. Local caching can be employed to improve efficiency. Note that the play-by-play data returned comes directly from the event files and is not parsed (i.e., [Chadwick](https://github.com/chadwickbureau/chadwick) is not bundled).
-   `r pkg("pitchRx", priority = "core")` provides access to pitch-level data through the Major League Baseball Advanced Media API.
-   `r pkg("mlbstats")` provides functions for vector-based computation of many baseball statistics, both traditional and sabermetric. <!-- no longer on CRAN. This should not be confused with `r pkg("mlbstatsR")` which provides an interface to websites such as MLB.com, ESPN.com, and Baseball-Reference.com. `r pkg("mlbstatsR")` can download IDs and stats for players and team, as well as MLB logos. -->
-   `r pkg("baseballDBR")` leverages the backend database functionality of **dplyr** to build local databases that mirror the data contained in `r pkg("Lahman")`. Like `r pkg("mlbstats")`, it also includes functions to compute baseball statistics, but on data frames rather than vectors.

#### Basketball

-   `r pkg("BAwiR", priority = "core")` is a collection of tools to analyze basketball data, with focus on data scraping and visualization.
-   `r pkg("AdvancedBasketballStats")` provides functions to calculate and analyze basketball statistics for players, teams, lineups (quintets), and plays.
-   `r pkg("uncmbb")` contains data on University of North Carolina (at Chapel Hill) Men's Basketball Results since the 1949-50 season.
-   `r pkg("BasketballAnalyzeR")` accompanies the book [Basketball Data Science With Applications in R](https://www.routledge.com/Basketball-Data-Science-With-Applications-in-R/Zuccolotto-Manisera/p/book/9781138600799). This package includes data and functions to analyze and visualize basketball data.
-   `r pkg("NBAloveR")` is an R interface to access basketball data from [Basketball Reference](https://www.basketball-reference.com) API. This package also contains functions to help users with analyzing basketball data.
-   `r pkg("SpatialBall")` helps with spatial analysis of NBA data, in particular, generating offensive and defensive shot charts for teams, players, and seasons.
-   `r pkg("wehoop")` provides functions for accessing women's college basketball and WNBA data from the [ESPN](https://www.espn.com) API.
-   `r pkg("hoopR")` consists of functions for accessing men's college basketball and NBA data from various sources, including [ESPN](https://www.espn.com), [NBA Stats API](https://www.nba.com/stats), and [Ken Pomeroy's college basketball ratings](https://www.kenpom.com).

#### Chess

-   `r pkg("chess")` is an opinionated wrapper for R around [python-chess](https://github.com/niklasf/python-chess). It reads and writes [PGN files](https://en.wikipedia.org/wiki/Portable_Game_Notation) and SVGs of game boards.
-   `r pkg("stockfish")` implements the UCI open communication protocol and ships with [Stockfish](https://github.com/official-stockfish/Stockfish), a popular, open source, powerful chess engine written in C++.
-   Like `r pkg("chess")`, `r pkg("bigchess")` reads and writes PGN files. And like `r pkg("stockfish")`, `r pkg("bigchess")` provides an API to the UCI chess engines. `r pkg("bigchess")` is also able to read multiple game files at once without copying to RAM.
-   `r pkg("rchess")` provides functions for chess validations, pieces movements, check detection, and plotting chess boards.
-   `r pkg("chessR")` allows users to obtain game data from online chess applications, including [chess.com](https://www.chess.com/) and [Lichess](https://lichess.org/).

#### Cricket

-   `r pkg("yorkr")` provides functions for analyzing statistics of cricket players and teams based on [Cricsheet](https://cricsheet.org) data.
-   `r pkg("cricketr")` is a collection of tools for analyzing cricket performances of players and teams based on [ESPN Cricinfo Statsguru](https://stats.espncricinfo.com/ci/engine/stats) data.
-   `r pkg("cricketdata")` includes functions to obtain international cricket data from two major sources, [ESPNCricinfo](https://www.espncricinfo.com/) and [Cricsheet](https://cricsheet.org/).

#### Esports

-   `r pkg("RDota2")` contains functions for retreiving data for the video game [Dota2 from the Steam API](https://store.steampowered.com/app/570/Dota_2).

#### GPS Tracking

-   `r pkg("trackeR")` and `r pkg("trackeRapp")` provide tools for analyzing running, cycling and swimming data from GPS-enabled tracking devices within R. These two packages allow users to tidy and explore data from workouts and competitions.
-   `r pkg("rStrava")` contains functions to access [Strava](https://www.strava.com/) activity data from the [Strava API](https://developers.strava.com/).
-   A detailed overview of tools for processing and analyzing tracking data can be found in the `r view("TrackingData")` CRAN Task View.

#### Hockey

<!-- no longer on CRAN
-   `r pkg("hockeyR")` contains functions to load raw NHL play-by-play data from [NHL.com](https://nhl.com). Additionally, it contains functions for scraping [www.hockey-reference.com](https://www.hockey-reference.com) including standings, player stats, and jersey number history.
-->
-   `r pkg("NHLData")` contains scores from NHL games dating back to 1917. Data are stored one season at a time and contains scores for every game during a particular season.
-   Access to data exposed by the [NHL API](https://gitlab.com/dword4/nhlapi) is provided by the `r pkg("nhlapi")` and `r pkg("nhlscrape")` packages.
-   `r pkg("fastRhockey")` provides API wrappers for the NHL and Premier Hockey Federation (PHF), formerly known as the National Women's Hockey League (NWHL).

#### Softball

-   `r pkg("runexp")` provides methods for estimating runs scored in softball. In particular, `r pkg("runexp")` centers around theoretical expectation using discrete Markov chains and empirical distribution using multinomial random simulation.

#### Swimming

-   `r pkg("SwimmeR")` reads swimming results in a variety of formats and returns results in tidy data frame. It also includes functions for converting times between short-course yards (SCY), short-course meters (SCM), and long-course meters (LCM).

#### Track and Field

-   `r pkg("combinedevents")` contains functions for calculating scores and marks for combined events competitions in track and field, based on the [International Association of Athletics Federation](https://www.worldathletics.org/) scoring tables.
-   `r pkg("JumpeR")` consists of functions for importing (primarily) and analyzing track and field data.

#### Volleyball

-   `r pkg("volleystat")` contains match statistics from the [German Volleyball Bundesliga](https://www.volleyball-bundesliga.de/) from 2013-14 to 2018-19. Data were extracted from the league [homepage](www.volleyball-bundesliga.de).

###  Modeling

A wide variety of functions for modeling in sports analytics is available in the R base package (e.g. `lm()` and `glm()`). In addition, other CRAN Task Views such as `r view("Bayesian")`, `r view("MachineLearning")`, `r view("Spatial")`, and `r view("SpatioTemporal")` may contain appropriate packages for applying statistical methods to sports.

#### Betting

-   `r pkg("odds.converter")` contributes functions for converting common sports betting odds types, including US odds, Hong Kong odds, Decimal odds, Indonesian odds, Malaysian odds, and raw probability.
-   `r pkg("implied")` is a collection of functions that convert between bookmaker odds and probabilities, based on various algorithms.
-   `r pkg("pinnacle.data")` contains [Pinnacle](https://www.pinnacle.com/) market odds, highlighted by a dataset of all wagering lines for the 2016 MLB season.
-   `r pkg("RKelly")` computes the [Kelly criterion](https://doi.org/10.1002/j.1538-7305.1956.tb03809.x) for betting and provides functions to calculate outcome probabilities for multi-leg contests.

#### Ratings

-   `r pkg("BradleyTerry2", priority = "core")` provides functions and examples for fitting Bradley-Terry models to paired comparison data. Packages `r pkg("BSBT")` (Bayesian Spatial Bradley-Terry) and `r pkg("BTdecayLasso")` (Bradley-Terry Model with Exponential Time Decayed Log-Likelihood and Adaptive Lasso) provides implementations to extended versions of the Bradley-Terry model.
-   Methods for estimating the Elo rating in sports can be found in the `r pkg("elo")`, `r pkg("welo")`, `r pkg("EloOptimized")`, `r pkg("EloChoice")`, and `r pkg("EloRating")` packages. `r pkg("PlayerRatings")` also offers implementations to other rating systems, including Glicko, Glicko-2, and Stephenson, in addition to Elo.
-   `r pkg("piratings")` computes pi-ratings for determining team ability in association football, as described in [Constantinou and Fenton (2013)](https://www.degruyter.com/document/doi/10.1515/jqas-2012-0036/html).
-   `r pkg("mvglmmRank")` provides functions for building multivariate generalized mixed models for ranking teams in sports.

### General

-   `r pkg("teamcolors")` provides color palettes, **ggplot2** themes, **xaringan** themes, and logos for professional teams across a variety of sports and leagues.
-   `r pkg("colorr")` contains color palettes for professional sports teams in the EPL, MLB, NBA, NHL, and NFL.
-   `r pkg("nbapalettes")` contains color palettes inspired by NBA team jersey colors.
<!-- no longer on CRAN
-   `r pkg("aRbs")` contains functions for finding arbitrage opportunities in sports betting websites. Data are collected through [www.oddschecker.com](https://www.oddschecker.com)
-->
-   `r pkg("sportyR")` contains functions for creating **ggplot2** representations of sports playing surfaces pursuant to rule-book specifications. This is particularly useful for plotting player tracking data.
-   `r pkg("SportsTour")` provides functions for displaying tournament fixtures using knock-out and round robin methods.
-   `r pkg("SportsAnalytics")`'s goal is to provide infrastructure to perform general sports analytics. However, currently it appears to be incomplete and currently only contains a few data sets and functions.
-   `r pkg("TouRnament")` consists of two functions: 1) Creating league tables based on results and 2) Creating a match schedule for a league.

### Packages in action

Several of these packages feature prominently in books and articles on various subjects. Here, we highlight some examples where you can learn more about a topic and how these R packages support that analysis.

-   `r pkg("pitchRx")`, and several other baseball-related packages not on CRAN, are used in:

    -   Marchi, M., Albert, J., and Baumer, B. S. (2018). [*Analyzing baseball data with R*](https://www.taylorfrancis.com/books/mono/10.1201/9781351107099/analyzing-baseball-data-max-marchi-jim-albert-benjamin-baumer). 2nd edition. Chapman and Hall/CRC.

    The package itself is detailed in:

    -   Sievert, C. (2014). [Taming PITCHf/x Data with XML2R and pitchRx](https://journal.r-project.org/archive/2014/RJ-2014-001/index.html). *R Journal*, 6(1).

-   `r pkg("BasketballAnalyzeR")` accompanies:
    -   Zuccolotto, P., and Manisera, M. (2020). [*Basketball data science: with applications in R*](https://www.routledge.com/Basketball-Data-Science-With-Applications-in-R/Zuccolotto-Manisera/p/book/9780429470615). CRC Press.

-   `r pkg("piratings")` supports:
    -   Constantinou, A. C., Fenton, N. E., and Neil, M. (2013). [Profiting from an inefficient Association Football gambling market: Prediction, Risk and Uncertainty using Bayesian networks](https://www.sciencedirect.com/science/article/pii/S095070511300169X). *Knowledge-Based Systems*, 50, 60-86.

-   `r pkg("teamcolors")` was originally designed to create the data graphics in:
    -   Lopez, M. J., Matthews, G. J., and Baumer, B. S. (2018). [How often does the best team win? A unified approach to understanding randomness in North American sport](https://projecteuclid.org/journals/annals-of-applied-statistics/volume-12/issue-4/How-often-does-the-best-team-win-A-unified-approach/10.1214/18-AOAS1165.full). *The Annals of Applied Statistics*, 12(4), 2483-2516.

### Links

-   [GitHub repository for this Task View](https://github.com/beanumber/ctv-sportsanalytics)
