---
title: Icon
---

# 图标

<template>
  <div>
    <b-icon type="AccountBookFilled"></b-icon>
    <b-icon type="AppstoreAddOutlined" :spin="true"></b-icon>
    <b-icon type="DislikeFilled" :spin="true" :rotate="50"></b-icon>
    <b-icon
      type="LayoutFilled"
      :customStyle="{ color: 'red', fontSize: '30px' }"
    ></b-icon>
  </div>
</template>

## 案例

```vue
<template>
  <div>
    <b-icon type="AccountBookFilled"></b-icon>
    <b-icon type="AppstoreAddOutlined" :spin="true"></b-icon>
    <b-icon type="DislikeFilled" :spin="true" :rotate="50"></b-icon>
    <b-icon
      type="LayoutFilled"
      :customStyle="{ color: 'red', fontSize: '30px' }"
    ></b-icon>
  </div>
</template>

<script>
export default {};
</script>
```

## API

| 参数        | 说明           | 类型    | 默认值 |
| ----------- | -------------- | ------- | ------ |
| type        | 图标类型       | Boolean | false  |
| spin        | 是否有旋转动画 | Boolean | False  |
| rotate      | 图标旋转角度   | Number  | 360    |
| customStyle | 设置图标的样式 | Object  | 确定   |
