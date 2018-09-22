@app.config ['$stateProvider', '$urlRouterProvider', ($stateProvider, $urlRouterProvider) ->

  $urlRouterProvider
    .otherwise('/404')
  # $urlRouterProvider

  $stateProvider
    .state 'home',
      url: ''
      controller: 'ApplicationCtrl'
    # home
  # $stateProvider

  $stateProvider
    .state 'bank_agence',
      url: '/bank_agences'
      controller: 'BankAgenceCtrl'
    # bank_agence
  # $stateProvider
] 