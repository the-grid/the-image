module.exports = ->
  @initConfig
    pkg: @file.readJSON 'package.json'

    # Image variant generation
    'imagemagick-hisrc':
      variants:
        files: 'images/*-2x.*'
        suffix: ['-2x', '-1x', '-low']

  @loadNpmTasks 'grunt-imagemagick'

  @registerTask 'images', ['imagemagick-hisrc']
  @registerTask 'default', ['images']
