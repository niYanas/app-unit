<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
<script src="<?= base_url($javascript) ?>" type="text/javascript"></script>
<script type='text/javascript'>
    var baseURL = "<?php echo base_url(); ?>";
</script>
<section class="content-header">
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> PMKP</a></li>
        <li class="active">Starkes</li>
    </ol>
</section>
<?php
$min->modify("-2 days");
?>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-content">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Tanggal</label>
                                <input type="date" id="tanggal" name="tanggal" class="form-control" value="<?php echo date("Y-m-d"); ?>" min=<?= $min->format("Y-m-d") ?> max=<?= $max->format("Y-m-d") ?> name="date"
                                onkeydown="return false" >
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="form-group">
                                <label>Unit</label>
                                <select class="form-control" name="unit" id="unit">
                                    <option value=" "></option>
                                    <?php if (!empty($units)) {
                                        foreach ($units as $unit) { ?>
                                            <option value="<?= $unit->tb_id ?>" <?php echo set_select('unit', $unit->tb_id, ($kodeunit == $unit->tb_id)); ?>><?= $unit->tb_nama_syarat . ' ' . $unit->tb_nama ?></option>
                                    <?php }
                                    } ?>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <table class="table table-bordered">
                                <?php
                                $indikator = "";
                                foreach ($nums as $num) { ?>
                                    <?php
                                    if ($indikator == $num->indikator) {
                                    } else {
                                        $indikator = $num->indikator;
                                    ?>
                                        <tr style="color: green;">
                                            <td colspan="2"><strong>Judul Indikator :</strong><br>
                                                <?= ucwords($indikator) ?>

                                            </td>
                                        </tr>

                                    <?php } ?>
                                    <tr>
                                        <td>
                                            <strong><?= ucwords($num->jenis) ?></strong><br>
                                            <?= ucwords($num->deskripsi) ?>
                                            <input type="hidden" name="numerator[]" value="<?= $num->idnum ?>">
                                            <input type="hidden" name="indikator[]" value="<?= $num->kdindikator ?>">
                                        </td>
                                        <td>
                                            <?php if ($num->operator != "===") { ?>
                                                <input type="text" name="nilai[]" id="nilai" value="">
                                            <?php }  ?>
                                        </td>
                                    </tr>
                                <?php
                                } ?>
                            </table>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-10">
                        </div>
                        <div class="col-md-2">
                            <button class="btn btn-success btn-block" id="simpan">Simpan</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-content">

            </div>
        </div>
    </div>
</div>
</div>