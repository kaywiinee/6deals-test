app.factory 'apiService', ($http) ->
  return {
    api1: ()->
      $http.get('/api1').success((data)->
        return data
      ).error((error) ->
        return error
      )
    api2: (params)->
      $auth = $('meta').filter('[name=csrf-token]')
      token = null
      if $auth.length > 0
        token = $auth.attr('content')
      params.authenticity_token = token

      $http.post('/api2',params).success((data)->
        return data
      ).error((error) ->
        return error
      )
  }