.class public Lcom/tencent/bugly/crashreport/common/info/b;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 43
    const/16 v0, 0x12

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "/su"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "/su/bin/su"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "/sbin/su"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "/data/local/xbin/su"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "/data/local/bin/su"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "/data/local/su"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v2, "/system/xbin/su"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const-string v2, "/system/bin/su"

    const/4 v10, 0x7

    aput-object v2, v1, v10

    const-string v2, "/system/sd/xbin/su"

    const/16 v11, 0x8

    aput-object v2, v1, v11

    const-string v2, "/system/bin/failsafe/su"

    const/16 v12, 0x9

    aput-object v2, v1, v12

    const-string v2, "/system/bin/cufsdosck"

    const/16 v13, 0xa

    aput-object v2, v1, v13

    const-string v2, "/system/xbin/cufsdosck"

    const/16 v14, 0xb

    aput-object v2, v1, v14

    const-string v2, "/system/bin/cufsmgr"

    const/16 v15, 0xc

    aput-object v2, v1, v15

    const-string v2, "/system/xbin/cufsmgr"

    const/16 v16, 0xd

    aput-object v2, v1, v16

    const-string v2, "/system/bin/cufaevdd"

    const/16 v17, 0xe

    aput-object v2, v1, v17

    const-string v2, "/system/xbin/cufaevdd"

    const/16 v18, 0xf

    aput-object v2, v1, v18

    const-string v2, "/system/bin/conbb"

    const/16 v19, 0x10

    aput-object v2, v1, v19

    const-string v2, "/system/xbin/conbb"

    const/16 v20, 0x11

    aput-object v2, v1, v20

    sput-object v1, Lcom/tencent/bugly/crashreport/common/info/b;->a:[Ljava/lang/String;

    .line 64
    const/16 v1, 0x34

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.ami.duosupdater.ui"

    aput-object v2, v1, v3

    const-string v2, "com.ami.launchmetro"

    aput-object v2, v1, v4

    const-string v2, "com.ami.syncduosservices"

    aput-object v2, v1, v5

    const-string v2, "com.bluestacks.home"

    aput-object v2, v1, v6

    const-string v2, "com.bluestacks.windowsfilemanager"

    aput-object v2, v1, v7

    const-string v2, "com.bluestacks.settings"

    aput-object v2, v1, v8

    const-string v2, "com.bluestacks.bluestackslocationprovider"

    aput-object v2, v1, v9

    const-string v2, "com.bluestacks.appsettings"

    aput-object v2, v1, v10

    const-string v2, "com.bluestacks.bstfolder"

    aput-object v2, v1, v11

    const-string v2, "com.bluestacks.BstCommandProcessor"

    aput-object v2, v1, v12

    const-string v2, "com.bluestacks.s2p"

    aput-object v2, v1, v13

    const-string v2, "com.bluestacks.setup"

    aput-object v2, v1, v14

    const-string v2, "com.kaopu001.tiantianserver"

    aput-object v2, v1, v15

    const-string v2, "com.kpzs.helpercenter"

    aput-object v2, v1, v16

    const-string v2, "com.kaopu001.tiantianime"

    aput-object v2, v1, v17

    const-string v2, "com.android.development_settings"

    aput-object v2, v1, v18

    const-string v2, "com.android.development"

    aput-object v2, v1, v19

    const-string v2, "com.android.customlocale2"

    aput-object v2, v1, v20

    const-string v2, "com.genymotion.superuser"

    aput-object v2, v1, v0

    const/16 v0, 0x13

    const-string v2, "com.genymotion.clipboardproxy"

    aput-object v2, v1, v0

    const/16 v0, 0x14

    const-string v2, "com.uc.xxzs.keyboard"

    aput-object v2, v1, v0

    const/16 v0, 0x15

    const-string v2, "com.uc.xxzs"

    aput-object v2, v1, v0

    const/16 v0, 0x16

    const-string v2, "com.blue.huang17.agent"

    aput-object v2, v1, v0

    const/16 v0, 0x17

    const-string v2, "com.blue.huang17.launcher"

    aput-object v2, v1, v0

    const/16 v0, 0x18

    const-string v2, "com.blue.huang17.ime"

    aput-object v2, v1, v0

    const/16 v0, 0x19

    const-string v2, "com.microvirt.guide"

    aput-object v2, v1, v0

    const/16 v0, 0x1a

    const-string v2, "com.microvirt.market"

    aput-object v2, v1, v0

    const/16 v0, 0x1b

    const-string v2, "com.microvirt.memuime"

    aput-object v2, v1, v0

    const/16 v0, 0x1c

    const-string v2, "cn.itools.vm.launcher"

    aput-object v2, v1, v0

    const/16 v0, 0x1d

    const-string v2, "cn.itools.vm.proxy"

    aput-object v2, v1, v0

    const/16 v0, 0x1e

    const-string v2, "cn.itools.vm.softkeyboard"

    aput-object v2, v1, v0

    const/16 v0, 0x1f

    const-string v2, "cn.itools.avdmarket"

    aput-object v2, v1, v0

    const/16 v0, 0x20

    const-string v2, "com.syd.IME"

    aput-object v2, v1, v0

    const/16 v0, 0x21

    const-string v2, "com.bignox.app.store.hd"

    aput-object v2, v1, v0

    const/16 v0, 0x22

    const-string v2, "com.bignox.launcher"

    aput-object v2, v1, v0

    const/16 v0, 0x23

    const-string v2, "com.bignox.app.phone"

    aput-object v2, v1, v0

    const/16 v0, 0x24

    const-string v2, "com.bignox.app.noxservice"

    aput-object v2, v1, v0

    const/16 v0, 0x25

    const-string v2, "com.android.noxpush"

    aput-object v2, v1, v0

    const/16 v0, 0x26

    const-string v2, "com.haimawan.push"

    aput-object v2, v1, v0

    const/16 v0, 0x27

    const-string v2, "me.haima.helpcenter"

    aput-object v2, v1, v0

    const-string v0, "com.windroy.launcher"

    const/16 v2, 0x28

    aput-object v0, v1, v2

    const/16 v2, 0x29

    const-string v12, "com.windroy.superuser"

    aput-object v12, v1, v2

    const/16 v2, 0x2a

    aput-object v0, v1, v2

    const/16 v0, 0x2b

    const-string v2, "com.windroy.ime"

    aput-object v2, v1, v0

    const/16 v0, 0x2c

    const-string v2, "com.android.flysilkworm"

    aput-object v2, v1, v0

    const/16 v0, 0x2d

    const-string v2, "com.android.emu.inputservice"

    aput-object v2, v1, v0

    const/16 v0, 0x2e

    const-string v2, "com.tiantian.ime"

    aput-object v2, v1, v0

    const/16 v0, 0x2f

    const-string v2, "com.microvirt.launcher"

    aput-object v2, v1, v0

    const/16 v0, 0x30

    const-string v2, "me.le8.androidassist"

    aput-object v2, v1, v0

    const/16 v0, 0x31

    const-string v2, "com.vphone.helper"

    aput-object v2, v1, v0

    const/16 v0, 0x32

    const-string v2, "com.vphone.launcher"

    aput-object v2, v1, v0

    const/16 v0, 0x33

    const-string v2, "com.duoyi.giftcenter.giftcenter"

    aput-object v2, v1, v0

    sput-object v1, Lcom/tencent/bugly/crashreport/common/info/b;->b:[Ljava/lang/String;

    .line 119
    new-array v0, v11, [Ljava/lang/String;

    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    aput-object v1, v0, v3

    const-string v1, "/system/lib/libc_malloc_debug_qemu.so"

    aput-object v1, v0, v4

    const-string v1, "/sys/qemu_trace"

    aput-object v1, v0, v5

    const-string v1, "/system/bin/qemu-props"

    aput-object v1, v0, v6

    const-string v1, "/dev/socket/qemud"

    aput-object v1, v0, v7

    const-string v1, "/dev/qemu_pipe"

    aput-object v1, v0, v8

    const-string v1, "/dev/socket/baseband_genyd"

    aput-object v1, v0, v9

    const-string v1, "/dev/socket/genyd"

    aput-object v1, v0, v10

    sput-object v0, Lcom/tencent/bugly/crashreport/common/info/b;->c:[Ljava/lang/String;

    .line 845
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/crashreport/common/info/b;->d:Ljava/lang/String;

    .line 846
    sput-object v0, Lcom/tencent/bugly/crashreport/common/info/b;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .line 137
    :try_start_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 138
    :catchall_0
    move-exception v0

    .line 139
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 143
    :cond_0
    const-string v0, "fail"

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 209
    nop

    .line 210
    const-string v0, "fail"

    if-nez p0, :cond_0

    .line 211
    return-object v0

    .line 215
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "android_id"

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    if-nez v0, :cond_1

    .line 217
    const-string p0, "null"

    goto :goto_0

    .line 219
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    goto :goto_0

    .line 221
    :catchall_0
    move-exception p0

    .line 222
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 223
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v1, "Failed to get Android ID."

    invoke-static {v1, p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 226
    :cond_2
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static a(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 4

    .line 319
    nop

    .line 320
    const/4 v0, 0x0

    const-string v1, "fail"

    if-eqz p1, :cond_4

    .line 321
    :try_start_0
    const-string p1, "ro.product.cpu.abilist"

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 322
    invoke-static {p1}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 323
    :cond_0
    const-string p1, "ro.product.cpu.abi"

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 325
    :cond_1
    invoke-static {p1}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    .line 328
    :cond_2
    const-class p0, Lcom/tencent/bugly/crashreport/common/info/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ABI list: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 329
    const-string p0, ","

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object v0, p0, v2

    goto :goto_1

    .line 326
    :cond_3
    :goto_0
    goto :goto_1

    .line 336
    :catchall_0
    move-exception p0

    goto :goto_2

    .line 332
    :cond_4
    :goto_1
    if-nez v0, :cond_5

    .line 333
    const-string p0, "os.arch"

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 335
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 337
    :goto_2
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 338
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 341
    :cond_6
    return-object v1
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .line 153
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 154
    :catchall_0
    move-exception v0

    .line 155
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 159
    :cond_0
    const-string v0, "fail"

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 259
    nop

    .line 260
    const-string v0, "fail"

    if-nez p0, :cond_0

    .line 261
    return-object v0

    .line 264
    :cond_0
    :try_start_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 266
    if-eqz p0, :cond_1

    .line 267
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 268
    if-nez v0, :cond_1

    .line 269
    const-string v0, "null"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    :cond_1
    goto :goto_0

    .line 272
    :catchall_0
    move-exception p0

    .line 273
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v1, "Failed to get SIM serial number."

    invoke-static {v1, p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 275
    :goto_0
    return-object v0
.end method

.method public static c()I
    .locals 2

    .line 169
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 170
    :catchall_0
    move-exception v0

    .line 171
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 175
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 585
    const-string v0, "unknown"

    .line 587
    :try_start_0
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 589
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 590
    if-nez v1, :cond_0

    .line 591
    const/4 p0, 0x0

    return-object p0

    .line 593
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 594
    const-string v0, "WIFI"

    goto/16 :goto_1

    .line 595
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_2

    .line 596
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 598
    if-eqz p0, :cond_2

    .line 599
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    .line 600
    packed-switch p0, :pswitch_data_0

    .line 647
    new-instance v1, Ljava/lang/StringBuilder;

    goto :goto_0

    .line 644
    :pswitch_0
    const-string v0, "HSPA+"

    .line 645
    goto :goto_1

    .line 641
    :pswitch_1
    const-string v0, "eHRPD"

    .line 642
    goto :goto_1

    .line 638
    :pswitch_2
    const-string v0, "LTE"

    .line 639
    goto :goto_1

    .line 635
    :pswitch_3
    const-string v0, "EVDO_B"

    .line 636
    goto :goto_1

    .line 632
    :pswitch_4
    const-string v0, "iDen"

    .line 633
    goto :goto_1

    .line 617
    :pswitch_5
    const-string v0, "HSPA"

    .line 618
    goto :goto_1

    .line 614
    :pswitch_6
    const-string v0, "HSUPA"

    .line 615
    goto :goto_1

    .line 611
    :pswitch_7
    const-string v0, "HSDPA"

    .line 612
    goto :goto_1

    .line 629
    :pswitch_8
    const-string v0, "1xRTT"

    .line 630
    goto :goto_1

    .line 626
    :pswitch_9
    const-string v0, "EVDO_A"

    .line 627
    goto :goto_1

    .line 623
    :pswitch_a
    const-string v0, "EVDO_0"

    .line 624
    goto :goto_1

    .line 620
    :pswitch_b
    const-string v0, "CDMA"

    .line 621
    goto :goto_1

    .line 608
    :pswitch_c
    const-string v0, "UMTS"

    .line 609
    goto :goto_1

    .line 605
    :pswitch_d
    const-string v0, "EDGE"

    .line 606
    goto :goto_1

    .line 602
    :pswitch_e
    const-string v0, "GPRS"

    .line 603
    goto :goto_1

    .line 647
    :goto_0
    const-string v2, "MOBILE("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    .line 655
    :cond_2
    goto :goto_1

    .line 651
    :catch_0
    move-exception p0

    .line 652
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 653
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 656
    :cond_3
    :goto_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .line 187
    const-string v0, "null"

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 665
    const-string v0, "ro.miui.ui.version.name"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 666
    invoke-static {v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "fail"

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 667
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "XiaoMi/MIUI/"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 671
    :cond_0
    const-string v0, "ro.build.version.emui"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 672
    invoke-static {v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 673
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "HuaWei/EMOTION/"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 677
    :cond_1
    const-string v0, "ro.lenovo.series"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 678
    invoke-static {v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 679
    const-string v0, "ro.build.version.incremental"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Lenovo/VIBE/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 684
    :cond_2
    const-string v0, "ro.build.nubia.rom.name"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 685
    invoke-static {v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 686
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Zte/NUBIA/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ro.build.nubia.rom.code"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 691
    :cond_3
    const-string v0, "ro.meizu.product.model"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 692
    invoke-static {v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "ro.build.display.id"

    if-nez v1, :cond_4

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Meizu/FLYME/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v3}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 697
    :cond_4
    const-string v0, "ro.build.version.opporom"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 698
    invoke-static {v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 699
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Oppo/COLOROS/"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 703
    :cond_5
    const-string v0, "ro.vivo.os.build.display.id"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 704
    invoke-static {v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 705
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "vivo/FUNTOUCH/"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 709
    :cond_6
    const-string v0, "ro.aa.romver"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 710
    invoke-static {v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    const-string v4, "/"

    if-nez v1, :cond_7

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 711
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "htc/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ro.build.description"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 715
    :cond_7
    const-string v0, "ro.lewa.version"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 716
    invoke-static {v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 717
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tcl/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v3}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 721
    :cond_8
    const-string v0, "ro.gn.gnromvernumber"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 722
    invoke-static {v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 723
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "amigo/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v3}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 727
    :cond_9
    const-string v0, "ro.build.tyd.kbstyle_version"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 728
    invoke-static {v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 729
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "dido/"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 733
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ro.build.fingerprint"

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ro.build.rom.id"

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .line 199
    const-string v0, "null"

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 742
    const-string v0, "ro.board.platform"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    .line 249
    const-string v0, "null"

    return-object v0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 820
    const-string v1, "ro.genymotion.version"

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 821
    const-string v3, "\n"

    const-string v4, "|"

    if-eqz v2, :cond_0

    .line 822
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    :cond_0
    const-string v1, "androVM.vbox_dpi"

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 829
    if-eqz v2, :cond_1

    .line 830
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    :cond_1
    const-string v1, "qemu.sf.fake_camera"

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 837
    if-eqz p0, :cond_2

    .line 838
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g()Ljava/lang/String;
    .locals 2

    .line 285
    :try_start_0
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 286
    :catchall_0
    move-exception v0

    .line 287
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Failed to get hardware serial number."

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 288
    const-string v0, "fail"

    return-object v0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 857
    sget-object v1, Lcom/tencent/bugly/crashreport/common/info/b;->d:Ljava/lang/String;

    const-string v2, "ro.secure"

    if-nez v1, :cond_0

    .line 858
    invoke-static {p0, v2}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/bugly/crashreport/common/info/b;->d:Ljava/lang/String;

    .line 860
    :cond_0
    sget-object v1, Lcom/tencent/bugly/crashreport/common/info/b;->d:Ljava/lang/String;

    const-string v3, "\n"

    const-string v4, "|"

    if-eqz v1, :cond_1

    .line 861
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    sget-object v1, Lcom/tencent/bugly/crashreport/common/info/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    :cond_1
    sget-object v1, Lcom/tencent/bugly/crashreport/common/info/b;->e:Ljava/lang/String;

    const-string v2, "ro.debuggable"

    if-nez v1, :cond_2

    .line 868
    invoke-static {p0, v2}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tencent/bugly/crashreport/common/info/b;->e:Ljava/lang/String;

    .line 870
    :cond_2
    sget-object p0, Lcom/tencent/bugly/crashreport/common/info/b;->e:Ljava/lang/String;

    if-eqz p0, :cond_3

    .line 871
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    sget-object p0, Lcom/tencent/bugly/crashreport/common/info/b;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    :cond_3
    const/4 p0, 0x0

    .line 879
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/proc/self/status"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 880
    nop

    .line 881
    :cond_4
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 882
    const-string v2, "TracerPid:"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 883
    :cond_5
    if-eqz p0, :cond_6

    .line 887
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 888
    const-string v2, "tracer_pid"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 896
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 901
    goto :goto_0

    .line 899
    :catch_0
    move-exception v0

    .line 900
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    .line 901
    :goto_0
    return-object p0

    .line 893
    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, p0

    move-object p0, v5

    .line 894
    :goto_1
    :try_start_3
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 896
    if-eqz v1, :cond_7

    .line 898
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 901
    :goto_2
    goto :goto_3

    .line 899
    :catch_1
    move-exception p0

    .line 900
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    goto :goto_2

    .line 904
    :cond_7
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 896
    :catchall_2
    move-exception p0

    if-eqz v1, :cond_8

    .line 898
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 901
    goto :goto_4

    .line 899
    :catch_2
    move-exception v0

    .line 900
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    .line 901
    :cond_8
    :goto_4
    goto :goto_6

    :goto_5
    throw p0

    :goto_6
    goto :goto_5
.end method

.method public static h()J
    .locals 4

    .line 349
    nop

    .line 351
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 352
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 353
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 354
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, v0

    .line 355
    mul-long v0, v0, v2

    .line 360
    goto :goto_0

    .line 356
    :catchall_0
    move-exception v0

    .line 357
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 358
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 361
    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 976
    const-string v1, "gsm.sim.state"

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 977
    const-string v3, "|"

    if-eqz v2, :cond_0

    .line 978
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    :cond_0
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    const-string v1, "gsm.sim.state2"

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 985
    if-eqz p0, :cond_1

    .line 986
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i()J
    .locals 4

    .line 369
    nop

    .line 371
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 372
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 374
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, v0

    .line 375
    mul-long v0, v0, v2

    .line 380
    goto :goto_0

    .line 376
    :catchall_0
    move-exception v0

    .line 377
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 378
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 381
    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public static i(Landroid/content/Context;)Z
    .locals 4

    .line 1030
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/b;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_5

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/tencent/bugly/crashreport/common/info/b;->c:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/tencent/bugly/crashreport/common/info/b;->c:[Ljava/lang/String;

    if-nez v1, :cond_0

    aget-object v3, v3, v1

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_0
    aget-object v3, v3, v1

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p0, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    return v0

    :cond_5
    :goto_3
    const/4 p0, 0x1

    return p0
.end method

.method public static j()J
    .locals 6

    .line 388
    const-string v0, "/proc/meminfo"

    .line 389
    nop

    .line 390
    nop

    .line 392
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 393
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v3, 0x800

    invoke-direct {v0, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 394
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 395
    if-nez v1, :cond_2

    .line 396
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 416
    goto :goto_0

    .line 412
    :catch_0
    move-exception v0

    .line 413
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 414
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 418
    :cond_0
    :goto_0
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 425
    goto :goto_1

    .line 421
    :catch_1
    move-exception v0

    .line 422
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 423
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 425
    :cond_1
    :goto_1
    const-wide/16 v0, -0x1

    return-wide v0

    .line 398
    :cond_2
    :try_start_5
    const-string v3, ":\\s+"

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 399
    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 400
    const-string v3, "kb"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 401
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/16 v1, 0xa

    shl-long/2addr v3, v1

    .line 402
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 416
    goto :goto_2

    .line 412
    :catch_2
    move-exception v0

    .line 413
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 414
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 418
    :cond_3
    :goto_2
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 425
    goto :goto_3

    .line 421
    :catch_3
    move-exception v0

    .line 422
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 423
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 425
    :cond_4
    :goto_3
    return-wide v3

    .line 403
    :catchall_0
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    .line 404
    :goto_4
    :try_start_8
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 405
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 409
    :cond_5
    if-eqz v0, :cond_6

    .line 411
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 416
    goto :goto_5

    .line 412
    :catch_4
    move-exception v0

    .line 413
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 414
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 418
    :cond_6
    :goto_5
    if-eqz v2, :cond_8

    .line 420
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 425
    :cond_7
    :goto_6
    goto :goto_7

    .line 421
    :catch_5
    move-exception v0

    .line 422
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 423
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 429
    :cond_8
    :goto_7
    const-wide/16 v0, -0x2

    return-wide v0

    .line 409
    :catchall_3
    move-exception v1

    if-eqz v0, :cond_9

    .line 411
    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 416
    goto :goto_8

    .line 412
    :catch_6
    move-exception v0

    .line 413
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 414
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 418
    :cond_9
    :goto_8
    if-eqz v2, :cond_a

    .line 420
    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 425
    goto :goto_9

    .line 421
    :catch_7
    move-exception v0

    .line 422
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 423
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 425
    :cond_a
    :goto_9
    goto :goto_b

    :goto_a
    throw v1

    :goto_b
    goto :goto_a
.end method

.method public static j(Landroid/content/Context;)Z
    .locals 1

    .line 1083
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/b;->l(Landroid/content/Context;)I

    move-result p0

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->v()I

    move-result v0

    or-int/2addr p0, v0

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->w()I

    move-result v0

    or-int/2addr p0, v0

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->u()I

    move-result v0

    or-int/2addr p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static k()J
    .locals 14

    .line 436
    const-string v0, ""

    const-string v1, "kb"

    const-string v2, ":\\s+"

    const-string v3, "/proc/meminfo"

    .line 437
    nop

    .line 438
    nop

    .line 440
    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 441
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    const/16 v6, 0x800

    invoke-direct {v3, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 442
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 443
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 444
    const-wide/16 v6, -0x1

    if-nez v4, :cond_2

    .line 445
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 485
    goto :goto_0

    .line 481
    :catch_0
    move-exception v0

    .line 482
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 483
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 487
    :cond_0
    :goto_0
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 494
    goto :goto_1

    .line 490
    :catch_1
    move-exception v0

    .line 491
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 492
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 494
    :cond_1
    :goto_1
    return-wide v6

    .line 447
    :cond_2
    const/4 v8, 0x2

    :try_start_5
    invoke-virtual {v4, v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 448
    const/4 v9, 0x1

    aget-object v4, v4, v9

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 449
    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 450
    const-wide/16 v10, 0x0

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    const/16 v4, 0xa

    shl-long/2addr v12, v4

    add-long/2addr v12, v10

    .line 453
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 454
    if-nez v10, :cond_5

    .line 455
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 485
    goto :goto_2

    .line 481
    :catch_2
    move-exception v0

    .line 482
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 483
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 487
    :cond_3
    :goto_2
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 494
    goto :goto_3

    .line 490
    :catch_3
    move-exception v0

    .line 491
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 492
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 494
    :cond_4
    :goto_3
    return-wide v6

    .line 457
    :cond_5
    :try_start_8
    invoke-virtual {v10, v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    .line 458
    aget-object v10, v10, v9

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 459
    invoke-virtual {v10, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 460
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    shl-long/2addr v10, v4

    add-long/2addr v12, v10

    .line 462
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 463
    if-nez v10, :cond_8

    .line 464
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 485
    goto :goto_4

    .line 481
    :catch_4
    move-exception v0

    .line 482
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 483
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 487
    :cond_6
    :goto_4
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 494
    goto :goto_5

    .line 490
    :catch_5
    move-exception v0

    .line 491
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 492
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 494
    :cond_7
    :goto_5
    return-wide v6

    .line 466
    :cond_8
    :try_start_b
    invoke-virtual {v10, v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 467
    aget-object v2, v2, v9

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 468
    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 469
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    shl-long/2addr v0, v4

    add-long/2addr v12, v0

    .line 471
    :try_start_c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 485
    goto :goto_6

    .line 481
    :catch_6
    move-exception v0

    .line 482
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 483
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 487
    :cond_9
    :goto_6
    :try_start_d
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 494
    goto :goto_7

    .line 490
    :catch_7
    move-exception v0

    .line 491
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 492
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 494
    :cond_a
    :goto_7
    return-wide v12

    .line 472
    :catchall_0
    move-exception v0

    move-object v4, v3

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v5, v4

    .line 473
    :goto_8
    :try_start_e
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 474
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 478
    :cond_b
    if-eqz v4, :cond_c

    .line 480
    :try_start_f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    .line 485
    goto :goto_9

    .line 481
    :catch_8
    move-exception v0

    .line 482
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 483
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 487
    :cond_c
    :goto_9
    if-eqz v5, :cond_e

    .line 489
    :try_start_10
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    .line 494
    :cond_d
    :goto_a
    goto :goto_b

    .line 490
    :catch_9
    move-exception v0

    .line 491
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 492
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 498
    :cond_e
    :goto_b
    const-wide/16 v0, -0x2

    return-wide v0

    .line 478
    :catchall_3
    move-exception v0

    if-eqz v4, :cond_f

    .line 480
    :try_start_11
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a

    .line 485
    goto :goto_c

    .line 481
    :catch_a
    move-exception v1

    .line 482
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 483
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 487
    :cond_f
    :goto_c
    if-eqz v5, :cond_10

    .line 489
    :try_start_12
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b

    .line 494
    goto :goto_d

    .line 490
    :catch_b
    move-exception v1

    .line 491
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 492
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 494
    :cond_10
    :goto_d
    goto :goto_f

    :goto_e
    throw v0

    :goto_f
    goto :goto_e
.end method

.method private static k(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 1040
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1041
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1042
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/tencent/bugly/crashreport/common/info/b;->b:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 1044
    :try_start_0
    aget-object v2, v2, v1

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 1045
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1048
    goto :goto_1

    .line 1046
    :catch_0
    move-exception v2

    .line 1042
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1050
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static l(Landroid/content/Context;)I
    .locals 2

    .line 1114
    nop

    .line 1115
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1117
    :try_start_0
    const-string v0, "de.robv.android.xposed.installer"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1118
    const/4 v0, 0x1

    .line 1121
    goto :goto_0

    .line 1119
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    .line 1123
    :goto_0
    :try_start_1
    const-string v1, "com.saurik.substrate"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1124
    or-int/lit8 v0, v0, 0x2

    .line 1127
    goto :goto_1

    .line 1125
    :catch_1
    move-exception p0

    .line 1129
    :goto_1
    return v0
.end method

.method public static l()J
    .locals 4

    .line 508
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 509
    const-wide/16 v0, 0x0

    return-wide v0

    .line 513
    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 514
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    .line 515
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v2, v0

    .line 516
    int-to-long v0, v1

    mul-long v2, v2, v0

    return-wide v2

    .line 517
    :catchall_0
    move-exception v0

    .line 518
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 519
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 522
    :cond_1
    const-wide/16 v0, -0x2

    return-wide v0
.end method

.method public static m()J
    .locals 4

    .line 532
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 533
    const-wide/16 v0, 0x0

    return-wide v0

    .line 537
    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 538
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    .line 539
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v2, v0

    .line 540
    int-to-long v0, v1

    mul-long v2, v2, v0

    return-wide v2

    .line 541
    :catchall_0
    move-exception v0

    .line 542
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 543
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 546
    :cond_1
    const-wide/16 v0, -0x2

    return-wide v0
.end method

.method public static n()Ljava/lang/String;
    .locals 2

    .line 553
    nop

    .line 555
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    goto :goto_0

    .line 556
    :catchall_0
    move-exception v0

    .line 557
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 558
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 561
    :cond_0
    const-string v0, "fail"

    :goto_0
    return-object v0
.end method

.method public static o()Ljava/lang/String;
    .locals 2

    .line 568
    nop

    .line 570
    :try_start_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    goto :goto_0

    .line 571
    :catchall_0
    move-exception v0

    .line 572
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 573
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 576
    :cond_0
    const-string v0, "fail"

    :goto_0
    return-object v0
.end method

.method public static p()Z
    .locals 7

    .line 751
    nop

    .line 752
    sget-object v0, Lcom/tencent/bugly/crashreport/common/info/b;->a:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    .line 753
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 754
    nop

    .line 755
    const/4 v0, 0x1

    goto :goto_1

    .line 752
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 758
    :goto_1
    sget-object v1, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const-string v3, "test-keys"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 759
    :goto_2
    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    return v2

    :cond_4
    :goto_3
    return v4
.end method

.method public static q()Ljava/lang/String;
    .locals 8

    .line 768
    const-string v0, "/sys/block/mmcblk0/device/cid"

    const-string v1, "/sys/block/mmcblk0/device/name"

    const-string v2, ","

    const-string v3, "/sys/block/mmcblk0/device/type"

    .line 770
    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 771
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 772
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 773
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 774
    if-eqz v3, :cond_0

    .line 775
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    :cond_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    goto :goto_0

    .line 771
    :cond_1
    move-object v6, v4

    .line 779
    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 781
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 782
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 783
    if-eqz v1, :cond_2

    .line 784
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    :cond_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v6, v3

    goto :goto_1

    .line 797
    :catchall_0
    move-exception v0

    move-object v6, v3

    goto :goto_4

    .line 788
    :cond_3
    :goto_1
    :try_start_3
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 790
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 791
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 792
    if-eqz v0, :cond_4

    .line 793
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 796
    :cond_4
    move-object v6, v1

    goto :goto_2

    .line 797
    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_4

    .line 796
    :cond_5
    :goto_2
    :try_start_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 801
    if-eqz v6, :cond_6

    .line 803
    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 806
    goto :goto_3

    .line 804
    :catch_0
    move-exception v1

    .line 805
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    .line 806
    :cond_6
    :goto_3
    return-object v0

    .line 797
    :catchall_2
    move-exception v0

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v6, v4

    .line 799
    :goto_4
    if-eqz v6, :cond_7

    .line 803
    :try_start_7
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 806
    goto :goto_5

    .line 804
    :catch_1
    move-exception v0

    .line 805
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    .line 806
    :cond_7
    :goto_5
    return-object v4
.end method

.method public static r()Ljava/lang/String;
    .locals 9

    .line 914
    const-string v0, "/sys/class/power_supply/battery/capacity"

    const-string v1, "/sys/class/power_supply/usb/online"

    const-string v2, "\n"

    const-string v3, "/sys/class/power_supply/ac/online"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 915
    nop

    .line 917
    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const-string v7, "|"

    if-eqz v6, :cond_1

    .line 919
    :try_start_1
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 920
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 921
    if-eqz v3, :cond_0

    .line 922
    const-string v5, "ac_online"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    :cond_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v5, v6

    goto :goto_0

    .line 953
    :catchall_0
    move-exception v0

    move-object v5, v6

    goto/16 :goto_3

    .line 928
    :cond_1
    :goto_0
    :try_start_3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 931
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 932
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 933
    if-eqz v1, :cond_2

    .line 934
    const-string v5, "usb_online"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    :cond_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v5, v3

    goto :goto_1

    .line 953
    :catchall_1
    move-exception v0

    move-object v5, v3

    goto :goto_3

    .line 940
    :cond_3
    :goto_1
    :try_start_5
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 943
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 945
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 946
    if-eqz v0, :cond_4

    .line 947
    const-string v2, "battery_capacity"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 948
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 949
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 951
    :cond_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object v5, v1

    goto :goto_2

    .line 953
    :catchall_2
    move-exception v0

    move-object v5, v1

    goto :goto_3

    .line 956
    :cond_5
    :goto_2
    if-eqz v5, :cond_6

    .line 958
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    goto :goto_4

    .line 953
    :catchall_3
    move-exception v0

    .line 956
    :goto_3
    if-eqz v5, :cond_6

    .line 958
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 961
    :goto_4
    goto :goto_5

    .line 959
    :catch_0
    move-exception v0

    .line 960
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    goto :goto_4

    .line 964
    :cond_6
    :goto_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static s()J
    .locals 8

    .line 1000
    nop

    .line 1001
    nop

    .line 1004
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/proc/uptime"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1005
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 1006
    if-eqz v2, :cond_0

    .line 1007
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    .line 1008
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-float v4, v4

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-float/2addr v4, v0

    move v1, v4

    .line 1013
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1018
    :goto_0
    goto :goto_2

    .line 1016
    :catch_0
    move-exception v0

    .line 1017
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 1010
    :catchall_0
    move-exception v2

    move-object v2, v3

    goto :goto_1

    :catchall_1
    move-exception v3

    .line 1011
    :goto_1
    :try_start_3
    const-string v3, "Failed to get boot time of device."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1013
    if-eqz v2, :cond_1

    .line 1015
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 1021
    :cond_1
    :goto_2
    float-to-long v0, v1

    return-wide v0

    .line 1013
    :catchall_2
    move-exception v0

    if-eqz v2, :cond_2

    .line 1015
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1018
    goto :goto_3

    .line 1016
    :catch_1
    move-exception v1

    .line 1017
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    .line 1018
    :cond_2
    :goto_3
    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method private static t()Z
    .locals 2

    .line 299
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 300
    const/4 v0, 0x1

    return v0

    .line 306
    :cond_0
    goto :goto_0

    .line 302
    :catchall_0
    move-exception v0

    .line 303
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 304
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 307
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static u()I
    .locals 5

    .line 1092
    nop

    .line 1094
    const/16 v0, 0x100

    :try_start_0
    const-string v1, "android.app.ActivityManagerNative"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1095
    const-string v2, "getDefault"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1096
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1097
    const/4 v2, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1098
    const-string v2, "$Proxy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 1099
    goto :goto_0

    .line 1098
    :cond_0
    const/4 v0, 0x0

    .line 1103
    :goto_0
    goto :goto_1

    .line 1101
    :catch_0
    move-exception v1

    .line 1102
    nop

    .line 1104
    :goto_1
    return v0
.end method

.method private static v()I
    .locals 9

    .line 1138
    nop

    .line 1140
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "detect hook"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1141
    :catch_0
    move-exception v0

    .line 1142
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 1143
    array-length v1, v0

    .line 1144
    nop

    .line 1145
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1146
    :goto_0
    if-ge v2, v1, :cond_4

    .line 1147
    aget-object v5, v0, v2

    .line 1148
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "de.robv.android.xposed.XposedBridge"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "main"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1150
    or-int/lit8 v3, v3, 0x4

    .line 1152
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "handleHookedMethod"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1154
    or-int/lit8 v3, v3, 0x8

    .line 1156
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.saurik.substrate.MS$2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "invoked"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1158
    or-int/lit8 v3, v3, 0x10

    .line 1160
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.internal.os.ZygoteInit"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1161
    add-int/lit8 v4, v4, 0x1

    .line 1162
    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 1163
    or-int/lit8 v3, v3, 0x20

    .line 1166
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 1167
    goto :goto_0

    .line 1168
    :cond_4
    return v3
.end method

.method private static w()I
    .locals 8

    .line 1178
    nop

    .line 1179
    nop

    .line 1182
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1183
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/proc/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/maps"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v6, "utf-8"

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1186
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1187
    const-string v4, ".so"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, ".jar"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1188
    :cond_1
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1192
    :cond_2
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1193
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1194
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1195
    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "xposed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1196
    or-int/lit8 v0, v0, 0x40

    .line 1198
    :cond_3
    check-cast v2, Ljava/lang/String;

    const-string v4, "com.saurik.substrate"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_4

    .line 1199
    or-int/lit16 v0, v0, 0x80

    .line 1201
    :cond_4
    goto :goto_1

    .line 1209
    :cond_5
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1214
    :goto_2
    goto :goto_6

    .line 1212
    :catch_0
    move-exception v1

    .line 1213
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1206
    :catch_1
    move-exception v1

    goto :goto_3

    .line 1204
    :catch_2
    move-exception v1

    goto :goto_4

    .line 1202
    :catch_3
    move-exception v1

    goto :goto_5

    .line 1209
    :catchall_0
    move-exception v0

    goto :goto_7

    .line 1206
    :catch_4
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    .line 1207
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1209
    if-eqz v3, :cond_6

    .line 1211
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 1204
    :catch_5
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    .line 1205
    :goto_4
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1209
    if-eqz v3, :cond_6

    .line 1211
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    .line 1202
    :catch_6
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    .line 1203
    :goto_5
    :try_start_7
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1209
    if-eqz v3, :cond_6

    .line 1211
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_2

    .line 1217
    :cond_6
    :goto_6
    return v0

    .line 1209
    :catchall_1
    move-exception v0

    move-object v1, v3

    :goto_7
    if-eqz v1, :cond_7

    .line 1211
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 1214
    goto :goto_8

    .line 1212
    :catch_7
    move-exception v1

    .line 1213
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1214
    :cond_7
    :goto_8
    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method
