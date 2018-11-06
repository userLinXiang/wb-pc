$(function(){
    if(location.search.indexOf("kword=")!=-1){
        var kw=decodeURI(
          location.search.split("=")[1]
    )};
    console.log(kw);
    function loadPage(pno=0){
    $.ajax({
        url:"http://localhost:3000/shop/getProduct",
        type:"get",
        data:{kw,pno},
        dataType:"json",
        success: function(res) {
            //console.log(res); 此时可以得到模糊查询的数据了 解构遍历
            var {data,pageCount,pno}=res;
            var html="";
            for(var p of data){
                var {d_img,title,shelf_time,sold_count,price}=p;
                html+=`<li>
                <a href="" class="s-goods">
                        <img src="${d_img}" alt="">     
                  </a>
                    <div class="txt">
                        <p class="txt1">￥${price}</p>
                        <a href="#" class="txt2">
                          ${title}
                        </a>
                        <div class="txt3">
                          <span class="s1">${shelf_time}</span>
                          <i>/</i>
                          <span class="s2">销量${sold_count}</span>
                        </div>
                        <a href="#" class="txt4">天梭旗舰店</a>
                        <p class="txt5">
                            <span>自营</span>
                        </p>
                        <div class="txt-hover">
                          <a href="#" class="left">加入收藏</a>
                          <a href="#" class="right">加入购物车</a>
                        </div>
                    </div>
            </li>`
            }
            $(".goods-body").children("ul.clearfix").html(html);
        }
    })
}
loadPage();
})