<?php
/**
 * Created by IntelliJ IDEA.
 * User: aaronj37
 * Date: 7/10/2016
 * Time: 10:08 PM
 */
// echo "Hello Azeroth";
include_once 'connect.php';



Function getAuctions()
{
 global $APIKey;
 $url = "https://us.api.battle.net/wow/auction/data/hyjal?locale=en_US&apikey=$APIKey";
 $data = GetData($url);
 $data = json_decode($data, true);
//var_dump($data);
//var_dump($data['files'][0]['url']);
 $AuctionUrl = $data['files'][0]['url'];
 $AuctionData = GetData($AuctionUrl);
 $AuctionData = json_decode($AuctionData, true);
 $Testdata = array();
 For ($i = 0; $i < sizeof($AuctionData['auctions']); $i++) {
  $ItemId = $AuctionData['auctions'][$i]['item'];
  $Owner = $AuctionData['auctions'][$i]['owner'];
  $Buyout = $AuctionData['auctions'][$i]['buyout'];
  array_push($Testdata, array($ItemId, $Owner, $Buyout));
 }
 $Test = json_encode($Testdata);
 echo $Test;
}
//var_dump($AuctionData['auctions']);

function GetData($url) //Gets data from Riot API
{
 try {
  $ch = curl_init();

  if (FALSE === $ch)
   throw new Exception('failed to initialize');

  curl_setopt($ch, CURLOPT_URL, $url);
  curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
  curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 'false');
  // curl_setopt(/* ... */);

  $content = curl_exec($ch);

  if (FALSE === $content)
   throw new Exception(curl_error($ch), curl_errno($ch));

  return $content;
  // ...process $content now
 } catch(Exception $e) {

  trigger_error(sprintf(
      'Curl failed with error #%d: %s',
      $e->getCode(), $e->getMessage()),
      E_USER_ERROR);

 }
}




