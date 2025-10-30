.class public final enum Lorg/apache/commons/imaging/icc/IccTagTypes;
.super Ljava/lang/Enum;
.source "IccTagTypes.java"

# interfaces
.implements Lorg/apache/commons/imaging/icc/IccTagType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/imaging/icc/IccTagTypes;",
        ">;",
        "Lorg/apache/commons/imaging/icc/IccTagType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum A_TO_B0_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum A_TO_B1_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum A_TO_B2_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum BLUE_MATRIX_COLUMN_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum BLUE_TRC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum B_TO_A0_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum B_TO_A1_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum B_TO_A2_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum CALIBRATION_DATE_TIME_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum CHAR_TARGET_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum CHROMATICITY_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum CHROMATIC_ADAPTATION_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum COLORANT_ORDER_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum COLORANT_TABLE_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum COPYRIGHT_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum DEVICE_MFG_DESC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum DEVICE_MODEL_DESC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum GAMUT_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum GRAY_TRC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum GREEN_MATRIX_COLUMN_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum GREEN_TRC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum LUMINANCE_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum MEASUREMENT_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum MEDIA_BLACK_POINT_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum MEDIA_WHITE_POINT_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum NAMED_COLOR_2_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum OUTPUT_RESPONSE_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum PREVIEW_0_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum PREVIEW_1_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum PREVIEW_2_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum PROFILE_DESCRIPTION_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum PROFILE_SEQUENCE_DESC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum RED_MATRIX_COLUMN_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum RED_TRC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum TECHNOLOGY_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum VIEWING_CONDITIONS_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum VIEWING_COND_DESC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;


# instance fields
.field public final name:Ljava/lang/String;

.field public final signature:I

.field public final typeDescription:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 48

    .line 20
    new-instance v6, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v1, "A_TO_B0_TAG"

    const/4 v2, 0x0

    const-string v3, "AToB0Tag"

    const-string v4, "lut8Type or lut16Type or lutAtoBType"

    const v5, 0x41324230

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v6, Lorg/apache/commons/imaging/icc/IccTagTypes;->A_TO_B0_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 33
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v8, "A_TO_B1_TAG"

    const/4 v9, 0x1

    const-string v10, "AToB1Tag"

    const-string v11, "lut8Type or lut16Type or lutAtoBType"

    const v12, 0x41324231

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->A_TO_B1_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 39
    new-instance v1, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v14, "A_TO_B2_TAG"

    const/4 v15, 0x2

    const-string v16, "AToB2Tag"

    const-string v17, "lut8Type or lut16Type or lutAtoBType"

    const v18, 0x41324232

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/commons/imaging/icc/IccTagTypes;->A_TO_B2_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 45
    new-instance v2, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v8, "BLUE_MATRIX_COLUMN_TAG"

    const/4 v9, 0x3

    const-string v10, "blueMatrixColumnTag"

    const-string v11, "XYZType"

    const v12, 0x6258595a

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/commons/imaging/icc/IccTagTypes;->BLUE_MATRIX_COLUMN_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 50
    new-instance v3, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v14, "BLUE_TRC_TAG"

    const/4 v15, 0x4

    const-string v16, "blueTRCTag"

    const-string v17, "curveType or parametricCurveType"

    const v18, 0x62545243

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/imaging/icc/IccTagTypes;->BLUE_TRC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 56
    new-instance v4, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v8, "B_TO_A0_TAG"

    const/4 v9, 0x5

    const-string v10, "BToA0Tag"

    const-string v11, "lut8Type or lut16Type or lutBtoAType"

    const v12, 0x42324130

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/commons/imaging/icc/IccTagTypes;->B_TO_A0_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 62
    new-instance v5, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v14, "B_TO_A1_TAG"

    const/4 v15, 0x6

    const-string v16, "BToA1Tag"

    const-string v17, "lut8Type or lut16Type or lutBtoAType"

    const v18, 0x42324131

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/commons/imaging/icc/IccTagTypes;->B_TO_A1_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 68
    new-instance v13, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v8, "B_TO_A2_TAG"

    const/4 v9, 0x7

    const-string v10, "BToA2Tag"

    const-string v11, "lut8Type or lut16Type or lutBtoAType"

    const v12, 0x42324132

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v13, Lorg/apache/commons/imaging/icc/IccTagTypes;->B_TO_A2_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 74
    new-instance v7, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v15, "CALIBRATION_DATE_TIME_TAG"

    const/16 v16, 0x8

    const-string v17, "calibrationDateTimeTag"

    const-string v18, "dateTimeType"

    const v19, 0x63616c74

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/commons/imaging/icc/IccTagTypes;->CALIBRATION_DATE_TIME_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 81
    new-instance v8, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v21, "CHAR_TARGET_TAG"

    const/16 v22, 0x9

    const-string v23, "charTargetTag"

    const-string v24, "textType"

    const v25, 0x74617267

    move-object/from16 v20, v8

    invoke-direct/range {v20 .. v25}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v8, Lorg/apache/commons/imaging/icc/IccTagTypes;->CHAR_TARGET_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 101
    new-instance v9, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v15, "CHROMATIC_ADAPTATION_TAG"

    const/16 v16, 0xa

    const-string v17, "chromaticAdaptationTag"

    const-string v18, "s15Fixed16ArrayType"

    const v19, 0x63686164

    move-object v14, v9

    invoke-direct/range {v14 .. v19}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v9, Lorg/apache/commons/imaging/icc/IccTagTypes;->CHROMATIC_ADAPTATION_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 131
    new-instance v10, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v21, "CHROMATICITY_TAG"

    const/16 v22, 0xb

    const-string v23, "chromaticityTag"

    const-string v24, "chromaticityType"

    const v25, 0x6368726d

    move-object/from16 v20, v10

    invoke-direct/range {v20 .. v25}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v10, Lorg/apache/commons/imaging/icc/IccTagTypes;->CHROMATICITY_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 136
    new-instance v11, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v15, "COLORANT_ORDER_TAG"

    const/16 v16, 0xc

    const-string v17, "colorantOrderTag"

    const-string v18, "colorantOrderType"

    const v19, 0x636c726f

    move-object v14, v11

    invoke-direct/range {v14 .. v19}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v11, Lorg/apache/commons/imaging/icc/IccTagTypes;->COLORANT_ORDER_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 141
    new-instance v12, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v21, "COLORANT_TABLE_TAG"

    const/16 v22, 0xd

    const-string v23, "colorantTableTag"

    const-string v24, "colorantTableType"

    const v25, 0x636c7274

    move-object/from16 v20, v12

    invoke-direct/range {v20 .. v25}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v12, Lorg/apache/commons/imaging/icc/IccTagTypes;->COLORANT_TABLE_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 148
    new-instance v20, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v15, "COPYRIGHT_TAG"

    const/16 v16, 0xe

    const-string v17, "copyrightTag"

    const-string v18, "multiLocalizedUnicodeType"

    const v19, 0x63707274

    move-object/from16 v14, v20

    invoke-direct/range {v14 .. v19}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v20, Lorg/apache/commons/imaging/icc/IccTagTypes;->COPYRIGHT_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 153
    new-instance v14, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v22, "DEVICE_MFG_DESC_TAG"

    const/16 v23, 0xf

    const-string v24, "deviceMfgDescTag"

    const-string v25, "multiLocalizedUnicodeType"

    const v26, 0x646d6e64

    move-object/from16 v21, v14

    invoke-direct/range {v21 .. v26}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v14, Lorg/apache/commons/imaging/icc/IccTagTypes;->DEVICE_MFG_DESC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 159
    new-instance v15, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v28, "DEVICE_MODEL_DESC_TAG"

    const/16 v29, 0x10

    const-string v30, "deviceModelDescTag"

    const-string v31, "multiLocalizedUnicodeType"

    const v32, 0x646d6464

    move-object/from16 v27, v15

    invoke-direct/range {v27 .. v32}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v15, Lorg/apache/commons/imaging/icc/IccTagTypes;->DEVICE_MODEL_DESC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 165
    new-instance v16, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v22, "GAMUT_TAG"

    const/16 v23, 0x11

    const-string v24, "gamutTag"

    const-string v25, "lut8Type or lut16Type or lutBtoAType"

    const v26, 0x67616d74

    move-object/from16 v21, v16

    invoke-direct/range {v21 .. v26}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v16, Lorg/apache/commons/imaging/icc/IccTagTypes;->GAMUT_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 173
    new-instance v17, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v28, "GRAY_TRC_TAG"

    const/16 v29, 0x12

    const-string v30, "grayTRCTag"

    const-string v31, "curveType or parametricCurveType"

    const v32, 0x6b545243

    move-object/from16 v27, v17

    invoke-direct/range {v27 .. v32}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v17, Lorg/apache/commons/imaging/icc/IccTagTypes;->GRAY_TRC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 180
    new-instance v18, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v22, "GREEN_MATRIX_COLUMN_TAG"

    const/16 v23, 0x13

    const-string v24, "greenMatrixColumnTag"

    const-string v25, "XYZType"

    const v26, 0x6758595a

    move-object/from16 v21, v18

    invoke-direct/range {v21 .. v26}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v18, Lorg/apache/commons/imaging/icc/IccTagTypes;->GREEN_MATRIX_COLUMN_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 185
    new-instance v19, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v28, "GREEN_TRC_TAG"

    const/16 v29, 0x14

    const-string v30, "greenTRCTag"

    const-string v31, "curveType or parametricCurveType"

    const v32, 0x67545243

    move-object/from16 v27, v19

    invoke-direct/range {v27 .. v32}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v19, Lorg/apache/commons/imaging/icc/IccTagTypes;->GREEN_TRC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 192
    new-instance v27, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v22, "LUMINANCE_TAG"

    const/16 v23, 0x15

    const-string v24, "luminanceTag"

    const-string v25, "XYZType"

    const v26, 0x6c756d69

    move-object/from16 v21, v27

    invoke-direct/range {v21 .. v26}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v27, Lorg/apache/commons/imaging/icc/IccTagTypes;->LUMINANCE_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 199
    new-instance v21, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v29, "MEASUREMENT_TAG"

    const/16 v30, 0x16

    const-string v31, "measurementTag"

    const-string v32, "measurementType"

    const v33, 0x6d656173

    move-object/from16 v28, v21

    invoke-direct/range {v28 .. v33}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v21, Lorg/apache/commons/imaging/icc/IccTagTypes;->MEASUREMENT_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 205
    new-instance v22, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v35, "MEDIA_BLACK_POINT_TAG"

    const/16 v36, 0x17

    const-string v37, "mediaBlackPointTag"

    const-string v38, "XYZType"

    const v39, 0x626b7074

    move-object/from16 v34, v22

    invoke-direct/range {v34 .. v39}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v22, Lorg/apache/commons/imaging/icc/IccTagTypes;->MEDIA_BLACK_POINT_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 214
    new-instance v23, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v29, "MEDIA_WHITE_POINT_TAG"

    const/16 v30, 0x18

    const-string v31, "mediaWhitePointTag"

    const-string v32, "XYZType"

    const v33, 0x77747074

    move-object/from16 v28, v23

    invoke-direct/range {v28 .. v33}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v23, Lorg/apache/commons/imaging/icc/IccTagTypes;->MEDIA_WHITE_POINT_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 226
    new-instance v24, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v35, "NAMED_COLOR_2_TAG"

    const/16 v36, 0x19

    const-string v37, "namedColor2Tag"

    const-string v38, "namedColor2Type"

    const v39, 0x6e636c32

    move-object/from16 v34, v24

    invoke-direct/range {v34 .. v39}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v24, Lorg/apache/commons/imaging/icc/IccTagTypes;->NAMED_COLOR_2_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 232
    new-instance v25, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v29, "OUTPUT_RESPONSE_TAG"

    const/16 v30, 0x1a

    const-string v31, "outputResponseTag"

    const-string v32, "responseCurveSet16Type"

    const v33, 0x72657370

    move-object/from16 v28, v25

    invoke-direct/range {v28 .. v33}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v25, Lorg/apache/commons/imaging/icc/IccTagTypes;->OUTPUT_RESPONSE_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 245
    new-instance v26, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v35, "PREVIEW_0_TAG"

    const/16 v36, 0x1b

    const-string v37, "preview0Tag"

    const-string v38, "lut8Type or lut16Type or lutBtoAType"

    const v39, 0x70726530    # 3.000708E29f

    move-object/from16 v34, v26

    invoke-direct/range {v34 .. v39}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v26, Lorg/apache/commons/imaging/icc/IccTagTypes;->PREVIEW_0_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 253
    new-instance v34, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v29, "PREVIEW_1_TAG"

    const/16 v30, 0x1c

    const-string v31, "preview1Tag"

    const-string v32, "lut8Type or lut16Type or lutBtoAType"

    const v33, 0x70726531    # 3.0007082E29f

    move-object/from16 v28, v34

    invoke-direct/range {v28 .. v33}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v34, Lorg/apache/commons/imaging/icc/IccTagTypes;->PREVIEW_1_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 261
    new-instance v28, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v36, "PREVIEW_2_TAG"

    const/16 v37, 0x1d

    const-string v38, "preview2Tag"

    const-string v39, "lut8Type or lut16Type or lutBtoAType"

    const v40, 0x70726532    # 3.0007084E29f

    move-object/from16 v35, v28

    invoke-direct/range {v35 .. v40}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v28, Lorg/apache/commons/imaging/icc/IccTagTypes;->PREVIEW_2_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 269
    new-instance v29, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v42, "PROFILE_DESCRIPTION_TAG"

    const/16 v43, 0x1e

    const-string v44, "profileDescriptionTag"

    const-string v45, "multiLocalizedUnicodeType"

    const v46, 0x64657363

    move-object/from16 v41, v29

    invoke-direct/range {v41 .. v46}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v29, Lorg/apache/commons/imaging/icc/IccTagTypes;->PROFILE_DESCRIPTION_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 277
    new-instance v30, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v36, "PROFILE_SEQUENCE_DESC_TAG"

    const/16 v37, 0x1f

    const-string v38, "profileSequenceDescTag"

    const-string v39, "profileSequenceDescType"

    const v40, 0x70736571

    move-object/from16 v35, v30

    invoke-direct/range {v35 .. v40}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v30, Lorg/apache/commons/imaging/icc/IccTagTypes;->PROFILE_SEQUENCE_DESC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 284
    new-instance v31, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v42, "RED_MATRIX_COLUMN_TAG"

    const/16 v43, 0x20

    const-string v44, "redMatrixColumnTag"

    const-string v45, "XYZType"

    const v46, 0x7258595a

    move-object/from16 v41, v31

    invoke-direct/range {v41 .. v46}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v31, Lorg/apache/commons/imaging/icc/IccTagTypes;->RED_MATRIX_COLUMN_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 290
    new-instance v32, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v36, "RED_TRC_TAG"

    const/16 v37, 0x21

    const-string v38, "redTRCTag"

    const-string v39, "curveType or parametricCurveType"

    const v40, 0x72545243

    move-object/from16 v35, v32

    invoke-direct/range {v35 .. v40}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v32, Lorg/apache/commons/imaging/icc/IccTagTypes;->RED_TRC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 297
    new-instance v33, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v42, "TECHNOLOGY_TAG"

    const/16 v43, 0x22

    const-string v44, "technologyTag"

    const-string v45, "signatureType"

    const v46, 0x74656368

    move-object/from16 v41, v33

    invoke-direct/range {v41 .. v46}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v33, Lorg/apache/commons/imaging/icc/IccTagTypes;->TECHNOLOGY_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 303
    new-instance v41, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v36, "VIEWING_COND_DESC_TAG"

    const/16 v37, 0x23

    const-string/jumbo v38, "viewingCondDescTag"

    const-string v39, "multiLocalizedUnicodeType"

    const v40, 0x76756564

    move-object/from16 v35, v41

    invoke-direct/range {v35 .. v40}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v41, Lorg/apache/commons/imaging/icc/IccTagTypes;->VIEWING_COND_DESC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 311
    new-instance v35, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v43, "VIEWING_CONDITIONS_TAG"

    const/16 v44, 0x24

    const-string/jumbo v45, "viewingConditionsTag"

    const-string/jumbo v46, "viewingConditionsType"

    const v47, 0x76696577

    move-object/from16 v42, v35

    invoke-direct/range {v42 .. v47}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v35, Lorg/apache/commons/imaging/icc/IccTagTypes;->VIEWING_CONDITIONS_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    move-object/from16 v36, v15

    const/16 v15, 0x25

    new-array v15, v15, [Lorg/apache/commons/imaging/icc/IccTagTypes;

    const/16 v37, 0x0

    aput-object v6, v15, v37

    const/4 v6, 0x1

    aput-object v0, v15, v6

    const/4 v0, 0x2

    aput-object v1, v15, v0

    const/4 v0, 0x3

    aput-object v2, v15, v0

    const/4 v0, 0x4

    aput-object v3, v15, v0

    const/4 v0, 0x5

    aput-object v4, v15, v0

    const/4 v0, 0x6

    aput-object v5, v15, v0

    const/4 v0, 0x7

    aput-object v13, v15, v0

    const/16 v0, 0x8

    aput-object v7, v15, v0

    const/16 v0, 0x9

    aput-object v8, v15, v0

    const/16 v0, 0xa

    aput-object v9, v15, v0

    const/16 v0, 0xb

    aput-object v10, v15, v0

    const/16 v0, 0xc

    aput-object v11, v15, v0

    const/16 v0, 0xd

    aput-object v12, v15, v0

    const/16 v0, 0xe

    aput-object v20, v15, v0

    const/16 v0, 0xf

    aput-object v14, v15, v0

    const/16 v0, 0x10

    aput-object v36, v15, v0

    const/16 v0, 0x11

    aput-object v16, v15, v0

    const/16 v0, 0x12

    aput-object v17, v15, v0

    const/16 v0, 0x13

    aput-object v18, v15, v0

    const/16 v0, 0x14

    aput-object v19, v15, v0

    const/16 v0, 0x15

    aput-object v27, v15, v0

    const/16 v0, 0x16

    aput-object v21, v15, v0

    const/16 v0, 0x17

    aput-object v22, v15, v0

    const/16 v0, 0x18

    aput-object v23, v15, v0

    const/16 v0, 0x19

    aput-object v24, v15, v0

    const/16 v0, 0x1a

    aput-object v25, v15, v0

    const/16 v0, 0x1b

    aput-object v26, v15, v0

    const/16 v0, 0x1c

    aput-object v34, v15, v0

    const/16 v0, 0x1d

    aput-object v28, v15, v0

    const/16 v0, 0x1e

    aput-object v29, v15, v0

    const/16 v0, 0x1f

    aput-object v30, v15, v0

    const/16 v0, 0x20

    aput-object v31, v15, v0

    const/16 v0, 0x21

    aput-object v32, v15, v0

    const/16 v0, 0x22

    aput-object v33, v15, v0

    const/16 v0, 0x23

    aput-object v41, v15, v0

    const/16 v0, 0x24

    aput-object v35, v15, v0

    .line 19
    sput-object v15, Lorg/apache/commons/imaging/icc/IccTagTypes;->$VALUES:[Lorg/apache/commons/imaging/icc/IccTagTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 321
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 322
    iput-object p3, p0, Lorg/apache/commons/imaging/icc/IccTagTypes;->name:Ljava/lang/String;

    .line 323
    iput-object p4, p0, Lorg/apache/commons/imaging/icc/IccTagTypes;->typeDescription:Ljava/lang/String;

    .line 324
    iput p5, p0, Lorg/apache/commons/imaging/icc/IccTagTypes;->signature:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/imaging/icc/IccTagTypes;
    .registers 2

    .line 19
    const-class v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/imaging/icc/IccTagTypes;
    .registers 1

    .line 19
    sget-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->$VALUES:[Lorg/apache/commons/imaging/icc/IccTagTypes;

    invoke-virtual {v0}, [Lorg/apache/commons/imaging/icc/IccTagTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/imaging/icc/IccTagTypes;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 1

    .line 328
    iget-object p0, p0, Lorg/apache/commons/imaging/icc/IccTagTypes;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getSignature()I
    .registers 1

    .line 336
    iget p0, p0, Lorg/apache/commons/imaging/icc/IccTagTypes;->signature:I

    return p0
.end method

.method public getTypeDescription()Ljava/lang/String;
    .registers 1

    .line 332
    iget-object p0, p0, Lorg/apache/commons/imaging/icc/IccTagTypes;->typeDescription:Ljava/lang/String;

    return-object p0
.end method
