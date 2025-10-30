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

.field public static final enum FIVE_MP_WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum NINETEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum PLUS_FIVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum PLUS_SEVEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum SEVENTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum SQUARE_FIVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum SQUARE_FOURTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum SQUARE_NINE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum SQUARE_NINE_POINT_SEVEN:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum SQUARE_SIX_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum SQUARE_TEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum SQUARE_TWELVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final TAG:Ljava/lang/String; = "Resolution"

.field public static final enum THIRTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum TWELVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum TWELVE_MP_SM22_IMX234:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum TWELVE_MP_SMX2:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum TWENTY_THREE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum ULTRA_WIDE_EIGHT_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum ULTRA_WIDE_FOUR_POINT_FIVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum ULTRA_WIDE_SEVEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum VGA:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum WIDE_FIVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum WIDE_FIVE_POINT_EIGHT_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum WIDE_FIVE_POINT_EIGHT_MP_SMX2:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum WIDE_FOUR_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum WIDE_NINE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum WIDE_SEVENTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum WIDE_SIXTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum WIDE_SIX_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum WIDE_SIX_MP_JP1:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum WIDE_TEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum WIDE_THIRTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum WIDE_TWELVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum WIDE_TWELVE_MP_SM22_IMX234:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum WIDE_TWELVE_MP_SMX2:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum WIDE_TWENTY_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field private static final sParameterTextId:I = 0x7f0f027a


# instance fields
.field private final mIconId:I

.field private final mPictureRect:Landroid/graphics/Rect;

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .registers 56

    .line 30
    new-instance v6, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    new-instance v5, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/16 v0, 0x1590

    const/16 v1, 0x1030

    invoke-direct {v5, v7, v7, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v1, "TWENTY_THREE_MP"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const v4, 0x7f0f0310

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->TWENTY_THREE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 34
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    new-instance v13, Landroid/graphics/Rect;

    const/16 v1, 0x1760

    const/16 v2, 0xd30

    invoke-direct {v13, v7, v7, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v9, "WIDE_TWENTY_MP"

    const/4 v10, 0x1

    const/4 v11, -0x1

    const v12, 0x7f0f02fa

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_TWENTY_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 39
    new-instance v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v3, 0x1580

    const/16 v4, 0xc18

    invoke-direct {v2, v7, v7, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v15, "WIDE_SEVENTEEN_MP"

    const/16 v16, 0x2

    const/16 v17, -0x1

    const v18, 0x7f0f02f9

    move-object v14, v1

    move-object/from16 v19, v2

    invoke-direct/range {v14 .. v19}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_SEVENTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 43
    new-instance v2, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    new-instance v13, Landroid/graphics/Rect;

    const/16 v3, 0x14c0

    const/16 v4, 0xbb0

    invoke-direct {v13, v7, v7, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v9, "WIDE_SIXTEEN_MP"

    const/4 v10, 0x3

    const v12, 0x7f0f02f8

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_SIXTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 47
    new-instance v3, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x1300

    const/16 v8, 0xab0

    invoke-direct {v4, v7, v7, v5, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v15, "WIDE_THIRTEEN_MP"

    const/16 v16, 0x4

    const v18, 0x7f0f02f7

    move-object v14, v3

    move-object/from16 v19, v4

    invoke-direct/range {v14 .. v19}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_THIRTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 51
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    new-instance v13, Landroid/graphics/Rect;

    const/16 v5, 0x1200

    const/16 v14, 0xa20

    invoke-direct {v13, v7, v7, v5, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v9, "WIDE_TWELVE_MP"

    const/4 v10, 0x5

    const v12, 0x7f0f02f6

    move-object v8, v4

    invoke-direct/range {v8 .. v13}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_TWELVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 55
    new-instance v8, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    new-instance v9, Landroid/graphics/Rect;

    const/16 v10, 0x1210

    const/16 v11, 0xa30

    invoke-direct {v9, v7, v7, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v16, "WIDE_TWELVE_MP_SMX2"

    const/16 v17, 0x6

    const/16 v18, -0x1

    const v19, 0x7f0f02f6

    move-object v15, v8

    move-object/from16 v20, v9

    invoke-direct/range {v15 .. v20}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v8, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_TWELVE_MP_SMX2:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 59
    new-instance v9, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v7, v7, v5, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v21, "WIDE_TWELVE_MP_SM22_IMX234"

    const/16 v22, 0x7

    const/16 v23, -0x1

    const v24, 0x7f0f02f6

    move-object/from16 v20, v9

    move-object/from16 v25, v10

    invoke-direct/range {v20 .. v25}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_TWELVE_MP_SM22_IMX234:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 63
    new-instance v5, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    new-instance v10, Landroid/graphics/Rect;

    const/16 v11, 0x1070

    const/16 v12, 0x940

    invoke-direct {v10, v7, v7, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v16, "WIDE_TEN_MP"

    const/16 v17, 0x8

    const v19, 0x7f0f02f5

    move-object v15, v5

    move-object/from16 v20, v10

    invoke-direct/range {v15 .. v20}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_TEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 68
    new-instance v10, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    new-instance v11, Landroid/graphics/Rect;

    const/16 v12, 0xcc0

    const/16 v13, 0x730

    invoke-direct {v11, v7, v7, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v21, "FIVE_MP_WIDE"

    const/16 v22, 0x9

    const v24, 0x7f0f02fc

    move-object/from16 v20, v10

    move-object/from16 v25, v11

    invoke-direct/range {v20 .. v25}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v10, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->FIVE_MP_WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 72
    new-instance v11, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v13, 0xc80

    const/16 v12, 0x708

    invoke-direct {v15, v7, v7, v13, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v16, "WIDE_FIVE_POINT_EIGHT_MP"

    const/16 v17, 0xa

    const v19, 0x7f0f02fc

    move-object/from16 v20, v15

    move-object v15, v11

    invoke-direct/range {v15 .. v20}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v11, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_FIVE_POINT_EIGHT_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 76
    new-instance v15, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    new-instance v12, Landroid/graphics/Rect;

    const/16 v14, 0x710

    invoke-direct {v12, v7, v7, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v24, "WIDE_FIVE_POINT_EIGHT_MP_SMX2"

    const/16 v25, 0xb

    const/16 v26, -0x1

    const v27, 0x7f0f02fc

    move-object/from16 v23, v15

    move-object/from16 v28, v12

    invoke-direct/range {v23 .. v28}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v15, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_FIVE_POINT_EIGHT_MP_SMX2:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 80
    new-instance v12, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    new-instance v13, Landroid/graphics/Rect;

    const/16 v14, 0x5b2

    move-object/from16 v18, v15

    const/16 v15, 0xa20

    invoke-direct {v13, v7, v7, v15, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v29, "WIDE_FOUR_MP"

    const/16 v30, 0xc

    const/16 v31, -0x1

    const v32, 0x7f0f02fb

    move-object/from16 v28, v12

    move-object/from16 v33, v13

    invoke-direct/range {v28 .. v33}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_FOUR_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 84
    new-instance v13, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    new-instance v14, Landroid/graphics/Rect;

    const/16 v15, 0x13c0

    move-object/from16 v19, v12

    const/16 v12, 0xed0

    invoke-direct {v14, v7, v7, v15, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v24, "NINETEEN_MP"

    const/16 v25, 0xd

    const v27, 0x7f0f030f

    move-object/from16 v23, v13

    move-object/from16 v28, v14

    invoke-direct/range {v23 .. v28}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v13, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->NINETEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 88
    new-instance v14, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v12, 0x1280

    const/16 v13, 0xde0

    invoke-direct {v15, v7, v7, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v29, "SEVENTEEN_MP"

    const/16 v30, 0xe

    const v32, 0x7f0f030e

    move-object/from16 v28, v14

    move-object/from16 v33, v15

    invoke-direct/range {v28 .. v33}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v14, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->SEVENTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 92
    new-instance v12, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    new-instance v13, Landroid/graphics/Rect;

    const/16 v15, 0x1040

    move-object/from16 v24, v14

    const/16 v14, 0xc30

    invoke-direct {v13, v7, v7, v15, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v34, "THIRTEEN_MP"

    const/16 v35, 0xf

    const/16 v36, -0x1

    const v37, 0x7f0f030d

    move-object/from16 v33, v12

    move-object/from16 v38, v13

    invoke-direct/range {v33 .. v38}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->THIRTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 96
    new-instance v13, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    new-instance v15, Landroid/graphics/Rect;

    const/16 v14, 0xfa0

    move-object/from16 v32, v12

    const/16 v12, 0xbb8

    invoke-direct {v15, v7, v7, v14, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v26, "TWELVE_MP"

    const/16 v27, 0x10

    const/16 v28, -0x1

    const v29, 0x7f0f030c

    move-object/from16 v25, v13

    move-object/from16 v30, v15

    invoke-direct/range {v25 .. v30}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v13, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->TWELVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 100
    new-instance v15, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    new-instance v12, Landroid/graphics/Rect;

    move-object/from16 v26, v13

    const/16 v13, 0xbc0

    invoke-direct {v12, v7, v7, v14, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v34, "TWELVE_MP_SMX2"

    const/16 v35, 0x11

    const v37, 0x7f0f030c

    move-object/from16 v33, v15

    move-object/from16 v38, v12

    invoke-direct/range {v33 .. v38}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v15, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->TWELVE_MP_SMX2:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 104
    new-instance v12, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    new-instance v13, Landroid/graphics/Rect;

    const/16 v14, 0xf80

    move-object/from16 v28, v15

    const/16 v15, 0xba0

    invoke-direct {v13, v7, v7, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v39, "TWELVE_MP_SM22_IMX234"

    const/16 v40, 0x12

    const/16 v41, -0x1

    const v42, 0x7f0f030c

    move-object/from16 v38, v12

    move-object/from16 v43, v13

    invoke-direct/range {v38 .. v43}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->TWELVE_MP_SM22_IMX234:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 108
    new-instance v13, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    new-instance v14, Landroid/graphics/Rect;

    const/16 v15, 0xed0

    invoke-direct {v14, v7, v7, v15, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v34, "SQUARE_FOURTEEN_MP"

    const/16 v35, 0x13

    const v37, 0x7f0f0304

    move-object/from16 v33, v13

    move-object/from16 v38, v14

    invoke-direct/range {v33 .. v38}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v13, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->SQUARE_FOURTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 112
    new-instance v14, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    new-instance v15, Landroid/graphics/Rect;

    move-object/from16 v20, v13

    const/16 v13, 0xdc8

    invoke-direct {v15, v7, v7, v13, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v39, "SQUARE_TWELVE_MP"

    const/16 v40, 0x14

    const v42, 0x7f0f0303

    move-object/from16 v38, v14

    move-object/from16 v43, v15

    invoke-direct/range {v38 .. v43}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v14, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->SQUARE_TWELVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 116
    new-instance v13, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    new-instance v15, Landroid/graphics/Rect;

    move-object/from16 v29, v14

    const/16 v14, 0xc30

    invoke-direct {v15, v7, v7, v14, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v34, "SQUARE_TEN_MP"

    const/16 v35, 0x15

    const v37, 0x7f0f0302

    move-object/from16 v33, v13

    move-object/from16 v38, v15

    invoke-direct/range {v33 .. v38}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v13, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->SQUARE_TEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 120
    new-instance v14, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    new-instance v15, Landroid/graphics/Rect;

    move-object/from16 v30, v13

    const/16 v13, 0xc30

    invoke-direct {v15, v7, v7, v13, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v39, "SQUARE_NINE_POINT_SEVEN"

    const/16 v40, 0x16

    const v42, 0x7f0f0307

    move-object/from16 v38, v14

    move-object/from16 v43, v15

    invoke-direct/range {v38 .. v43}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v14, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->SQUARE_NINE_POINT_SEVEN:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 125
    new-instance v13, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    new-instance v15, Landroid/graphics/Rect;

    move-object/from16 v31, v14

    const/16 v14, 0xbb8

    invoke-direct {v15, v7, v7, v14, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v34, "SQUARE_NINE_MP"

    const/16 v35, 0x17

    const v37, 0x7f0f0307

    move-object/from16 v33, v13

    move-object/from16 v38, v15

    invoke-direct/range {v33 .. v38}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v13, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->SQUARE_NINE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 129
    new-instance v14, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    new-instance v15, Landroid/graphics/Rect;

    move-object/from16 v25, v13

    const/16 v13, 0x8d0

    move-object/from16 v33, v12

    const/16 v12, 0xfa0

    invoke-direct {v15, v7, v7, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v39, "WIDE_NINE_MP"

    const/16 v40, 0x18

    const v42, 0x7f0f02ff

    move-object/from16 v38, v14

    move-object/from16 v43, v15

    invoke-direct/range {v38 .. v43}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v14, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_NINE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 133
    new-instance v12, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    new-instance v13, Landroid/graphics/Rect;

    const/16 v15, 0x1068

    move-object/from16 v34, v14

    const/16 v14, 0x708

    invoke-direct {v13, v7, v7, v15, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v44, "ULTRA_WIDE_EIGHT_MP"

    const/16 v45, 0x19

    const/16 v46, -0x1

    const v47, 0x7f0f030b

    move-object/from16 v43, v12

    move-object/from16 v48, v13

    invoke-direct/range {v43 .. v48}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->ULTRA_WIDE_EIGHT_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 137
    new-instance v13, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    new-instance v14, Landroid/graphics/Rect;

    const/16 v15, 0x990

    move-object/from16 v16, v12

    const/16 v12, 0xcc0

    invoke-direct {v14, v7, v7, v12, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v36, "EIGHT_MP"

    const/16 v37, 0x1a

    const/16 v38, -0x1

    const v39, 0x7f0f0312

    move-object/from16 v35, v13

    move-object/from16 v40, v14

    invoke-direct/range {v35 .. v40}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v13, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->EIGHT_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 141
    new-instance v12, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    new-instance v14, Landroid/graphics/Rect;

    const/16 v15, 0xf00

    move-object/from16 v36, v13

    const/16 v13, 0x780

    invoke-direct {v14, v7, v7, v15, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v41, "PLUS_SEVEN_MP"

    const/16 v42, 0x1b

    const/16 v43, -0x1

    const v44, 0x7f0f0301

    move-object/from16 v40, v12

    move-object/from16 v45, v14

    invoke-direct/range {v40 .. v45}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->PLUS_SEVEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 145
    new-instance v13, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    new-instance v14, Landroid/graphics/Rect;

    const/16 v15, 0x6b0

    move-object/from16 v37, v12

    const/16 v12, 0xfa0

    invoke-direct {v14, v7, v7, v12, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v46, "ULTRA_WIDE_SEVEN_MP"

    const/16 v47, 0x1c

    const/16 v48, -0x1

    const v49, 0x7f0f030a

    move-object/from16 v45, v13

    move-object/from16 v50, v14

    invoke-direct/range {v45 .. v50}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v13, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->ULTRA_WIDE_SEVEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 150
    new-instance v12, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    new-instance v14, Landroid/graphics/Rect;

    const/16 v15, 0x990

    invoke-direct {v14, v7, v7, v15, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v39, "SQUARE_SIX_MP"

    const/16 v40, 0x1d

    const/16 v41, -0x1

    const v42, 0x7f0f0306

    move-object/from16 v38, v12

    move-object/from16 v43, v14

    invoke-direct/range {v38 .. v43}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->SQUARE_SIX_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 154
    new-instance v14, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    new-instance v15, Landroid/graphics/Rect;

    move-object/from16 v27, v12

    move-object/from16 v35, v13

    const/16 v12, 0x730

    const/16 v13, 0xcc0

    invoke-direct {v15, v7, v7, v13, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v44, "WIDE_SIX_MP"

    const/16 v45, 0x1e

    const/16 v46, -0x1

    const v47, 0x7f0f02fe

    move-object/from16 v43, v14

    move-object/from16 v48, v15

    invoke-direct/range {v43 .. v48}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v14, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_SIX_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 158
    new-instance v12, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    new-instance v13, Landroid/graphics/Rect;

    const/16 v15, 0x72c

    move-object/from16 v44, v14

    const/16 v14, 0xcc0

    invoke-direct {v13, v7, v7, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v39, "WIDE_SIX_MP_JP1"

    const/16 v40, 0x1f

    const v42, 0x7f0f02fe

    move-object/from16 v38, v12

    move-object/from16 v43, v13

    invoke-direct/range {v38 .. v43}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_SIX_MP_JP1:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 162
    new-instance v13, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    new-instance v14, Landroid/graphics/Rect;

    const/16 v15, 0x798

    const/16 v12, 0xa20

    invoke-direct {v14, v7, v7, v12, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v46, "FIVE_MP"

    const/16 v47, 0x20

    const/16 v48, -0x1

    const v49, 0x7f0f0311

    move-object/from16 v45, v13

    move-object/from16 v50, v14

    invoke-direct/range {v45 .. v50}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v13, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->FIVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 166
    new-instance v12, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14, v7, v7, v15, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v51, "SQUARE_FIVE_MP"

    const/16 v52, 0x21

    const/16 v53, -0x1

    const v54, 0x7f0f0305

    move-object/from16 v50, v12

    move-object/from16 v55, v14

    invoke-direct/range {v50 .. v55}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->SQUARE_FIVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 170
    new-instance v14, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    new-instance v15, Landroid/graphics/Rect;

    move-object/from16 v17, v12

    move-object/from16 v21, v13

    const/16 v12, 0x730

    const/16 v13, 0xcc0

    invoke-direct {v15, v7, v7, v13, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v46, "WIDE_FIVE_MP"

    const/16 v47, 0x22

    const v49, 0x7f0f02fd

    move-object/from16 v45, v14

    move-object/from16 v50, v15

    invoke-direct/range {v45 .. v50}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v14, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_FIVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 174
    new-instance v12, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    new-instance v13, Landroid/graphics/Rect;

    const/16 v15, 0x660

    move-object/from16 v39, v14

    const/16 v14, 0xcc0

    invoke-direct {v13, v7, v7, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v51, "PLUS_FIVE_MP"

    const/16 v52, 0x23

    const v54, 0x7f0f0300

    move-object/from16 v50, v12

    move-object/from16 v55, v13

    invoke-direct/range {v50 .. v55}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->PLUS_FIVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 178
    new-instance v13, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    new-instance v14, Landroid/graphics/Rect;

    const/16 v15, 0x578

    move-object/from16 v40, v12

    const/16 v12, 0xcc0

    invoke-direct {v14, v7, v7, v12, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v46, "ULTRA_WIDE_FOUR_POINT_FIVE_MP"

    const/16 v47, 0x24

    const v49, 0x7f0f0309

    move-object/from16 v45, v13

    move-object/from16 v50, v14

    invoke-direct/range {v45 .. v50}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v13, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->ULTRA_WIDE_FOUR_POINT_FIVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 182
    new-instance v12, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    new-instance v14, Landroid/graphics/Rect;

    const/16 v15, 0x280

    move-object/from16 v22, v13

    const/16 v13, 0x1e0

    invoke-direct {v14, v7, v7, v15, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v51, "VGA"

    const/16 v52, 0x25

    const/16 v54, -0x1

    move-object/from16 v50, v12

    move-object/from16 v55, v14

    invoke-direct/range {v50 .. v55}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const/16 v13, 0x26

    new-array v13, v13, [Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    aput-object v6, v13, v7

    const/4 v6, 0x1

    aput-object v0, v13, v6

    const/4 v0, 0x2

    aput-object v1, v13, v0

    const/4 v0, 0x3

    aput-object v2, v13, v0

    const/4 v0, 0x4

    aput-object v3, v13, v0

    const/4 v0, 0x5

    aput-object v4, v13, v0

    const/4 v0, 0x6

    aput-object v8, v13, v0

    const/4 v0, 0x7

    aput-object v9, v13, v0

    const/16 v0, 0x8

    aput-object v5, v13, v0

    const/16 v0, 0x9

    aput-object v10, v13, v0

    const/16 v0, 0xa

    aput-object v11, v13, v0

    const/16 v0, 0xb

    aput-object v18, v13, v0

    const/16 v0, 0xc

    aput-object v19, v13, v0

    const/16 v0, 0xd

    aput-object v23, v13, v0

    const/16 v0, 0xe

    aput-object v24, v13, v0

    const/16 v0, 0xf

    aput-object v32, v13, v0

    const/16 v0, 0x10

    aput-object v26, v13, v0

    const/16 v0, 0x11

    aput-object v28, v13, v0

    const/16 v0, 0x12

    aput-object v33, v13, v0

    const/16 v0, 0x13

    aput-object v20, v13, v0

    const/16 v0, 0x14

    aput-object v29, v13, v0

    const/16 v0, 0x15

    aput-object v30, v13, v0

    const/16 v0, 0x16

    aput-object v31, v13, v0

    const/16 v0, 0x17

    aput-object v25, v13, v0

    const/16 v0, 0x18

    aput-object v34, v13, v0

    const/16 v0, 0x19

    aput-object v16, v13, v0

    const/16 v0, 0x1a

    aput-object v36, v13, v0

    const/16 v0, 0x1b

    aput-object v37, v13, v0

    const/16 v0, 0x1c

    aput-object v35, v13, v0

    const/16 v0, 0x1d

    aput-object v27, v13, v0

    const/16 v0, 0x1e

    aput-object v44, v13, v0

    const/16 v0, 0x1f

    aput-object v38, v13, v0

    const/16 v0, 0x20

    aput-object v21, v13, v0

    const/16 v0, 0x21

    aput-object v17, v13, v0

    const/16 v0, 0x22

    aput-object v39, v13, v0

    const/16 v0, 0x23

    aput-object v40, v13, v0

    const/16 v0, 0x24

    aput-object v22, v13, v0

    const/16 v0, 0x25

    aput-object v12, v13, v0

    .line 29
    sput-object v13, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

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

    .line 209
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 210
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->mIconId:I

    .line 211
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->mTextId:I

    .line 212
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->mPictureRect:Landroid/graphics/Rect;

    return-void
.end method

.method public static getDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .registers 6

    .line 342
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    .line 341
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->RESOLUTION_CAPABILITY:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 342
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;

    .line 343
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getDefaultResolution()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v1

    .line 346
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object p0

    .line 347
    array-length v2, p0

    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v2, :cond_34

    aget-object v4, p0, v3

    .line 348
    invoke-virtual {v4, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 350
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getDefaultResolution()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object p0

    return-object p0

    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 355
    :cond_34
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    return-object p0
.end method

.method private static getExpectedOptions([Ljava/lang/String;)[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .registers 7

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_23

    .line 331
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_1a

    aget-object v4, p0, v3

    .line 332
    const-class v5, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    invoke-static {v5, v4}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_1a
    new-array p0, v2, [Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 337
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    return-object p0

    .line 335
    :cond_23
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object p0

    return-object p0
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .registers 11

    .line 272
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v0, :cond_7d

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v0, :cond_7d

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, v0, :cond_d

    goto :goto_7d

    .line 277
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 278
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_74

    .line 279
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    .line 281
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->PICTURE_SIZE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 283
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_74

    .line 284
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->RESOLUTION_CAPABILITY:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getResolutionOptions()[Ljava/lang/String;

    move-result-object p0

    .line 286
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getExpectedOptions([Ljava/lang/String;)[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object p0

    .line 288
    array-length v3, p0

    move v4, v2

    :goto_42
    if-ge v4, v3, :cond_74

    aget-object v5, p0, v4

    .line 289
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_71

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    .line 290
    iget-object v8, v5, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->mPictureRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-ne v8, v9, :cond_4a

    iget-object v8, v5, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->mPictureRect:Landroid/graphics/Rect;

    .line 291
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-ne v8, v7, :cond_4a

    .line 292
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_71
    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    :cond_74
    new-array p0, v2, [Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 300
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    return-object p0

    .line 274
    :cond_7d
    :goto_7d
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getSuperiorAutoOptions(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object p0

    return-object p0
.end method

.method private static getSuperiorAutoOptions(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .registers 11

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 307
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    .line 308
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->PICTURE_SIZE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 311
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->RESOLUTION_CAPABILITY:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getSuperiorAutoResolutionOptions()[Ljava/lang/String;

    move-result-object p0

    .line 312
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getExpectedOptions([Ljava/lang/String;)[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object p0

    .line 315
    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_24
    if-ge v4, v2, :cond_56

    aget-object v5, p0, v4

    .line 316
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_53

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    .line 317
    iget-object v8, v5, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->mPictureRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-ne v8, v9, :cond_2c

    iget-object v8, v5, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->mPictureRect:Landroid/graphics/Rect;

    .line 318
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-ne v8, v7, :cond_2c

    .line 319
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_53
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_56
    new-array p0, v3, [Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 325
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .registers 2

    .line 29
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .registers 1

    .line 29
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .registers 2

    .line 222
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)V

    return-void
.end method

.method public getIconId()I
    .registers 1

    .line 240
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->mIconId:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .registers 1

    .line 230
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .registers 1

    const p0, 0x7f0f027a

    return p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 360
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPictureRect()Landroid/graphics/Rect;
    .registers 1

    .line 364
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->mPictureRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getTextId()I
    .registers 1

    .line 250
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 260
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
