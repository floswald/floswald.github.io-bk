+++
title = "Hedonic Housing over the Lifecycle"
date = 2019-01-15T10:57:27+01:00
draft = false

# Tags and categories
# For example, use `tags = []` for no tags, or the form `tags = ["A Tag", "Another Tag"]` for one or more tags.
tags = ["econ","research","wip"]
categories = []
weight = 3


authors = ["Lars Nesheim","Jonathan Halket","Florian Oswald"]

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
[image]
  # Caption (optional)
  caption = ""

  # Focal point (optional)
  # Options: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight
  focal_point = ""
+++

In this project we want to build an empirical lifecycle model with the following features:

1. 2D location choice
2. choice of housing quality index
3. choice of mortgage size
4. choice of liquid savings
5. choice of whether rent vs own

We directly refer to our [companion paper]({{< ref "publication/housing-stock/index.md" >}}) when thinking about housing supply: It is *impossible* to rent a 5 bedroom apartment in the suburbs. Similary, it is *relatively expensive* to buy a 4 bedroom flat in the very city center. More generally, the price to rent ratio varies a lot over space and for different housing qualities. Our proposal is to take this more seriously when thinking about housing demand. We think we can get away without any *warm glow utility* from housing.

## Status

- [x] Code base is written and we can solve restricted problem.
- [ ] Solve the full model.
- [ ] Data.
- [ ] Draft.
