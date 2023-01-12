<div class="modal fade" id="viewModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Lihat Data</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <?= form_open('Home/tambahIndikator'); ?>
                <div class="form-group label-floating">
                    <label class="control-label">UNIT ID</label>
                    <input type="text" class="form-control" id="unit_id" name="unit_id">
                </div>
                <div class="form-group label-floating">
                    <label class="control-label">Judul Indikator</label>
                    <input type="text" class="form-control" id="judul" name="judul">
                </div>
                <div class="form-group label-floating">
                    <label class="control-label">Numerator</label>
                    <input type="text" class="form-control" id="numerator" name="numerator">
                </div>

                <div class="form-group label-floating">
                    <label class="control-label">Denumerator</label>
                    <input type="text" class="form-control" id="denumerator" name="denumerator">
                </div>

                <div class="form-group label-floating">
                    <label class="control-label">Standar</label>
                    <input type="text" class="form-control" id="standar" name="standar">
                </div>

                <div class="form-group label-floating">
                    <label class="control-label">Pencapaian</label>
                    <input type="text" class="form-control" id="pencapaian" name="pencapaian">
                </div>

                <div class="form-group label-floating">
                    <label class="control-label">Keterangan</label>
                    <input type="text" class="form-control" id="ket" name="ket">
                </div>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Save</button>
            </div>
            <?= form_close(); ?>
        </div>
    </div>
</div>