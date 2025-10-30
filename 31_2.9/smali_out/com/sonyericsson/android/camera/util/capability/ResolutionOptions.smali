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

    sparse-switch v4, :sswitch_data_378

    goto/16 :goto_191

    :sswitch_3a
    const-string v4, "IMX300PIONEER"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_191

    const/16 p2, 0xc

    goto/16 :goto_192

    :sswitch_46
    const-string v4, "SEM13BS1"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_191

    const/4 p2, 0x5

    goto/16 :goto_192

    :sswitch_51
    const-string v4, "IMX300DISCOVERY"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_191

    const/16 p2, 0xd

    goto/16 :goto_192

    :sswitch_5d
    const-string v4, "SEM12BS0HOUOU"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_191

    const/16 p2, 0x1a

    goto/16 :goto_192

    :sswitch_69
    const-string v4, "MTM13BS0"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_191

    const/16 p2, 0xb

    goto/16 :goto_192

    :sswitch_75
    const-string v4, "IMX219VOYAGER"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_191

    const/16 p2, 0x11

    goto/16 :goto_192

    :sswitch_81
    const-string v4, "HI847"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_191

    const/16 p2, 0x19

    goto/16 :goto_192

    :sswitch_8d
    const-string v4, "LGI13BS0"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_191

    const/16 p2, 0xa

    goto/16 :goto_192

    :sswitch_99
    const-string v4, "LGI08BS0"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_191

    const/4 p2, 0x6

    goto/16 :goto_192

    :sswitch_a4
    const-string v4, "LGI05BN1"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_191

    const/16 p2, 0x8

    goto/16 :goto_192

    :sswitch_b0
    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_191

    const/16 p2, 0x1d

    goto/16 :goto_192

    :sswitch_bc
    const-string v4, "IMX234DISCOVERY"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_191

    const/16 p2, 0x12

    goto/16 :goto_192

    :sswitch_c8
    const-string v4, "LGI08BS0HOUOU"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_191

    const/16 p2, 0x1c

    goto/16 :goto_192

    :sswitch_d4
    const-string v4, "HI846_FRONT"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_191

    const/16 p2, 0x18

    goto/16 :goto_192

    :sswitch_e0
    const-string v4, "HI846_BACK"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_191

    const/16 p2, 0x17

    goto/16 :goto_192

    :sswitch_ec
    const-string v4, "IMX300VOYAGER"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_191

    const/16 p2, 0xe

    goto/16 :goto_192

    :sswitch_f8
    const-string v4, "IMX219PIONEER"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_191

    const/16 p2, 0xf

    goto/16 :goto_192

    :sswitch_104
    const-string v4, "S5K4H7KIRIN"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_191

    const/16 p2, 0x14

    goto/16 :goto_192

    :sswitch_110
    const-string v4, "IMX582_HI846_HI847_MULTI"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_191

    const/16 p2, 0x16

    goto/16 :goto_192

    :sswitch_11c
    const-string v4, "SOS20FW0"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_191

    move p2, v5

    goto/16 :goto_192

    :sswitch_127
    const-string v4, "S5K3L6"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_191

    const/16 p2, 0x13

    goto/16 :goto_192

    :sswitch_133
    const-string v4, "IMX219DISCOVERY"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_191

    const/16 p2, 0x10

    goto :goto_192

    :sswitch_13e
    const-string v4, "CHI08BS0"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_191

    const/4 p2, 0x7

    goto :goto_192

    :sswitch_148
    const-string v4, "CHI05BN1"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_191

    const/16 p2, 0x9

    goto :goto_192

    :sswitch_153
    const-string v4, "CHI08BS0HOUOU"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_191

    const/16 p2, 0x1b

    goto :goto_192

    :sswitch_15e
    const-string v4, "IMX582"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_191

    const/16 p2, 0x15

    goto :goto_192

    :sswitch_169
    const-string v4, "SOI20BSA"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_191

    const/4 p2, 0x3

    goto :goto_192

    :sswitch_173
    const-string v4, "SOI20BS2"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_191

    move p2, v2

    goto :goto_192

    :sswitch_17d
    const-string v4, "SOI20BS0"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_191

    move p2, v3

    goto :goto_192

    :sswitch_187
    const-string v4, "SOI13BS1"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_191

    const/4 p2, 0x4

    goto :goto_192

    :cond_191
    :goto_191
    move p2, v1

    :goto_192
    const v1, 0x7f030027

    packed-switch p2, :pswitch_data_3f2

    .line 326
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getMaxResolutions(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mResolutionOptions:[Ljava/lang/String;

    .line 327
    iget-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mResolutionOptions:[Ljava/lang/String;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mSuperiorAutoResolutionOptions:[Ljava/lang/String;

    .line 338
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getMaxResolutions(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p2

    array-length p2, p2

    if-ne p2, v5, :cond_343

    .line 339
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_33a

    .line 340
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getMaxResolutions(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v3

    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mDefaultResolution:Ljava/lang/String;

    goto/16 :goto_34b

    :pswitch_1b9
    const p2, 0x7f030008

    const p3, 0x7f030017

    const v0, 0x7f03002d

    const v1, 0x7f0f04df

    const v2, 0x7f0f0506

    goto/16 :goto_307

    :pswitch_1ca
    const p2, 0x7f030007

    const p3, 0x7f030016

    .line 295
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->is4KVideoSizeSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1da

    const v0, 0x7f030029

    goto :goto_1dd

    :cond_1da
    const v0, 0x7f03002c

    :goto_1dd
    const v1, 0x7f0f04de

    const v2, 0x7f0f0505

    goto/16 :goto_307

    :pswitch_1e5
    const p2, 0x7f03000b

    const p3, 0x7f03001a

    const v0, 0x7f030030

    const v1, 0x7f0f04e2

    const v2, 0x7f0f050a

    goto/16 :goto_307

    :pswitch_1f6
    const p2, 0x7f03000a

    const p3, 0x7f030019

    .line 264
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->is4KVideoSizeSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_204

    move v0, v1

    goto :goto_208

    :cond_204
    const v1, 0x7f03002f

    move v0, v1

    :goto_208
    const v1, 0x7f0f04e1

    const v2, 0x7f0f0509

    goto/16 :goto_307

    :pswitch_210
    const p2, 0x7f03000e

    const p3, 0x7f03001d

    const v0, 0x7f030033

    const v1, 0x7f0f04e5

    const v2, 0x7f0f050d

    goto/16 :goto_307

    :pswitch_221
    const p2, 0x7f03000d

    const p3, 0x7f03001c

    .line 233
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->is4KVideoSizeSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_22f

    move v0, v1

    goto :goto_233

    :cond_22f
    const v1, 0x7f030032

    move v0, v1

    :goto_233
    const v1, 0x7f0f04e4

    const v2, 0x7f0f050c

    goto/16 :goto_307

    :pswitch_23b
    const p2, 0x7f03000f

    const p3, 0x7f03001e

    const v0, 0x7f030034

    const v1, 0x7f0f04e6

    const v2, 0x7f0f050e

    goto/16 :goto_307

    :pswitch_24c
    const p2, 0x7f030011

    const p3, 0x7f030020

    const v0, 0x7f030036

    const v1, 0x7f0f04e8

    const v2, 0x7f0f0510

    goto/16 :goto_307

    :pswitch_25d
    const p2, 0x7f030010

    const p3, 0x7f03001f

    .line 189
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->is4KVideoSizeSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_26d

    const v0, 0x7f030028

    goto :goto_270

    :cond_26d
    const v0, 0x7f030035

    :goto_270
    const v1, 0x7f0f04e7

    const v2, 0x7f0f050f

    goto/16 :goto_307

    :pswitch_278
    const p2, 0x7f03000c

    const p3, 0x7f03001b

    const v0, 0x7f030031

    const v1, 0x7f0f04e3

    const v2, 0x7f0f050b

    goto/16 :goto_307

    :pswitch_289
    const p2, 0x7f030009

    const p3, 0x7f030018

    const v0, 0x7f03002e

    const v1, 0x7f0f04e0

    const v2, 0x7f0f0508

    goto/16 :goto_307

    :pswitch_29a
    const p2, 0x7f030012

    const p3, 0x7f030021

    const v0, 0x7f030037

    const v1, 0x7f0f04e9

    const v2, 0x7f0f0511

    goto :goto_307

    :pswitch_2aa
    const p2, 0x7f030004

    const p3, 0x7f030013

    const v0, 0x7f030024

    const v1, 0x7f0f04db

    const v2, 0x7f0f0501

    goto :goto_307

    :pswitch_2ba
    const p2, 0x7f030006

    const p3, 0x7f030015

    .line 109
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->is4KVideoSizeSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2ca

    const v1, 0x7f030023

    goto :goto_2cd

    :cond_2ca
    const v1, 0x7f030026

    .line 114
    :goto_2cd
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2d7

    const v0, 0x7f0f04dd

    goto :goto_2da

    :cond_2d7
    const v0, 0x7f0f0500

    :goto_2da
    const v2, 0x7f0f0503

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_307

    :pswitch_2e1
    const p2, 0x7f030005

    const p3, 0x7f030014

    .line 87
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->is4KVideoSizeSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2f1

    const v1, 0x7f030022

    goto :goto_2f4

    :cond_2f1
    const v1, 0x7f030025

    .line 92
    :goto_2f4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2fe

    const v0, 0x7f0f04dc

    goto :goto_301

    :cond_2fe
    const v0, 0x7f0f04ff

    :goto_301
    const v2, 0x7f0f0502

    move v6, v1

    move v1, v0

    move v0, v6

    .line 363
    :goto_307
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
    :cond_33a
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getMaxResolutions(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mDefaultResolution:Ljava/lang/String;

    goto :goto_34b

    .line 345
    :cond_343
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getMaxResolutions(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v3

    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mDefaultResolution:Ljava/lang/String;

    .line 349
    :goto_34b
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->is4KVideoSizeSupported(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_35c

    .line 350
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mVideoSizeOptions:[Ljava/lang/String;

    goto :goto_369

    .line 353
    :cond_35c
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f03002a

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mVideoSizeOptions:[Ljava/lang/String;

    .line 358
    :goto_369
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0f0504

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mDefaultVideoSize:Ljava/lang/String;

    return-void

    nop

    :sswitch_data_378
    .sparse-switch
        -0x7f95b4af -> :sswitch_187
        -0x7f88fa4c -> :sswitch_17d
        -0x7f88fa4a -> :sswitch_173
        -0x7f88fa3b -> :sswitch_169
        -0x7f085a45 -> :sswitch_15e
        -0x73131e7f -> :sswitch_153
        -0x700150c4 -> :sswitch_148
        -0x6ffff30d -> :sswitch_13e
        -0x6ffd8956 -> :sswitch_133
        -0x6f50060c -> :sswitch_127
        -0x6e787496 -> :sswitch_11c
        -0x6443bbf6 -> :sswitch_110
        -0x59fd7a21 -> :sswitch_104
        -0x3c00954c -> :sswitch_f8
        -0x3abca60c -> :sswitch_ec
        -0x2a4f46b3 -> :sswitch_e0
        -0x1f59499d -> :sswitch_d4
        -0x18298955 -> :sswitch_c8
        -0xba3596f -> :sswitch_bc
        0x0 -> :sswitch_b0
        0x20307d2 -> :sswitch_a4
        0x2046589 -> :sswitch_99
        0x210372f -> :sswitch_8d
        0x418a41a -> :sswitch_81
        0xc28ebad -> :sswitch_75
        0x2075c8d7 -> :sswitch_69
        0x2c49fb91 -> :sswitch_5d
        0x6c3a6f31 -> :sswitch_51
        0x763f5d43 -> :sswitch_46
        0x7d19d8fb -> :sswitch_3a
    .end sparse-switch

    :pswitch_data_3f2
    .packed-switch 0x0
        :pswitch_2e1
        :pswitch_2e1
        :pswitch_2ba
        :pswitch_2ba
        :pswitch_2aa
        :pswitch_2aa
        :pswitch_29a
        :pswitch_29a
        :pswitch_289
        :pswitch_289
        :pswitch_278
        :pswitch_278
        :pswitch_25d
        :pswitch_25d
        :pswitch_25d
        :pswitch_24c
        :pswitch_24c
        :pswitch_24c
        :pswitch_23b
        :pswitch_221
        :pswitch_210
        :pswitch_1f6
        :pswitch_1f6
        :pswitch_1e5
        :pswitch_1e5
        :pswitch_1e5
        :pswitch_1ca
        :pswitch_1b9
        :pswitch_1b9
    .end packed-switch
.end method

.method private findResolution(Landroid/graphics/Rect;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .registers 8

    .line 437
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_2a

    aget-object v3, v0, v2

    .line 438
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ne v4, v5, :cond_27

    .line 439
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
    const/4 p1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_80

    if-eqz v1, :cond_80

    const/4 v3, 0x2

    .line 426
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

    .line 428
    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getValue()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, p1

    return-object v1

    :cond_8b
    if-eqz v1, :cond_96

    .line 430
    new-array v0, v2, [Ljava/lang/String;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getValue()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    return-object v0

    .line 433
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

    .line 392
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

    .line 447
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_10

    goto :goto_20

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
    return v0

    :cond_20
    :goto_20
    return v0
.end method

.method private static isAspectRatio4_3(Landroid/graphics/Rect;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_20

    .line 455
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_10

    goto :goto_20

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
    return v0

    :cond_20
    :goto_20
    return v0
.end method


# virtual methods
.method public getDefaultResolution()Ljava/lang/String;
    .registers 2

    .line 384
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mDefaultResolution:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultVideoSize()Ljava/lang/String;
    .registers 2

    .line 388
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mDefaultVideoSize:Ljava/lang/String;

    return-object v0
.end method

.method public getResolutionOptions()[Ljava/lang/String;
    .registers 2

    .line 372
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mResolutionOptions:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getSuperiorAutoResolutionOptions()[Ljava/lang/String;
    .registers 2

    .line 376
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mSuperiorAutoResolutionOptions:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getVideoSizeOptions()[Ljava/lang/String;
    .registers 2

    .line 380
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mVideoSizeOptions:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
