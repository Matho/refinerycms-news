if (history && history.pushState) {
    $(document).ready(function(){

        $('#news_index').on("click", ".pagination a[href]", function() {
            $("html,body").animate({ 'scrollTop': 0 }, 600, function(){
                $("html,body").animate({ 'scrollTop': 0 }, 0);
            });


            $.getScript(this.href);
            history.pushState(null,"",this.href);

            return false;
        });

        $(window).bind("popstate", function() {
            $.getScript(location.href);
        });
    });
}
