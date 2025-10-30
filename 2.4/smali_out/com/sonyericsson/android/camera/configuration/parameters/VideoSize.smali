.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
.super Ljava/lang/Enum;
.source "VideoSize.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field public static final enum FOUR_K_UHD_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field public static final enum FOUR_K_UHD_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field public static final enum FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field public static final enum FULL_HD_60FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field public static final enum HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field public static final enum HD_120FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field public static final enum MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field public static final enum SQUARE_FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field public static final TAG:Ljava/lang/String; = "VideoSize"

.field public static final enum VGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field private static final sParameterTextId:I = 0x7f0e03a0


# instance fields
.field private final mIconId:I

.field private final mIsConstraint:Z

.field private mTextId:I

.field private mVideoRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 25

    .line 34
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const-string v1, "FOUR_K_UHD_H264"

    new-instance v5, Landroid/graphics/Rect;

    const/16 v8, 0x870

    const/16 v9, 0xf00

    const/4 v10, 0x0

    invoke-direct {v5, v10, v10, v9, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, 0x0

    const/4 v3, -0x1

    const v4, 0x7f0e0389

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;Z)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 40
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const-string v12, "FOUR_K_UHD_H265"

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v10, v10, v9, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v13, 0x1

    const/4 v14, -0x1

    const v15, 0x7f0e0389

    const/16 v17, 0x0

    move-object v11, v0

    move-object/from16 v16, v1

    invoke-direct/range {v11 .. v17}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 46
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const-string v3, "FULL_HD_60FPS"

    new-instance v7, Landroid/graphics/Rect;

    const/16 v1, 0x780

    const/16 v9, 0x438

    invoke-direct {v7, v10, v10, v1, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v4, 0x2

    const/4 v5, -0x1

    const v6, 0x7f0e038c

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD_60FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 52
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const-string v12, "FULL_HD"

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v10, v10, v1, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v13, 0x3

    const v15, 0x7f0e038f

    move-object v11, v0

    move-object/from16 v16, v2

    invoke-direct/range {v11 .. v17}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 58
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const-string v19, "SQUARE_FULL_HD"

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v10, v10, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v20, 0x4

    const/16 v21, -0x1

    const v22, 0x7f0e039a

    const/16 v24, 0x0

    move-object/from16 v18, v0

    move-object/from16 v23, v1

    invoke-direct/range {v18 .. v24}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->SQUARE_FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 64
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const-string v3, "HD_120FPS"

    new-instance v7, Landroid/graphics/Rect;

    const/16 v1, 0x2d0

    const/16 v9, 0x500

    invoke-direct {v7, v10, v10, v9, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v4, 0x5

    const/4 v6, -0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD_120FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 69
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const-string v12, "HD"

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v10, v10, v9, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v13, 0x6

    const v15, 0x7f0e0393

    move-object v11, v0

    move-object/from16 v16, v2

    invoke-direct/range {v11 .. v17}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 74
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const-string v4, "VGA"

    new-instance v8, Landroid/graphics/Rect;

    const/16 v1, 0x280

    const/16 v2, 0x1e0

    invoke-direct {v8, v10, v10, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v5, 0x7

    const v7, 0x7f0e0398

    const/4 v9, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 83
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const-string v12, "MMS"

    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0xb0

    const/16 v3, 0x90

    invoke-direct {v1, v10, v10, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v13, 0x8

    const v15, 0x7f0e0394

    const/16 v17, 0x1

    move-object v11, v0

    move-object/from16 v16, v1

    invoke-direct/range {v11 .. v17}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const/16 v0, 0x9

    .line 33
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD_60FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->SQUARE_FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD_120FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILandroid/graphics/Rect;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/graphics/Rect;",
            "Z)V"
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 111
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mIconId:I

    .line 112
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mTextId:I

    .line 113
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    .line 114
    iput-boolean p6, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mIsConstraint:Z

    return-void
.end method

.method private static equals(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 4

    .line 232
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_16

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-ne p0, p1, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method private static findVideoSizeWithConfiguration(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Ljava/lang/String;
    .registers 9

    .line 265
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/Configurations;->getVideoQuality()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_15

    .line 268
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 269
    invoke-static {p2, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isContents([Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 270
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    goto :goto_56

    :cond_15
    if-nez v2, :cond_22

    .line 271
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->SQUARE_FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 272
    invoke-static {p2, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isContents([Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 273
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->SQUARE_FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    goto :goto_56

    :cond_22
    const-wide/16 v2, 0x5

    cmp-long v2, v0, v2

    if-nez v2, :cond_33

    .line 274
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 275
    invoke-static {p2, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isContents([Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 276
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    goto :goto_56

    :cond_33
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_44

    .line 277
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 278
    invoke-static {p2, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isContents([Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 279
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    goto :goto_56

    :cond_44
    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-nez v0, :cond_55

    .line 281
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {p2, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isContents([Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 282
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    goto :goto_56

    :cond_55
    const/4 v0, 0x0

    :goto_56
    if-nez v0, :cond_65

    .line 287
    iget-object p0, p1, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->RESOLUTION_CAPABILITY:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getDefaultVideoSize()Ljava/lang/String;

    move-result-object p0

    goto :goto_7e

    :cond_65
    if-eqz p3, :cond_6b

    .line 290
    invoke-static {p0, v0, p2, p3, p4}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoSizeWithRecordTimeMoreThanGuaranteedTime(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v0

    :cond_6b
    if-eqz v0, :cond_72

    .line 295
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->name()Ljava/lang/String;

    move-result-object p0

    goto :goto_7e

    .line 297
    :cond_72
    iget-object p0, p1, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->RESOLUTION_CAPABILITY:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getDefaultVideoSize()Ljava/lang/String;

    move-result-object p0

    :goto_7e
    return-object p0
.end method

.method public static getDefaultValue(Lcom/sonyericsson/android/camera/ActionMode;Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .registers 6

    .line 250
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ActionMode;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object v0

    .line 251
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/ActionMode;->mIsOneShot:Z

    if-eqz v1, :cond_13

    .line 252
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getOptions(Lcom/sonyericsson/android/camera/ActionMode;Lcom/sonyericsson/android/camera/configuration/Configurations;)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p0

    .line 253
    invoke-static {p1, v0, p0, p2, p3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->findVideoSizeWithConfiguration(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1f

    .line 255
    :cond_13
    iget-object p0, v0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->RESOLUTION_CAPABILITY:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;

    .line 256
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getDefaultVideoSize()Ljava/lang/String;

    move-result-object p0

    .line 258
    :goto_1f
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p0

    return-object p0
.end method

.method private static getExpectedOptions([Ljava/lang/String;)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .registers 7

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_23

    .line 238
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_1a

    aget-object v4, p0, v3

    .line 239
    const-class v5, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {v5, v4}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 244
    :cond_1a
    new-array p0, v2, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    return-object p0

    .line 242
    :cond_23
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p0

    return-object p0
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/ActionMode;Lcom/sonyericsson/android/camera/configuration/Configurations;)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .registers 14

    .line 170
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ActionMode;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object v0

    .line 173
    iget-object v1, v0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->VIDEO_CONFIGURATION_MAP:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 175
    iget-object v2, p0, Lcom/sonyericsson/android/camera/ActionMode;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD_60FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 177
    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameRate(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)I

    move-result v3

    .line 176
    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFullHdVideoFpsSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;I)Z

    move-result v2

    .line 175
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 180
    iget-object v0, v0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->RESOLUTION_CAPABILITY:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getVideoSizeOptions()[Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-static {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getExpectedOptions([Ljava/lang/String;)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v0

    .line 182
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 184
    array-length v4, v0

    const/4 v5, 0x0

    move v6, v5

    :goto_38
    if-ge v6, v4, :cond_90

    aget-object v7, v0, v6

    .line 186
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_40
    :goto_40
    :pswitch_40
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/android/camera/util/capability/VideoConfigurationMap;

    .line 187
    new-instance v10, Landroid/graphics/Rect;

    iget v11, v9, Lcom/sonyericsson/android/camera/util/capability/VideoConfigurationMap;->width:I

    iget v9, v9, Lcom/sonyericsson/android/camera/util/capability/VideoConfigurationMap;->height:I

    invoke-direct {v10, v5, v5, v11, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 188
    iget-object v9, v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    invoke-static {v9, v10}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->equals(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v9

    if-eqz v9, :cond_40

    .line 189
    invoke-interface {v3, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_64

    goto :goto_8d

    .line 192
    :cond_64
    sget-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize:[I

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_ac

    .line 215
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_40

    .line 211
    :pswitch_73
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_40

    .line 208
    :pswitch_77
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_40

    .line 205
    :pswitch_7b
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_40

    .line 202
    :pswitch_7f
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_40

    .line 197
    :pswitch_83
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_40

    .line 198
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_40

    :cond_8d
    :goto_8d
    add-int/lit8 v6, v6, 0x1

    goto :goto_38

    .line 223
    :cond_90
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/ActionMode;->mIsOneShot:Z

    if-eqz p0, :cond_a3

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/Configurations;->getVideoQuality()J

    move-result-wide p0

    long-to-int p0, p0

    if-nez p0, :cond_a3

    .line 224
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 225
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_a3
    new-array p0, v5, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {v3, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    return-object p0

    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_40
        :pswitch_83
        :pswitch_7f
        :pswitch_7b
        :pswitch_77
        :pswitch_73
    .end packed-switch
.end method

.method private static getVideoSizeWithRecordTimeMoreThanGuaranteedTime(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .registers 9

    .line 320
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->videoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->build()Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    move-result-object v0

    .line 321
    invoke-static {p0, v0, p3, p4}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->create(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/recorder/RecordingProfile;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/android/camera/util/MaxVideoSize;

    move-result-object v0

    .line 322
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->getMaxDuration()I

    move-result v0

    int-to-long v0, v0

    .line 323
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/Configurations;->getVideoMaxDurationInMillisecs()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_1f

    return-object p1

    .line 333
    :cond_1f
    invoke-static {p2, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isContents([Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gez v0, :cond_7c

    .line 335
    :cond_2b
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_7e

    :pswitch_36
    goto :goto_7c

    .line 357
    :pswitch_37
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {p2, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isContents([Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 358
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoSizeWithRecordTimeMoreThanGuaranteedTime(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p0

    return-object p0

    .line 349
    :pswitch_46
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {p2, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isContents([Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result p1

    if-eqz p1, :cond_55

    .line 350
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoSizeWithRecordTimeMoreThanGuaranteedTime(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p0

    return-object p0

    .line 353
    :cond_55
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoSizeWithRecordTimeMoreThanGuaranteedTime(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p0

    return-object p0

    .line 345
    :pswitch_5c
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoSizeWithRecordTimeMoreThanGuaranteedTime(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p0

    return-object p0

    .line 337
    :pswitch_63
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->SQUARE_FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {p2, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isContents([Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result p1

    if-eqz p1, :cond_72

    .line 338
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->SQUARE_FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoSizeWithRecordTimeMoreThanGuaranteedTime(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p0

    return-object p0

    .line 341
    :cond_72
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoSizeWithRecordTimeMoreThanGuaranteedTime(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p0

    return-object p0

    .line 364
    :pswitch_79
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    return-object p0

    :cond_7c
    :goto_7c
    return-object p1

    nop

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_79
        :pswitch_36
        :pswitch_63
        :pswitch_5c
        :pswitch_36
        :pswitch_36
        :pswitch_46
        :pswitch_37
    .end packed-switch
.end method

.method private static isContents([Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z
    .registers 6

    .line 304
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_12

    aget-object v3, p0, v2

    .line 305
    invoke-virtual {v3, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_12
    return v1
.end method

.method public static final preload()V
    .registers 0

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .registers 2

    .line 33
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .registers 1

    .line 33
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .registers 2

    .line 128
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    return-void
.end method

.method public getAspect()F
    .registers 3

    .line 392
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getIconId()I
    .registers 2

    .line 146
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mIconId:I

    return v0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .registers 2

    .line 136
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object v0
.end method

.method public getKeyTextId()I
    .registers 2

    const v0, 0x7f0e03a0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 376
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextId()I
    .registers 2

    .line 156
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 166
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoRect()Landroid/graphics/Rect;
    .registers 2

    .line 380
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public is4KVideo()Z
    .registers 3

    .line 396
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/16 v1, 0xf00

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    .line 397
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    const/16 v1, 0x870

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public isConstraint()Z
    .registers 2

    .line 118
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mIsConstraint:Z

    return v0
.end method
