const path = require('path');

module.exports = {
  mode: 'production',
  entry: {
    main: './index.js'
  },

  output: {
    filename: 'scribble.js',
    path: __dirname,
    library: 'scribble'
  },

  module: {
    rules: [
      {
        enforce: 'pre',
        test: /\.js$/,
        exclude: /node_modules/,
        loader: 'eslint-loader'
      },
      {
        test: /\.js$/,
        exclude: /node_modules/,
        loader: 'babel-loader',
        options: { presets: ['@babel/env'] }
      }
    ]
  },
  target: 'node'
};
