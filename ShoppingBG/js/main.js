﻿//當網頁文件就緒的時候，可以開始執行裡面的函式
$(document).ready(function () {
    BlockClear();
    $.ajax({
        url: '/ajax/AjaxMain.aspx',
        type: 'POST',
        success: function (data) {

            if (JSON.parse(data)['SessionIsNull'] === null) {
                alert('即將被登出');
                window.location.href = "/view/LoginPage.aspx";
            } else {
                $('#loginAccount').text(JSON.parse(data)['Account']);
                console.log(JSON.parse(data)['Account']);
            }
        },
        error: function (err) {
            str = JSON.stringify(err, null, 2);
            console.log('err:');
            console.log(err);
            alert(str);
        }
    });

    //選單滑動
    $('.drop-down-menu > li > a').click(function (event) {
        event.preventDefault();
        //所有的大選項移除class
        $('.drop-down-menu > li > a').removeClass('active');
        //鼠標按鍵的地方加上class
        $(this).addClass('active');
        //滑出所選之子選單
        $('.drop-down-menu > li> ul').slideUp(500);
        //其他選單則上滑
        $(this).siblings('ul').slideDown(500);
    });

    //選取主頁上的內容
    $('.menuItem > a').click(function (event) {
        event.preventDefault();
        BlockClear();
        var selectedId = $(event.target).attr('id');
        switch (selectedId) {
            case 'itemAddDuty':
                $('#addDutyBlock').show();
                break;
            case 'itemSearchDuty':
                $('#searchDutyBlock').show();
                GetAllDuty();
                break;
            case 'itemAddUser':
                DutyTypeMenu('dutyTypeMenu');
                $('#addUserBlock').show();
                break;
            case 'itemSearchUser':
                DutyTypeMenu('allDutyMenu');
                GetAllUser();
                $('#searchUserBlock').show();
                break;

        }
    });

    //登出
    $('#logout').click(function (event) {
        window.location.href = '/view/LoginPage.aspx';
    });

    //畫面清除
    function BlockClear() {
        $('#overlay').hide();
        $('#addDutyBlock').hide();
        $('#searchDutyBlock').hide();
        $('#allDutyList').hide();
        $('#modifyDutyBlock').hide();
        $('#addUserBlock').hide();
        $('#searchUserBlock').hide();
        $('#allUserList').hide();
    }
})


//不能輸入空白鍵
function NoSpaceKey(inputName) {
    var id = '#' + inputName;
    var inputText = $(id).val();
    inputText = inputText.replace(/\s/g, '');
    $(id).val(inputText);
}