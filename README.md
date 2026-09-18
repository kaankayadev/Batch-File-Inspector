# Batch File Inspector

Batch öğrenme sürecimde yaptığım bir Inspector projesi.

Bu script, seçilen bir `.bat` dosyasını analiz ederek dosyadaki bazı temel Batch komutlarının ve satırların kullanım sayılarını gösterir.

## Features

- Toplam satır sayısını gösterir
- Boş satırları sayar
- REM satırlarını sayar
- IF kullanımını sayar
- FOR kullanımını sayar
- SET kullanımını sayar
- GOTO kullanımını sayar
- CHOICE kullanımını sayar
- FINDSTR kullanımını sayar
- Analizden sonra tekrar dosya seçmeye izin verir

## Used Batch Commands / Topics

- `set /p`
- `if exist`
- `for /f`
- `usebackq`
- `delims=`
- `findstr`
- `if /i`
- `set /a`
- `setlocal enabledelayedexpansion`
- `choice`
- `errorlevel`
- `goto`

## How It Works

Öncelikle analiz edilecek `.bat` dosyasının yolu alınır.

Dosyanın mevcut olup olmadığı kontrol edildikten sonra dosya satır satır okunur. Script, satırlar içerisinde belirlenen Batch komutlarını kontrol eder ve her birinin kaç kere kullanıldığını hesaplar.

İşlem sonunda sonuçlar ekrana yazdırılır.

## Purpose

Bu projeyi Batch scriptlerinde öğrendiğim komutları ve özellikle dosya okuma, sayaç kullanımı, `findstr`, `errorlevel` ve delayed expansion gibi konuları pratik etmek için yaptım.

## Note

Bu proje öğrenme amaçlı geliştirilmiştir.