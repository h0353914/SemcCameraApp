.class public Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;
.super Ljava/lang/Object;
.source "ResolutionOptions.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ResolutionOptions"


# instance fields
.field private final mDefaultResolution:Ljava/lang/String;

.field private final mDefaultVideoSize:Ljava/lang/String;

.field private final mResolutionOptions:[Ljava/lang/String;

.field private final mSuperiorAutoResolutionOptions:[Ljava/lang/String;

.field private final mVideoSizeOptions:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mResolutionOptions:[Ljava/lang/String;

    .line 50
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mSuperiorAutoResolutionOptions:[Ljava/lang/String;

    .line 51
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mVideoSizeOptions:[Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mDefaultResolution:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mDefaultVideoSize:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/ResolutionDependence;->isDependOnAspect(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 77
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 78
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_2b

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sensor name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 79
    :cond_2b
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    sparse-switch v1, :sswitch_data_372

    goto/16 :goto_18e

    :sswitch_37
    const-string v1, "IMX300PIONEER"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18e

    const/16 p2, 0xc

    goto/16 :goto_18f

    :sswitch_43
    const-string v1, "SEM13BS1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18e

    const/4 p2, 0x5

    goto/16 :goto_18f

    :sswitch_4e
    const-string v1, "IMX300DISCOVERY"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18e

    const/16 p2, 0xd

    goto/16 :goto_18f

    :sswitch_5a
    const-string v1, "SEM12BS0HOUOU"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18e

    const/16 p2, 0x1a

    goto/16 :goto_18f

    :sswitch_66
    const-string v1, "MTM13BS0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18e

    const/16 p2, 0xb

    goto/16 :goto_18f

    :sswitch_72
    const-string v1, "IMX219VOYAGER"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18e

    const/16 p2, 0x11

    goto/16 :goto_18f

    :sswitch_7e
    const-string v1, "HI847"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18e

    const/16 p2, 0x19

    goto/16 :goto_18f

    :sswitch_8a
    const-string v1, "LGI13BS0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18e

    const/16 p2, 0xa

    goto/16 :goto_18f

    :sswitch_96
    const-string v1, "LGI08BS0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18e

    const/4 p2, 0x6

    goto/16 :goto_18f

    :sswitch_a1
    const-string v1, "LGI05BN1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18e

    const/16 p2, 0x8

    goto/16 :goto_18f

    :sswitch_ad
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18e

    const/16 p2, 0x1d

    goto/16 :goto_18f

    :sswitch_b9
    const-string v1, "IMX234DISCOVERY"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18e

    const/16 p2, 0x12

    goto/16 :goto_18f

    :sswitch_c5
    const-string v1, "LGI08BS0HOUOU"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18e

    const/16 p2, 0x1c

    goto/16 :goto_18f

    :sswitch_d1
    const-string v1, "HI846_FRONT"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18e

    const/16 p2, 0x18

    goto/16 :goto_18f

    :sswitch_dd
    const-string v1, "HI846_BACK"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18e

    const/16 p2, 0x17

    goto/16 :goto_18f

    :sswitch_e9
    const-string v1, "IMX300VOYAGER"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18e

    const/16 p2, 0xe

    goto/16 :goto_18f

    :sswitch_f5
    const-string v1, "IMX219PIONEER"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18e

    const/16 p2, 0xf

    goto/16 :goto_18f

    :sswitch_101
    const-string v1, "S5K4H7KIRIN"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18e

    const/16 p2, 0x14

    goto/16 :goto_18f

    :sswitch_10d
    const-string v1, "IMX582_HI846_HI847_MULTI"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18e

    const/16 p2, 0x16

    goto/16 :goto_18f

    :sswitch_119
    const-string v1, "SOS20FW0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18e

    move p2, v3

    goto/16 :goto_18f

    :sswitch_124
    const-string v1, "S5K3L6"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18e

    const/16 p2, 0x13

    goto/16 :goto_18f

    :sswitch_130
    const-string v1, "IMX219DISCOVERY"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18e

    const/16 p2, 0x10

    goto :goto_18f

    :sswitch_13b
    const-string v1, "CHI08BS0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18e

    const/4 p2, 0x7

    goto :goto_18f

    :sswitch_145
    const-string v1, "CHI05BN1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18e

    const/16 p2, 0x9

    goto :goto_18f

    :sswitch_150
    const-string v1, "CHI08BS0HOUOU"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18e

    const/16 p2, 0x1b

    goto :goto_18f

    :sswitch_15b
    const-string v1, "IMX582"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18e

    const/16 p2, 0x15

    goto :goto_18f

    :sswitch_166
    const-string v1, "SOI20BSA"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18e

    const/4 p2, 0x3

    goto :goto_18f

    :sswitch_170
    const-string v1, "SOI20BS2"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18e

    move p2, v2

    goto :goto_18f

    :sswitch_17a
    const-string v1, "SOI20BS0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18e

    move p2, v4

    goto :goto_18f

    :sswitch_184
    const-string v1, "SOI13BS1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18e

    const/4 p2, 0x4

    goto :goto_18f

    :cond_18e
    :goto_18e
    const/4 p2, -0x1

    :goto_18f
    const v1, 0x7f030027

    packed-switch p2, :pswitch_data_3ec

    .line 326
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getMaxResolutions(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mResolutionOptions:[Ljava/lang/String;

    .line 327
    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mSuperiorAutoResolutionOptions:[Ljava/lang/String;

    .line 338
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getMaxResolutions(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p2

    array-length p2, p2

    if-ne p2, v3, :cond_33e

    .line 339
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_335

    .line 340
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getMaxResolutions(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v4

    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mDefaultResolution:Ljava/lang/String;

    goto/16 :goto_346

    :pswitch_1b4
    const p2, 0x7f030008

    const p3, 0x7f030017

    const v0, 0x7f03002d

    const v1, 0x7f0f04e7

    const v2, 0x7f0f050e

    goto/16 :goto_302

    .line 295
    :pswitch_1c5
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->is4KVideoSizeSupported(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1cf

    const p2, 0x7f030029

    goto :goto_1d2

    :cond_1cf
    const p2, 0x7f03002c

    :goto_1d2
    move v0, p2

    const p2, 0x7f030007

    const p3, 0x7f030016

    const v1, 0x7f0f04e6

    const v2, 0x7f0f050d

    goto/16 :goto_302

    :pswitch_1e1
    const p2, 0x7f03000b

    const p3, 0x7f03001a

    const v0, 0x7f030030

    const v1, 0x7f0f04ea

    const v2, 0x7f0f0512

    goto/16 :goto_302

    .line 264
    :pswitch_1f2
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->is4KVideoSizeSupported(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1f9

    goto :goto_1fc

    :cond_1f9
    const v1, 0x7f03002f

    :goto_1fc
    const p2, 0x7f03000a

    const p3, 0x7f030019

    const v0, 0x7f0f04e9

    const v2, 0x7f0f0511

    goto :goto_230

    :pswitch_209
    const p2, 0x7f03000e

    const p3, 0x7f03001d

    const v0, 0x7f030033

    const v1, 0x7f0f04ed

    const v2, 0x7f0f0515

    goto/16 :goto_302

    .line 233
    :pswitch_21a
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->is4KVideoSizeSupported(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_221

    goto :goto_224

    :cond_221
    const v1, 0x7f030032

    :goto_224
    const p2, 0x7f03000d

    const p3, 0x7f03001c

    const v0, 0x7f0f04ec

    const v2, 0x7f0f0514

    :goto_230
    move v5, v1

    move v1, v0

    move v0, v5

    goto/16 :goto_302

    :pswitch_235
    const p2, 0x7f03000f

    const p3, 0x7f03001e

    const v0, 0x7f030034

    const v1, 0x7f0f04ee

    const v2, 0x7f0f0516

    goto/16 :goto_302

    :pswitch_246
    const p2, 0x7f030011

    const p3, 0x7f030020

    const v0, 0x7f030036

    const v1, 0x7f0f04f0

    const v2, 0x7f0f0518

    goto/16 :goto_302

    .line 189
    :pswitch_257
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->is4KVideoSizeSupported(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_261

    const p2, 0x7f030028

    goto :goto_264

    :cond_261
    const p2, 0x7f030035

    :goto_264
    move v0, p2

    const p2, 0x7f030010

    const p3, 0x7f03001f

    const v1, 0x7f0f04ef

    const v2, 0x7f0f0517

    goto/16 :goto_302

    :pswitch_273
    const p2, 0x7f03000c

    const p3, 0x7f03001b

    const v0, 0x7f030031

    const v1, 0x7f0f04eb

    const v2, 0x7f0f0513

    goto/16 :goto_302

    :pswitch_284
    const p2, 0x7f030009

    const p3, 0x7f030018

    const v0, 0x7f03002e

    const v1, 0x7f0f04e8

    const v2, 0x7f0f0510

    goto/16 :goto_302

    :pswitch_295
    const p2, 0x7f030012

    const p3, 0x7f030021

    const v0, 0x7f030037

    const v1, 0x7f0f04f1

    const v2, 0x7f0f0519

    goto :goto_302

    :pswitch_2a5
    const p2, 0x7f030004

    const p3, 0x7f030013

    const v0, 0x7f030024

    const v1, 0x7f0f04e3

    const v2, 0x7f0f0509

    goto :goto_302

    .line 109
    :pswitch_2b5
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->is4KVideoSizeSupported(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2bf

    const p2, 0x7f030023

    goto :goto_2c2

    :cond_2bf
    const p2, 0x7f030026

    .line 114
    :goto_2c2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_2cc

    const p3, 0x7f0f04e5

    goto :goto_2cf

    :cond_2cc
    const p3, 0x7f0f0508

    :goto_2cf
    move v1, p3

    const p3, 0x7f030006

    const v0, 0x7f030015

    const v2, 0x7f0f050b

    goto :goto_2fe

    .line 87
    :pswitch_2da
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->is4KVideoSizeSupported(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2e4

    const p2, 0x7f030022

    goto :goto_2e7

    :cond_2e4
    const p2, 0x7f030025

    .line 92
    :goto_2e7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_2f1

    const p3, 0x7f0f04e4

    goto :goto_2f4

    :cond_2f1
    const p3, 0x7f0f0507

    :goto_2f4
    move v1, p3

    const p3, 0x7f030005

    const v0, 0x7f030014

    const v2, 0x7f0f050a

    :goto_2fe
    move v5, v0

    move v0, p2

    move p2, p3

    move p3, v5

    .line 363
    :goto_302
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mResolutionOptions:[Ljava/lang/String;

    .line 365
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mSuperiorAutoResolutionOptions:[Ljava/lang/String;

    .line 366
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mVideoSizeOptions:[Ljava/lang/String;

    .line 367
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mDefaultResolution:Ljava/lang/String;

    .line 368
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mDefaultVideoSize:Ljava/lang/String;

    return-void

    .line 342
    :cond_335
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getMaxResolutions(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mDefaultResolution:Ljava/lang/String;

    goto :goto_346

    .line 345
    :cond_33e
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getMaxResolutions(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v4

    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mDefaultResolution:Ljava/lang/String;

    .line 349
    :goto_346
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->is4KVideoSizeSupported(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_357

    .line 350
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mVideoSizeOptions:[Ljava/lang/String;

    goto :goto_364

    .line 353
    :cond_357
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f03002a

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mVideoSizeOptions:[Ljava/lang/String;

    .line 358
    :goto_364
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0f050c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mDefaultVideoSize:Ljava/lang/String;

    return-void

    :sswitch_data_372
    .sparse-switch
        -0x7f95b4af -> :sswitch_184
        -0x7f88fa4c -> :sswitch_17a
        -0x7f88fa4a -> :sswitch_170
        -0x7f88fa3b -> :sswitch_166
        -0x7f085a45 -> :sswitch_15b
        -0x73131e7f -> :sswitch_150
        -0x700150c4 -> :sswitch_145
        -0x6ffff30d -> :sswitch_13b
        -0x6ffd8956 -> :sswitch_130
        -0x6f50060c -> :sswitch_124
        -0x6e787496 -> :sswitch_119
        -0x6443bbf6 -> :sswitch_10d
        -0x59fd7a21 -> :sswitch_101
        -0x3c00954c -> :sswitch_f5
        -0x3abca60c -> :sswitch_e9
        -0x2a4f46b3 -> :sswitch_dd
        -0x1f59499d -> :sswitch_d1
        -0x18298955 -> :sswitch_c5
        -0xba3596f -> :sswitch_b9
        0x0 -> :sswitch_ad
        0x20307d2 -> :sswitch_a1
        0x2046589 -> :sswitch_96
        0x210372f -> :sswitch_8a
        0x418a41a -> :sswitch_7e
        0xc28ebad -> :sswitch_72
        0x2075c8d7 -> :sswitch_66
        0x2c49fb91 -> :sswitch_5a
        0x6c3a6f31 -> :sswitch_4e
        0x763f5d43 -> :sswitch_43
        0x7d19d8fb -> :sswitch_37
    .end sparse-switch

    :pswitch_data_3ec
    .packed-switch 0x0
        :pswitch_2da
        :pswitch_2da
        :pswitch_2b5
        :pswitch_2b5
        :pswitch_2a5
        :pswitch_2a5
        :pswitch_295
        :pswitch_295
        :pswitch_284
        :pswitch_284
        :pswitch_273
        :pswitch_273
        :pswitch_257
        :pswitch_257
        :pswitch_257
        :pswitch_246
        :pswitch_246
        :pswitch_246
        :pswitch_235
        :pswitch_21a
        :pswitch_209
        :pswitch_1f2
        :pswitch_1f2
        :pswitch_1e1
        :pswitch_1e1
        :pswitch_1e1
        :pswitch_1c5
        :pswitch_1b4
        :pswitch_1b4
    .end packed-switch
.end method

.method private findResolution(Landroid/graphics/Rect;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .registers 7

    .line 437
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_2a

    aget-object v2, p0, v1

    .line 438
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v3, v4, :cond_27

    .line 439
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ne v3, v4, :cond_27

    return-object v2

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_2a
    const/4 p0, 0x0

    return-object p0
.end method

.method private getMaxResolutions(Ljava/util/List;)[Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 403
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move-object v1, v0

    :cond_6
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 404
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->isAspectRatio4_3(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 405
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->findResolution(Landroid/graphics/Rect;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v3

    if-eqz v3, :cond_6

    if-eqz v0, :cond_3c

    .line 407
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/2addr v4, v2

    .line 408
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 409
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v2, v5

    if-le v4, v2, :cond_6

    :cond_3c
    move-object v0, v3

    goto :goto_6

    .line 413
    :cond_3e
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->isAspectRatio16_9(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 414
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->findResolution(Landroid/graphics/Rect;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v3

    if-eqz v3, :cond_6

    if-eqz v1, :cond_68

    .line 416
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/2addr v4, v2

    .line 417
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 418
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v2, v5

    if-le v4, v2, :cond_6

    :cond_68
    move-object v1, v3

    goto :goto_6

    :cond_6a
    if-eqz v0, :cond_7b

    if-eqz v1, :cond_7b

    .line 426
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getValue()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7b
    if-eqz v0, :cond_86

    .line 428
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getValue()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_86
    if-eqz v1, :cond_91

    .line 430
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getValue()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 433
    :cond_91
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getValue()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private is4KVideoSizeSupported(Landroid/content/Context;)Z
    .registers 2

    .line 392
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f050005

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method private static isAspectRatio16_9(Landroid/graphics/Rect;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1f

    .line 447
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_10

    goto :goto_1f

    .line 450
    :cond_10
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int/lit8 v1, v1, 0x9

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    mul-int/lit8 p0, p0, 0x10

    if-ne v1, p0, :cond_1f

    const/4 v0, 0x1

    :cond_1f
    :goto_1f
    return v0
.end method

.method private static isAspectRatio4_3(Landroid/graphics/Rect;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1f

    .line 455
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_10

    goto :goto_1f

    .line 458
    :cond_10
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    mul-int/lit8 p0, p0, 0x4

    if-ne v1, p0, :cond_1f

    const/4 v0, 0x1

    :cond_1f
    :goto_1f
    return v0
.end method


# virtual methods
.method public getDefaultResolution()Ljava/lang/String;
    .registers 1

    .line 384
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mDefaultResolution:Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultVideoSize()Ljava/lang/String;
    .registers 1

    .line 388
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mDefaultVideoSize:Ljava/lang/String;

    return-object p0
.end method

.method public getResolutionOptions()[Ljava/lang/String;
    .registers 1

    .line 372
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mResolutionOptions:[Ljava/lang/String;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getSuperiorAutoResolutionOptions()[Ljava/lang/String;
    .registers 1

    .line 376
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mSuperiorAutoResolutionOptions:[Ljava/lang/String;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getVideoSizeOptions()[Ljava/lang/String;
    .registers 1

    .line 380
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mVideoSizeOptions:[Ljava/lang/String;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method
