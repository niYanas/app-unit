<section class="content-header">
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> PMKP</a></li>
        <li><a href="<?= base_url('subnumerator') ?>">Sub Numerator - Sub Denumerator</a></li>
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
                                                <option value="<?= $unit->tb_id ?>"><?= $unit->tb_nama_syarat . ' ' . $unit->tb_nama ?></option>
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
                                    <label for="int">Deskripsi </label>
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
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="int">Numerator / Denumerator </label>
                                    <select class="form-control" name="indikator" id="indikator">
                                        <option value=" "></option>
                                        <option value="num">Numerator</option>
                                        <option value="denum">Denumerator</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-8">
                                <div class="form-group">
                                    <label for="int">Sub Deskripsi</label>
                                    <input type="text" name="deskripsi" class="form-control">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="int">Standar Nilai</label>
                                    <input type="text" name="nilai" class="form-control">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <button type="submit" class="btn btn-primary"><i class="glyphicon glyphicon-floppy-save"></i> <?php echo $button ?></button>
                                <a href="<?= base_url('subnumerator') ?>" class="btn btn-default">Cancel</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>