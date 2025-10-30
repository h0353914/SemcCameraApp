.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
.super Ljava/lang/Enum;
.source "Resolution.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum EIGHT_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum FIVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum NINETEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum SEVENTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum SQUARE_FOURTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum SQUARE_FOUR_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum SQUARE_NINE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum SQUARE_NINE_MP_MILVUS:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum SQUARE_NINE_POINT_SEVEN:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum SQUARE_SIX_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum SQUARE_TWELVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final TAG:Ljava/lang/String; = "Resolution"

.field public static final enum THIRTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum TWELVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum TWELVE_MP_MILVUS:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum ULTRA_WIDE_FIVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum ULTRA_WIDE_SEVEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum VGA:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum WIDE_FIVE_POINT_EIGHT_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum WIDE_FOUR_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum WIDE_NINE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum WIDE_SEVENTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum WIDE_SIX_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum WIDE_TEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum WIDE_THIRTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum WIDE_TWELVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field private static final sParameterTextId:I = 0x7f0e0224


# instance fields
.field private final mIconId:I

.field private final mPictureRect:Landroid/graphics/Rect;

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .registers 22

    .line 33
    new-instance v6, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v1, "ULTRA_WIDE_SEVEN_MP"

    new-instance v5, Landroid/graphics/Rect;

    const/16 v7, 0xfc0

    const/4 v8, 0x0

    const/16 v0, 0x6c0

    invoke-direct {v5, v8, v8, v7, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, 0x0

    const/4 v3, -0x1

    const v4, 0x7f0e027f

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->ULTRA_WIDE_SEVEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 38
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v10, "ULTRA_WIDE_FIVE_MP"

    new-instance v14, Landroid/graphics/Rect;

    const/16 v1, 0xcb0

    const/16 v2, 0x570

    invoke-direct {v14, v8, v8, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v11, 0x1

    const/4 v12, -0x1

    const v13, 0x7f0e027e

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->ULTRA_WIDE_FIVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 43
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v2, "WIDE_SEVENTEEN_MP"

    new-instance v6, Landroid/graphics/Rect;

    const/16 v1, 0x1580

    const/16 v3, 0xc18

    invoke-direct {v6, v8, v8, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v3, 0x2

    const/4 v4, -0x1

    const v5, 0x7f0e0274

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_SEVENTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 47
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v10, "WIDE_THIRTEEN_MP"

    new-instance v14, Landroid/graphics/Rect;

    const/16 v1, 0x1300

    const/16 v2, 0xab0

    invoke-direct {v14, v8, v8, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v11, 0x3

    const v13, 0x7f0e0273

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_THIRTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 51
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v2, "WIDE_TWELVE_MP"

    new-instance v6, Landroid/graphics/Rect;

    const/16 v9, 0xa20

    const/16 v1, 0x1200

    invoke-direct {v6, v8, v8, v1, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v3, 0x4

    const v5, 0x7f0e0272

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_TWELVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 55
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v11, "WIDE_TEN_MP"

    new-instance v15, Landroid/graphics/Rect;

    const/16 v1, 0x1060

    const/16 v2, 0x936

    invoke-direct {v15, v8, v8, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v12, 0x5

    const/4 v13, -0x1

    const v14, 0x7f0e0271

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_TEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 59
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v2, "WIDE_NINE_MP"

    new-instance v6, Landroid/graphics/Rect;

    const/16 v1, 0x8dc

    invoke-direct {v6, v8, v8, v7, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v3, 0x6

    const v5, 0x7f0e0278

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_NINE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 63
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v11, "WIDE_SIX_MP"

    new-instance v15, Landroid/graphics/Rect;

    const/16 v1, 0xcc0

    const/16 v2, 0x72c

    invoke-direct {v15, v8, v8, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v12, 0x7

    const v14, 0x7f0e0277

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_SIX_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 67
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v17, "WIDE_FIVE_POINT_EIGHT_MP"

    new-instance v2, Landroid/graphics/Rect;

    const/16 v3, 0xc80

    const/16 v4, 0x708

    invoke-direct {v2, v8, v8, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v18, 0x8

    const/16 v19, -0x1

    const v20, 0x7f0e0276

    move-object/from16 v16, v0

    move-object/from16 v21, v2

    invoke-direct/range {v16 .. v21}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_FIVE_POINT_EIGHT_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 71
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v11, "WIDE_FOUR_MP"

    new-instance v15, Landroid/graphics/Rect;

    const/16 v2, 0x5b2

    invoke-direct {v15, v8, v8, v9, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v12, 0x9

    const v14, 0x7f0e0275

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_FOUR_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 75
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v17, "NINETEEN_MP"

    new-instance v2, Landroid/graphics/Rect;

    const/16 v3, 0xed0

    const/16 v4, 0x13c0

    invoke-direct {v2, v8, v8, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v18, 0xa

    const v20, 0x7f0e0283

    move-object/from16 v16, v0

    move-object/from16 v21, v2

    invoke-direct/range {v16 .. v21}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->NINETEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 79
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v11, "SEVENTEEN_MP"

    new-instance v15, Landroid/graphics/Rect;

    const/16 v2, 0x1280

    const/16 v4, 0xde0

    invoke-direct {v15, v8, v8, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v12, 0xb

    const v14, 0x7f0e0282

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->SEVENTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 83
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v17, "THIRTEEN_MP"

    new-instance v2, Landroid/graphics/Rect;

    const/16 v4, 0xc30

    const/16 v5, 0x1040

    invoke-direct {v2, v8, v8, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v18, 0xc

    const v20, 0x7f0e0281

    move-object/from16 v16, v0

    move-object/from16 v21, v2

    invoke-direct/range {v16 .. v21}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->THIRTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 87
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v11, "TWELVE_MP_MILVUS"

    new-instance v15, Landroid/graphics/Rect;

    const/16 v2, 0xbd0

    invoke-direct {v15, v8, v8, v7, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v12, 0xd

    const v14, 0x7f0e0280

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->TWELVE_MP_MILVUS:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 92
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v17, "TWELVE_MP"

    new-instance v5, Landroid/graphics/Rect;

    const/16 v6, 0xbb8

    const/16 v7, 0xfa0

    invoke-direct {v5, v8, v8, v7, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v18, 0xe

    const v20, 0x7f0e0280

    move-object/from16 v16, v0

    move-object/from16 v21, v5

    invoke-direct/range {v16 .. v21}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->TWELVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 96
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v11, "EIGHT_MP"

    new-instance v15, Landroid/graphics/Rect;

    const/16 v5, 0x990

    invoke-direct {v15, v8, v8, v1, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v12, 0xf

    const v14, 0x7f0e0285

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->EIGHT_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 100
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v17, "FIVE_MP"

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0x798

    invoke-direct {v1, v8, v8, v9, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v18, 0x10

    const v20, 0x7f0e0284

    move-object/from16 v16, v0

    move-object/from16 v21, v1

    invoke-direct/range {v16 .. v21}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->FIVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 104
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v10, "SQUARE_FOURTEEN_MP"

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14, v8, v8, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v11, 0x11

    const/4 v12, -0x1

    const v13, 0x7f0e027a

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->SQUARE_FOURTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 108
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v16, "SQUARE_TWELVE_MP"

    new-instance v1, Landroid/graphics/Rect;

    const/16 v3, 0xdc8

    invoke-direct {v1, v8, v8, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v17, 0x12

    const/16 v18, -0x1

    const v19, 0x7f0e0279

    move-object v15, v0

    move-object/from16 v20, v1

    invoke-direct/range {v15 .. v20}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->SQUARE_TWELVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 112
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v10, "SQUARE_NINE_POINT_SEVEN"

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14, v8, v8, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v11, 0x13

    const v13, 0x7f0e027d

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->SQUARE_NINE_POINT_SEVEN:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 117
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v16, "SQUARE_NINE_MP_MILVUS"

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v8, v8, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v17, 0x14

    const v19, 0x7f0e027d

    move-object v15, v0

    move-object/from16 v20, v1

    invoke-direct/range {v15 .. v20}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->SQUARE_NINE_MP_MILVUS:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 122
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v10, "SQUARE_NINE_MP"

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14, v8, v8, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v11, 0x15

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->SQUARE_NINE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 126
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v16, "SQUARE_SIX_MP"

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v8, v8, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v17, 0x16

    const v19, 0x7f0e027c

    move-object v15, v0

    move-object/from16 v20, v1

    invoke-direct/range {v15 .. v20}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->SQUARE_SIX_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 130
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v10, "SQUARE_FOUR_MP"

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14, v8, v8, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v11, 0x17

    const v13, 0x7f0e027b

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->SQUARE_FOUR_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 134
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v2, "VGA"

    new-instance v6, Landroid/graphics/Rect;

    const/16 v1, 0x280

    const/16 v3, 0x1e0

    invoke-direct {v6, v8, v8, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v3, 0x18

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const/16 v0, 0x19

    .line 32
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->ULTRA_WIDE_SEVEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->ULTRA_WIDE_FIVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_SEVENTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_THIRTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_TWELVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_TEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_NINE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_SIX_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_FIVE_POINT_EIGHT_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_FOUR_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->NINETEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->SEVENTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->THIRTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->TWELVE_MP_MILVUS:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->TWELVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->EIGHT_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->FIVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->SQUARE_FOURTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->SQUARE_TWELVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->SQUARE_NINE_POINT_SEVEN:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->SQUARE_NINE_MP_MILVUS:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->SQUARE_NINE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->SQUARE_SIX_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->SQUARE_FOUR_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .line 161
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 162
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->mIconId:I

    .line 163
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->mTextId:I

    .line 164
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->mPictureRect:Landroid/graphics/Rect;

    return-void
.end method

.method private static findResolutionWithSameAspect([Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;",
            "Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;",
            ")",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;",
            ">;"
        }
    .end annotation

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 353
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_27

    aget-object v3, p0, v2

    .line 354
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 355
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 354
    invoke-static {v4, v5}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->getAspectRatio(II)Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    move-result-object v4

    if-ne v4, p1, :cond_24

    .line 356
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_27
    return-object v0
.end method

.method public static getDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .registers 5

    .line 294
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    .line 293
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->RESOLUTION_CAPABILITY:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 294
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;

    .line 295
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getDefaultResolution()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v0

    .line 298
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object p0

    .line 299
    array-length v1, p0

    if-lez v1, :cond_6b

    .line 302
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 303
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 302
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->getAspectRatio(II)Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    move-result-object v1

    .line 301
    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->findResolutionWithSameAspect([Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;)Ljava/util/List;

    move-result-object v1

    .line 304
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_68

    .line 306
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_45

    return-object v0

    .line 309
    :cond_45
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_53

    .line 311
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    return-object p0

    .line 312
    :cond_53
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v0, :cond_6b

    .line 314
    new-instance p0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution$1;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution$1;-><init>()V

    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 324
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    return-object p0

    .line 328
    :cond_68
    aget-object p0, p0, v3

    return-object p0

    .line 333
    :cond_6b
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    return-object p0
.end method

.method private static getExpectedOptions([Ljava/lang/String;)[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .registers 7

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_23

    .line 283
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_1a

    aget-object v4, p0, v3

    .line 284
    const-class v5, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    invoke-static {v5, v4}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 289
    :cond_1a
    new-array p0, v2, [Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    return-object p0

    .line 287
    :cond_23
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object p0

    return-object p0
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .registers 11

    .line 224
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v0, :cond_79

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, v0, :cond_9

    goto :goto_79

    .line 228
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 229
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_70

    .line 230
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    .line 232
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->PICTURE_SIZE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 234
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_70

    .line 235
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->RESOLUTION_CAPABILITY:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getResolutionOptions()[Ljava/lang/String;

    move-result-object p0

    .line 237
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getExpectedOptions([Ljava/lang/String;)[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object p0

    .line 240
    array-length v3, p0

    move v4, v2

    :goto_3e
    if-ge v4, v3, :cond_70

    aget-object v5, p0, v4

    .line 241
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_46
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    .line 242
    iget-object v8, v5, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->mPictureRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-ne v8, v9, :cond_46

    iget-object v8, v5, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->mPictureRect:Landroid/graphics/Rect;

    .line 243
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-ne v8, v7, :cond_46

    .line 244
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6d
    add-int/lit8 v4, v4, 0x1

    goto :goto_3e

    .line 252
    :cond_70
    new-array p0, v2, [Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    return-object p0

    .line 225
    :cond_79
    :goto_79
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getSuperiorAutoOptions(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object p0

    return-object p0
.end method

.method private static getSuperiorAutoOptions(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .registers 11

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 259
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    .line 260
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->PICTURE_SIZE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 263
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->RESOLUTION_CAPABILITY:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getSuperiorAutoResolutionOptions()[Ljava/lang/String;

    move-result-object p0

    .line 264
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getExpectedOptions([Ljava/lang/String;)[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object p0

    .line 267
    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_24
    if-ge v4, v2, :cond_56

    aget-object v5, p0, v4

    .line 268
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_53

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    .line 269
    iget-object v8, v5, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->mPictureRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-ne v8, v9, :cond_2c

    iget-object v8, v5, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->mPictureRect:Landroid/graphics/Rect;

    .line 270
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-ne v8, v7, :cond_2c

    .line 271
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_53
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 277
    :cond_56
    new-array p0, v3, [Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .registers 2

    .line 32
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .registers 1

    .line 32
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .registers 2

    .line 174
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)V

    return-void
.end method

.method public getIconId()I
    .registers 2

    .line 192
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->mIconId:I

    return v0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .registers 2

    .line 182
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object v0
.end method

.method public getKeyTextId()I
    .registers 2

    const v0, 0x7f0e0224

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 338
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPictureRect()Landroid/graphics/Rect;
    .registers 2

    .line 342
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->mPictureRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getTextId()I
    .registers 2

    .line 202
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 212
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
