module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js'
  ],
  theme: {
      extend: {
        colors: {
          primary: '#1DA1F2',
          secondary: '#14171A',
          accent: '#657786',
          background: '#E1E8ED',
          foreground: '#F5F8FA'
        }
      },
    },
    plugins: [],
  }
