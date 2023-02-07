<section class="content-header">
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> PMKP</a></li>
      <li class="active">Indikator</li>
    </ol>
</section>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-content">
                    <a href="<?=base_url('indikator/add')?>" type="button" class="btn btn-primary" ><i class="fa fa-plus"></i></a>
                    </button>
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>No.</th>
                                    <th>Judul Indikator</th>
                                    <th>Unit</th>
                                    <th class="text-center">Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php 
                                $i=1;
                                 foreach($indikators as $indikator){ ?>
                                    <tr>
                                        <td><?=$i?></td>
                                        <td><?=$indikator->judul?></td>
                                        <td><?=$indikator->tb_nama?></td>
                                        <td align="center">
                                        <?php
                                            echo anchor(site_url('indikator/update/' . $indikator->id), '<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>', array("class" => "btn btn-warning btn-xs btn-flat", "data-toggle" => "tooltip", "data-placement" => "top", "title" => "update"));
                                            echo ' ';
                                            echo anchor(site_url('indikator/delete/' . $indikator->id), '<i class="fa fa-remove"></i>', array("class" => "btn btn-danger btn-xs btn-flat", 'onclick' => 'javasciprt: return confirm(\'Are You Sure ?\')"'), 'onclick="javasciprt: ');
                                            ?>
                                        </td>
                                    </tr>
                                <?php $i++; } ?>
                            </tbody>
                        </table>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <a href="#" class="btn btn-primary btn-sm">Total Record : <?php echo $total_rows ?></a>
                        </div>
                        <div class="col-md-6 text-right">
                            <?php echo $pagination ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>