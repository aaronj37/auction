<?php
/**
 * Created by IntelliJ IDEA.
 * User: Miralis
 * Date: 7/11/2016
 * Time: 8:50 PM
 */
include 'connect.php';
include('simple_html_dom.php');


getItems();

function getItems()
{
    global $APIKey;
    for ($i = 1; $i <= 150000; $i++) {//82441 Bolt of Windwool Cloth 72988 Windwool Cloth
                                 //65891 Vial of the Sands
                            //58480 Truegold
//$i=44;

        $ItemUrl = "https://us.api.battle.net/wow/item/$i?locale=en_US&apikey=$APIKey";
        $ItemData = json_decode(getData($ItemUrl), true);
        //var_dump($ItemData);
        if (isset($ItemData['status'])) {
           //echo "Itemid:$i Not Found";
            //var_dump($ItemData);


        } else {
        $ItemId=$ItemData['id'];
        $ItemName=$ItemData['name'];
            $ItemName= str_replace("'","''",$ItemName);
        $ItemIcon=$ItemData['icon'];
        $ItemSourceId=$ItemData['itemSource']['sourceId'];
        $ItemSourceType=$ItemData['itemSource']['sourceType'];

            $Query="Insert into items values('$ItemId','$ItemName','$ItemIcon','$ItemSourceId')";
            pg_query($Query);
            //echo $Query."<br>";
            if($ItemSourceType=='CREATED_BY_SPELL')
            {
               getRecipe($ItemId,$ItemSourceId);
            }

        }
        if($i%100==0)
        {
            sleep(1);
        }


    }
}

function RecipeIterator($str)
{
    $offset = 0;
    while ( preg_match('/item=(\d*).*<\/a>(\(\d*\)|)/', $str, $m, PREG_OFFSET_CAPTURE, $offset)) {
        $offset = $m[0][1] + strlen($m[0][0]);
       // yield $m[0][0];
        if($m[2][0]=="")
            $m[2][0]=1;
       yield array($m[1][0],$m[2][0]);
    }
   // return $RecipeData;
}

function getRecipe($ItemId,$ItemSourceId)
{
    $RecipeData=array();
    $Url="http://www.wowhead.com/spell=$ItemSourceId";
    $html = file_get_html($Url);

    $output_array=array();
    foreach($html->find('.indent') as $e)
    {
        //$RecipeData=RecipeIterator($e->outertext);
        $MaterialArray=explode(",",$e->outertext);
        $Output_array=array();
        foreach($MaterialArray as $Material)
        {
            if(strpos($Material,'(')!==false)
            {
                $Regex="/item=(\d*).*;\((\d*)\)/";
            }
            else
            {$Regex ="/item=(\d*)/";}
            preg_match($Regex, $Material, $Output_array);
           if(!isset($Output_array[2]))
           {
               $Output_array[2]=1;
           }
            array_push($RecipeData,array($Output_array[1],$Output_array[2]));
        }

//var_dump($RecipeData);
        $MaterialsString= json_encode($RecipeData);
        $MaterialsString= str_replace('"','',$MaterialsString);
//echo $MaterialsString;
    }
    foreach($html->find('tr') as $e2) {
  //   echo $e2->outertext.'</br>';
        $Text=$e2->innertext;
        if(strpos($Text,'Cast time')!== false)
        {
            $Regex ="/<td>(\d*)/";
            preg_match($Regex, $Text, $Output_array);
            $CastTime=$Output_array[1];
      //      var_dump($e2->outertext);
        }
        if(strpos($Text,'Cooldown')!== false)
        {
            $Regex ="/q0\">(\d*)/";
            preg_match($Regex, $Text, $Output_array);
            $CoolDown=0;
            if(isset($Output_array[1]))
            {$CoolDown=$Output_array[1];}

            //      var_dump($e2->outertext);
        }
    }

   $RecipeQuery = "Insert into recipes values('$ItemSourceId','$ItemId','$MaterialsString','$CastTime','$CoolDown');";
  // echo $RecipeQuery."<br>";
   pg_query($RecipeQuery);

}

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