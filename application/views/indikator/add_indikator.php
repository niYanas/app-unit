<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
<script src="<?=base_url($javascript)?>"  type="text/javascript"></script>
<script type='text/javascript'>
var baseURL= "<?php echo base_url();?>";
</script>
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
                  
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="int">Unit </label>
                                <select class="form-control" name="unit" id="unit">
                                    <option value=" "></option>
                                    <?php if (!empty($units)){ foreach ($units as $unit){ ?>
                                    <option value="<?=$unit->tb_id?>"
                                    <?php echo set_select('unit', $unit->tb_id, ($unitx == $unit->tb_id)); ?>
                                    ><?=$unit->tb_nama_syarat.' '.$unit->tb_nama?></option>
                                    <?php } } ?>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="int">Judul Indikator </label>
                                <input type="text" class="form-control"
                                value="<?=$judul?>"
                                 id="judul_indikator" name="judul_indikator">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                        <input type="hidden" value="<?=$status?>" id="status">
                        <input type="hidden" value="<?=$id?>" id="id">
                        <button type="button" id="add_indikator" class="btn btn-primary"><i class="glyphicon glyphicon-floppy-save"></i> <?php echo $button ?></button>
                        <a href="<?=base_url('indikator')?>" class="btn btn-default">Cancel</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>