<?php
$month = $beda[1];
$year = $beda[0];
$days_in_month = cal_days_in_month(CAL_GREGORIAN, $month, $year);

function cek_pembanding($bil1,$bil2,$ops){
 switch ($ops) {
    case "==":
      $keterangan =($bil1==$bil2) ? "Tercapai":"Tidak Tercapai";
       break;
    case "<=":
      $keterangan =($bil1<=$bil2) ? "Tercapai":"Tidak Tercapai";
      break;
    default:
      $keterangan = "Belum di defenisikan";
  }
  echo $keterangan;
}
?>
<h3><?= $beda[1] . "-" . $beda[0] ?></h3>
<table class="table table-bordered table-responsif">
    <tr>
        <td rowspan="2"></td>
        <td colspan="<?= $days_in_month ?>" align="center">Tanggal</td>
        <td rowspan="2" align="center">Total</td>
        <td rowspan="2" align="center">Standar</td>
        <td rowspan="2" align="center">Pencapaian</td>
        <td rowspan="2" align="center">Ket</td>
    </tr>
    <tr>
        <?php for ($i = 1; $i <= $days_in_month; $i++) { ?>
            <td>
                <strong><?= $i ?></strong>
            </td>
        <?php } ?>
    </tr>
    <?php
    $indikator = "";
    $indexx = 1;
    $total_num = 0;
    foreach ($nums as $num) { ?>
        <?php
        $indexx++;
        if ($indexx == 2) {
            $total_num = 0;
        }
        $total_den = 0;
        if ($indikator == $num->indikator) {
        } else {
            $indikator = $num->indikator;
        ?>
            <tr style="color: green;">
                <td><strong>Judul Indikator :</strong><br>
                    <?= ucwords($indikator) ?>
                </td>
            </tr>
        <?php } ?>
        <tr>
            <td>
                <strong><?= ucwords($num->jenis) ?></strong><br>
                <?= ucwords($num->deskripsi) ?>
                <input type="hidden" name="numerator[]" value="<?= $num->idnum ?>">
            </td>
            <?php for ($i = 1; $i <= $days_in_month; $i++) { ?>
                <td align="center">
                    <?php foreach ($starkess as $starkes) {
                        if ($i <= 9) {
                            $ix = "0" . $i;
                        } else {
                            $ix = $i;
                        }

                        if (
                            $num->kdindikator == $starkes->indikator &&
                            $num->idnum == $starkes->numerator &&
                            $num->kodeunit == $starkes->unit_id &&
                            $num->jenis == $starkes->jenis &&
                            $year . "-" . $month . "-" . $ix == $starkes->tanggal_star
                        ) {
                            echo $starkes->nilai;
                            if (ucwords($num->jenis) == "Numerator") {
                                $total_num += $starkes->nilai;
                            } else {
                                $total_den += $starkes->nilai;
                            }
                        }
                    } ?>
                </td>
            <?php } ?>
            <td align="center"><?php
                                if (ucwords($num->jenis) == "Numerator") {
                                    echo $total_num;
                                } else {
                                    echo $total_den;
                                } ?></td>
            <?php if ($indexx == 2) { ?>
                <td align="center" rowspan="2">
                    <?= ($num->operator != "==") ? $num->operator : "" ?>
                    <?= $num->standar ?></td>
            <?php } ?>    
            <?php if ($indexx == 3) { ?>               
                <td align="center">
                    <?php
                    try {
                        $pencapaian=($total_num / $total_den)*100;
                        echo $pencapaian;
                    } catch (DivisionByZeroError $e) {
                        echo "Caught DivisionByZeroError!\n".'<br>';
                        echo $total_num.'-'.$total_den;
                    } ?>
                </td>
                <td align="center">
                <?=cek_pembanding($pencapaian,$num->standar,$num->operator)?>
                </td>
            <?php } ?>


        </tr>
    <?php
        if ($indexx == 3) {
            $indexx = 1;
        }
    } ?>
</table>