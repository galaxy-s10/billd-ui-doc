---
title: Switch
---

# 预览

<script>
export default {
  data() {
    return {
      switchVal: false,
    };
  },
  methods: {
    clickSwitch(a, b) {
      console.log(a, b);
    },
    changeSwitch(a) {
      console.log(a);
    },
  },
};
</script>
<template>
  <b-switch
      v-model="switchVal"
      openText="开"
      closeText="关"
      :defaultChecked="true"
      @clickSwitch="clickSwitch"
      @changeSwitch="changeSwitch"
    >
      <template slot="openSlot">
        <b>开启</b>
      </template>
      <span slot="closeSlot">关闭</span>
    </b-switch>
</template>

## 案例

```vue
<template>
  <div>
    <b-switch
      v-model="switchVal"
      openText="开"
      closeText="关"
      :defaultChecked="true"
      @clickSwitch="clickSwitch"
      @changeSwitch="changeSwitch"
    >
      <template slot="openSlot">
        <b>开启</b>
      </template>
      <span slot="closeSlot">关闭</span>
    </b-switch>
  </div>
</template>

<script>
export default {
  data() {
    return {
      switchVal: false,
    };
  },
  methods: {
    clickSwitch(a, b) {
      console.log(a, b);
    },
    changeSwitch(a) {
      console.log(a);
    },
  },
};
</script>
```

## API

| 参数         | 说明                                          | 类型    | 默认值 |
| ------------ | --------------------------------------------- | ------- | ------ |
| visible      | 是否显示对话框，可使用 v-model 双向绑定数据。 | Boolean | false  |
| title        | 对话框标题                                    | String  | 标题   |
| cancelText   | 取消按钮文字                                  | String  | 取消   |
| confirmText  | 确定按钮文字                                  | String  | 确定   |
| mask         | 是否显示遮罩层                                | Boolean | true   |
| maskClosable | 点击遮罩层是否关闭对话框                      | Boolean | true   |

## 事件

| 参数           | 说明                   | 返回值     |
| -------------- | ---------------------- | ---------- |
| on-cancel      | 点击取消按钮回调       | 无         |
| on-confirm     | 点击确认按钮回调       | 无         |
| on-close       | 点击右上角关闭按钮回调 | 无         |
| visible-change | 显示状态发生变化时触发 | true/false |

## 插槽

| 名称 | 说明           |
| ---- | -------------- |
| foot | 自定义页脚内容 |
