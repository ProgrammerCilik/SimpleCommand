@echo off
title Simple Command
color f
echo =================================================
echo = Untuk melihat semua perintah dari project ini =
echo = cukup ketikkan saja "see"                     =
echo =================================================
set /p lihat=Ketikkan :
cls
if %lihat% == see goto help

:help
color a
cls
echo ==============================================================
echo = TEST     -     Melihat kecepatan jaringan di suatu website =     
echo =                Ketikkan TEST lalu enter dan masukkan link  =
echo =                Dari website tersebut!                      =
echo ==============================================================
echo = SEEPWD   -     Melihat password wifi yang sudah pernah     =
echo =                Terconnect dengan perangkat! Ketikkan       =
echo =                SEEPWD lalu enter dan masukkan nama wifi    =
echo ==============================================================
echo = MKFLDR   -     Membuat folder di desktop, Ketikkan MKFLDR  =
echo =                Lalu enter dan masukkan nama folder yang    =
echo =                Ingin dibuat!                               =
echo ==============================================================
echo = DLFLDR   -     Menghapus folder di desktop, ketikkan       =
echo =                DLFLDR lalu enter dan masukkan nama folder  =
echo =                Yang ingin dihapus dari desktop!            =
echo ==============================================================
echo = OPEN     -     Membuka suatu folder/file, aplikasi, link.  =
echo =                Ketikkan OPEN lalu enter. Lalu ketikkan     =
echo =                Nama aplikasi, folder/file, dan link        =
echo ==============================================================

set /p choise=Pilih :
cls
if %choise% == TEST goto a
if %choise% == SEEPWD goto b
if %choise% == MKFLDR goto c
if %choise% == DLFLDR goto d
if %choise% == OPEN goto e

:a
color e
cls
echo ====================================
echo = Masukkan link yang ingin di test =
echo ====================================
echo.
set /p link=Link :
cls
ping %link%
echo ======================================================================
echo = Kembali ke menu? (y)                                               =
echo ======================================================================
set /p y=
if %y% == y goto help

:b
color e
cls 
echo =========================
echo = Masukkan nama wi-fi : =
echo =========================
echo.
set /p net=Wifi :
cls
netsh wlan show profiles
netsh wlan show profiles name=%name%
color e
cls
netsh wlan show profiles %net% key=clear
echo ======================================================================
echo = Lihat di bagian "Key Content" ! itu adalah password wifi-nya!      =
echo ======================================================================
echo = Kembali ke menu? (y)                                               =
echo ======================================================================
set /p y2=
cls
if %y2% == y goto help

:c
color e
cls
echo ==========================
echo = Masukkan nama folder : =
echo ==========================
echo.
set /p folder=Nama folder :
cls
cd %userprofile%\desktop
mkdir %folder%
cls
echo =======================================
echo = Sukses membuat folder! Kembali? (y) =
echo =======================================
set /p y3=
cls
if %y3% == y goto help

:d
color c
cls
cd %userprofile%\desktop
dir
echo ======================================================================
echo = Pilih folder yang kakak ingin hapus!                               = 
echo ======================================================================
set /p lk=Pilih :
cd %userprofile%\desktop
rmdir %lk%
cls
echo ============================
echo = Proses telah selesai (y) =
echo ============================
set /p qw=
cls
if %qw% == y goto help

:e
color e
cls
echo ===================================
echo = Pilih apa yang mau kakak buka : =
echo ===================================
echo a) Aplikasi
echo b) Folder/file
echo c) Link
echo ===================================
echo.
set /p pilih=Pilih :
cls
if %pilih% == a goto app
if %pilih% == b goto data
if %pilih% == c goto link

:app
color e
cls
echo ========================
echo = Tulis nama app-nya : =
echo ========================
set /p app=App :
start %app%
goto back

:data
color e
cls
echo ================================
echo = Tulis nama folder/file-nya : =
echo ========================================================
echo = Ingat! jika ingin membuka folder/file, harus ditulis =
echo = "File Location" -nya dulu! Contoh :                  =
echo = C:\Users\UserProfile\Tempatnya\NamaFolder\NamaFile   =
echo ========================================================
set /p ff=Folder/File :
start %ff%
goto back

:link
color e
cls
echo =========================================
echo = Tulis nama link dari sebuah website : =
echo =========================================
set /p link=Link :
start %link%
goto back

:back
color b
cls
echo ================
echo = Kembali? (y) =
echo ================
set /p bn=
cls
if %bn% == y goto help