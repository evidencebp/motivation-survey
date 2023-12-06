# A Large Scale Survey of Motivation in Software Development and Analysis of its Validity
Idan Amit and [Dror G. Feitelson](https://www.cs.huji.ac.il/w~feit/)

**Context:** Motivation is known to improve performance. In software development in particular, there has been considerable interest in the
motivation of contributors to open-source.

**Objective:** We identify 11 motivators from the literature (enjoying programming, ownership of code, learning, self-use, etc.), and evaluate their relative
effect on motivation. Since motivation is an internal subjective feeling, we also
analyze the validity of the answers.

**Method:** We conducted a survey with 66 questions on motivation which was
completed by 521 developers. Most of the questions used an 11-point scale. We
evaluated the answers’ validity by comparing related questions, comparing to
actual behavior on GitHub, and comparison with the same developer in a
follow-up survey.

**Results:** Validity problems include moderate correlations between answers to
related questions, as well as self-promotion and mistakes in the answers. Despite these problems, predictive analysis—investigating how diverse motivators
influence the probability of high motivation—provided valuable insights. The
correlations between the different motivators are low, implying their independence. High values in all 11 motivators predict increased probability of high
motivation. In addition, improvement analysis shows that an increase in most
motivators predicts an increase in general motivation.

**Conclusions:** All 11 motivators indeed support motivation, but only moderately. No single motivator suffices to predict high motivation or motivation
improvement, and each motivator sheds light on a different aspect of motivation. Therefore models based on multiple motivators predict motivation
improvement with up to 94% accuracy, better than any single motivator.

**Keywords:** Motivation · Software engineering · Open-source development · Survey validity

**Repository content:**
This repository contain the data and source code use for this paper.
To reproduce see [code/python/main.py](https://github.com/evidencebp/motivation/blob/master/code/python/main.py)
Note that original [data](https://github.com/evidencebp/motivation/tree/master/data) containied personal identifiers (e.g., GitHub profiles), which was anonimized before publishing.

