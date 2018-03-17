window.addEventListener('load', function() {
    // 回到顶部
    (function() {
        var
            // 找到返回顶部组件，打包
            backTopEle = document.getElementById('back-top');

            // 导航栏
        var navBar = document.getElementById('small-header');

        // 触发/隐藏 返回顶部监听函数
        function toggleBackTop() {
            var
                // 取三者中第一个不为0的数
                scrollTop = window.pageYOffset || document.body.scrollTop || document.documentElement.scrollTop,
                // 此刻是否隐藏
                isHidden = backTopEle.classList.contains('js-hidden');

            //
            if ((scrollTop > 350 && isHidden)){
                // 是时候显示"返回顶部”了，同时隐藏导航栏
                backTopEle.classList.remove('js-hidden');
                navBar.classList.add('js-hidden');
            }else if(scrollTop < 350 && !isHidden){
                // 是时候隐藏"返回顶部”了，同时显示导航栏
                backTopEle.classList.add('js-hidden');
                navBar.classList.remove('js-hidden');
            }
        }

        if (backTopEle) {

            document.addEventListener('scroll', toggleBackTop);

            // 点击返回顶部时运行的函数
            backTopEle.addEventListener('click', function() {
                var backTopAmt = new Amt();

                backTopAmt
                    .from({
                        top: window.pageYOffset || document.body.scrollTop || document.documentElement.scrollTop
                    })
                    .to({
                        top: 0
                    })
                    .transition(1000)
                    .on('frame', function(data) {
                        window.scrollTo(0, data.top);
                    })
                    .start();
            });
        }
    })();
});
