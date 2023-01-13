<section class="content-header">
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> PMKP</a></li>
        <li><a href="<?= base_url('indikator') ?>">Indikator</a></li>
        <li class="active">Add</li>
    </ol>
</section>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-8">
            <div class="card">
                <div class="card-content">
                    <form action="<?php echo $action; ?>" method="post">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="int">Unit </label>
                                <select class="form-control" name="apj_id_aplikasi" id="apj_id_aplikasi">
                                    <option value=" "></option>
                                    <?php if (!empty($units)){ foreach ($units as $unit){ ?>
                                    <option value="<?=$unit->tb_id?>"><?=$unit->tb_nama_syarat.' '.$unit->tb_nama?></option>
                                    <?php } } ?>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="int">Judul Indikator </label>
                                <input type="text" class="form-control" name="judul_indikator">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                        <button type="submit" class="btn btn-primary"><i class="glyphicon glyphicon-floppy-save"></i> <?php echo $button ?></button>
                        <a href="<?=base_url('indikator')?>" class="btn btn-default">Cancel</a>
                        </div>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>