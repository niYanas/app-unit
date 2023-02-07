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
	$("input[name='nilai[]").keypress(function (event) {
		if (event.which < 48 || event.which > 57) {
			event.preventDefault();
		}
	});

	$("#unit").change(function () {
		var unit = $("#unit").val();
		$.ajax({
			type: "POST",
			data: "unit=" + unit + "",
			url: baseURL + "starkes/cari_starkes",
			success: function (starkes) {
				$("#loadx").html(starkes);
			},
		});
	});

	

	$("#simpan").click(function () {
		var tanggal_form = $("#tanggal").val();
		var unit_form = $("#unit").val();

		var numerator = document.getElementsByName("numerator[]");
		for (var i = 0; i < numerator.length; i++) {
			if (numerator[i].value == "") {
				swal("ID Num Tidak boleh kosong");
				return;
			}
		}

		var indikator = document.getElementsByName("indikator[]");
		for (var i = 0; i < indikator.length; i++) {
			if (indikator[i].value == "") {
				swal("ID Indikator Tidak boleh kosong");
				return;
			}
		}

		var nilai = document.getElementsByName("nilai[]");
		for (var i = 0; i < nilai.length; i++) {
			if (nilai[i].value == "") {
				swal("Nilai Numerator / Denumerator tidak boleh kosong");
				return;
			}
		}

		var datax = {};
		datax["tanggal_star"] = [];
		datax["numerator"] = [];
		datax["indikator"] = [];
		datax["subnumerator"] = [];
		datax["nilai"] = [];
		datax["unit_star"] = [];

		for (var i = 0; i < numerator.length; i++) {
			datax["numerator"][i] = numerator[i].value;
			datax["indikator"][i] = indikator[i].value;
			datax["nilai"][i] = nilai[i].value;
			datax["tanggal_star"][i] = tanggal_form;
			datax["unit_star"][i] = unit_form;
		}

		$.ajax({
			type: "POST",
			data: { data: datax },
			url: baseURL + "starkes/insert_bulk",
			success: function (dataxx) {
				balikan = dataxx.split("##");
				if (balikan[0] >= 1) {
					swal({
						title: "<strong>Perhatian</strong>",
						text: balikan[1],
						type: "warning",
						allowEscapeKey: false,
						allowOutsideClick: false,
						showCancelButton: true,
						confirmButtonColor: "#DD6B55",
						confirmButtonText: "Ya, Perbaharui",
						cancelButtonText: "Tidak, Batalkan",
						showLoaderOnConfirm: true,
						closeOnConfirm: false,
					}).then((isConfirm) => {
						if (isConfirm) {
							$.ajax({
								type: "POST",
								data: { data: datax },
								url: baseURL + "starkes/reset_starkes",
								success: function (dataxx) {
									swal("Pembaharuan Berhasil");
								},
							});
							//console.log("YES");
						}
						return false;
					});
				} else {
					swal("Data Berhasil Disimpan");
				}
			},
		});
	});
});
