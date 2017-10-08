---
title: "Blog Test"
date: 2017-10-08T04:10:17+08:00
---

Summary: Some problems I met when publishing this site

<!--more-->

### `pesudo-ref` problem in git

I was trying to deploy this blog from my `gh-pages` branch. But when I tried to add a `worktree` according to [official guide](https://gohugo.io/hosting-and-deployment/hosting-on-github/) I met `fatal: Refusing to point HEAD outside of refs/`. I have no idea what went wrong at the beginning, and checked official git documents. But still no clue, then I found [this post](https://discourse.gohugo.io/t/github-deployment-using-worktrees-failing/5918) claming the problem was caused by out-dated git. I then updated the git with additional ppa, the problem was finally solved.

Besides, I found out that when doing first-time add remote by `git remote add origin <url>`, `remotes/origin/HEAD` is unassigned. I need to do `git remote set-head origin <branch>` thanks to [this post](https://stackoverflow.com/questions/8839958/how-does-origin-head-get-set)

Finally, there are some other ways which make deployment eaiser. Check [this](https://discourse.gohugo.io/t/simple-deployment-to-gh-pages/5003) out. One of my friends suggests to use [netlify](https://www.netlify.com/) as well.

This site is still dedicated to my writings, so I will try to keep technical stuff out of the way.

Cheers!
