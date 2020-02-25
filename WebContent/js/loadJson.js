$(document).ready(function () {
    $.post("http://op.juhe.cn/onebox/movie/video?key=d24dec518ebf9ed8545e398e5a8bd218&q=复仇者联盟",
    function (data, status) {
      alert(data.result);
    });


//    function loadAll(data) {
//        $.ajax({
//            type: "post",
//            url: "../Cooking/getUserCommend",
//         data: JSON.stringify({
//               userid: data
//            }),
//            contentType: 'application/json;charset=utf-8',
//            success: function (result) {
//                addLi(result);
//            }
//        });
//    }
//  
//    function addLi(result) {
//        var liStr = '<li float = "left"><div class="inner"><a class="pic" href="" ><img src="';
//        for (var i = 0, l = result.length; i < l; i++) {
//            liStr += '../img/' + result[i].cookingPicture + ' "  border="0"/></a>';
//
//            /[表情]Str += '<p class="price"><span class="price_n">123</span><span class="price_r">123</span>(<span class="price_s">123</span>)</p>';
//
//
//            liStr += '<p class="publishing"> <span>菜名：</span><a href="../aspx/desc.aspx?cookingID='+result[i].cookingID+'">' + result[i].cookingName + '</a> </p>';
//            liStr += ' <p class="publishing_time"><span>作者：</span>' + result[i].author + '</p>' + '</div><[表情]>';
//            $("#ulf").append($(liStr));
//            liStr = '<li float = "left"><div class="inner"><a class="pic" href="" ><img src="';
//        }
//    }
//




})