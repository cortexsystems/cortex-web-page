init = ->
  window.addEventListener 'cortex-ready', ->
    window.Cortex.app.getConfig()
      .then (config) ->
        container = document.getElementById('container')
        url = config['cortex.webpage.url']
        duration = config['cortex.webpage.duration'] || 7500

        if not not url
          window.Cortex.scheduler.onPrepare (offer) ->
            offer (done) ->
              container.setAttribute 'src', url
              setTimeout done, duration

        else
          err = new Error 'Application cannot start without a url.'
          console.error err
          throw err

      .catch (e) ->
        console.error 'Failed to initialize the application.', e
        throw e

module.exports = init()
