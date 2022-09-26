const tanggalTujuan = new Date('Mar 8, 2022 22:00:00').getTime();

const hitungMundur = setInterval(function () {
    const sekarang = new Date().getTime();
    const selisih = tanggalTujuan - sekarang;

    const hari = Math.floor(selisih / (1000 * 60 * 60 * 24));

    const jam = Math.floor(selisih % (1000 * 60 * 60 * 24) / (1000 * 60 * 60));

    const menit = Math.floor(selisih % (1000 * 60 * 60) / (1000 * 60));

    const detik = Math.floor(selisih % (1000 * 60) / 1000);

    const text = document.getElementById('teks');
    text.innerHTML = 'Waktu bayar : ' + hari + ' hari ' + jam + ' jam ' + menit + ' menit ' + detik + ' detik lagi ';

    if (selisih == 0) {
        clearInterval(hitungMundur);
        text.innerHTML = ' Waktu Habis!';
    }

}, 1000);



