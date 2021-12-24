---
title: 安装
---

# 安装

```bash
npm i billd-ui --save
```

## 全局引入

```js
import Vue from "vue";
import Billd from "billd-ui";
import App from "./App.vue";
import "billd-ui/dist/billd.css";

Vue.use(Billd);

new Vue({
  render: (h) => h(App),
}).$mount("#app");
```

全局引入后，就可以在项目的任何地方直接使用 billd-ui 组件

```vue
<template>
  <div>
    <b-switch></b-switch>
  </div>
</template>
```

## 局部引入组件

> 注意，这种写法只是写一个就引入注册一个组件，仍需手动导入样式，而且最终打包的时候，和全局引入一样，都会整个 billd-ui 都进行打包，这个引入方式和全局引入对比只有一个区别：全局引入不用每次都手动注册 billd-ui 组件。

```vue
<template>
  <div>
    <b-switch></b-switch>
  </div>
</template>

<script>
import Vue from "vue";
import { Switch } from "billd-ui";
import "billd-ui/es/switch/style/css"; //仍需手动引入样式

Vue.component(Switch.name, Switch);

// 上述写法约等于：
// Vue.use(Switch);

export default {};
</script>
```

## 按需加载(推荐)

第一种方式：通过以下的写法来按需加载组件：

```vue
<template>
  <div>
    <b-switch></b-switch>
  </div>
</template>

<script>
import Vue from "vue";
import Switch from "billd-ui/es/switch";
import "billd-ui/es/switch/style/css"; //引入的是编译好的css
// import "billd-ui/es/switch/style"; //引入的是less源文件，如果项目有对less的处理就使用这个
Vue.use(Switch);

export default {};
</script>
```

第二种方式：如果你使用了 babel，可以使用 [babel-plugin-import](https://github.com/ant-design/babel-plugin-import) 来进行按需加载，首先 npm i babel-plugin-import，然后再添加 babel 的 plugins 配置：

> 注意：全局引入和这种方式的按需引入有冲突，这两者方式不能同时使用，否则会报错！

```js
plugins: [
  // billd-ui支持按需加载，安装babel-plugin-import，然后在babel配置文件添加如下内容即可
  [
    "import",
    {
      libraryName: "billd-ui",
      libraryDirectory: "es", // 默认lib
      /**
       * 这个按需加载很有意思，因为babel-plugin-import这个插件是ant-design官方写的，因此规则也是官方定的，
       * 有一点是肯定的：官方根据自家的ant-design组件库的整体架构，从而编写了一个插件专门对自家的ant-design组件库做的按需加载。
       * 这个style属性，如果没有这个属性，就不会引入样式；如果有这个style属性，它的值是true，代表：libraryName/libraryDirectory/组件名/style，即会引入style下的index.js
       * 如果值是'css',代表：libraryName/libraryDirectory/组件名/style/css，即会引入这个css.js文件
       */
      // style: true, // billd-ui使用了less，如果你的项目里面有对less做处理，可以使用此选项
      style: "css", // 如果你的项目没有处理less，就使用这个选项。
    },
    "billd-ui",
  ],
];
```

插件会帮你转换成 `billd-ui/es/switch` ，而且，因为配置了 style 属性，会按需加载该组件的样式，即会引入：`billd-ui/es/switch/style/css`

```vue
<template>
  <div>
    <b-switch></b-switch>
  </div>
</template>

<script>
import Vue from "vue";
import { Switch } from "billd-ui";
Vue.use(Switch);

export default {};
</script>
```

## 浏览器使用

在浏览器中使用 `script` 和 `link` 标签直接引入文件，并使用全局变量 `Billd`。

我们在 npm 发布包内的 `billd-ui/dist` 目录下提供了 `billd.js` `billd.css` 以及 `billd.min.js` `billd.min.css`
