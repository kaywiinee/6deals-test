app.directive 'customOnChange',
    ()->
        return {
            retrict: 'A',
            link: (scope,element,attrs) ->
                onChangeHandler = scope.$eval(attrs.customOnChange)
                element.bind('change', onChangeHandler)
        }
