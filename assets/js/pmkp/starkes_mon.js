$(document).ready(function () {
    $("#tampilkan").click(function () {
		var tanggal_form = $("#waktu_monitoring").val();
		var unit_form 	 = $("#unit_monitoring").val();
		if (unit_form == " ") {
			swal("Unit Tidak Boleh Kosong");
		} else {
			$.ajax({
				type: "POST",
				data: "tanggal="+tanggal_form+"&unit="+unit_form+"",
				url: baseURL + "starkes_monitoring/unit",
				success: function (starkes) {
					$("#starkes_monitoring_tabel").html(starkes);
				},
			});
		}
	});
});