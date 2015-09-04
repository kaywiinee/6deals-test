app.controller 'MainCtrl', [
  '$scope', 'apiService', '$timeout',
  ($scope, apiService, $timeout) ->
    $scope.title = 'Welcome to my book store!'
    $scope.bestSeld = [
        {
            name: 'Duong xa con hat',
            price: 61,
            image: 'http://www.atlazbooks.com/images/book/image/duong_xa_con_hat.jpg',
            pubdate: new Date('2015','5','27'),
            new: 1
        },
        {
            name: 'Nhat ky cua me',
            price: 90,
            image: 'http://www.atlazbooks.com/images/book/image/nhat_ky_cua_me.jpg',
            pubdate: new Date('2015','6','27'),
            new: 0
        },
        {
            name: 'Ngay mai toi se khac',
            price: 77,
            image: 'http://www.atlazbooks.com/images/book/image/ngay_mai_toi_se_khac.jpg',
            pubdate: new Date('2015','7','27'),
            new: 0
        }
    ]

    $scope.disCount = [
        {
            name: 'Tron mot vong yeu thuong',
            price: 54,
            image: 'http://www.atlazbooks.com/images/book/image/tron_mot_vong_yeu_thuong.jpg',
            pubdate: new Date('2015','2','27'),
            new: 1
        },
        {
            name: 'Ve mien tay',
            price: 34,
            image: 'http://www.atlazbooks.com/images/book/image/ve_mien_tay.jpg',
            pubdate: new Date('2015','3','27'),
            new: 0
        },
        {
            name: 'Bo danh may',
            price: 36,
            image: 'http://www.atlazbooks.com/images/book/image/bo_danh_may.jpg',
            pubdate: new Date('2015','7','27'),
            new: 0
        }
    ]

    $scope.cart_num = 0
    
    $scope.addBook = ()->
        $scope.cart_num += 1

    $scope.removeBook = ()->
        if $scope.cart_num > 0
            $scope.cart_num -= 1

    $scope.page = 'disCount'

    imageBook = null
        
    $scope.newBook = (book)->
        book.image = imageBook
        apiService.api2(book).then((res)->
            window.location.href = '/#list-book'
        )

    $scope.uploadFile = (event)->
        files = event.target.files
        $('#upload-file-info').html(files[0].name)
        imageBook = files[0].name

    $scope.seconds = 10
    $scope.minutes = 59
    $scope.hours = 24
    $scope.days = 9

    $scope.onTimeout = ()->
        if $scope.days == 0 && $scope.hours == 0 && $scope.minutes == 0 && $scope.seconds == 0
            return
        if $scope.seconds == 0 && $scope.minutes > 0
            $scope.seconds = 60
            $scope.minutes--
        if $scope.minutes == 0 && $scope.hours > 0
            $scope.minutes = 60
            $scope.hours--
        if $scope.hours == 0 && $scope.days > 0 
            $scope.hours = 24
            $scope.days--
        $scope.seconds--
        $timeout($scope.onTimeout, 1000)
]