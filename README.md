# freeplanet.co.in

Source code for freeplanet.co.in. FreePlanet is a clone of [Planet](http://www.planetplanet.org/) in GoLang.

Planet is an awesome 'river of news' feed reader. It downloads news feeds published by web sites and aggregates their content together into a single combined feed, latest news first.

## Status
- [x] Register the domain freeplanet.co.in
- [ ] Build a simple prototype
- [ ] Deploy it on Heroku for a demo
- [ ] Share it with community, take feedback and iterate.

## Purpose
Planet is meant to be run as a cron to generate pages based on a template for a configured set of feeds. These generated pages are then meant to be served via a webserver (like nginx or Apache) to the outside world. It's very simple and elegant by design. However [this post on ILUGC mailing list](https://www.freelists.org/post/ilugc/Thinking-on-a-hosted-planet-solution-share-your-thoughts) inspired us to build [freeplanet.co.in](http://freeplanet.co.in) as a hosted SAAS for tech communities.

## Tested Platforms
- Blogger
- Wordpress
- Medium
