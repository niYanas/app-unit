<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
<script src="<?= base_url($javascript) ?>" type="text/javascript"></script>
<script type='text/javascript'>
    var baseURL = "<?php echo base_url(); ?>";
</script>
<section class="content-header">
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> PMKP</a></li>
        <li class="active">Starkes RS</li>
    </ol>
</section>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-content">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Bulan</label>
                                <input type="month" class="form-control" id="waktu_monitoring" name="waktu_monitoring" value="<?= date('Y-m') ?>">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Standar RS</label>
                                <select class="form-control" name="kode_monitoring" id="kode_monitoring">
                                    <option value=" "></option>
                                    <?php 
                                    if (!empty($kodes)) {
                                    foreach($kodes as $kode){ ?>
                                    <option value="<?=$kode->kode?>"
                                    <?php echo set_select('kode_monitoring', $kode->kode, ($kode_monitoring == $kode->kode)); ?>
                                    ><?=$kode->kode_desc?></option>
                                    <?php 
                                    } } ?>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <input type="button" class="btn btn-default" value="Tampilkan" id="tampilkan">
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
                   <div id="starkesRS_monitoring_tabel">
                   </div>
                </div>
            </div>
        </div>
    </div>
</div>