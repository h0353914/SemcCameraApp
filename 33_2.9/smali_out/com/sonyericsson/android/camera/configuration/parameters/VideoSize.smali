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

.field public static final enum FOUR_K_UHD_PLUS_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field public static final enum FOUR_K_UHD_PLUS_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field public static final enum FOUR_K_UHD_ULTRA_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field public static final enum FOUR_K_UHD_ULTRA_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field public static final enum FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field public static final enum FULL_HD_60FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field public static final enum FULL_HD_PLUS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field public static final enum FULL_HD_ULTRA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field public static final enum HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field public static final enum HD_120FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field public static final enum MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field public static final enum SQUARE_FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field public static final TAG:Ljava/lang/String; = "VideoSize"

.field public static final enum VGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field private static final sParameterTextId:I = 0x7f0f049e


# instance fields
.field private final mIconId:I

.field private final mIsConstraint:Z

.field private mTextId:I

.field private mVideoRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 37

    .line 34
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    new-instance v5, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/16 v9, 0xf00

    const/16 v10, 0x870

    invoke-direct {v5, v8, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v1, "FOUR_K_UHD_H264"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const v4, 0x7f0f047f

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;Z)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 40
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v8, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v12, "FOUR_K_UHD_H265"

    const/4 v13, 0x1

    const/4 v14, -0x1

    const v15, 0x7f0f047f

    const/16 v17, 0x0

    move-object v11, v0

    move-object/from16 v16, v1

    invoke-direct/range {v11 .. v17}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 46
    new-instance v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v3, 0x780

    invoke-direct {v2, v8, v8, v9, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v19, "FOUR_K_UHD_PLUS_H264"

    const/16 v20, 0x2

    const/16 v21, -0x1

    const v22, 0x7f0f0481

    const/16 v24, 0x0

    move-object/from16 v18, v1

    move-object/from16 v23, v2

    invoke-direct/range {v18 .. v24}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;Z)V

    sput-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_PLUS_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 52
    new-instance v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15, v8, v8, v9, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v11, "FOUR_K_UHD_PLUS_H265"

    const/4 v12, 0x3

    const/4 v13, -0x1

    const v14, 0x7f0f0481

    const/16 v16, 0x0

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;Z)V

    sput-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_PLUS_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 58
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v6, 0x66c

    invoke-direct {v5, v8, v8, v9, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v18, "FOUR_K_UHD_ULTRA_H264"

    const/16 v19, 0x4

    const/16 v20, -0x1

    const v21, 0x7f0f0483

    const/16 v23, 0x0

    move-object/from16 v17, v4

    move-object/from16 v22, v5

    invoke-direct/range {v17 .. v23}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;Z)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_ULTRA_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 64
    new-instance v5, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15, v8, v8, v9, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v11, "FOUR_K_UHD_ULTRA_H265"

    const/4 v12, 0x5

    const v14, 0x7f0f0483

    move-object v10, v5

    invoke-direct/range {v10 .. v16}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;Z)V

    sput-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_ULTRA_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 71
    new-instance v6, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    new-instance v9, Landroid/graphics/Rect;

    const/16 v10, 0x438

    invoke-direct {v9, v8, v8, v3, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v18, "FULL_HD_60FPS"

    const/16 v19, 0x6

    const v21, 0x7f0f0484

    move-object/from16 v17, v6

    move-object/from16 v22, v9

    invoke-direct/range {v17 .. v23}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;Z)V

    sput-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD_60FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 77
    new-instance v9, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15, v8, v8, v3, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v12, "FULL_HD"

    const/4 v13, 0x7

    const/4 v14, -0x1

    const v16, 0x7f0f0499

    const/16 v17, 0x0

    move-object v11, v9

    move-object/from16 v18, v15

    move/from16 v15, v16

    move-object/from16 v16, v18

    invoke-direct/range {v11 .. v17}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;Z)V

    sput-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 83
    new-instance v11, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    new-instance v12, Landroid/graphics/Rect;

    const/16 v13, 0x3c0

    invoke-direct {v12, v8, v8, v3, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v20, "FULL_HD_PLUS"

    const/16 v21, 0x8

    const/16 v22, -0x1

    const v23, 0x7f0f0489

    const/16 v25, 0x0

    move-object/from16 v19, v11

    move-object/from16 v24, v12

    invoke-direct/range {v19 .. v25}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;Z)V

    sput-object v11, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD_PLUS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 89
    new-instance v12, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v13, 0x338

    invoke-direct {v15, v8, v8, v3, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v14, "FULL_HD_ULTRA"

    const/16 v3, 0x9

    const/16 v16, -0x1

    const v17, 0x7f0f047c

    const/16 v19, 0x0

    move-object v13, v12

    move-object/from16 v18, v15

    move v15, v3

    invoke-direct/range {v13 .. v19}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;Z)V

    sput-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD_ULTRA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 95
    new-instance v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13, v8, v8, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v21, "SQUARE_FULL_HD"

    const/16 v22, 0xa

    const/16 v23, -0x1

    const v24, 0x7f0f0497

    const/16 v26, 0x0

    move-object/from16 v20, v3

    move-object/from16 v25, v13

    invoke-direct/range {v20 .. v26}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;Z)V

    sput-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->SQUARE_FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 100
    new-instance v10, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    new-instance v13, Landroid/graphics/Rect;

    const/16 v15, 0x500

    const/16 v14, 0x2d0

    invoke-direct {v13, v8, v8, v15, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v16, "HD_120FPS"

    const/16 v17, 0xb

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, 0x0

    move v8, v14

    move-object v14, v10

    move v8, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move-object/from16 v19, v13

    invoke-direct/range {v14 .. v20}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;Z)V

    sput-object v10, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD_120FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 105
    new-instance v13, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    new-instance v14, Landroid/graphics/Rect;

    move-object/from16 v16, v10

    const/4 v10, 0x0

    const/16 v15, 0x2d0

    invoke-direct {v14, v10, v10, v8, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v24, "HD"

    const/16 v25, 0xc

    const/16 v26, -0x1

    const v27, 0x7f0f049c

    const/16 v29, 0x0

    move-object/from16 v23, v13

    move-object/from16 v28, v14

    invoke-direct/range {v23 .. v29}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;Z)V

    sput-object v13, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 110
    new-instance v8, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    new-instance v10, Landroid/graphics/Rect;

    const/16 v14, 0x280

    const/16 v15, 0x1e0

    move-object/from16 v17, v13

    const/4 v13, 0x0

    invoke-direct {v10, v13, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v31, "VGA"

    const/16 v32, 0xd

    const/16 v33, -0x1

    const v34, 0x7f0f0495

    const/16 v36, 0x0

    move-object/from16 v30, v8

    move-object/from16 v35, v10

    invoke-direct/range {v30 .. v36}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;Z)V

    sput-object v8, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 119
    new-instance v10, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    new-instance v13, Landroid/graphics/Rect;

    const/16 v14, 0xb0

    const/16 v15, 0x90

    move-object/from16 v18, v8

    const/4 v8, 0x0

    invoke-direct {v13, v8, v8, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v23, "MMS"

    const/16 v24, 0xe

    const/16 v25, -0x1

    const v26, 0x7f0f0491

    const/16 v28, 0x1

    move-object/from16 v22, v10

    move-object/from16 v27, v13

    invoke-direct/range {v22 .. v28}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;Z)V

    sput-object v10, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const/16 v8, 0xf

    new-array v8, v8, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const/4 v13, 0x0

    aput-object v7, v8, v13

    const/4 v7, 0x1

    aput-object v0, v8, v7

    const/4 v0, 0x2

    aput-object v1, v8, v0

    const/4 v0, 0x3

    aput-object v2, v8, v0

    const/4 v0, 0x4

    aput-object v4, v8, v0

    const/4 v0, 0x5

    aput-object v5, v8, v0

    const/4 v0, 0x6

    aput-object v6, v8, v0

    const/4 v0, 0x7

    aput-object v9, v8, v0

    const/16 v0, 0x8

    aput-object v11, v8, v0

    const/16 v0, 0x9

    aput-object v12, v8, v0

    const/16 v0, 0xa

    aput-object v3, v8, v0

    const/16 v0, 0xb

    aput-object v16, v8, v0

    const/16 v0, 0xc

    aput-object v17, v8, v0

    const/16 v0, 0xd

    aput-object v18, v8, v0

    const/16 v0, 0xe

    aput-object v10, v8, v0

    .line 33
    sput-object v8, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

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

    .line 146
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 147
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mIconId:I

    .line 148
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mTextId:I

    .line 149
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    .line 150
    iput-boolean p6, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mIsConstraint:Z

    return-void
.end method

.method private static equals(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 4

    .line 251
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
    .registers 10

    .line 284
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/Configurations;->getVideoQuality()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 287
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 288
    invoke-static {p2, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isContents([Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v4

    if-eqz v4, :cond_13

    goto :goto_4c

    :cond_13
    if-nez v2, :cond_1e

    .line 290
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->SQUARE_FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 291
    invoke-static {p2, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isContents([Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_4c

    :cond_1e
    const-wide/16 v2, 0x5

    cmp-long v2, v0, v2

    if-nez v2, :cond_2d

    .line 293
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 294
    invoke-static {p2, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isContents([Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v2

    if-eqz v2, :cond_2d

    goto :goto_4c

    :cond_2d
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_3c

    .line 296
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 297
    invoke-static {p2, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isContents([Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v2

    if-eqz v2, :cond_3c

    goto :goto_4c

    :cond_3c
    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-nez v0, :cond_4b

    .line 300
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {p2, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isContents([Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v0

    if-eqz v0, :cond_4b

    goto :goto_4c

    :cond_4b
    const/4 v3, 0x0

    :goto_4c
    if-nez v3, :cond_5b

    .line 306
    iget-object p0, p1, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->RESOLUTION_CAPABILITY:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getDefaultVideoSize()Ljava/lang/String;

    move-result-object p0

    goto :goto_74

    :cond_5b
    if-eqz p3, :cond_61

    .line 309
    invoke-static {p0, v3, p2, p3, p4}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoSizeWithRecordTimeMoreThanGuaranteedTime(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v3

    :cond_61
    if-eqz v3, :cond_68

    .line 314
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->name()Ljava/lang/String;

    move-result-object p0

    goto :goto_74

    .line 316
    :cond_68
    iget-object p0, p1, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->RESOLUTION_CAPABILITY:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getDefaultVideoSize()Ljava/lang/String;

    move-result-object p0

    :goto_74
    return-object p0
.end method

.method public static getDefaultValue(Lcom/sonyericsson/android/camera/ActionMode;Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .registers 6

    .line 269
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ActionMode;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object v0

    .line 270
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/ActionMode;->mIsOneShot:Z

    if-eqz v1, :cond_13

    .line 271
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getOptions(Lcom/sonyericsson/android/camera/ActionMode;Lcom/sonyericsson/android/camera/configuration/Configurations;)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p0

    .line 272
    invoke-static {p1, v0, p0, p2, p3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->findVideoSizeWithConfiguration(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1f

    .line 274
    :cond_13
    iget-object p0, v0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->RESOLUTION_CAPABILITY:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;

    .line 275
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getDefaultVideoSize()Ljava/lang/String;

    move-result-object p0

    .line 277
    :goto_1f
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p0

    return-object p0
.end method

.method private static getExpectedOptions([Ljava/lang/String;)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .registers 7

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_23

    .line 257
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_1a

    aget-object v4, p0, v3

    .line 258
    const-class v5, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {v5, v4}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_1a
    new-array p0, v2, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 263
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    return-object p0

    .line 261
    :cond_23
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p0

    return-object p0
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/ActionMode;Lcom/sonyericsson/android/camera/configuration/Configurations;)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .registers 14

    .line 206
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ActionMode;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object v0

    .line 209
    iget-object v1, v0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->VIDEO_CONFIGURATION:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 210
    iget-object v2, p0, Lcom/sonyericsson/android/camera/ActionMode;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD_60FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 212
    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameRate(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)I

    move-result v3

    .line 211
    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFullHdVideoFpsSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;I)Z

    move-result v2

    .line 210
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 215
    iget-object v0, v0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->RESOLUTION_CAPABILITY:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getVideoSizeOptions()[Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-static {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getExpectedOptions([Ljava/lang/String;)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v0

    .line 217
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 219
    array-length v4, v0

    const/4 v5, 0x0

    move v6, v5

    :goto_38
    if-ge v6, v4, :cond_80

    aget-object v7, v0, v6

    .line 221
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_40
    :goto_40
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;

    .line 222
    new-instance v10, Landroid/graphics/Rect;

    iget v11, v9, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mWidth:I

    iget v9, v9, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mHeight:I

    invoke-direct {v10, v5, v5, v11, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 223
    iget-object v9, v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    invoke-static {v9, v10}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->equals(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v9

    if-eqz v9, :cond_40

    .line 224
    sget-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize:[I

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->ordinal()I

    move-result v10

    aget v9, v9, v10

    const/4 v10, 0x1

    if-eq v9, v10, :cond_79

    const/4 v10, 0x2

    if-eq v9, v10, :cond_6f

    .line 234
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_40

    .line 229
    :cond_6f
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_40

    .line 230
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_40

    .line 226
    :cond_79
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_40

    :cond_7d
    add-int/lit8 v6, v6, 0x1

    goto :goto_38

    .line 242
    :cond_80
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/ActionMode;->mIsOneShot:Z

    if-eqz p0, :cond_93

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/Configurations;->getVideoQuality()J

    move-result-wide p0

    long-to-int p0, p0

    if-nez p0, :cond_93

    .line 243
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 244
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_93
    new-array p0, v5, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 247
    invoke-interface {v3, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    return-object p0
.end method

.method private static getVideoSizeWithRecordTimeMoreThanGuaranteedTime(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .registers 9

    .line 339
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->videoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->build()Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    move-result-object v0

    .line 340
    invoke-static {p0, v0, p3, p4}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->create(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/recorder/RecordingProfile;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/android/camera/util/MaxVideoSize;

    move-result-object v0

    .line 341
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->getMaxDuration()I

    move-result v0

    int-to-long v0, v0

    .line 342
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/Configurations;->getVideoMaxDurationInMillisecs()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_1f

    return-object p1

    .line 352
    :cond_1f
    invoke-static {p2, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isContents([Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gez v0, :cond_50

    .line 354
    :cond_2b
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_80

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6c

    const/4 v1, 0x4

    if-eq v0, v1, :cond_65

    const/4 v1, 0x5

    if-eq v0, v1, :cond_51

    const/4 v1, 0x6

    if-eq v0, v1, :cond_43

    goto :goto_50

    .line 376
    :cond_43
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {p2, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isContents([Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 377
    invoke-static {p0, v0, p2, p3, p4}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoSizeWithRecordTimeMoreThanGuaranteedTime(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p0

    return-object p0

    :cond_50
    :goto_50
    return-object p1

    .line 368
    :cond_51
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {p2, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isContents([Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 369
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoSizeWithRecordTimeMoreThanGuaranteedTime(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p0

    return-object p0

    .line 372
    :cond_5e
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoSizeWithRecordTimeMoreThanGuaranteedTime(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p0

    return-object p0

    .line 364
    :cond_65
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoSizeWithRecordTimeMoreThanGuaranteedTime(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p0

    return-object p0

    .line 356
    :cond_6c
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->SQUARE_FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {p2, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isContents([Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 357
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoSizeWithRecordTimeMoreThanGuaranteedTime(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p0

    return-object p0

    .line 360
    :cond_79
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoSizeWithRecordTimeMoreThanGuaranteedTime(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p0

    return-object p0

    .line 383
    :cond_80
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    return-object p0
.end method

.method public static is4KVideo16To9(Landroid/graphics/Rect;)Z
    .registers 2

    .line 428
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 429
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    return p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    return p0
.end method

.method public static is4KVideo21To9(Landroid/graphics/Rect;)Z
    .registers 2

    .line 436
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_ULTRA_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_ULTRA_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 437
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    return p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    return p0
.end method

.method private static isContents([Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z
    .registers 6

    .line 323
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_12

    aget-object v3, p0, v2

    .line 324
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

    .line 164
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    return-void
.end method

.method public getAspect()F
    .registers 3

    .line 411
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public getIconId()I
    .registers 1

    .line 182
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mIconId:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .registers 1

    .line 172
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .registers 1

    const p0, 0x7f0f049e

    return p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 395
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextId()I
    .registers 1

    .line 192
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 202
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVideoRect()Landroid/graphics/Rect;
    .registers 1

    .line 399
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public is4KVideo()Z
    .registers 4

    .line 415
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/16 v1, 0xf00

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    .line 416
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    const/16 v2, 0x870

    if-eq v0, v2, :cond_38

    :cond_14
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    .line 417
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    .line 418
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    const/16 v2, 0x780

    if-eq v0, v2, :cond_38

    :cond_26
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    .line 419
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ne v0, v1, :cond_3a

    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    .line 420
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    const/16 v0, 0x66c

    if-ne p0, v0, :cond_3a

    :cond_38
    const/4 p0, 0x1

    return p0

    :cond_3a
    const/4 p0, 0x0

    return p0
.end method

.method public isConstraint()Z
    .registers 1

    .line 154
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mIsConstraint:Z

    return p0
.end method

.method public isFhd60Fps()Z
    .registers 2

    .line 444
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD_60FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method
