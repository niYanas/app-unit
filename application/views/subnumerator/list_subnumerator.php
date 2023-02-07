<section class="content-header">
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> PMKP</a></li>
        <li class="active">Sub Numerator - Denumerator</li>
    </ol>
</section>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <?php $this->load->view('tambahindikator_modal'); ?>
            <div class="card">
                <div class="card-content">
                    <a href="<?= base_url('subnumerator/add') ?>" type="button" class="btn btn-primary"><i class="fa fa-plus"></i></a>
                    </button>
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>No.</th>
                                    <th>Unit</th>
                                    <th>Indikator</th>
                                    <th>Jenis</th>
                                    <th>Desk</th>
                                    <th>Sub Desk</th>
                                    <th>Standar</th>
                                    <th class="text-right">Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $i = 1;
                                if (!empty($nums)) {
                                    foreach ($nums as $row) {
                                ?>
                                        <tr>
                                            <td><?= $i ?></td>
                                            <td><?= $row->unit ?></td>
                                            <td><?= $row->indikator ?></td>
                                            <td><?= $row->jenis ?></td>
                                            <td><?= $row->deskripsi ?></td>
                                            <td><?= $row->subdeskripsi ?></td>
                                            <td><?= $row->operator.' '.$row->standar ?></td>
                                            <td align="center">
                                                <?php
                                                echo anchor(site_url('subnumerator/update/' . $row->idsubnum), '<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>', array("class" => "btn btn-warning btn-xs btn-flat", "data-toggle" => "tooltip", "data-placement" => "top", "title" => "update"));
                                                echo ' ';
                                                echo anchor(site_url('subnumerator/delete/' . $row->idsubnum), '<i class="fa fa-remove"></i>', array("class" => "btn btn-danger btn-xs btn-flat", 'onclick' => 'javasciprt: return confirm(\'Are You Sure ?\')"'), 'onclick="javasciprt: ');
                                                ?>
                                            </td>
                                        </tr>
                                <?php
                                    }
                                }
                                ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>