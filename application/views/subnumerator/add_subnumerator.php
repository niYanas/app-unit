<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
<script src="<?= base_url($javascript) ?>" type="text/javascript"></script>
<script type='text/javascript'>
    var baseURL = "<?php echo base_url(); ?>";
</script>
<section class="content-header">
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> PMKP</a></li>
        <li><a href="<?= base_url('subnumerator') ?>">Sub Num-Denum</a></li>
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
                                            <option value="<?= $unit->tb_id ?>" <?php echo set_select('unit', $unit->tb_id, ($kodeunit == $unit->tb_id)); ?>><?= $unit->tb_nama_syarat . ' ' . $unit->tb_nama ?></option>
                                    <?php }
                                    } ?>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="int">Indikator </label>
                                <select class="form-control" name="indikator" id="indikator">
                                    <option value=" "></option>
                                    <?php
                                    if (!empty($indikators)) {
                                        foreach ($indikators as $indikator) { ?>
                                            <option value="<?= $indikator->value ?>" <?php echo set_select('indikator', $indikator->value, ($kdindikator == $indikator->value)); ?>><?= $indikator->text ?></option>
                                    <?php }
                                    }
                                    ?>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="int">Deskripsi </label>
                                <select class="form-control" name="deskripsi" id="deskripsi">
                                    <option value=" "></option>
                                    <?php
                                    if (!empty($deksripsis)) {
                                        foreach ($deksripsis as $deksripsi) { ?>
                                            <option value="<?= $deksripsi->idnum ?>" <?php echo set_select('deskripsi', $deksripsi->idnum, ($kddeskripsi == $deksripsi->idnum)); ?>><?= $deksripsi->deskripsi ?></option>
                                    <?php }
                                    }
                                    ?>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-8">
                            <div class="form-group">
                                <label for="int">Sub Deskripsi</label>
                                <input type="text" name="subdeskripsi" id="subdeskripsi" value="<?= $subdeskripsi ?>" class="form-control">
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <label for="int">Operator </label>
                                <select class="form-control" name="operator" id="operator">
                                    <option value=" "></option>
                                    <option value="===" <?php echo set_select('jenis', "===", ($operator == "===")); ?>>===
                                    </option>
                                    <option value="<=" <?php echo set_select('jenis', "<=", ($operator == "<=")); ?>>
                                        <= </option>
                                    <option value="<" <?php echo set_select('jenis', "<", ($operator == "<")); ?>>
                                        < </option>
                                    <option value="==" <?php echo set_select('jenis', "==", ($operator == "==")); ?>>==</option>
                                    <option value="<"
                                    <?php echo set_select('jenis', "<", ($operator == "<")); ?>
                                    ><</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <label for="int">Standar Nilai</label>
                                <input type="text" name="nilai" id="nilai" value="<?= $standar ?>" class="form-control">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <input type="hidden" value="<?= $status ?>" id="status">
                            <input type="hidden" value="<?= $id ?>" id="id">
                            <button type="button" id="add_subnumerator" class="btn btn-primary"><i class="glyphicon glyphicon-floppy-save"></i> <?php echo $button ?></button>
                            <a href="<?= base_url('subnumerator') ?>" class="btn btn-default">Cancel</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>