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

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mResolutionOptions:[Ljava/lang/String;

    .line 49
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mSuperiorAutoResolutionOptions:[Ljava/lang/String;

    .line 50
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mVideoSizeOptions:[Ljava/lang/String;

    const-string v0, ""

    .line 51
    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mDefaultResolution:Ljava/lang/String;

    const-string v0, ""

    .line 52
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

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/ResolutionDependence;->isDependOnAspect(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 77
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    sparse-switch v1, :sswitch_data_1b2

    goto/16 :goto_a2

    :sswitch_17
    const-string v1, "SEM13BS1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a2

    const/4 p2, 0x5

    goto/16 :goto_a3

    :sswitch_22
    const-string v1, "MTM13BS0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a2

    const/16 p2, 0xb

    goto/16 :goto_a3

    :sswitch_2e
    const-string v1, "LGI13BS0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a2

    const/16 p2, 0xa

    goto/16 :goto_a3

    :sswitch_3a
    const-string v1, "LGI08BS0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a2

    const/4 p2, 0x6

    goto/16 :goto_a3

    :sswitch_45
    const-string v1, "LGI05BN1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a2

    const/16 p2, 0x8

    goto :goto_a3

    :sswitch_50
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a2

    const/16 p2, 0xc

    goto :goto_a3

    :sswitch_5b
    const-string v1, "SOS20FW0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a2

    move p2, v3

    goto :goto_a3

    :sswitch_65
    const-string v1, "CHI08BS0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a2

    const/4 p2, 0x7

    goto :goto_a3

    :sswitch_6f
    const-string v1, "CHI05BN1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a2

    const/16 p2, 0x9

    goto :goto_a3

    :sswitch_7a
    const-string v1, "SOI20BSA"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a2

    const/4 p2, 0x3

    goto :goto_a3

    :sswitch_84
    const-string v1, "SOI20BS2"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a2

    move p2, v2

    goto :goto_a3

    :sswitch_8e
    const-string v1, "SOI20BS0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a2

    move p2, v4

    goto :goto_a3

    :sswitch_98
    const-string v1, "SOI13BS1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a2

    const/4 p2, 0x4

    goto :goto_a3

    :cond_a2
    :goto_a2
    const/4 p2, -0x1

    :goto_a3
    packed-switch p2, :pswitch_data_1e8

    .line 187
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getMaxResolutions(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mResolutionOptions:[Ljava/lang/String;

    .line 188
    iget-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mResolutionOptions:[Ljava/lang/String;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mSuperiorAutoResolutionOptions:[Ljava/lang/String;

    .line 199
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getMaxResolutions(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p2

    array-length p2, p2

    if-ne p2, v3, :cond_18e

    .line 200
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_185

    .line 201
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getMaxResolutions(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v4

    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mDefaultResolution:Ljava/lang/String;

    goto/16 :goto_196

    :pswitch_c7
    const p2, 0x7f030004

    const p3, 0x7f03000a

    const v0, 0x7f030013

    const v1, 0x7f0f0355

    const v2, 0x7f0f0367

    goto/16 :goto_152

    :pswitch_d8
    const p2, 0x7f030003

    const p3, 0x7f030009

    const v0, 0x7f030012

    const v1, 0x7f0f0354

    const v2, 0x7f0f0366

    goto/16 :goto_152

    :pswitch_e9
    const p2, 0x7f030005

    const p3, 0x7f03000b

    const v0, 0x7f030014

    const v1, 0x7f0f0356

    const v2, 0x7f0f0368

    goto :goto_152

    :pswitch_f9
    const/high16 p2, 0x7f030000

    const p3, 0x7f030006

    const v0, 0x7f03000e

    const v1, 0x7f0f0351

    const v2, 0x7f0f0361

    goto :goto_152

    :pswitch_108
    const p2, 0x7f030002

    const p3, 0x7f030008

    .line 107
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->is4KVideoSizeSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_118

    const v1, 0x7f03000d

    goto :goto_11b

    :cond_118
    const v1, 0x7f030010

    .line 112
    :goto_11b
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_125

    const v0, 0x7f0f0353

    goto :goto_128

    :cond_125
    const v0, 0x7f0f0360

    :goto_128
    const v2, 0x7f0f0363

    goto :goto_14f

    :pswitch_12c
    const p2, 0x7f030001

    const p3, 0x7f030007

    .line 85
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->is4KVideoSizeSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_13c

    const v1, 0x7f03000c

    goto :goto_13f

    :cond_13c
    const v1, 0x7f03000f

    .line 90
    :goto_13f
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_149

    const v0, 0x7f0f0352

    goto :goto_14c

    :cond_149
    const v0, 0x7f0f035f

    :goto_14c
    const v2, 0x7f0f0362

    :goto_14f
    move v5, v1

    move v1, v0

    move v0, v5

    .line 219
    :goto_152
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mResolutionOptions:[Ljava/lang/String;

    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mSuperiorAutoResolutionOptions:[Ljava/lang/String;

    .line 222
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mVideoSizeOptions:[Ljava/lang/String;

    .line 223
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mDefaultResolution:Ljava/lang/String;

    .line 224
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mDefaultVideoSize:Ljava/lang/String;

    return-void

    .line 203
    :cond_185
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getMaxResolutions(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mDefaultResolution:Ljava/lang/String;

    goto :goto_196

    .line 206
    :cond_18e
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getMaxResolutions(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v4

    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mDefaultResolution:Ljava/lang/String;

    .line 210
    :goto_196
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f030011

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mVideoSizeOptions:[Ljava/lang/String;

    .line 214
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0f0364

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mDefaultVideoSize:Ljava/lang/String;

    return-void

    nop

    :sswitch_data_1b2
    .sparse-switch
        -0x7f95b4af -> :sswitch_98
        -0x7f88fa4c -> :sswitch_8e
        -0x7f88fa4a -> :sswitch_84
        -0x7f88fa3b -> :sswitch_7a
        -0x700150c4 -> :sswitch_6f
        -0x6ffff30d -> :sswitch_65
        -0x6e787496 -> :sswitch_5b
        0x0 -> :sswitch_50
        0x20307d2 -> :sswitch_45
        0x2046589 -> :sswitch_3a
        0x210372f -> :sswitch_2e
        0x2075c8d7 -> :sswitch_22
        0x763f5d43 -> :sswitch_17
    .end sparse-switch

    :pswitch_data_1e8
    .packed-switch 0x0
        :pswitch_12c
        :pswitch_12c
        :pswitch_108
        :pswitch_108
        :pswitch_f9
        :pswitch_f9
        :pswitch_e9
        :pswitch_e9
        :pswitch_d8
        :pswitch_d8
        :pswitch_c7
        :pswitch_c7
    .end packed-switch
.end method

.method private findResolution(Landroid/graphics/Rect;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .registers 7

    .line 293
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_2a

    aget-object v2, p0, v1

    .line 294
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v3, v4, :cond_27

    .line 295
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

    .line 259
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

    .line 260
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->isAspectRatio4_3(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 261
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->findResolution(Landroid/graphics/Rect;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v3

    if-eqz v3, :cond_6

    if-eqz v0, :cond_3c

    .line 263
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/2addr v4, v2

    .line 264
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 265
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v2, v5

    if-le v4, v2, :cond_6

    :cond_3c
    move-object v0, v3

    goto :goto_6

    .line 269
    :cond_3e
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->isAspectRatio16_9(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 270
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->findResolution(Landroid/graphics/Rect;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v3

    if-eqz v3, :cond_6

    if-eqz v1, :cond_68

    .line 272
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/2addr v4, v2

    .line 273
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 274
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
    const/4 p0, 0x1

    const/4 p1, 0x0

    if-eqz v0, :cond_80

    if-eqz v1, :cond_80

    const/4 v2, 0x2

    .line 282
    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getValue()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getValue()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, p0

    return-object v2

    :cond_80
    if-eqz v0, :cond_8b

    .line 284
    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getValue()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, p1

    return-object p0

    :cond_8b
    if-eqz v1, :cond_96

    .line 286
    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getValue()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, p1

    return-object p0

    .line 289
    :cond_96
    new-array p0, p0, [Ljava/lang/String;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getValue()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, p1

    return-object p0
.end method

.method private is4KVideoSizeSupported(Landroid/content/Context;)Z
    .registers 2

    .line 248
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

    if-eqz p0, :cond_20

    .line 303
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_10

    goto :goto_20

    .line 306
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

    .line 311
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_10

    goto :goto_20

    .line 314
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
    .registers 1

    .line 240
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mDefaultResolution:Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultVideoSize()Ljava/lang/String;
    .registers 1

    .line 244
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mDefaultVideoSize:Ljava/lang/String;

    return-object p0
.end method

.method public getResolutionOptions()[Ljava/lang/String;
    .registers 1

    .line 228
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mResolutionOptions:[Ljava/lang/String;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getSuperiorAutoResolutionOptions()[Ljava/lang/String;
    .registers 1

    .line 232
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mSuperiorAutoResolutionOptions:[Ljava/lang/String;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getVideoSizeOptions()[Ljava/lang/String;
    .registers 1

    .line 236
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->mVideoSizeOptions:[Ljava/lang/String;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method
