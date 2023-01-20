<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
<script src="<?= base_url($javascript) ?>" type="text/javascript"></script>
<script type='text/javascript'>
    var baseURL = "<?php echo base_url(); ?>";
</script>
<section class="content-header">
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> PMKP</a></li>
        <li><a href="<?= base_url('numerator') ?>">Numerator - Denumerator</a></li>
        <li class="active">Add</li>
    </ol>
</section>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-8">
            <div class="card">
                <div class="card-content">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="form-group">
                                <label for="int">Unit </label>
                                <select class="form-control" name="unit" id="unit">
                                    <option value=" "></option>
                                    <?php if (!empty($units)) {
                                        foreach ($units as $unit) { ?>
                                            <option value="<?= $unit->tb_id ?>"><?= $unit->tb_nama_syarat . ' ' . $unit->tb_nama ?></option>
                                    <?php }
                                    } ?>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="int">Jenis Nilai</label>
                                <select class="form-control" name="jenis" id="jenis">
                                    <option value=" "></option>
                                    <option value="numerator">Numerator</option>
                                    <option value="denumerator">Denumerator</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="int">Indikator </label>
                                <div id="load_numerator">
                                    <select class="form-control" name="indikator" id="indikator">
                                        <option value=" "></option>
                                        <?php
                                        if (!empty($indikators)) {
                                            foreach ($indikators as $indikator) { ?>
                                                <option value="<?= $unit->tb_id ?>"><?= $unit->tb_nama_syarat . ' ' . $unit->tb_nama ?></option>
                                        <?php }
                                        }
                                        ?>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-8">
                            <div class="form-group">
                                <label for="int">Deskripsi</label>
                                <input type="text" name="deskripsi" id="deskripsi" class="form-control">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="int">Standar Nilai</label>
                                <input type="text" name="nilai" id="nilai" class="form-control">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <input type="hidden" value="<?=$status?>" id="status">
                            <input type="hidden" value="<?=$id?>" id="id">
                            <button type="button" id="add_numerator" class="btn btn-primary"><i class="glyphicon glyphicon-floppy-save"></i> <?php echo $button ?></button>
                            <a href="<?= base_url('numerator') ?>" class="btn btn-default">Cancel</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>