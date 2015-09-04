app.directive 'deleteBook',
	()-> 
		return {
			restrict: 'E',
			scope: {},
			templateUrl: 'tpl/deleteBook.html',
			link: (scope, element, attr)->
				scope.deleteText = "delete"

				image = $(element).parent().find('.image-book')
				msg = attr.ngConfirmClick || "Are you sure?"
				clickAction = attr.confirmedClick

				scope.show = ()->
					image.addClass('blur-image')
					$(element).children().addClass('show-btn')
					return

				scope.hide = ()->
					image.removeClass('blur-image')
					$(element).children().removeClass('show-btn')
					return

				scope.delete = ()->
					if window.confirm(msg)
						$(element).closest('.md-books').remove()
					return
		}