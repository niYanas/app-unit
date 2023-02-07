<table class="table table-bordered">
<?php 
$indikator = "";
foreach($nums as $num){ ?>
    <?php
        if ($indikator==$num->indikator){
    
        } else { 
            $indikator=$num->indikator;
        ?>
        <tr style="color: green;">
        <td colspan="2"><strong>Judul Indikator :</strong><br>
        <?=ucwords($indikator)?>
       </td>
    </tr>

    <?php } ?>
    <tr>
        <td>
        <strong><?=ucwords($num->jenis)?></strong><br>
            <?=ucwords($num->deskripsi)?>
        </td>
        <td>
            <?php if($num->operator!="==="){ ?>
            <input type="text" name="nilai">
            <?php }  ?>
        </td>
    </tr>
<?php 
} ?>
</table>
