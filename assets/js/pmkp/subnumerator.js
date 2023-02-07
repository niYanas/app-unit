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
			url: baseURL + 'subnumerator/cari_indikator_unit',
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

    $("#indikator").change(function () {
		$('#deskripsi').empty();
		var indikator = $("#indikator").val();
		$.ajax({
			type: "POST",
			url: baseURL + 'subnumerator/cari_deskripsi',
			data: "indikator=" + indikator + "",
			dataType: "json",
			success: function (deskripsi) {
				$.each(deskripsi, function(i, item) {
					$("#deskripsi").append($('<option>', {
						value : item.idnum,
						text : item.jenis +' - '+item.deskripsi,
					}));
				});
            },
		});
	});
    
	$("#add_subnumerator").click(function () {
		var btn = document.getElementById("add_subnumerator");
		btn.disabled = true;

		var unit 				= $("#unit").val();
		var indikator 			= $("#indikator").val();
		var deskripsi 			= $("#deskripsi").val();
		var subdeskripsi 		= $("#subdeskripsi").val();
		var nilai 				= $("#nilai").val();	
		var operator 			= $("#operator").val();	
		var status 				= $("#status").val();
		var id 					= $("#id").val();

		if (unit ==" " || indikator == " " || deskripsi=="" || subdeskripsi=="" || nilai=="" || operator==""){
			validasi_js("Form","Tidak Boleh Kosong");
			btn.disabled = false;
		} else {
			if (status == "add") {
				var tujuan = baseURL + "subnumerator/add_action";
			} else {
				var tujuan = baseURL + "subnumerator/update_action";
			}

			$.ajax({
				type: "POST",
				url: tujuan,
				data: "id=" + id + "&unit=" + unit + "&indikator=" + indikator +
				"&deskripsi=" + deskripsi + "&subdeskripsi=" + subdeskripsi + "&nilai=" + nilai + "&operator=" + operator +"",
				success: function (msgx) {
					if (status == "add") {
						if (msgx == "1") {
							validasi_js("Sub Num-Denum", "Berhasil Disimpan");
							$("#subdeskripsi").val('');
							$("#nilai").val('');
						} else {
							validasi_js("Sub Num-Denum", "Tidak Berhasil Disimpan");
						}
					} else {
						if (msgx == "1") {
							validasi_js("Sub Num-Denum", "Berhasil Disimpan");
						} else {
							validasi_js("Sub Num-Denum", "Tidak Berhasil Disimpan");
						}
					}
					btn.disabled = false;
				},
			});
		}
	})
});