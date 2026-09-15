# MERKEZ — Uygulama Portalı

ONIX Sondaj / AKKOYUNLU için bugüne kadar yapılan uygulamaların tek adresten açıldığı portal.

**Canlı adres:** https://onixsondaj.github.io/merkez/

| Uygulama | Nerede çalışır | Kaynak |
|---|---|---|
| CoreLog (karot loglama, RQD) | `apps/corelog/` — bu depoda | `yazılım\rqd` |
| Kuyu Kütüğü Otomasyonu | `apps/kuyu-kutugu/` — bu depoda | `yazılım\kuyu kütüğü` |
| Ada Parsel Sondaj Raporu | `apps/ada-parsel/` — bu depoda (paftalar dahil) | `yazılım\ada parsel` |
| AKKOYUNLU Fiyat Teklifi | https://onixsondaj.github.io/fiyat-teklifi/ | `ONIXSONDAJ/fiyat-teklifi` |
| Depo Takip | https://onixsondaj.github.io/depo-takip-/ | `ONIXSONDAJ/depo-takip-` |
| Fiş Takip Sistemi | https://fis-takip-2697a.web.app/ | `ONIXSONDAJ/Fi-sistem-takip-` |
| Dalgıç Pompa Satış | https://www.dalgicpompasatis.com/ | `yazılım\dalgıç pompa yazılım` |

Kendi deposu olan uygulamalar (fiyat teklifi, depo takip, fiş takip) ve kendi alan adında yayınlanan
pompa sitesi buraya kopyalanmaz; portal onların canlı adresine bağlanır. Böylece kayıtlı veriler ve
tek güncelleme noktası korunur.

## Güncelleme

Bu depodaki kopyaları yenilemek için `guncelle.bat` çalıştırılır (kaynak klasörlerden `apps/` altına
kopyalar), ardından:

```
git add -A
git commit -m "Uygulamalar guncellendi"
git push
```

## Notlar

- **Ada Parsel:** GitHub Pages'ta sunucu olmadığı için parsel sorgusu doğrudan TKGM servisine gider.
  Servis günlük limit uyarısı verirse bilgisayarda `ADA-PARSEL.bat` ile açılır; o sürüm yerel sunucu
  üzerinden aracılık yapar.
- **CoreLog ve Kuyu Kütüğü:** Tamamen çevrimdışı çalışır, veriler tarayıcıda saklanır.
