<!--201804594_손무현-->
<head>
<meta charset="UTF-8">
<style>

	table { position : relative; left : 50px ; border-collapse:collapse; width:800px; }
	td {height:5px; width :8px;border: solid 1px gray; text-align: center; padding:10px; font-size : 20px }
    #multipleof3 td{
        background-color : cyan; color : red; font-weight : bold;
    }
    #include369 td{
        background-color : yellow; color : blue; font-weight : bold; 
    }
</style>
</head>
<h2>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp3-6-9 테이블</h2>
<table style="border : solid 5px black;">
<?php

    // 셀의 숫자가 3의 배수면, cyan 바탕에 red 색의 굵은 글씨로 표시

    // 3의 배수는 아니지만 3, 6, 9가 들어가면, yellow 바탕에 blue 색의 굵은 글씨로 표시 

    $c = 0;
	for ($b = 0; $b <= 99; $b++) {
		echo "<tr>";
		for ($a = 0; $a < 10; $a++) {
            $t = strval($c);
            if ($c % 3 == 0 ){
			    echo "<td style= 'background-color : cyan; color : red;'><b>{$c}</b></td>";
                $c += 1;
            }
            elseif ((preg_match("/3/", $t)) or (preg_match("/6/", $t)) or (preg_match("/9/", $t))){
            
                echo "<td style= 'background-color : yellow; color : blue;'><b>{$c}</b></td>";
                $c += 1; 
            }
            else{
            echo "<td>{$c}</td>";
            $c += 1;
            }
                        
		}
		echo "</tr>";
	}
?>
</table>