const path = require('path');

module.exports = {
  mode: 'production',
  entry: {
    chords: './src/chords.js',
    api: './src/api.js',
  },

  output: {
    filename: '[name].js',
    path: path.join(__dirname, 'dist'),
    library: '[name]',
  },

  module: {
    rules: [
      {
        enforce: 'pre',
        test: /\.js$/,
        exclude: /node_modules/,
        loader: 'eslint-loader',
      },
      {
        test: /\.js$/,
        exclude: /node_modules/,
        loader: 'babel-loader',
        options: { presets: ['@babel/env'] },
      },
    ],
  },
  target: 'node',
};
