<section class="content-header">
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> PMKP</a></li>
        <li class="active">Numerator - Denumerator</li>
    </ol>
</section>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-content">
                    <a href="<?= base_url('numerator/add') ?>" type="button" class="btn btn-primary"><i class="fa fa-plus"></i></a>
                    </button>
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>No.</th>
                                    <th>Unit</th>
                                    <th>Indikator</th>
                                    <th>Jenis Nilai</th>
                                    <th>Deskripsi</th>
                                    <th>Target</th>
                                    <th class="text-center">Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                
                                    <?php
                                    $i=1;
                                    foreach($nums as $num){
                                    ?>
                                    <tr>
                                    <td><?=$i?></td>
                                    <td><?=$num->unit?></td>
                                    <td><?=$num->indikator?></td>
                                    <td><?=$num->jenis?></td>
                                    <td><?=$num->deskripsi?></td>
                                    <td><?=$num->standar?></td>
                                    <td align="center">
                                        <?php
                                            echo anchor(site_url('numerator/update/' . $num->idnum), '<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>', array("class" => "btn btn-warning btn-xs btn-flat", "data-toggle" => "tooltip", "data-placement" => "top", "title" => "update"));
                                            echo ' ';
                                            echo anchor(site_url('numerator/delete/' . $num->idnum), '<i class="fa fa-remove"></i>', array("class" => "btn btn-danger btn-xs btn-flat", 'onclick' => 'javasciprt: return confirm(\'Are You Sure ?\')"'), 'onclick="javasciprt: ');
                                            ?>
                                        </td>
                                    </tr>
                                    <?php $i++; } ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>