window.Helpers = {
    nextPage: function () {
        var $pages = $('.page'),
            $next,
            index = $pages.filter('.active').index();

        if (index < $pages.length - 1) {
            $pages.eq(index).removeClass('active').addClass('visit');
            $next = $pages.eq(index + 1).addClass('active');
        }
    },
    prevPage: function () {
        var $pages = $('.page'),
            index = $pages.filter('.active').index();

        if (index > 0) {
            $pages.eq(index).removeClass('active');
            $pages.eq(index - 1).addClass('active').removeClass('visit');
        }
    },
    checkPage: function (check) {
        var $page = $('.page').filter('.active');
        if (!$page.data('check') || check[$page.data('check')]($page)) {
            this.nextPage();
        }
    },
    swipeDetect: function ($el, callback) {
        var touchsurface = $el[0],
            swipedir,
            startX,
            startY,
            distX,
            distY,
            threshold = 50, //required min distance traveled to be considered swipe
            restraint = 100, // maximum distance allowed at the same time in perpendicular direction
            allowedTime = 200, // maximum time allowed to travel that distance
            elapsedTime,
            startTime,
            handleswipe = callback || function (swipedir) {
                };

        touchsurface.addEventListener('touchstart', function (e) {
            var touchobj = e.changedTouches[0];
            swipedir = 'none';
            dist = 0;
            startX = touchobj.pageX;
            startY = touchobj.pageY;
            startTime = new Date().getTime(); // record time when finger first makes contact with surface
        }, false);

        touchsurface.addEventListener('touchmove', function (e) {
            var touchobj = e.changedTouches[0];
            distX = touchobj.pageX - startX; // get horizontal dist traveled by finger while in contact with surface
            distY = touchobj.pageY - startY; // get vertical dist traveled by finger while in contact with surface
            if (Math.abs(distX) > 10) { // 2nd condition for horizontal swipe met
                e.preventDefault(); // prevent scrolling when inside DIV
            }
        });

        touchsurface.addEventListener('touchend', function (e) {
            var touchobj = e.changedTouches[0];
            distX = touchobj.pageX - startX; // get horizontal dist traveled by finger while in contact with surface
            distY = touchobj.pageY - startY; // get vertical dist traveled by finger while in contact with surface
            elapsedTime = new Date().getTime() - startTime; // get time elapsed
            if (elapsedTime <= allowedTime) { // first condition for awipe met
                if (Math.abs(distX) >= threshold && Math.abs(distY) <= restraint) { // 2nd condition for horizontal swipe met
                    swipedir = (distX < 0) ? 'left' : 'right'; // if dist traveled is negative, it indicates left swipe
                }
                else if (Math.abs(distY) >= threshold && Math.abs(distX) <= restraint) { // 2nd condition for vertical swipe met
                    swipedir = (distY < 0) ? 'up' : 'down'; // if dist traveled is negative, it indicates up swipe
                }
            }
            handleswipe(swipedir);
        }, false);
    }
};