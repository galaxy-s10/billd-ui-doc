---
title: Table
---

# 表格

<script>
export default {
  data() {
    return {
      // row: { b: 32 },
      // objabc: { a: 1 },
      defaultCheckedList: [200],
      defaultDisabledList: [100, 200],
      sourceData: [
        {
          key: 100,
          idd: 100,
          name: "2222222ss",
          ellipsis: true,
          status: "1",
          age: 323233223323,
          money: 34,
          address: "New No. 1 Lake Park",
          tags: ["nice", "developer"],
          sex: "男",
        },
        {
          key: 200,
          idd: 200,
          name: "wwe",
          status: "1",
          age: 32,
          money: 67,
          address: "New No. 1 Lake Park",
          tags: ["nice", "developer"],
          sex: "男",
        },
        {
          key: 300,
          idd: 300,
          name: "wew",
          status: "1",
          age: 32,
          money: 23,
          address: "New No. 1 Lake Park",
          tags: ["nice", "developer"],
          sex: "男",
        },
        {
          key: 400,
          idd: 400,
          name: "dff",
          status: "1",
          age: 32,
          money: 3456,
          address: "New No. 1 Lake Park",
          tags: ["nice", "developer"],
          sex: "男",
        },
        {
          key: 500,
          idd: 500,
          name: "John",
          status: "0",
          age: 32,
          address: "New No. 1 Lake Park",
          sex: "男",
          money: 12,

          tags: ["nice", "developer"],
        },
        {
          key: 600,
          idd: 600,
          name: "Jim",
          status: "1",
          age: 42,
          sex: "女",
          money: 234,

          address: "London No. 1 Lake Park",
          tags: ["loser"],
        },
        {
          key: 700,
          idd: 700,
          age: 32,
          status: "0",
          name: "Joe",
          address: "Sidney No. 1 Lake Park",
          sex: "男",
          money: 345,
          tags: ["cool", "teacher"],
        },
      ],

      rowSelection: {
        type: "checkbox",
        getCheckboxProps: (row) => {
          const key = row[this.getRowKey(row)];
          const prop = {
            defaultChecked: this.defaultCheckedList.indexOf(key) !== -1,
            disabled: this.defaultDisabledList.indexOf(key) !== -1,
          };
          return prop;
        },
      },

      columns: [
        {
          // fixed: "left",
          width: "100",
          title: "key",
          dataIndex: "idd", // 列数据在数据项中对应的key
          align: "center",
          // key: "key", //v-for遍历columns时的key,如果设置了唯一的dataIndex可忽略该属性
        },
        {
          fixed: "right",
          width: "100",
          title: "钱",
          dataIndex: "money",
          align: "center",
          // key: "money",
        },
        {
          // fixed: "left",
          // fixed: "right",
          // width: '120',
          title: "性别",
          dataIndex: "sex",
          align: "center",
          // key: "sex",
          // slots: { title: "customTitle" },
          // scopedSlots: { customRender: "name" },
          render(h, row) {
            // return <span>{row.status}</span>;
            // return <h-switch></h-switch>;
            /**
             * 下面的代码会解析成：h("div", [h("span", [row, "xxx"])])
             * 即h函数的第二个参数是数组，里面又嵌套了一个h函数，这个h函数的第二个参数是数组，
             * 数组里面的第一个参数row是对象，是不能通过h函数转成vnode的，会渲染成undefined，
             * 数组里面的第二个参数是数字，可以通过h函数转成vnode。
             */
            const obja = { ad: 323, obj: { dsg: 31 } };
            return (
              <div>
                <b>{row.status}xxx</b>
              </div>
            );
          },
        },
        {
          fixed: true,
          // fixed: "left",
          // ellipsis: true,
          width: "100",
          title: "name",
          dataIndex: "name",
          align: "center",
          // key: "name",
        },
        {
          fixed: true,
          // fixed: "right",
          width: "100",
          title: "状态",
          dataIndex: "status",
          // align: "right",
          // key: "status",
          // render: (h, row) => {
          //   console.log(row, "3434", 9132999);
          //   // return <div style="">{row.status}</div>;
          //   // return <div style="height:100px">{row.status}</div>;
          //   // return <h-switch></h-switch>;
          //   return <div>{row.status}</div>;
          // }
        },
        {
          // fixed: "right",
          width: "100",
          title: "Age",
          dataIndex: "age",
          // key: "age",
        },
        {
          width: "120",
          title: "Address",
          dataIndex: "address",
          // key: "address",
        },
        {
          // fixed: "left",
          width: "100",
          title: "Tags",
          // key: "tags",
          dataIndex: "tags",
          // render: (h, row) => {
          //   // console.log(row.name);
          //   // return h("div", {}, row.name);
          //   // return <div>{row.name}</div>;
          //   return <span>234</span>;
          // }
        },
        // {
        //   title: "Action",
        //   key: "action",
        //   scopedSlots: { customRender: "action" },
        // },
      ],
      theme: {
        default: {
          sss: 123,
          sgg: 3425,
        },
        default1: {
          sss: 3545,
          sgg: 9789,
        },
      },
      obj: {
        name: "hss",
        age: 22,
        sex: "男",
      },
      visible: false,
    };
  },
  computed: {},
  created() {},
  mounted() {
    Object.keys(this.theme).forEach((item) => {
      console.log(this.theme[item]);
    });
  },
  methods: {
    getColumnKey(column) {
      // columns的v-for时的key
      const columnKey = column.key || column.dataIndex;
      return columnKey;
    },
    // 获取对data-source的v-for时的key
    getRowKey(row) {
      // data-source的v-for时的key
      // console.log("columns的v-for时的key", row);
      const rowKey = this.rowKey || (row.key && "key");
      return rowKey;
    },
    clickSwitch(v) {
      console.log(v);
    },
    xxx() {
      console.log("234324");
    },
    changeModal() {
      this.visible = true;
    },
    visibleChange(v) {
      console.log("visibleChange", v);
    },
    cancelClick() {
      console.log("cancelClick,app组件里modal的cancel回调");
    },
    confirmClick() {
      console.log("cancelClick,app组件里modal的confirm回调");
    },
    closeClick() {
      console.log("closeClick,app组件里modal的close回调");
    },
  },
};
</script>

<template>
  <div>
    <b-table
      rowKey="idd"
      :bordered="true"
      :sourceData="sourceData"
      :columns="columns"
      :rowSelection="rowSelection"
      :scroll="{ x: 1200, y: 300 }"
    ></b-table>
  </div>
</template>

<style>
    table{
        display:table;
        margin:0
    }
    th,td{
        border:initial;
    }
</style>

## 案例

```vue
<template>
  <div>
    <b-table
      rowKey="idd"
      :bordered="true"
      :sourceData="sourceData"
      :columns="columns"
      :rowSelection="rowSelection"
      :scroll="{ x: 900, y: 300 }"
    ></b-table>
  </div>
</template>

<script>
export default {
  data() {
    return {
      // row: { b: 32 },
      // objabc: { a: 1 },
      defaultCheckedList: [200],
      defaultDisabledList: [100, 200],
      sourceData: [
        {
          key: 100,
          idd: 100,
          name: "2222222ss",
          ellipsis: true,
          status: "1",
          age: 323233223323,
          money: 34,
          address: "New No. 1 Lake Park",
          tags: ["nice", "developer"],
          sex: "男",
        },
        {
          key: 200,
          idd: 200,
          name: "wwe",
          status: "1",
          age: 32,
          money: 67,
          address: "New No. 1 Lake Park",
          tags: ["nice", "developer"],
          sex: "男",
        },
        {
          key: 300,
          idd: 300,
          name: "wew",
          status: "1",
          age: 32,
          money: 23,
          address: "New No. 1 Lake Park",
          tags: ["nice", "developer"],
          sex: "男",
        },
        {
          key: 400,
          idd: 400,
          name: "dff",
          status: "1",
          age: 32,
          money: 3456,
          address: "New No. 1 Lake Park",
          tags: ["nice", "developer"],
          sex: "男",
        },
        {
          key: 500,
          idd: 500,
          name: "John",
          status: "0",
          age: 32,
          address: "New No. 1 Lake Park",
          sex: "男",
          money: 12,

          tags: ["nice", "developer"],
        },
        {
          key: 600,
          idd: 600,
          name: "Jim",
          status: "1",
          age: 42,
          sex: "女",
          money: 234,

          address: "London No. 1 Lake Park",
          tags: ["loser"],
        },
        {
          key: 700,
          idd: 700,
          age: 32,
          status: "0",
          name: "Joe",
          address: "Sidney No. 1 Lake Park",
          sex: "男",
          money: 345,
          tags: ["cool", "teacher"],
        },
      ],

      rowSelection: {
        type: "checkbox",
        getCheckboxProps: (row) => {
          const key = row[this.getRowKey(row)];
          const prop = {
            defaultChecked: this.defaultCheckedList.indexOf(key) !== -1,
            disabled: this.defaultDisabledList.indexOf(key) !== -1,
          };
          return prop;
        },
      },

      columns: [
        {
          // fixed: "left",
          width: "100",
          title: "key",
          dataIndex: "idd", // 列数据在数据项中对应的key
          align: "center",
          // key: "key", //v-for遍历columns时的key,如果设置了唯一的dataIndex可忽略该属性
        },
        {
          fixed: "right",
          width: "100",
          title: "钱",
          dataIndex: "money",
          align: "center",
          // key: "money",
        },
        {
          // fixed: "left",
          // fixed: "right",
          // width: '120',
          title: "性别",
          dataIndex: "sex",
          align: "center",
          // key: "sex",
          // slots: { title: "customTitle" },
          // scopedSlots: { customRender: "name" },
          render(h, row) {
            // return <span>{row.status}</span>;
            // return <h-switch></h-switch>;
            /**
             * 下面的代码会解析成：h("div", [h("span", [row, "xxx"])])
             * 即h函数的第二个参数是数组，里面又嵌套了一个h函数，这个h函数的第二个参数是数组，
             * 数组里面的第一个参数row是对象，是不能通过h函数转成vnode的，会渲染成undefined，
             * 数组里面的第二个参数是数字，可以通过h函数转成vnode。
             */
            const obja = { ad: 323, obj: { dsg: 31 } };
            return (
              <div>
                <b>{row.status}xxx</b>
              </div>
            );
          },
        },
        {
          fixed: true,
          // fixed: "left",
          // ellipsis: true,
          width: "100",
          title: "name",
          dataIndex: "name",
          align: "center",
          // key: "name",
        },
        {
          fixed: true,
          // fixed: "right",
          width: "100",
          title: "状态",
          dataIndex: "status",
          // align: "right",
          // key: "status",
          // render: (h, row) => {
          //   console.log(row, "3434", 9132999);
          //   // return <div style="">{row.status}</div>;
          //   // return <div style="height:100px">{row.status}</div>;
          //   // return <h-switch></h-switch>;
          //   return <div>{row.status}</div>;
          // }
        },
        {
          // fixed: "right",
          width: "100",
          title: "Age",
          dataIndex: "age",
          // key: "age",
        },
        {
          width: "120",
          title: "Address",
          dataIndex: "address",
          // key: "address",
        },
        {
          // fixed: "left",
          width: "100",
          title: "Tags",
          // key: "tags",
          dataIndex: "tags",
          // render: (h, row) => {
          //   // console.log(row.name);
          //   // return h("div", {}, row.name);
          //   // return <div>{row.name}</div>;
          //   return <span>234</span>;
          // }
        },
        // {
        //   title: "Action",
        //   key: "action",
        //   scopedSlots: { customRender: "action" },
        // },
      ],
      theme: {
        default: {
          sss: 123,
          sgg: 3425,
        },
        default1: {
          sss: 3545,
          sgg: 9789,
        },
      },
      obj: {
        name: "hss",
        age: 22,
        sex: "男",
      },
      visible: false,
    };
  },
  computed: {},
  created() {},
  mounted() {
    Object.keys(this.theme).forEach((item) => {
      console.log(this.theme[item]);
    });
  },
  methods: {
    getColumnKey(column) {
      // columns的v-for时的key
      const columnKey = column.key || column.dataIndex;
      return columnKey;
    },
    // 获取对data-source的v-for时的key
    getRowKey(row) {
      // data-source的v-for时的key
      // console.log("columns的v-for时的key", row);
      const rowKey = this.rowKey || (row.key && "key");
      return rowKey;
    },
    clickSwitch(v) {
      console.log(v);
    },
    xxx() {
      console.log("234324");
    },
    changeModal() {
      this.visible = true;
    },
    visibleChange(v) {
      console.log("visibleChange", v);
    },
    cancelClick() {
      console.log("cancelClick,app组件里modal的cancel回调");
    },
    confirmClick() {
      console.log("cancelClick,app组件里modal的confirm回调");
    },
    closeClick() {
      console.log("closeClick,app组件里modal的close回调");
    },
  },
};
</script>
```

## API

### table

| 参数         | 说明                   | 类型                            | 默认值 |
| ------------ | ---------------------- | ------------------------------- | ------ |
| bordered     | 是否展示外边框和列边框 | boolean                         | false  |
| columns      | 表格列的配置描述       | array                           | -      |
| dataSource   | 数据数组               | any[]                           | -      |
| scroll       | 设置横向或纵向滚动     | { x: number \|true, y: number } | -      |
| rowKey       | 表格行 key 的取值      | string                          | 'key'  |
| rowSelection | 列表项是否可选择       | object                          | null   |

### columns

| 参数      | 说明                                                               | 类型                        | 默认值 |
| --------- | ------------------------------------------------------------------ | --------------------------- | ------ |
| align     | 设置列内容的对齐方式                                               | 'left' \|'right' \|'center' | 'left' |
| dataIndex | 列数据在数据项中对应的 key                                         | String                      |        |
| ellipsis  | 超过宽度将自动省略                                                 | boolean                     | false  |
| fixed     | 列是否固定,可选 `true`(等效于 left) `'left'` `'right'`             | boolean\|string             | false  |
| key       | Vue 需要的 key，如果已经设置了唯一的 `dataIndex`，可以忽略这个属性 | string                      | -      |
| render    | 通过 render 函数设置列内容                                         | _Function(h,row) {}_        | -      |
| title     | 列头显示文字                                                       | string                      | -      |
| width     | 列宽度                                                             | number                      | -      |

### rowSelection

| 参数             | 说明                                             | 类型                                                                                  | 默认值 |
| ---------------- | ------------------------------------------------ | ------------------------------------------------------------------------------------- | ------ |
| getCheckboxProps | 选择框的默认属性配置，可配置默认选中以及默认禁用 | _Function(row)_                                                                       | -      |
| onChange         | 选中项发生变化时的回调                           | _Function(newSelectedRowKeys, newSelectedRows,oldSelectedRowKeys,oldSelectedRows) {}_ | -      |
| onSelect         | 用户手动选择/取消选择某列的回调                  | _Function(row, isSelected, selectedRows, event) {}_                                   | -      |
| onSelectAll      | 用户手动选择/取消选择所有列的回调                | _Function(isAll,oldSelectRows,nowSelectedRows,changeRows) {}_                         | -      |

## 注意

1. 在 Table 中，`dataSource` 和 `columns` 里的数据值都需要指定 `key` 值。对于 `dataSource` 默认将每列数据的 `key` 属性作为唯一的标识，如果你的数据没有这个属性，务必使用 `rowKey` 来指定数据列的主键。若没有指定，控制台会出现缺少 key 的提示，表格组件也会出现各类奇怪的错误。
2. 设置固定列时候，建议设置 width 属性，否则会有宽度问题（antdv 官方的也有此问题）。
3. 固定头和列的时候，若列头与内容不对齐，请指定**固定列**的宽度 `width`。如果指定 `width` 不生效或出现白色垂直空隙，请尝试建议留一列不设宽度以适应弹性布局。（ps：如果全部 column 都设置了 width，且设置了 scroll.x，如果 scroll.x 大于所有 column 的和，就会出现白色空隙，这时候就留一列不设 width 即可。）
