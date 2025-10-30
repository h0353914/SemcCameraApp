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

    const-string v0, ""

    .line 52
    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mDefaultResolution:Ljava/lang/String;

    const-string v0, ""

    .line 53
    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mDefaultVideoSize:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .registers 11
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

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2f

    new-array v1, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sensor name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2f
    const/4 v1, -0x1

    .line 79
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x2

    sparse-switch v4, :sswitch_data_3a8

    goto/16 :goto_1c1

    :sswitch_3a
    const-string v4, "IMX300PIONEER"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c1

    const/16 p2, 0xc

    goto/16 :goto_1c2

    :sswitch_46
    const-string v4, "SEM13BS1"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c1

    const/4 p2, 0x5

    goto/16 :goto_1c2

    :sswitch_51
    const-string v4, "IMX300DISCOVERY"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c1

    const/16 p2, 0xd

    goto/16 :goto_1c2

    :sswitch_5d
    const-string v4, "IMX486_OV8856_TELE"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c1

    const/16 p2, 0x18

    goto/16 :goto_1c2

    :sswitch_69
    const-string v4, "S5K4H7YX_TELE"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c1

    const/16 p2, 0x1a

    goto/16 :goto_1c2

    :sswitch_75
    const-string v4, "SEM12BS0HOUOU"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c1

    const/16 p2, 0x1e

    goto/16 :goto_1c2

    :sswitch_81
    const-string v4, "MTM13BS0"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c1

    const/16 p2, 0xb

    goto/16 :goto_1c2

    :sswitch_8d
    const-string v4, "IMX486-S5K4H7YX_TELE"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c1

    const/16 p2, 0x17

    goto/16 :goto_1c2

    :sswitch_99
    const-string v4, "IMX219VOYAGER"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c1

    const/16 p2, 0x11

    goto/16 :goto_1c2

    :sswitch_a5
    const-string v4, "LGI13BS0"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c1

    const/16 p2, 0xa

    goto/16 :goto_1c2

    :sswitch_b1
    const-string v4, "LGI08BS0"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c1

    const/4 p2, 0x6

    goto/16 :goto_1c2

    :sswitch_bc
    const-string v4, "LGI05BN1"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c1

    const/16 p2, 0x8

    goto/16 :goto_1c2

    :sswitch_c8
    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c1

    const/16 p2, 0x21

    goto/16 :goto_1c2

    :sswitch_d4
    const-string v4, "IMX486_WIDE"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c1

    const/16 p2, 0x16

    goto/16 :goto_1c2

    :sswitch_e0
    const-string v4, "IMX234DISCOVERY"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c1

    const/16 p2, 0x12

    goto/16 :goto_1c2

    :sswitch_ec
    const-string v4, "LGI08BS0HOUOU"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c1

    const/16 p2, 0x20

    goto/16 :goto_1c2

    :sswitch_f8
    const-string v4, "IMX300VOYAGER"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c1

    const/16 p2, 0xe

    goto/16 :goto_1c2

    :sswitch_104
    const-string v4, "IMX219PIONEER"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c1

    const/16 p2, 0xf

    goto/16 :goto_1c2

    :sswitch_110
    const-string v4, "S5K4H7YX_IMX486_WIDE"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c1

    const/16 p2, 0x19

    goto/16 :goto_1c2

    :sswitch_11c
    const-string v4, "S5K4H7KIRIN"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c1

    const/16 p2, 0x14

    goto/16 :goto_1c2

    :sswitch_128
    const-string v4, "S5K4H7YX_UWIDE"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c1

    const/16 p2, 0x1b

    goto/16 :goto_1c2

    :sswitch_134
    const-string v4, "S5K4H7YX_FRONT"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c1

    const/16 p2, 0x1c

    goto/16 :goto_1c2

    :sswitch_140
    const-string v4, "SOS20FW0"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c1

    move p2, v5

    goto/16 :goto_1c2

    :sswitch_14b
    const-string v4, "S5K3L6"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c1

    const/16 p2, 0x13

    goto/16 :goto_1c2

    :sswitch_157
    const-string v4, "IMX219DISCOVERY"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c1

    const/16 p2, 0x10

    goto/16 :goto_1c2

    :sswitch_163
    const-string v4, "CHI08BS0"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c1

    const/4 p2, 0x7

    goto :goto_1c2

    :sswitch_16d
    const-string v4, "CHI05BN1"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c1

    const/16 p2, 0x9

    goto :goto_1c2

    :sswitch_178
    const-string v4, "CHI08BS0HOUOU"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c1

    const/16 p2, 0x1f

    goto :goto_1c2

    :sswitch_183
    const-string v4, "IMX486"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c1

    const/16 p2, 0x15

    goto :goto_1c2

    :sswitch_18e
    const-string v4, "OV8856_TELE"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c1

    const/16 p2, 0x1d

    goto :goto_1c2

    :sswitch_199
    const-string v4, "SOI20BSA"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c1

    const/4 p2, 0x3

    goto :goto_1c2

    :sswitch_1a3
    const-string v4, "SOI20BS2"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c1

    move p2, v2

    goto :goto_1c2

    :sswitch_1ad
    const-string v4, "SOI20BS0"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c1

    move p2, v3

    goto :goto_1c2

    :sswitch_1b7
    const-string v4, "SOI13BS1"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c1

    const/4 p2, 0x4

    goto :goto_1c2

    :cond_1c1
    :goto_1c1
    move p2, v1

    :goto_1c2
    const v1, 0x7f030026

    packed-switch p2, :pswitch_data_432

    .line 335
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getMaxResolutions(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mResolutionOptions:[Ljava/lang/String;

    .line 336
    iget-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mResolutionOptions:[Ljava/lang/String;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mSuperiorAutoResolutionOptions:[Ljava/lang/String;

    .line 347
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getMaxResolutions(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p2

    array-length p2, p2

    if-ne p2, v5, :cond_373

    .line 348
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_36a

    .line 349
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getMaxResolutions(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v3

    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mDefaultResolution:Ljava/lang/String;

    goto/16 :goto_37b

    :pswitch_1e9
    const p2, 0x7f030007

    const p3, 0x7f030016

    const v0, 0x7f03002c

    const v1, 0x7f0f0430

    const v2, 0x7f0f0450

    goto/16 :goto_337

    :pswitch_1fa
    const p2, 0x7f030006

    const p3, 0x7f030015

    .line 304
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->is4KVideoSizeSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_20a

    const v0, 0x7f030028

    goto :goto_20d

    :cond_20a
    const v0, 0x7f03002b

    :goto_20d
    const v1, 0x7f0f042f

    const v2, 0x7f0f044f

    goto/16 :goto_337

    :pswitch_215
    const p2, 0x7f03000a

    const p3, 0x7f030019

    const v0, 0x7f03002f

    const v1, 0x7f0f0433

    const v2, 0x7f0f0454

    goto/16 :goto_337

    :pswitch_226
    const p2, 0x7f030009

    const p3, 0x7f030018

    .line 268
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->is4KVideoSizeSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_234

    move v0, v1

    goto :goto_238

    :cond_234
    const v1, 0x7f03002e

    move v0, v1

    :goto_238
    const v1, 0x7f0f0432

    const v2, 0x7f0f0453

    goto/16 :goto_337

    :pswitch_240
    const p2, 0x7f03000d

    const p3, 0x7f03001c

    const v0, 0x7f030032

    const v1, 0x7f0f0436

    const v2, 0x7f0f0457

    goto/16 :goto_337

    :pswitch_251
    const p2, 0x7f03000c

    const p3, 0x7f03001b

    .line 233
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->is4KVideoSizeSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_25f

    move v0, v1

    goto :goto_263

    :cond_25f
    const v1, 0x7f030031

    move v0, v1

    :goto_263
    const v1, 0x7f0f0435

    const v2, 0x7f0f0456

    goto/16 :goto_337

    :pswitch_26b
    const p2, 0x7f03000e

    const p3, 0x7f03001d

    const v0, 0x7f030033

    const v1, 0x7f0f0437

    const v2, 0x7f0f0458

    goto/16 :goto_337

    :pswitch_27c
    const p2, 0x7f030010

    const p3, 0x7f03001f

    const v0, 0x7f030035

    const v1, 0x7f0f0439

    const v2, 0x7f0f045a

    goto/16 :goto_337

    :pswitch_28d
    const p2, 0x7f03000f

    const p3, 0x7f03001e

    .line 189
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->is4KVideoSizeSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_29d

    const v0, 0x7f030027

    goto :goto_2a0

    :cond_29d
    const v0, 0x7f030034

    :goto_2a0
    const v1, 0x7f0f0438

    const v2, 0x7f0f0459

    goto/16 :goto_337

    :pswitch_2a8
    const p2, 0x7f03000b

    const p3, 0x7f03001a

    const v0, 0x7f030030

    const v1, 0x7f0f0434

    const v2, 0x7f0f0455

    goto/16 :goto_337

    :pswitch_2b9
    const p2, 0x7f030008

    const p3, 0x7f030017

    const v0, 0x7f03002d

    const v1, 0x7f0f0431

    const v2, 0x7f0f0452

    goto/16 :goto_337

    :pswitch_2ca
    const p2, 0x7f030011

    const p3, 0x7f030020

    const v0, 0x7f030036

    const v1, 0x7f0f043a

    const v2, 0x7f0f045b

    goto :goto_337

    :pswitch_2da
    const p2, 0x7f030003

    const p3, 0x7f030012

    const v0, 0x7f030023

    const v1, 0x7f0f042c

    const v2, 0x7f0f044b

    goto :goto_337

    :pswitch_2ea
    const p2, 0x7f030005

    const p3, 0x7f030014

    .line 109
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->is4KVideoSizeSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2fa

    const v1, 0x7f030022

    goto :goto_2fd

    :cond_2fa
    const v1, 0x7f030025

    .line 114
    :goto_2fd
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_307

    const v0, 0x7f0f042e

    goto :goto_30a

    :cond_307
    const v0, 0x7f0f044a

    :goto_30a
    const v2, 0x7f0f044d

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_337

    :pswitch_311
    const p2, 0x7f030004

    const p3, 0x7f030013

    .line 87
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->is4KVideoSizeSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_321

    const v1, 0x7f030021

    goto :goto_324

    :cond_321
    const v1, 0x7f030024

    .line 92
    :goto_324
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_32e

    const v0, 0x7f0f042d

    goto :goto_331

    :cond_32e
    const v0, 0x7f0f0449

    :goto_331
    const v2, 0x7f0f044c

    move v6, v1

    move v1, v0

    move v0, v6

    .line 372
    :goto_337
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mResolutionOptions:[Ljava/lang/String;

    .line 374
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mSuperiorAutoResolutionOptions:[Ljava/lang/String;

    .line 375
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mVideoSizeOptions:[Ljava/lang/String;

    .line 376
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mDefaultResolution:Ljava/lang/String;

    .line 377
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mDefaultVideoSize:Ljava/lang/String;

    return-void

    .line 351
    :cond_36a
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getMaxResolutions(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mDefaultResolution:Ljava/lang/String;

    goto :goto_37b

    .line 354
    :cond_373
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getMaxResolutions(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v3

    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mDefaultResolution:Ljava/lang/String;

    .line 358
    :goto_37b
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->is4KVideoSizeSupported(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_38c

    .line 359
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mVideoSizeOptions:[Ljava/lang/String;

    goto :goto_399

    .line 362
    :cond_38c
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f030029

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mVideoSizeOptions:[Ljava/lang/String;

    .line 367
    :goto_399
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0f044e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mDefaultVideoSize:Ljava/lang/String;

    return-void

    nop

    :sswitch_data_3a8
    .sparse-switch
        -0x7f95b4af -> :sswitch_1b7
        -0x7f88fa4c -> :sswitch_1ad
        -0x7f88fa4a -> :sswitch_1a3
        -0x7f88fa3b -> :sswitch_199
        -0x7f54d27f -> :sswitch_18e
        -0x7f085e02 -> :sswitch_183
        -0x73131e7f -> :sswitch_178
        -0x700150c4 -> :sswitch_16d
        -0x6ffff30d -> :sswitch_163
        -0x6ffd8956 -> :sswitch_157
        -0x6f50060c -> :sswitch_14b
        -0x6e787496 -> :sswitch_140
        -0x62919bdd -> :sswitch_134
        -0x61bc0d3e -> :sswitch_128
        -0x59fd7a21 -> :sswitch_11c
        -0x474fb0f2 -> :sswitch_110
        -0x3c00954c -> :sswitch_104
        -0x3abca60c -> :sswitch_f8
        -0x18298955 -> :sswitch_ec
        -0xba3596f -> :sswitch_e0
        -0xb88b38c -> :sswitch_d4
        0x0 -> :sswitch_c8
        0x20307d2 -> :sswitch_bc
        0x2046589 -> :sswitch_b1
        0x210372f -> :sswitch_a5
        0xc28ebad -> :sswitch_99
        0xc9e50c1 -> :sswitch_8d
        0x2075c8d7 -> :sswitch_81
        0x2c49fb91 -> :sswitch_75
        0x2e649250 -> :sswitch_69
        0x2f2620c0 -> :sswitch_5d
        0x6c3a6f31 -> :sswitch_51
        0x763f5d43 -> :sswitch_46
        0x7d19d8fb -> :sswitch_3a
    .end sparse-switch

    :pswitch_data_432
    .packed-switch 0x0
        :pswitch_311
        :pswitch_311
        :pswitch_2ea
        :pswitch_2ea
        :pswitch_2da
        :pswitch_2da
        :pswitch_2ca
        :pswitch_2ca
        :pswitch_2b9
        :pswitch_2b9
        :pswitch_2a8
        :pswitch_2a8
        :pswitch_28d
        :pswitch_28d
        :pswitch_28d
        :pswitch_27c
        :pswitch_27c
        :pswitch_27c
        :pswitch_26b
        :pswitch_251
        :pswitch_240
        :pswitch_226
        :pswitch_226
        :pswitch_226
        :pswitch_226
        :pswitch_226
        :pswitch_215
        :pswitch_215
        :pswitch_215
        :pswitch_215
        :pswitch_1fa
        :pswitch_1e9
        :pswitch_1e9
    .end packed-switch
.end method

.method private findResolution(Landroid/graphics/Rect;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .registers 8

    .line 446
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_2a

    aget-object v3, v0, v2

    .line 447
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ne v4, v5, :cond_27

    .line 448
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-ne v4, v5, :cond_27

    return-object v3

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_2a
    const/4 p1, 0x0

    return-object p1
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

    .line 412
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

    .line 413
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->isAspectRatio4_3(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 414
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->findResolution(Landroid/graphics/Rect;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v3

    if-eqz v3, :cond_6

    if-eqz v0, :cond_3c

    .line 416
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/2addr v4, v2

    .line 417
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 418
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v2, v5

    if-le v4, v2, :cond_6

    :cond_3c
    move-object v0, v3

    goto :goto_6

    .line 422
    :cond_3e
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->isAspectRatio16_9(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 423
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->findResolution(Landroid/graphics/Rect;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v3

    if-eqz v3, :cond_6

    if-eqz v1, :cond_68

    .line 425
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/2addr v4, v2

    .line 426
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 427
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
    const/4 p1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_80

    if-eqz v1, :cond_80

    const/4 v3, 0x2

    .line 435
    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getValue()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, p1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getValue()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    return-object v3

    :cond_80
    if-eqz v0, :cond_8b

    .line 437
    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getValue()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, p1

    return-object v1

    :cond_8b
    if-eqz v1, :cond_96

    .line 439
    new-array v0, v2, [Ljava/lang/String;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getValue()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    return-object v0

    .line 442
    :cond_96
    new-array v0, v2, [Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getValue()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    return-object v0
.end method

.method private is4KVideoSizeSupported(Landroid/content/Context;)Z
    .registers 3

    .line 401
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f050005

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    return p1
.end method

.method private static isAspectRatio16_9(Landroid/graphics/Rect;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_20

    .line 456
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_10

    goto :goto_20

    .line 459
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
    return v0

    :cond_20
    :goto_20
    return v0
.end method

.method private static isAspectRatio4_3(Landroid/graphics/Rect;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_20

    .line 464
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_10

    goto :goto_20

    .line 467
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
    return v0

    :cond_20
    :goto_20
    return v0
.end method


# virtual methods
.method public getDefaultResolution()Ljava/lang/String;
    .registers 2

    .line 393
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mDefaultResolution:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultVideoSize()Ljava/lang/String;
    .registers 2

    .line 397
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mDefaultVideoSize:Ljava/lang/String;

    return-object v0
.end method

.method public getResolutionOptions()[Ljava/lang/String;
    .registers 2

    .line 381
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mResolutionOptions:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getSuperiorAutoResolutionOptions()[Ljava/lang/String;
    .registers 2

    .line 385
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mSuperiorAutoResolutionOptions:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getVideoSizeOptions()[Ljava/lang/String;
    .registers 2

    .line 389
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mVideoSizeOptions:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
