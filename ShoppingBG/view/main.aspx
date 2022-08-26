﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="ShoppingBG.view.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>後台主頁</title>
    <link rel="stylesheet" href="/css/Main.css">
</head>
<script src="/js/jquery-2.1.4.js"></script>
<script type="text/javascript" src="/js/Main.js"> </script>
<body>          
        <div class="frontColorBar">
           <div class="frontColorBarTitle">Shopping後台管理系統</div> 
           <div class="loginState" id="loginAccount" ></div>
           <div><a href="#"  class="logout" id="logout">登出</a></div>
       </div>
       <div class="menuBox">
            <ul class="drop-down-menu">
                <li><a href="#">職責</a>
                    <ul>
                        <li id="itemAddDuty"><a href="#">職責新增</a></li>
                        <li><a href="#">職責查詢</a></li>
                    </ul>
                </li>
                <li><a href="#">人員</a>
                    <ul>
                        <li><a href="#">人員新增</a></li>
                        <li><a href="#">人員查詢</a></li>
                    </ul>
                </li>
                <li><a href="#">產品類別</a>
                    <ul>
                        <li><a href="#">產品類別新增</a></li>
                        <li><a href="#">產品類別查詢</a></li>
                    </ul>
                </li>
                <li><a href="#">產品</a>
                    <ul>
                        <li><a href="#">產品新增</a></li>
                        <li><a href="#">產品查詢</a></li>
                    </ul>
                </li>
                <li><a href="#">訂單查詢</a></li>
                <li><a href="#">操作紀錄查詢</a></li>
            </ul>
       </div>       
            <div class="addDutyBlock" id="addDutyBlock"><p class="addDuty">職責新增</p>               
                <label for="addDutyName">職責名稱: </label>
                <input type:"text" class="addDutyName" id="addDutyName" value=""/>
                
                <div class="chkAddDutyBlock">
                     <label for="canAddUser">新增使用者</label>
                     <input type="checkbox" id="canAddUser" value="1" />
                     <label for="canMangProduct">產品上下架</label>
                     <input type="checkbox" id="canMangProduct" value="1"/><br/>                  
                     <label for="canMangOrder">訂單管理</label>
                     <input type="checkbox" id="canMangOrder" value="1"/>
                     <label for="customerServe">客戶管理</label>
                     <input type="checkbox" id="customerServe" value="1"/>
                </div>
                <button class="btnAddDuty" id="dutyConfirm">確定</button>
            </div>       
    
</body>
</html>
