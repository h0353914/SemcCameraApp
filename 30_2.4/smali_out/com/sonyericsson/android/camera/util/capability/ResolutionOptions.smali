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

    .line 78
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_224

    goto/16 :goto_c8

    :sswitch_e
    const-string v0, "SEM13BS1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c8

    const/16 p2, 0x8

    goto/16 :goto_c9

    :sswitch_1a
    const-string v0, "SEM12BW1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c8

    const/4 p2, 0x3

    goto/16 :goto_c9

    :sswitch_25
    const-string v0, "SEM12BW0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c8

    move p2, v2

    goto/16 :goto_c9

    :sswitch_30
    const-string v0, "SEM12BS3"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c8

    move p2, v1

    goto/16 :goto_c9

    :sswitch_3b
    const-string v0, "MTM13BS0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c8

    const/16 p2, 0xe

    goto/16 :goto_c9

    :sswitch_47
    const-string v0, "LGI13BS0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c8

    const/16 p2, 0xd

    goto/16 :goto_c9

    :sswitch_53
    const-string v0, "LGI08BS0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c8

    const/16 p2, 0x9

    goto/16 :goto_c9

    :sswitch_5f
    const-string v0, "LGI05BN1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c8

    const/16 p2, 0xb

    goto :goto_c9

    :sswitch_6a
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c8

    const/16 p2, 0x10

    goto :goto_c9

    :sswitch_75
    const-string v0, "SUN13BS1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c8

    const/4 p2, 0x2

    goto :goto_c9

    :sswitch_7f
    const-string v0, "SOS20FW0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c8

    const/4 p2, 0x6

    goto :goto_c9

    :sswitch_89
    const-string v0, "CHI08BS1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c8

    const/16 p2, 0xf

    goto :goto_c9

    :sswitch_94
    const-string v0, "CHI08BS0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c8

    const/16 p2, 0xa

    goto :goto_c9

    :sswitch_9f
    const-string v0, "CHI05BN1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c8

    const/16 p2, 0xc

    goto :goto_c9

    :sswitch_aa
    const-string v0, "SOI20BS2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c8

    const/4 p2, 0x5

    goto :goto_c9

    :sswitch_b4
    const-string v0, "SOI20BS0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c8

    const/4 p2, 0x4

    goto :goto_c9

    :sswitch_be
    const-string v0, "SOI13BS1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c8

    const/4 p2, 0x7

    goto :goto_c9

    :cond_c8
    :goto_c8
    const/4 p2, -0x1

    :goto_c9
    packed-switch p2, :pswitch_data_26a

    move p2, v2

    move v0, p2

    move v3, v0

    move v4, v3

    move v5, v4

    goto/16 :goto_18b

    :pswitch_d3
    const p2, 0x7f030006

    const v0, 0x7f03000e

    const v1, 0x7f03001a

    const v3, 0x7f0e03f7

    const v4, 0x7f0e040e

    move v5, v4

    move v4, v1

    move v1, v2

    goto/16 :goto_18b

    :pswitch_e7
    const p2, 0x7f030005

    const v0, 0x7f03000d

    const v1, 0x7f030019

    const v3, 0x7f0e03f6

    const v4, 0x7f0e040d

    move v5, v4

    move v4, v1

    move v1, v2

    goto/16 :goto_18b

    :pswitch_fb
    const p2, 0x7f030004

    const v0, 0x7f03000c

    const v1, 0x7f030018

    const v3, 0x7f0e03f5

    const v4, 0x7f0e040c

    move v5, v4

    move v4, v1

    move v1, v2

    goto/16 :goto_18b

    :pswitch_10f
    const p2, 0x7f030007

    const v0, 0x7f03000f

    const v1, 0x7f03001b

    const v3, 0x7f0e03f8

    const v4, 0x7f0e040f

    move v5, v4

    move v4, v1

    move v1, v2

    goto/16 :goto_18b

    :pswitch_123
    const/high16 p2, 0x7f030000

    const v0, 0x7f030008

    const v1, 0x7f030013

    const v3, 0x7f0e03f1

    const v4, 0x7f0e0406

    move v5, v4

    move v4, v1

    move v1, v2

    goto :goto_18b

    :pswitch_135
    const p2, 0x7f030002

    const v0, 0x7f03000a

    .line 124
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->is4KVideoSizeSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_145

    const v1, 0x7f030011

    goto :goto_148

    :cond_145
    const v1, 0x7f030015

    :goto_148
    const v3, 0x7f0e03f3

    const v4, 0x7f0e0408

    move v5, v4

    move v4, v1

    move v1, v2

    goto :goto_18b

    :pswitch_152
    const p2, 0x7f030001

    const v0, 0x7f030009

    .line 108
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->is4KVideoSizeSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_162

    const v1, 0x7f030010

    goto :goto_165

    :cond_162
    const v1, 0x7f030014

    :goto_165
    const v3, 0x7f0e03f2

    const v4, 0x7f0e0407

    move v5, v4

    move v4, v1

    move v1, v2

    goto :goto_18b

    :pswitch_16f
    const p2, 0x7f030003

    const v0, 0x7f03000b

    .line 90
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->is4KVideoSizeSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_17f

    const v1, 0x7f030012

    goto :goto_182

    :cond_17f
    const v1, 0x7f030017

    :goto_182
    const v3, 0x7f0e03f4

    const v4, 0x7f0e040a

    move v5, v4

    move v4, v1

    move v1, v2

    :goto_18b
    if-eqz v1, :cond_1ba

    .line 217
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getMaxResolutions(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mResolutionOptions:[Ljava/lang/String;

    .line 218
    iget-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mResolutionOptions:[Ljava/lang/String;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mSuperiorAutoResolutionOptions:[Ljava/lang/String;

    .line 221
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getMaxResolutions(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mDefaultResolution:Ljava/lang/String;

    .line 224
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f030016

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mVideoSizeOptions:[Ljava/lang/String;

    .line 228
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0e0409

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mDefaultVideoSize:Ljava/lang/String;

    goto :goto_223

    .line 232
    :cond_1ba
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-direct {p0, v1, p3}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->isNoneResolutionSupported([Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1cf

    .line 234
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getMaxResolutions(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mResolutionOptions:[Ljava/lang/String;

    goto :goto_1d9

    .line 236
    :cond_1cf
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mResolutionOptions:[Ljava/lang/String;

    .line 240
    :goto_1d9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->isNoneResolutionSupported([Ljava/lang/String;Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_1ee

    .line 243
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getMaxResolutions(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mSuperiorAutoResolutionOptions:[Ljava/lang/String;

    goto :goto_1f8

    .line 246
    :cond_1ee
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mSuperiorAutoResolutionOptions:[Ljava/lang/String;

    :goto_1f8
    if-eqz v1, :cond_205

    if-eqz p2, :cond_205

    .line 250
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getMaxResolutions(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mDefaultResolution:Ljava/lang/String;

    goto :goto_20f

    .line 252
    :cond_205
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mDefaultResolution:Ljava/lang/String;

    .line 255
    :goto_20f
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mVideoSizeOptions:[Ljava/lang/String;

    .line 256
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mDefaultVideoSize:Ljava/lang/String;

    :goto_223
    return-void

    :sswitch_data_224
    .sparse-switch
        -0x7f95b4af -> :sswitch_be
        -0x7f88fa4c -> :sswitch_b4
        -0x7f88fa4a -> :sswitch_aa
        -0x700150c4 -> :sswitch_9f
        -0x6ffff30d -> :sswitch_94
        -0x6ffff30c -> :sswitch_89
        -0x6e787496 -> :sswitch_7f
        -0x39a8160e -> :sswitch_75
        0x0 -> :sswitch_6a
        0x20307d2 -> :sswitch_5f
        0x2046589 -> :sswitch_53
        0x210372f -> :sswitch_47
        0x2075c8d7 -> :sswitch_3b
        0x763ee8e6 -> :sswitch_30
        0x763ee95f -> :sswitch_25
        0x763ee960 -> :sswitch_1a
        0x763f5d43 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_26a
    .packed-switch 0x0
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_152
        :pswitch_152
        :pswitch_135
        :pswitch_123
        :pswitch_123
        :pswitch_10f
        :pswitch_10f
        :pswitch_fb
        :pswitch_fb
        :pswitch_e7
        :pswitch_e7
        :pswitch_d3
    .end packed-switch
.end method

.method private findResolution(Landroid/graphics/Rect;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .registers 8

    .line 326
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_2a

    aget-object v3, v0, v2

    .line 327
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ne v4, v5, :cond_27

    .line 328
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

    .line 292
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

    .line 293
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->isAspectRatio4_3(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 294
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->findResolution(Landroid/graphics/Rect;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v3

    if-eqz v3, :cond_6

    if-eqz v0, :cond_3c

    .line 296
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/2addr v4, v2

    .line 297
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 298
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v2, v5

    if-le v4, v2, :cond_6

    :cond_3c
    move-object v0, v3

    goto :goto_6

    .line 302
    :cond_3e
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->isAspectRatio16_9(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 303
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->findResolution(Landroid/graphics/Rect;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v3

    if-eqz v3, :cond_6

    if-eqz v1, :cond_68

    .line 305
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/2addr v4, v2

    .line 306
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 307
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

    .line 315
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

    .line 317
    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getValue()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, p1

    return-object v1

    :cond_8b
    if-eqz v1, :cond_96

    .line 319
    new-array v0, v2, [Ljava/lang/String;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getValue()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    return-object v0

    .line 322
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

    .line 281
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

    .line 336
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_10

    goto :goto_20

    .line 339
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

    .line 344
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_10

    goto :goto_20

    .line 347
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

.method private isNoneResolutionSupported([Ljava/lang/String;Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1f

    .line 354
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_1f

    aget-object v3, p1, v2

    .line 357
    :try_start_9
    const-class v4, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    invoke-static {v4, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_11} :catch_1c

    .line 362
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    return v1

    :catch_1c
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_1f
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public getDefaultResolution()Ljava/lang/String;
    .registers 2

    .line 273
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mDefaultResolution:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultVideoSize()Ljava/lang/String;
    .registers 2

    .line 277
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mDefaultVideoSize:Ljava/lang/String;

    return-object v0
.end method

.method public getResolutionOptions()[Ljava/lang/String;
    .registers 2

    .line 261
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mResolutionOptions:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getSuperiorAutoResolutionOptions()[Ljava/lang/String;
    .registers 2

    .line 265
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mSuperiorAutoResolutionOptions:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getVideoSizeOptions()[Ljava/lang/String;
    .registers 2

    .line 269
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mVideoSizeOptions:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
