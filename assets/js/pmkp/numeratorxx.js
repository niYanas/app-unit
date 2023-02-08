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
	$("#unit").change(function () {
		$('#indikator').empty();
		var unit = $("#unit").val();
		$.ajax({
			type: "POST",
			url: baseURL + 'numerator/cari_indikator_unit',
			data: "unit=" + unit + "",
			dataType: "json",
			success: function (indikator) {
				$.each(indikator, function(i, item) {
					$("#indikator").append($('<option>', {
						value: item.value,
						text : item.text
					}));
				});
            },
		});
	});

	$("#mutu").change(function () {
		$("#kode_mutu_rs").val('');
	});	

	$("#add_numerator").click(function () {
		var btn = document.getElementById("add_numerator");
		btn.disabled = true;
		var unit 				= $("#unit").val();
		var id 					= $("#id").val();
		var jenis 				= $("#jenis").val();
		var indikator 			= $("#indikator").val();
		var deskripsi 			= $("#deskripsi").val();
		var nilai 				= $("#nilai").val();
		var operator 			= $("#operator").val();
		var status 				= $("#status").val();
		var mutu 				= $("#mutu").val();
		var kode_mutu_rs		= $("#kode_mutu_rs").val();
		

		if (unit ==" " || jenis == " " || indikator == " " || deskripsi=="" || nilai=="" || operator==""){
			validasi_js("Form","Tidak Boleh Kosong");
			btn.disabled = false;
		} else if (mutu != " " && kode_mutu_rs ==""){	
			validasi_js("Form","Kode Mutu Tidak Boleh Kosong");
			btn.disabled = false;
		} else {
			if (status == "add") {
				var tujuan = baseURL + "numerator/add_action";
			} else {
				var tujuan = baseURL + "numerator/update_action";
			}
			$.ajax({
				type: "POST",
				url: tujuan,
				data: "id=" + id + "&unit=" + unit + "&jenis=" + jenis + "&indikator=" + indikator +
				"&deskripsi=" + deskripsi + "&nilai=" + nilai + "&operator=" + operator +
				"&mutu=" + mutu +"&kode_mutu_rs=" + kode_mutu_rs + "",
				success: function (msgx) {
					if (status == "add") {
						if (msgx == "1") {
							validasi_js("Numerator - Denumerator", "Berhasil Disimpan");
							$("#deskripsi").val('');
							$("#nilai").val('');
						} else {
							validasi_js("Numerator - Denumerator", "Tidak Berhasil Disimpan");
						}
					} else {
						if (msgx == "1") {
							validasi_js("Numerator - Denumerator", "Berhasil Disimpan");
						} else {
							validasi_js("Numerator - Denumerator", "Tidak Berhasil Disimpan");
						}
					}
					btn.disabled = false;
				},
			});
		}

	})
});
