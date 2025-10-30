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

.field public static final enum ISO_64:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

.field public static final enum ISO_6400:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

.field public static final enum ISO_800:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

.field public static final enum ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

.field public static final TAG:Ljava/lang/String; = "Iso"

.field private static mIndexOfDefault:I = 0x0

.field private static final sParameterTextId:I = 0x7f0e0237


# instance fields
.field private final mAeMode:Ljava/lang/String;

.field private final mIconId:I

.field private final mIsoValue:I

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 30
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const-string v1, "ISO_AUTO"

    const-string v5, "auto"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const v4, 0x7f0e0214

    const/4 v6, -0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 38
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const-string v9, "ISO_50"

    const-string v13, "iso-prio"

    const/4 v10, 0x1

    const/4 v11, -0x1

    const v12, 0x7f0e0230

    const/16 v14, 0x32

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_50:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 43
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const-string v2, "ISO_64"

    const-string v6, "iso-prio"

    const/4 v3, 0x2

    const/4 v4, -0x1

    const v5, 0x7f0e0233

    const/16 v7, 0x40

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_64:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 48
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const-string v9, "ISO_100"

    const-string v13, "iso-prio"

    const/4 v10, 0x3

    const v12, 0x7f0e0229

    const/16 v14, 0x64

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_100:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 53
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const-string v2, "ISO_200"

    const-string v6, "iso-prio"

    const/4 v3, 0x4

    const v5, 0x7f0e022c

    const/16 v7, 0xc8

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_200:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 58
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const-string v9, "ISO_400"

    const-string v13, "iso-prio"

    const/4 v10, 0x5

    const v12, 0x7f0e022f

    const/16 v14, 0x190

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_400:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 63
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const-string v2, "ISO_800"

    const-string v6, "iso-prio"

    const/4 v3, 0x6

    const v5, 0x7f0e0234

    const/16 v7, 0x320

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_800:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 68
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const-string v9, "ISO_1600"

    const-string v13, "iso-prio"

    const/4 v10, 0x7

    const v12, 0x7f0e022b

    const/16 v14, 0x640

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_1600:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 73
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const-string v2, "ISO_3200"

    const-string v6, "iso-prio"

    const/16 v3, 0x8

    const v5, 0x7f0e022e

    const/16 v7, 0xc80

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_3200:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 78
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const-string v9, "ISO_6400"

    const-string v13, "iso-prio"

    const/16 v10, 0x9

    const v12, 0x7f0e0232

    const/16 v14, 0x1900

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_6400:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 83
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const-string v2, "ISO_12800"

    const-string v6, "iso-prio"

    const/16 v3, 0xa

    const v5, 0x7f0e022a

    const/16 v7, 0x3200

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_12800:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 88
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const-string v9, "ISO_25600"

    const-string v13, "iso-prio"

    const/16 v10, 0xb

    const v12, 0x7f0e022d

    const/16 v14, 0x6400

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_25600:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 93
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const-string v2, "ISO_51200"

    const-string v6, "iso-prio"

    const/16 v3, 0xc

    const v5, 0x7f0e0231

    const v7, 0xc800

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_51200:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const/16 v0, 0xd

    .line 29
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_50:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_64:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_100:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_200:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_400:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const/4 v3, 0x5

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_800:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const/4 v3, 0x6

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_1600:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const/4 v3, 0x7

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_3200:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const/16 v3, 0x8

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_6400:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const/16 v3, 0x9

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_12800:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const/16 v3, 0xa

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_25600:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const/16 v3, 0xb

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_51200:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const/16 v3, 0xc

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 119
    sput v2, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->mIndexOfDefault:I

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

    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 122
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->mIconId:I

    .line 123
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->mTextId:I

    .line 124
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->mAeMode:Ljava/lang/String;

    .line 125
    iput p6, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->mIsoValue:I

    return-void
.end method

.method public static adjustToSupportedValue(Lcom/sonyericsson/android/camera/configuration/parameters/Iso;[Lcom/sonyericsson/android/camera/configuration/parameters/Iso;)Lcom/sonyericsson/android/camera/configuration/parameters/Iso;
    .registers 6

    .line 304
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v0, :cond_9

    array-length v0, p1

    if-ne v0, v2, :cond_10

    :cond_9
    aget-object v0, p1, v1

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    if-ne v0, v3, :cond_10

    return-object v3

    .line 310
    :cond_10
    aget-object v0, p1, v1

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    if-eq v0, v3, :cond_17

    goto :goto_18

    :cond_17
    move v1, v2

    .line 312
    :goto_18
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getIsoValue()I

    move-result v0

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getIsoValue()I

    move-result v3

    if-ge v0, v3, :cond_27

    .line 313
    aget-object p0, p1, v1

    goto :goto_39

    .line 314
    :cond_27
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getIsoValue()I

    move-result v0

    array-length v1, p1

    sub-int/2addr v1, v2

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getIsoValue()I

    move-result v1

    if-le v0, v1, :cond_39

    .line 315
    array-length p0, p1

    sub-int/2addr p0, v2

    aget-object p0, p1, p0

    :cond_39
    :goto_39
    return-object p0
.end method

.method public static canBeManuallySetWith(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)Z
    .registers 5

    .line 282
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    .line 284
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->MANUAL_ISO_SUPPORTED_PICTURE_SIZE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 285
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v1, v2, :cond_14

    .line 286
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ne v0, v1, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_3e
    const/4 p0, 0x0

    return p0
.end method

.method public static getIndexOfDefault()I
    .registers 1

    .line 197
    sget v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->mIndexOfDefault:I

    return v0
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/Iso;
    .registers 14

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 205
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object v1

    .line 208
    iget-object v2, v1, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->AE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 209
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_25

    .line 210
    new-array p0, v4, [Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    return-object p0

    .line 211
    :cond_25
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 213
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_36
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v3, :cond_155

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v3, :cond_155

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v3, :cond_155

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v3, :cond_155

    .line 218
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_4f

    goto/16 :goto_155

    :cond_4f
    const-string v3, "iso-prio"

    .line 223
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_60

    .line 224
    new-array p0, v4, [Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    return-object p0

    .line 231
    :cond_60
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Iso$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FusionMode:[I

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->ordinal()I

    move-result p2

    aget p2, v2, p2

    packed-switch p2, :pswitch_data_15e

    .line 247
    iget-object p2, v1, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->ISO_RANGE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Range;

    .line 248
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_100:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getIsoValue()I

    move-result v1

    goto :goto_ec

    .line 241
    :pswitch_7a
    iget-object p2, v1, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->FUSION_ISO_RANGE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Range;

    .line 242
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_1600:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getIsoValue()I

    move-result v1

    goto :goto_ec

    .line 233
    :pswitch_89
    new-instance p2, Landroid/util/Range;

    iget-object v2, v1, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->ISO_RANGE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 234
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v1, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->FUSION_ISO_RANGE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 235
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 234
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v1, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->ISO_RANGE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 236
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, v1, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->FUSION_ISO_RANGE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 237
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 236
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p2, v2, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 238
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_1600:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getIsoValue()I

    move-result v1

    .line 252
    :goto_ec
    invoke-virtual {p2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_50:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getIsoValue()I

    move-result v3

    const/4 v5, 0x1

    if-gt v2, v3, :cond_101

    move v2, v5

    goto :goto_102

    :cond_101
    move v2, v4

    .line 254
    :goto_102
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    move-result-object v3

    array-length v6, v3

    move v7, v4

    :goto_108
    if-ge v7, v6, :cond_14c

    aget-object v8, v3, v7

    .line 255
    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getIsoValue()I

    move-result v9

    invoke-virtual {p2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-lt v9, v10, :cond_149

    .line 256
    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getIsoValue()I

    move-result v9

    invoke-virtual {p2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-gt v9, v10, :cond_149

    if-eqz v2, :cond_133

    .line 257
    sget-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_64:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    if-ne v8, v9, :cond_133

    goto :goto_149

    .line 260
    :cond_133
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->canBeManuallySetWith(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)Z

    move-result v9

    if-eqz v9, :cond_149

    .line 261
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getIsoValue()I

    move-result v8

    if-gt v8, v1, :cond_149

    .line 265
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v5

    sput v8, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->mIndexOfDefault:I

    :cond_149
    :goto_149
    add-int/lit8 v7, v7, 0x1

    goto :goto_108

    .line 271
    :cond_14c
    new-array p0, v4, [Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    return-object p0

    .line 219
    :cond_155
    :goto_155
    new-array p0, v4, [Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    return-object p0

    :pswitch_data_15e
    .packed-switch 0x1
        :pswitch_89
        :pswitch_7a
    .end packed-switch
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

    .line 135
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/Iso;)V

    return-void
.end method

.method public getIconId()I
    .registers 2

    .line 153
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->mIconId:I

    return v0
.end method

.method public getIsoValue()I
    .registers 2

    .line 177
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->mIsoValue:I

    return v0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .registers 2

    .line 143
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object v0
.end method

.method public getKeyTextId()I
    .registers 2

    const v0, 0x7f0e0237

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 182
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextId()I
    .registers 2

    .line 163
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 173
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->mAeMode:Ljava/lang/String;

    return-object v0
.end method
