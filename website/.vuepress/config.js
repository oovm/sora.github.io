banners = require('./banner.js')
module.exports = {
    title: 'SOLA',
    description: 'New Era for Literary Soramimi',
    head: [
        ['link', { rel: 'icon', href: '/assets/img/avatar.jpg' }],
    ],
    theme: 'vuepress-theme-meteorlxy',
    themeConfig: {
        personalInfo: {
            nickname: '無名',
            description: '私はだれですか、<br/>私はどこですか。',
            email: 'galaster@foxmail.com',
            organization: 'Soramimi Genesis',
            avatar: '/assets/img/avatar.jpg',
        },
        header: {
            showTitle: false,
            background: {
                useGeo: false,
                url: banners
            },
        },
        nav: [
            { text: 'Arts', link: '/', exact: true },
            { text: 'Tags', link: '/posts/', exact: false },
            { text: 'About', link: '/projects/', exact: false },
            { text: 'Github', link: 'https://github.com/GalAster/Soramimi'}
        ],
        comments: false
    },
    markdown: {
        toc: {
            includeLevel: [2, 3],
        },
    },
}

