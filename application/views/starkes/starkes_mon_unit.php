<h3><?=$beda[1]."-".$beda[0]?></h3>
<table class="table table-bordered table-responsif">
    <?php
    $month = $beda[1];
    $year = $beda[0];
    $days_in_month = cal_days_in_month(CAL_GREGORIAN, $month, $year);
    $indikator = "";
    foreach ($nums as $num) { ?>
        <?php
        if ($indikator == $num->indikator) {
        } else {
            $indikator = $num->indikator;
        ?>
            <tr style="color: green;">
                <td><strong>Judul Indikator :</strong><br>
                    <?= ucwords($indikator) ?>
                </td>
                <?php for ($i = 1; $i <= $days_in_month; $i++) { ?>
                    <td>
                        <?= $i ?>
                    </td>
                <?php } ?>
            </tr>
        <?php } ?>
        <tr>
            <td>
                <strong><?= ucwords($num->jenis) ?></strong><br>
                <?= ucwords($num->deskripsi) ?>
                <input type="hidden" name="numerator[]" value="<?= $num->idnum ?>">
            </td>
            <?php for ($i = 1; $i <= $days_in_month; $i++) { ?>
                <td>
                    <?php foreach ($starkess as $starkes) {
                        if ($i <= 9) {
                            $ix= "0" . $i;
                        } else{
                            $ix=$i;
                        }

                        if ($num->kdindikator == $starkes->indikator &&
                            $num->idnum == $starkes->numerator &&
                            $num->kodeunit == $starkes->unit_id &&
                            $num->jenis == $starkes->jenis &&
                            $year."-".$month."-".$ix == $starkes->tanggal_star) {
                            echo $starkes->nilai;
                        } 
                       
                    } ?>
                </td>
            <?php } ?>
        </tr>
    <?php
    } ?>
</table>