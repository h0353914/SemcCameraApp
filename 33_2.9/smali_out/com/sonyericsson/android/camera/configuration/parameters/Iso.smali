.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/Iso;
.super Ljava/lang/Enum;
.source "Iso.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/Iso;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

.field public static final enum ISO_100:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

.field public static final enum ISO_12800:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

.field public static final enum ISO_1600:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

.field public static final enum ISO_200:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

.field public static final enum ISO_25600:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

.field public static final enum ISO_3200:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

.field public static final enum ISO_400:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

.field public static final enum ISO_50:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

.field public static final enum ISO_51200:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

.field public static final enum ISO_6400:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

.field public static final enum ISO_800:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

.field public static final enum ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

.field public static final TAG:Ljava/lang/String; = "Iso"

.field private static mIndexOfDefault:I = 0x0

.field private static final sParameterTextId:I = 0x7f0f02ad


# instance fields
.field private final mAeMode:Ljava/lang/String;

.field private final mIconId:I

.field private final mIsoValue:I

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .registers 31

    .line 30
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const-string v1, "ISO_AUTO"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const v4, 0x7f0f026a

    const-string v5, "auto"

    const/4 v6, -0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 38
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const-string v9, "ISO_50"

    const/4 v10, 0x1

    const/4 v11, -0x1

    const v12, 0x7f0f02a0

    const-string v13, "iso-prio"

    const/16 v14, 0x32

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_50:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 43
    new-instance v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const-string v16, "ISO_100"

    const/16 v17, 0x2

    const/16 v18, -0x1

    const v19, 0x7f0f0281

    const-string v20, "iso-prio"

    const/16 v21, 0x64

    move-object v15, v1

    invoke-direct/range {v15 .. v21}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_100:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 48
    new-instance v2, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const-string v9, "ISO_200"

    const/4 v10, 0x3

    const v12, 0x7f0f028f

    const-string v13, "iso-prio"

    const/16 v14, 0xc8

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_200:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 53
    new-instance v3, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const-string v16, "ISO_400"

    const/16 v17, 0x4

    const v19, 0x7f0f029c

    const-string v20, "iso-prio"

    const/16 v21, 0x190

    move-object v15, v3

    invoke-direct/range {v15 .. v21}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_400:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 58
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const-string v9, "ISO_800"

    const/4 v10, 0x5

    const v12, 0x7f0f02a8

    const-string v13, "iso-prio"

    const/16 v14, 0x320

    move-object v8, v4

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_800:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 63
    new-instance v5, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const-string v16, "ISO_1600"

    const/16 v17, 0x6

    const v19, 0x7f0f028a

    const-string v20, "iso-prio"

    const/16 v21, 0x640

    move-object v15, v5

    invoke-direct/range {v15 .. v21}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_1600:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 68
    new-instance v6, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const-string v9, "ISO_3200"

    const/4 v10, 0x7

    const v12, 0x7f0f0297

    const-string v13, "iso-prio"

    const/16 v14, 0xc80

    move-object v8, v6

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_3200:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 73
    new-instance v8, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const-string v16, "ISO_6400"

    const/16 v17, 0x8

    const v19, 0x7f0f02a3

    const-string v20, "iso-prio"

    const/16 v21, 0x1900

    move-object v15, v8

    invoke-direct/range {v15 .. v21}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v8, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_6400:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 78
    new-instance v16, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const-string v10, "ISO_12800"

    const/16 v11, 0x9

    const/4 v12, -0x1

    const v13, 0x7f0f0287

    const-string v14, "iso-prio"

    const/16 v15, 0x3200

    move-object/from16 v9, v16

    invoke-direct/range {v9 .. v15}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v16, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_12800:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 83
    new-instance v9, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const-string v18, "ISO_25600"

    const/16 v19, 0xa

    const/16 v20, -0x1

    const v21, 0x7f0f0293

    const-string v22, "iso-prio"

    const/16 v23, 0x6400

    move-object/from16 v17, v9

    invoke-direct/range {v17 .. v23}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_25600:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 88
    new-instance v10, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const-string v25, "ISO_51200"

    const/16 v26, 0xb

    const/16 v27, -0x1

    const v28, 0x7f0f02a1

    const-string v29, "iso-prio"

    const v30, 0xc800

    move-object/from16 v24, v10

    invoke-direct/range {v24 .. v30}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v10, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_51200:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const/16 v11, 0xc

    new-array v11, v11, [Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const/4 v12, 0x0

    aput-object v7, v11, v12

    const/4 v7, 0x1

    aput-object v0, v11, v7

    const/4 v0, 0x2

    aput-object v1, v11, v0

    const/4 v0, 0x3

    aput-object v2, v11, v0

    const/4 v0, 0x4

    aput-object v3, v11, v0

    const/4 v0, 0x5

    aput-object v4, v11, v0

    const/4 v0, 0x6

    aput-object v5, v11, v0

    const/4 v0, 0x7

    aput-object v6, v11, v0

    const/16 v0, 0x8

    aput-object v8, v11, v0

    const/16 v0, 0x9

    aput-object v16, v11, v0

    const/16 v0, 0xa

    aput-object v9, v11, v0

    const/16 v0, 0xb

    aput-object v10, v11, v0

    .line 29
    sput-object v11, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 114
    sput v7, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->mIndexOfDefault:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 117
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->mIconId:I

    .line 118
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->mTextId:I

    .line 119
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->mAeMode:Ljava/lang/String;

    .line 120
    iput p6, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->mIsoValue:I

    return-void
.end method

.method public static adjustToSupportedValue(Lcom/sonyericsson/android/camera/configuration/parameters/Iso;[Lcom/sonyericsson/android/camera/configuration/parameters/Iso;)Lcom/sonyericsson/android/camera/configuration/parameters/Iso;
    .registers 6

    .line 300
    array-length v0, p1

    if-lez v0, :cond_39

    .line 301
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v0, :cond_c

    array-length v3, p1

    if-ne v3, v2, :cond_11

    :cond_c
    aget-object v3, p1, v1

    if-ne v3, v0, :cond_11

    return-object v0

    .line 307
    :cond_11
    aget-object v3, p1, v1

    if-eq v3, v0, :cond_16

    goto :goto_17

    :cond_16
    move v1, v2

    .line 309
    :goto_17
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getIsoValue()I

    move-result v0

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getIsoValue()I

    move-result v3

    if-ge v0, v3, :cond_26

    .line 310
    aget-object p0, p1, v1

    goto :goto_38

    .line 311
    :cond_26
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getIsoValue()I

    move-result v0

    array-length v1, p1

    sub-int/2addr v1, v2

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getIsoValue()I

    move-result v1

    if-le v0, v1, :cond_38

    .line 312
    array-length p0, p1

    sub-int/2addr p0, v2

    aget-object p0, p1, p0

    :cond_38
    :goto_38
    return-object p0

    .line 317
    :cond_39
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    return-object p0
.end method

.method public static canBeManuallySetWith(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)Z
    .registers 6

    .line 278
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    .line 280
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->MANUAL_ISO_SUPPORTED_PICTURE_SIZE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 281
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v2, v3, :cond_14

    .line 282
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ne v0, v2, :cond_14

    :cond_3d
    return v1
.end method

.method public static getIndexOfDefault()I
    .registers 1

    .line 192
    sget v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->mIndexOfDefault:I

    return v0
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/Iso;
    .registers 13

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object v1

    .line 203
    iget-object v2, v1, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->AE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 204
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_25

    new-array p0, v4, [Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 205
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    return-object p0

    .line 206
    :cond_25
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 208
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_34
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v2, :cond_123

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v2, :cond_123

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v2, :cond_123

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v2, :cond_123

    .line 213
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4d

    goto/16 :goto_123

    .line 227
    :cond_4d
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Iso$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FusionMode:[I

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->ordinal()I

    move-result p2

    aget p2, v2, p2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_78

    if-eq p2, v3, :cond_69

    .line 243
    iget-object p2, v1, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->ISO_RANGE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Range;

    .line 244
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_100:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getIsoValue()I

    move-result v1

    goto :goto_db

    .line 237
    :cond_69
    iget-object p2, v1, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->FUSION_ISO_RANGE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Range;

    .line 238
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_1600:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getIsoValue()I

    move-result v1

    goto :goto_db

    .line 229
    :cond_78
    new-instance p2, Landroid/util/Range;

    iget-object v3, v1, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->ISO_RANGE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 230
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v5, v1, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->FUSION_ISO_RANGE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 231
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 230
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v5, v1, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->ISO_RANGE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 232
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v1, v1, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->FUSION_ISO_RANGE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 233
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 232
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p2, v3, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 234
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_1600:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getIsoValue()I

    move-result v1

    .line 248
    :goto_db
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    move-result-object v3

    array-length v5, v3

    move v6, v4

    :goto_e1
    if-ge v6, v5, :cond_11a

    aget-object v7, v3, v6

    .line 254
    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getIsoValue()I

    move-result v8

    invoke-virtual {p2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lt v8, v9, :cond_117

    .line 255
    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getIsoValue()I

    move-result v8

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_3200:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getIsoValue()I

    move-result v9

    if-gt v8, v9, :cond_117

    .line 256
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->canBeManuallySetWith(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)Z

    move-result v8

    if-eqz v8, :cond_117

    .line 257
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getIsoValue()I

    move-result v7

    if-gt v7, v1, :cond_117

    .line 261
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v2

    sput v7, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->mIndexOfDefault:I

    :cond_117
    add-int/lit8 v6, v6, 0x1

    goto :goto_e1

    :cond_11a
    new-array p0, v4, [Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 267
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    return-object p0

    :cond_123
    :goto_123
    new-array p0, v4, [Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 214
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/Iso;
    .registers 2

    .line 29
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/Iso;
    .registers 1

    .line 29
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .registers 2

    .line 130
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/Iso;)V

    return-void
.end method

.method public getIconId()I
    .registers 1

    .line 148
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->mIconId:I

    return p0
.end method

.method public getIsoValue()I
    .registers 1

    .line 172
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->mIsoValue:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .registers 1

    .line 138
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .registers 1

    const p0, 0x7f0f02ad

    return p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 177
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextId()I
    .registers 1

    .line 158
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 168
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->mAeMode:Ljava/lang/String;

    return-object p0
.end method
