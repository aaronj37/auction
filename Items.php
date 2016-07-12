<?php
/**
 * Created by IntelliJ IDEA.
 * User: Miralis
 * Date: 7/11/2016
 * Time: 8:50 PM
 */
include 'connect.php';


getItems();

function getItems()
{
    global $APIKey;
    for ($i = 1; $i <= 1; $i++) {//82441
        $ItemUrl = "https://us.api.battle.net/wow/item/82441?locale=en_US&apikey=$APIKey";
        $ItemData = json_decode(getData($ItemUrl), true);
        var_dump($ItemData);
        if (isset($ItemData['status'])) {
            echo "Not Found";
            //var_dump($ItemData);


        } else {

        }


    }
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