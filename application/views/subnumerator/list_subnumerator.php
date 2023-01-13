
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
                    <a href="<?=base_url('subnumerator/add')?>" type="button" class="btn btn-primary"><i class="fa fa-plus"></i></a>
                    </button>
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

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>