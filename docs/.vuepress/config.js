module.exports = {
  title: 'BilldUI',
  base: '/billd-ui/',
  description: '基于vue2.x构建的billd-ui组件库',
  port: 8080,
  head: [['link', { rel: 'icon', href: '/logo.png' }]],
  themeConfig: {
    // logo: "/logo.png",
    nav: [
      { text: '主页', link: '/' },
      { text: '组件', link: '/component/guide/introduction' },
      // { text: "主题", link: "/theme/" },
      { text: 'github', link: 'https://github.com/galaxy-s10/billd-ui' },
    ],
    sidebar: {
      '/component/': [
        {
          title: '快速上手',
          collapsable: false,
          children: ['guide/introduction', 'guide/guide', 'guide/depend'],
        },
        {
          title: '基础组件',
          collapsable: false,
          children: [
            'basic/icon',
            'basic/loading',
            'basic/switch',
            'basic/modal',
            'basic/table',
            'basic/message',
          ],
        },
        {
          title: '更多',
          collapsable: false,
          children: ['more/github', 'more/star'],
        },
      ],
    },
  },
  markdown: {
    lineNumbers: true,
  },
  plugins: ['@vuepress/back-to-top'],
};
