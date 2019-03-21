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
                url: [
                    '/assets/img/background/63984c385736ae1bc0c406d5f3f0d2676b676456.jpg',
                    '/assets/img/background/a5d4e198e21be0b2fc2ac5a1ee03b47c4348f0e0.png'
                ],
            },
        },
        nav: [
            { text: 'Arts', link: '/', exact: true },
            { text: 'Tags', link: '/posts/', exact: false },
            { text: 'About', link: '/projects/', exact: false },
            { text: 'Github', link: '/projects/', exact: false }
        ],
        comments: false
    },
    markdown: {
        toc: {
            includeLevel: [2, 3],
        },
    },
}

