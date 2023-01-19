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
		var unit = $("#unit").val();
		$.ajax({
			type: "POST",
			url: baseURL + 'numerator/cari_indikator_unit',
			data: "unit=" + unit + "",
			success: function (msgx) {
                $.each(items, function (i, item) {
                    $('#indikator').append($('<option>', { 
                        value: item.value,
                        text : item.text 
                    }));
                });
            },
		});

		$("#load_numerator").html();
	});
});
