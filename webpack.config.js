var path = require('path');

module.exports = {
    entry: path.join(__dirname, 'srcjs', 'springwidget.js'),
    output: {
        path: path.join(__dirname, 'inst', 'htmlwidgets'),
        filename: 'springwidget.js'
    },
    module: {
        rules: [
            {
                test: /\.js$/,
                loader: 'babel-loader',
                options: {
                    presets: ['@babel/preset-env', '@babel/preset-react']
                }
            }
        ]
    },
    // React, ReactDOM, and reactR are added to the page as html_dependencies by
    // the R function springwidget:::springwidget_html
    externals: {
        'react': 'window.React',
        'react-dom': 'window.ReactDOM',
        'reactR': 'window.reactR'
    },
    stats: {
        colors: true
    },
    devtool: 'source-map'
};