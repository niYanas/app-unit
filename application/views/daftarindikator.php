<div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <?php $this->load->view('tambahindikator_modal'); ?>
                            <!-- Tabel Data Indikator -->
                            <div class="card">
                                <div class="card-header card-header-icon" data-background-color="rose">
                                    <i class="material-icons">assignment</i>
                                </div>
                                <h4 class="card-title">Tabel Data Indikator</h4>
                                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addIndikatorModal"><i class="fa fa-plus"></i>
                                    Tambah Indikator
                                </button>
                                <button type="button" class="btn btn-primary" onclick="location.href='<?= base_url(); ?>home/viewNilai'"><i class="fa fa-plus">
                                    </i>
                                    Tambah Nilai
                                </button>
                                <div class="card-content">
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th>No.</th>
                                                    <th>Unit</th>
                                                    <th>Judul Indikator</th>
                                                    <th>Numerator</th>
                                                    <th>Denumerator</th>
                                                    <th class="text-right">Actions</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php $no = 1;
                                                foreach ($data as $d) : ?>
                                                    <tr>
                                                        <td><?= $no++; ?></td>
                                                        <td><?= $d->nama_unit ?></td>
                                                        <td><?= $d->judul ?></td>
                                                        <td><?= $d->numerator ?></td>
                                                        <td><?= $d->denumerator ?></td>
                                                        <td class="text-right">
                                                            <a data-toggle="modal" data-target="" class="btn btn-simple btn-info btn-icon like"><i class="material-icons">add</i></a>
                                                            <a data-toggle="modal" data-target="#viewModal" class="btn btn-simple btn-warning btn-icon edit"><i class="material-icons">visibility</i></a>
                                                            <a href="#" class="btn btn-simple btn-danger btn-icon remove"><i class="material-icons">delete_forever</i></a>
                                                        </td>
                                                    </tr>
                                                <?php endforeach ?>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>