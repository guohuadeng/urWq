<?php
 session_start();
 $_SESSION["session_id"] = " ";
 $_SESSION["ReturnString"] = " ";
 $_SESSION["activeid"] = " ";
function   httpPost($sURL,$aPostVars,$sessid,$nMaxReturn)
{ 
  $srv_ip = '219.136.252.188';//你的目标服务地址或频道.
  $srv_port = 80;
  $url = $sURL; //接收你post的URL具体地址 
  $fp = '';
  $resp_str = '';
  $errno = 0;
  $errstr = '';
  $timeout = 300;
  $post_str = $aPostVars;//要提交的内容.
    
  $fp = fsockopen($srv_ip,$srv_port,$errno,$errstr,$timeout);
  if (!$fp)
  {
   echo('fp fail');
  }

  $content_length = strlen($post_str);
  $post_header = "POST $url HTTP/1.1\r\n";
  $post_header .= "Content-Type:application/x-www-form-urlencoded\r\n";
  $post_header .= "User-Agent: MSIE\r\n";
  $post_header .= "Host: ".$srv_ip."\r\n";
  $post_header .= "Cookie: ".$sessid."\r\n";
  $post_header .= "Content-Length: ".$content_length."\r\n";
  $post_header .= "Connection: close\r\n\r\n";
  $post_header .= $post_str."\r\n\r\n";
  
  echo $post_header;
  fwrite($fp,$post_header);

  $inheader = 1;
  while(!feof($fp))
  {
   $resp_str .= fgets($fp,4096);//返回值放入$resp_str
   if ($inheader && ($resp_str == "\n" || $resp_str == "\r\n"))
    {        
	  $inheader = 0;     
	}     
	if ($inheader == 0) 
	{       
	  echo $resp_str;     
	} 
  } 
   
  echo $resp_str; 
  echo "\r\n";
  
  if($nMaxReturn==0)
  {
     $_SESSION["session_id"] = substr( $resp_str,strpos($resp_str,"Set-Cookie: ")+12,45);
	 //echo $_SESSION["session_id"];
	 if( substr( $resp_str,strpos($resp_str,"<ErrorNum>")+10,strpos($resp_str,"</ErrorNum>") -strpos($resp_str,"<ErrorNum>")-10) ==0)
	 {
		$_SESSION["activeid"] = substr( $resp_str,strpos($resp_str,"<ActiveID>")+10,strpos($resp_str,"</ActiveID>") -strpos($resp_str,"<ActiveID>")-10);
	 }

  }
  else
  {
     if( substr( $resp_str,strpos($resp_str,"<ErrorNum>")+10,strpos($resp_str,"</ErrorNum>") -strpos($resp_str,"<ErrorNum>")-10) ==0)
	 {
              echo "\r\n";
		echo "操作成功";
	 }
	 else
	 {
	     echo "\r\n";
		 echo substr( $resp_str,strpos($resp_str,"<ErrorNum>")+10,strpos($resp_str,"</ErrorNum>") -strpos($resp_str,"<ErrorNum>")-10);//处理返回值.
		 $_SESSION["ReturnString"] = substr( $resp_str,strpos($resp_str,"<ErrorNum>")+10,strpos($resp_str,"</ErrorNum>") -strpos($resp_str,"<ErrorNum>")-10);
	 } 
  }  
   fclose($fp);
 }

  httpPost( "/LANZGateway/DirectSendSMSs.asp","UserID=1234569&Account=123456&Password=56EAF4A2C651BFF3D77236A4E3FE16E44C48EA39&SMSType=1&Phones=1111111111&Content=gfdsa&SendDate=&Sendtime=","",1);

?> 