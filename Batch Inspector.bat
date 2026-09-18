@echo off
chcp 65001 >nul
color 0B
setlocal enabledelayedexpansion 

:main
cls
echo ------------------------
echo      Batch Inspector
echo ------------------------
echo.

set /p "DEST=Dosya yolunu giriniz: "

if not exist "%DEST%" (
    echo.
    echo Girdiğiniz dosya mevcut değil.
    echo Menüye dönülüyor...
    timeout /t 2 >nul
    goto main
)

echo Dosya bulundu işleme devam ediliyor...

set satir=0
set bossatir=0
set if_sayac=0
set for_sayac=0
set goto_sayac=0
set echo_sayac=0
set set_sayac=0
set cls_sayac=0
set timeout_sayac=0
set rem_sayac=0
for /f "usebackq tokens=1* delims=:" %%A in (`findstr /n "^" "%DEST%"`) do (
    if /i "%%B"=="" (
        set /a bossatir+=1
    ) else (
        for %%W in (if for goto echo set cls timeout rem) do (
            echo "%%B" | findstr /i "\<%%W\>" >nul
            if !errorlevel! equ 0 (
                set /a %%W_sayac+=1
            )
        )
    )
    set /a satir+=1
)

echo.
echo Analiz tamamlandı. Sonuçlar yükleniyor...
echo.
echo Toplam satır: %satir%
echo Boş satır sayısı: %bossatir%
echo.
echo ---Rapor Sonuçları---
echo If blokları: %if_sayac%
echo For blokları: %for_sayac%
echo Goto blokları: %goto_sayac%
echo Echo blokları: %echo_sayac%
echo Set blokları: %set_sayac%
echo Cls blokları: %cls_sayac%
echo Timeout blokları: %timeout_sayac%
echo Rem blokları: %rem_sayac%
echo ---------------------
echo.
echo -------------------
echo [1] İşlem tekrarla
echo [2] Çıkış yap.
echo -------------------
choice /c 12 /n /m "Yapmak istediğiniz işlem :"
if errorlevel 2 goto exit
if errorlevel 1 goto main


:exit
cls
echo Çıkış yapılıyor...
timeout /t 2 >nul
exit