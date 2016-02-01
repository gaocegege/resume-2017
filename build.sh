#!/bin/sh

hackmyresume BUILD ./resume-jrs.json TO ./index.html -t ./node_modules/jsonresume-theme-onepage
hackmyresume BUILD ./cn/resume-jrs.json TO ./cn/index.html -t ./node_modules/jsonresume-theme-onepage

open ./index.html
open ./cn/index.html