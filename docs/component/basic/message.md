---
title: Message
---

# 全局提示

<script>
import { Message } from "billd-ui";

export default {
  components: {},
  data() {
    return {};
  },
  computed: {},
  created() {},
  mounted() {
    // 修改全局默认配置
    // Message.config({
    //   type: 'warning',
    //   closeAble: true,
    //   duration: 3000,
    // });
  },
  methods: {
    closeAll() {
      Message.closeAll();
    },
    showMessage() {
      // 不写状态，默认info
      Message({
        content: "hello world!!",
        closeAble: false,
      });
      // 不手动调用状态，通过参数设置
      Message({
        type: "error", // 手动设置状态
        content: "errrorrrrr",
      });
      // 手动设置状态
      Message.success({
        content: "hello world",
        type: "error", // 覆盖不了，不生效
      });
      Message.loading({
        content: "hello world",
      });
      // 设置icon可覆盖状态
      Message.success({
        content: "hello world",
        icon: <i>opp!</i>, // 会覆盖原本的success
      });

      // 可关闭
      Message({
        content: "可关闭可关闭",
        closeAble: true,
      });
      // 设置持续时间，默认2000毫秒
      Message.success({
        content: "hello world",
        duration: 30000,
        closeAble:true
      });
      // 内容也可是VNode
      Message.success({
        content: <b>hello1111</b>,
      });
    },
  },
};
</script>

<template>
  <div>
    <div @click="showMessage">点击显示message</div>
    <div @click="closeAll">关闭所有</div>
  </div>
</template>

<style>
  .billd-message {
    z-index:999
  }
</style>

## 案例

```vue
<script>
import { Message } from "billd-ui";

export default {
  components: {},
  data() {
    return {};
  },
  render() {
    return (
      <div>
        <div vOn:Click={this.showMessage}>点击显示message</div>
        <div vOn:Click={this.closeAll}>关闭所有</div>
      </div>
    );
  },
  computed: {},
  created() {},
  mounted() {
    // 修改全局默认配置
    // Message.config({
    //   type: 'warning',
    //   closeAble: true,
    //   duration: 3000,
    // });
  },
  methods: {
    closeAll() {
      Message.closeAll();
    },
    showMessage() {
      // 不写状态，默认info
      Message({
        content: "hello world!!",
        closeAble: false,
      });
      // 不手动调用状态，通过参数设置
      Message({
        type: "error", // 手动设置状态
        content: "errrorrrrr",
      });
      // 手动设置状态
      Message.success({
        content: "hello world",
        type: "error", // 覆盖不了，不生效
      });
      Message.loading({
        content: "hello world",
      });
      // 设置icon可覆盖状态
      Message.success({
        content: "hello world",
        icon: <i>opp!</i>, // 会覆盖原本的success
      });

      // 可关闭
      Message({
        content: "可关闭可关闭",
        closeAble: true,
      });
      // 设置持续时间，默认2000毫秒
      Message.success({
        content: "hello world",
        duration: 30000,
        closeAble: true,
      });
      // 内容也可是VNode
      Message.success({
        content: <b>hello1111</b>,
      });
    },
  },
};
</script>
```

## API

组件提供了一些静态方法，使用方式和参数如下：

- `Message(config)`
- `Message.success(config)`
- `Message.error(config)`
- `Message.info(config)`
- `Message.warning(config)`
- `Message.loading(config)`

| 参数      | 说明               | 类型            | 默认值 |
| --------- | ------------------ | --------------- | ------ |
| content   | 提示内容           | String \| VNode |        |
| type      | 状态               | String          | info   |
| duration  | 持续时间，单位毫秒 | Number          | 2000   |
| closeAble | 是否显示关闭按钮   | Boolean         | fasle  |

> 全局 API

- `Message.closeAll()` 关闭所有 Message

- `Message.config(config)` 修改全局默认配置，默认全局配置如下：

  ```js
  {
      type: 'info',
      closeAble: false,
      duration: 2000,
  }
  ```

  可修改全局默认配置：

  ```js
  // 修改全局默认配置
  this.Message.config({
    type: "warning",
    closeAble: true,
    duration: 3000,
  });
  ```

## 事件

| 参数       | 说明             | 返回值 |
| ---------- | ---------------- | ------ |
| closeAll() | 手动关闭所有实例 | 无     |

## 插槽

| 名称 | 说明                                   |
| ---- | -------------------------------------- |
| Icon | type 位置的插槽，类型：String \| VNode |
