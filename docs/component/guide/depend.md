---
title: 依赖
---

# 依赖

billd-ui 组件库将 icon 组件单独抽离出来成一个独立的组件库：[@huangshuisheng/icons-vue](https://www.npmjs.com/package/@huangshuisheng/icons-vue) ，而这个组件库又依赖：[@huangshuisheng/icons-svg](https://www.npmjs.com/package/@huangshuisheng/icons-svg) 。这样做是为了将 icon 抽象成通用的基础库，后续可基于@huangshuisheng/icons-svg 这个库开发 react，angular 的 icons 组件库，提高扩展性。
