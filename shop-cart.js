$(function(){
    //判断是否登录  来决定 islogin nologin 的display的属性
    function islogin(){
        $.ajax({
            url:"http://localhost:3000/user/islogin",
            type:"get",
            dataType:"json",
            success:function(res){
                if(res.ok==0){
                    $(".nologin").show()
                    .next().hide()
                }else if(res.ok==1){
                    $(".nologin").hide()
                    .next().show()
                    $(".islogin .pt_top_a2").html("Welcome:"+res.uname)
                }
            }
        })
    }
    islogin();
    
    //给注销按钮绑定signout事件
    $(".islogin").children(".pt_top_a1").on("click",function(e){
        //e.preventDefault();
        $.ajax({
            url:"http://localhost:3000/user/signout",
            type:"get",
            success:islogin()
        })
    })

    //给请登录绑定跳转事件
    $(".nologin").children(".pt_top_a1").on("click",function(e){
        e.preventDefault();
        location.href="login.html?back="+location.href;
        //console.log(location.href);
    })
    $(".login-a").on("click",function(e){
        e.preventDefault();
        location.href="login.html?back="+location.href;
    })
        var result=[];
            
             for(var i=0;i<localStorage.length;i++){
                 var localValue=localStorage.getItem(localStorage.key(i));
                 var key=localStorage.key(i);
                 if(key.indexOf("result")>=0){
                     var obj=JSON.parse(localValue);
                     result.push(obj);
                 }
             }
            
             //console.log(result);
            if(result.length>0){
                $(".shop-none").hide();
                $(".shop-on").show();
                var html=`<tr class="tr-head">
                <td><input type="checkbox"></td>
                <td>全选</td>
                <td>商品信息</td>
                <td>单价</td>
                <td>数量</td>
                <td>小计</td>
                <td>操作</td>
            </tr>`;
                //console.log("haha");
                for(var i=0;i<result.length;i++){
                    //console.log("haha");
                    var price=result[i].price;
                    var title=result[i].title;
                    var pic=result[i].d_img;
                    var lid=result[i].lid;
                    //console.log(pic,title,price);
                    html+=`<tr class="tr-body"><td><input type="checkbox"></td>
                    <td class="td-img"><img src="${pic}" alt=""></td>
                    <td class="td-title"><a href="">${title}</a></td>
                    <td class="td-price">￥${price}</td>
                    <td class="count"><span class="reduce">-</span><input type="text" value="1"><span class="add">+</span></td>
                    <td class="add-price">￥${price}</td>
                    <td class="control">
                        <span class="delete" data-lid="${lid}">删除</span>
                        <span class="save">移入收藏</span>
                    </td></tr>
                    `;
                }
                html+=`<tr class="tr-footer">
                <td><input type="checkbox"></td>
                <td>全选</td>
                <td class="delete">删除</td>
                <td class="save">移入收藏</td>
                <td class="remove">清空失效商品</td>
                <td class="all-price">合计:<span class="total">￥0</span></td>
                <td><span>结算</span></td>
            </tr>`;
                $(".cart_nav>table")
                .after().html(html);
        //获取所有tr 遍历所有tr中的第一个td中的input元素
        var tlist=$("table>tbody").children("tr");
        var tfirst=$("table>tbody").children("tr.tr-head").children(":first-child").children("input");
        var tlast=$("table>tbody").children("tr.tr-footer").children(":first-child").children("input");
        //console.log(tlast);
        tfirst.on("click",function(){
            if(tfirst.prop("checked")==true){
            $("table>tbody").children("tr.tr-body").children(":first-child").children("input").prop("checked",true);
            tlast.prop("checked",true);
            var tbody=$(this).parent().parent().parent().children("tr.tr-body");
            var sum=0;
            for(var i=0;i<tbody.length;i++){
                var price=tbody[i].childNodes[6].innerHTML.slice(1);
                var value=tbody[i].childNodes[8].childNodes[1].value;
                sum+=price*value;
            }
            tlist[tlist.length-1].children[5].innerHTML=`合计:<span class="total">￥${sum}</span>`;
        }else if(tfirst.prop("checked")==false){
            var sum=0;
            $("table>tbody").children("tr.tr-body").children(":first-child").children("input").prop("checked",false);
            tlast.prop("checked",false);
            tlist[tlist.length-1].children[5].innerHTML=`合计:<span class="total">￥${sum}</span>`;
        }
        })
        tlast.on("click",function(){
            if(tlast.prop("checked")==true){
            $("table>tbody").children("tr.tr-body").children(":first-child").children("input").prop("checked",true);
            tfirst.prop("checked",true);
            
        }else if(tlast.prop("checked")==false){
            $("table>tbody").children("tr.tr-body").children(":first-child").children("input").prop("checked",false);
            tfirst.prop("checked",false);
        }
        })
       
        //绑定tr-body中第一个td中的input的checked事件
        var tbody=$("table>tbody").children(".tr-body")
        //console.log(tbody[0].children[0].children[0].checked);
        for(var i=0;i<tbody.length;i++){
            tbody[i].children[0].children[0].onclick=function(){
                var check=this.checked;
                //console.log(check);
                if(check==true){
                    var good_price=this.parentNode.parentNode.childNodes[6].innerHTML.slice(1);
                    
                    var value=this.parentNode.parentNode.childNodes[8].childNodes[1].value;
                    sum+=parseInt(good_price)*parseInt(value);
                    tlist[tlist.length-1].children[5].innerHTML=`合计:<span class="total">￥${sum}</span>`;
                }else if(check==false){
                    var good_price=this.parentNode.parentNode.childNodes[6].innerHTML.slice(1);
                    
                    var value=this.parentNode.parentNode.childNodes[8].childNodes[1].value;
                    sum-=parseInt(good_price)*parseInt(value);
                    tlist[tlist.length-1].children[5].innerHTML=`合计:<span class="total">￥${sum}</span>`;
                }
            }
        }
        var sum=0;
    
   
        /*for(var i=1;i<tlist.length-1;i++){
            var price=parseInt(tlist[i].children[3].innerHTML.slice(1));
            sum+=price;
        }*/
        
        //console.log(addPrice);
        $("span.add").on("click",function(){
            var value=parseInt($(this).parent().children("input").val());
            value++;
            $(this).parent().children("input").val(value);
            //console.log(value)
            var price=parseInt($(this).parent().prev().html().slice(1));
            var addPrice=value*price;
            $(this).parent().next().html("￥"+addPrice);
            // var good_price=parseInt($(this).parent().parent().children(".td-price").html().slice(1));
            // var allPrice=parseInt($(this).parent().parent().parent().children(".tr-footer").children(".all-price").children("span").html().slice(1));
            // $(this).parent().parent().parent().children(".tr-footer").children(".all-price").children("span").html("￥"+(allPrice+good_price))
        })
        $("span.reduce").on("click",function(){
            var value=parseInt($(this).parent().children("input").val());
            if(value>1){
            value--;
            $(this).parent().children("input").val(value);
            //console.log(value)
            var price=parseInt($(this).parent().prev().html().slice(1));
            var addPrice=value*price;
            $(this).parent().next().html("￥"+addPrice);
            // var good_price=parseInt($(this).parent().parent().children(".td-price").html().slice(1));
            // var allPrice=parseInt($(this).parent().parent().parent().children(".tr-footer").children(".all-price").children("span").html().slice(1));
            // $(this).parent().parent().parent().children(".tr-footer").children(".all-price").children("span").html("￥"+(allPrice-good_price))
        }else if(value==1){
            if(confirm("是否要删除该商品")){
                var lid=$(this).parent().parent().children("td.control").children("span.delete").attr("data-lid");
                localStorage.removeItem(`result${lid}`)
                $(this).parent().parent().remove();
                if(localStorage.length<1){
                    $(".shop-none").show();
                    $(".shop-on").hide();
                }
            }
        }
        })
        $("span.delete").on("click",function(){
            if(confirm("是否要删除此商品")){
                var lid=$(this).attr("data-lid");
                localStorage.removeItem(`result${lid}`)
                $(this).parent().parent().remove();
                if(localStorage.length<1){
                    $(".shop-none").show();
                    $(".shop-on").hide();
                }
            }
        })

            }else{
                $(".shop-none").show();
                $(".shop-on").hide();
            }
    
})