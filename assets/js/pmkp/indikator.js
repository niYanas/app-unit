function validasi_js(judul, pesan_x) {
	swal({
		title: judul,
		text: pesan_x,
		buttonsStyling: false,
		confirmButtonClass: "btn btn-success",
		type: "warning",
	});
}

$(document).ready(function () {
	$("#add_indikator").click(function () {
		var btn = document.getElementById("add_indikator");
		btn.disabled = true;
		var unit 			= $("#unit").val();
		var id 				= $("#id").val();
		var judul_indikator = $("#judul_indikator").val();
		var status 			= $("#status").val();

		if (unit == " ") {
			validasi_js("Unit", "Tidak Boleh Kosong");
		} else if (judul_indikator == "") {
			validasi_js("Judul Indikator", "Tidak Boleh Kosong");
		} else {
			if (status == "add") {
				var tujuan = baseURL + "indikator/add_action";
			} else {
				var tujuan = baseURL + "indikator/update_action";
			}

			$.ajax({
				type: "POST",
				url: tujuan,
				data: "id=" + id + "&unit=" + unit + "&judul=" + judul_indikator + "",
				success: function (msgx) {
					if (status == "add") {
						if (msgx == "1") {
							$("#judul_indikator").val("");
							validasi_js("Indikator", "Berhasil Disimpan");
						} else {
							validasi_js("Indikator", "Tidak Berhasil Disimpan");
						}
					} else {
						if (msgx == "1") {
							validasi_js("Indikator", "Berhasil Disimpan");
						} else {
							validasi_js("Indikator", "Tidak Berhasil Disimpan");
						}
					}
					btn.disabled = false;
				},
			});
		}
	});
});
