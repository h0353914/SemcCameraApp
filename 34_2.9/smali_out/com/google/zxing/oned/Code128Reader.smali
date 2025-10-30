.class public final Lcom/google/zxing/oned/Code128Reader;
.super Lcom/google/zxing/oned/OneDReader;
.source "Code128Reader.java"


# static fields
.field private static final CODE_CODE_A:I = 0x65

.field private static final CODE_CODE_B:I = 0x64

.field private static final CODE_CODE_C:I = 0x63

.field private static final CODE_FNC_1:I = 0x66

.field private static final CODE_FNC_2:I = 0x61

.field private static final CODE_FNC_3:I = 0x60

.field private static final CODE_FNC_4_A:I = 0x65

.field private static final CODE_FNC_4_B:I = 0x64

.field static final CODE_PATTERNS:[[I

.field private static final CODE_SHIFT:I = 0x62

.field private static final CODE_START_A:I = 0x67

.field private static final CODE_START_B:I = 0x68

.field private static final CODE_START_C:I = 0x69

.field private static final CODE_STOP:I = 0x6a

.field private static final MAX_AVG_VARIANCE:F = 0.25f

.field private static final MAX_INDIVIDUAL_VARIANCE:F = 0.7f


# direct methods
.method static constructor <clinit>()V
    .registers 109

    const/4 v0, 0x6

    .line 39
    new-array v2, v0, [I

    move-object v1, v2

    fill-array-data v2, :array_2ec

    new-array v3, v0, [I

    move-object v2, v3

    fill-array-data v3, :array_2fc

    new-array v4, v0, [I

    move-object v3, v4

    fill-array-data v4, :array_30c

    new-array v5, v0, [I

    move-object v4, v5

    fill-array-data v5, :array_31c

    new-array v6, v0, [I

    move-object v5, v6

    fill-array-data v6, :array_32c

    new-array v7, v0, [I

    move-object v6, v7

    fill-array-data v7, :array_33c

    new-array v8, v0, [I

    move-object v7, v8

    fill-array-data v8, :array_34c

    new-array v9, v0, [I

    move-object v8, v9

    fill-array-data v9, :array_35c

    new-array v10, v0, [I

    move-object v9, v10

    fill-array-data v10, :array_36c

    new-array v11, v0, [I

    move-object v10, v11

    fill-array-data v11, :array_37c

    new-array v12, v0, [I

    move-object v11, v12

    fill-array-data v12, :array_38c

    new-array v13, v0, [I

    move-object v12, v13

    fill-array-data v13, :array_39c

    new-array v14, v0, [I

    move-object v13, v14

    fill-array-data v14, :array_3ac

    new-array v15, v0, [I

    move-object v14, v15

    fill-array-data v15, :array_3bc

    new-array v15, v0, [I

    move-object/from16 v16, v15

    fill-array-data v16, :array_3cc

    move-object/from16 v108, v1

    new-array v1, v0, [I

    move-object/from16 v16, v1

    fill-array-data v1, :array_3dc

    new-array v1, v0, [I

    move-object/from16 v17, v1

    fill-array-data v1, :array_3ec

    new-array v1, v0, [I

    move-object/from16 v18, v1

    fill-array-data v1, :array_3fc

    new-array v1, v0, [I

    move-object/from16 v19, v1

    fill-array-data v1, :array_40c

    new-array v1, v0, [I

    move-object/from16 v20, v1

    fill-array-data v1, :array_41c

    new-array v1, v0, [I

    move-object/from16 v21, v1

    fill-array-data v1, :array_42c

    new-array v1, v0, [I

    move-object/from16 v22, v1

    fill-array-data v1, :array_43c

    new-array v1, v0, [I

    move-object/from16 v23, v1

    fill-array-data v1, :array_44c

    new-array v1, v0, [I

    move-object/from16 v24, v1

    fill-array-data v1, :array_45c

    new-array v1, v0, [I

    move-object/from16 v25, v1

    fill-array-data v1, :array_46c

    new-array v1, v0, [I

    move-object/from16 v26, v1

    fill-array-data v1, :array_47c

    new-array v1, v0, [I

    move-object/from16 v27, v1

    fill-array-data v1, :array_48c

    new-array v1, v0, [I

    move-object/from16 v28, v1

    fill-array-data v1, :array_49c

    new-array v1, v0, [I

    move-object/from16 v29, v1

    fill-array-data v1, :array_4ac

    new-array v1, v0, [I

    move-object/from16 v30, v1

    fill-array-data v1, :array_4bc

    new-array v1, v0, [I

    move-object/from16 v31, v1

    fill-array-data v1, :array_4cc

    new-array v1, v0, [I

    move-object/from16 v32, v1

    fill-array-data v1, :array_4dc

    new-array v1, v0, [I

    move-object/from16 v33, v1

    fill-array-data v1, :array_4ec

    new-array v1, v0, [I

    move-object/from16 v34, v1

    fill-array-data v1, :array_4fc

    new-array v1, v0, [I

    move-object/from16 v35, v1

    fill-array-data v1, :array_50c

    new-array v1, v0, [I

    move-object/from16 v36, v1

    fill-array-data v1, :array_51c

    new-array v1, v0, [I

    move-object/from16 v37, v1

    fill-array-data v1, :array_52c

    new-array v1, v0, [I

    move-object/from16 v38, v1

    fill-array-data v1, :array_53c

    new-array v1, v0, [I

    move-object/from16 v39, v1

    fill-array-data v1, :array_54c

    new-array v1, v0, [I

    move-object/from16 v40, v1

    fill-array-data v1, :array_55c

    new-array v1, v0, [I

    move-object/from16 v41, v1

    fill-array-data v1, :array_56c

    new-array v1, v0, [I

    move-object/from16 v42, v1

    fill-array-data v1, :array_57c

    new-array v1, v0, [I

    move-object/from16 v43, v1

    fill-array-data v1, :array_58c

    new-array v1, v0, [I

    move-object/from16 v44, v1

    fill-array-data v1, :array_59c

    new-array v1, v0, [I

    move-object/from16 v45, v1

    fill-array-data v1, :array_5ac

    new-array v1, v0, [I

    move-object/from16 v46, v1

    fill-array-data v1, :array_5bc

    new-array v1, v0, [I

    move-object/from16 v47, v1

    fill-array-data v1, :array_5cc

    new-array v1, v0, [I

    move-object/from16 v48, v1

    fill-array-data v1, :array_5dc

    new-array v1, v0, [I

    move-object/from16 v49, v1

    fill-array-data v1, :array_5ec

    new-array v1, v0, [I

    move-object/from16 v50, v1

    fill-array-data v1, :array_5fc

    new-array v1, v0, [I

    move-object/from16 v51, v1

    fill-array-data v1, :array_60c

    new-array v1, v0, [I

    move-object/from16 v52, v1

    fill-array-data v1, :array_61c

    new-array v1, v0, [I

    move-object/from16 v53, v1

    fill-array-data v1, :array_62c

    new-array v1, v0, [I

    move-object/from16 v54, v1

    fill-array-data v1, :array_63c

    new-array v1, v0, [I

    move-object/from16 v55, v1

    fill-array-data v1, :array_64c

    new-array v1, v0, [I

    move-object/from16 v56, v1

    fill-array-data v1, :array_65c

    new-array v1, v0, [I

    move-object/from16 v57, v1

    fill-array-data v1, :array_66c

    new-array v1, v0, [I

    move-object/from16 v58, v1

    fill-array-data v1, :array_67c

    new-array v1, v0, [I

    move-object/from16 v59, v1

    fill-array-data v1, :array_68c

    new-array v1, v0, [I

    move-object/from16 v60, v1

    fill-array-data v1, :array_69c

    new-array v1, v0, [I

    move-object/from16 v61, v1

    fill-array-data v1, :array_6ac

    new-array v1, v0, [I

    move-object/from16 v62, v1

    fill-array-data v1, :array_6bc

    new-array v1, v0, [I

    move-object/from16 v63, v1

    fill-array-data v1, :array_6cc

    new-array v1, v0, [I

    move-object/from16 v64, v1

    fill-array-data v1, :array_6dc

    new-array v1, v0, [I

    move-object/from16 v65, v1

    fill-array-data v1, :array_6ec

    new-array v1, v0, [I

    move-object/from16 v66, v1

    fill-array-data v1, :array_6fc

    new-array v1, v0, [I

    move-object/from16 v67, v1

    fill-array-data v1, :array_70c

    new-array v1, v0, [I

    move-object/from16 v68, v1

    fill-array-data v1, :array_71c

    new-array v1, v0, [I

    move-object/from16 v69, v1

    fill-array-data v1, :array_72c

    new-array v1, v0, [I

    move-object/from16 v70, v1

    fill-array-data v1, :array_73c

    new-array v1, v0, [I

    move-object/from16 v71, v1

    fill-array-data v1, :array_74c

    new-array v1, v0, [I

    move-object/from16 v72, v1

    fill-array-data v1, :array_75c

    new-array v1, v0, [I

    move-object/from16 v73, v1

    fill-array-data v1, :array_76c

    new-array v1, v0, [I

    move-object/from16 v74, v1

    fill-array-data v1, :array_77c

    new-array v1, v0, [I

    move-object/from16 v75, v1

    fill-array-data v1, :array_78c

    new-array v1, v0, [I

    move-object/from16 v76, v1

    fill-array-data v1, :array_79c

    new-array v1, v0, [I

    move-object/from16 v77, v1

    fill-array-data v1, :array_7ac

    new-array v1, v0, [I

    move-object/from16 v78, v1

    fill-array-data v1, :array_7bc

    new-array v1, v0, [I

    move-object/from16 v79, v1

    fill-array-data v1, :array_7cc

    new-array v1, v0, [I

    move-object/from16 v80, v1

    fill-array-data v1, :array_7dc

    new-array v1, v0, [I

    move-object/from16 v81, v1

    fill-array-data v1, :array_7ec

    new-array v1, v0, [I

    move-object/from16 v82, v1

    fill-array-data v1, :array_7fc

    new-array v1, v0, [I

    move-object/from16 v83, v1

    fill-array-data v1, :array_80c

    new-array v1, v0, [I

    move-object/from16 v84, v1

    fill-array-data v1, :array_81c

    new-array v1, v0, [I

    move-object/from16 v85, v1

    fill-array-data v1, :array_82c

    new-array v1, v0, [I

    move-object/from16 v86, v1

    fill-array-data v1, :array_83c

    new-array v1, v0, [I

    move-object/from16 v87, v1

    fill-array-data v1, :array_84c

    new-array v1, v0, [I

    move-object/from16 v88, v1

    fill-array-data v1, :array_85c

    new-array v1, v0, [I

    move-object/from16 v89, v1

    fill-array-data v1, :array_86c

    new-array v1, v0, [I

    move-object/from16 v90, v1

    fill-array-data v1, :array_87c

    new-array v1, v0, [I

    move-object/from16 v91, v1

    fill-array-data v1, :array_88c

    new-array v1, v0, [I

    move-object/from16 v92, v1

    fill-array-data v1, :array_89c

    new-array v1, v0, [I

    move-object/from16 v93, v1

    fill-array-data v1, :array_8ac

    new-array v1, v0, [I

    move-object/from16 v94, v1

    fill-array-data v1, :array_8bc

    new-array v1, v0, [I

    move-object/from16 v95, v1

    fill-array-data v1, :array_8cc

    new-array v1, v0, [I

    move-object/from16 v96, v1

    fill-array-data v1, :array_8dc

    new-array v1, v0, [I

    move-object/from16 v97, v1

    fill-array-data v1, :array_8ec

    new-array v1, v0, [I

    move-object/from16 v98, v1

    fill-array-data v1, :array_8fc

    new-array v1, v0, [I

    move-object/from16 v99, v1

    fill-array-data v1, :array_90c

    new-array v1, v0, [I

    move-object/from16 v100, v1

    fill-array-data v1, :array_91c

    new-array v1, v0, [I

    move-object/from16 v101, v1

    fill-array-data v1, :array_92c

    new-array v1, v0, [I

    move-object/from16 v102, v1

    fill-array-data v1, :array_93c

    new-array v1, v0, [I

    move-object/from16 v103, v1

    fill-array-data v1, :array_94c

    new-array v1, v0, [I

    move-object/from16 v104, v1

    fill-array-data v1, :array_95c

    new-array v1, v0, [I

    move-object/from16 v105, v1

    fill-array-data v1, :array_96c

    new-array v0, v0, [I

    move-object/from16 v106, v0

    fill-array-data v0, :array_97c

    const/4 v0, 0x7

    new-array v0, v0, [I

    move-object/from16 v107, v0

    fill-array-data v0, :array_98c

    move-object/from16 v1, v108

    filled-new-array/range {v1 .. v107}, [[I

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    return-void

    :array_2ec
    .array-data 4
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_2fc
    .array-data 4
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_30c
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
    .end array-data

    :array_31c
    .array-data 4
        0x1
        0x2
        0x1
        0x2
        0x2
        0x3
    .end array-data

    :array_32c
    .array-data 4
        0x1
        0x2
        0x1
        0x3
        0x2
        0x2
    .end array-data

    :array_33c
    .array-data 4
        0x1
        0x3
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_34c
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x1
        0x3
    .end array-data

    :array_35c
    .array-data 4
        0x1
        0x2
        0x2
        0x3
        0x1
        0x2
    .end array-data

    :array_36c
    .array-data 4
        0x1
        0x3
        0x2
        0x2
        0x1
        0x2
    .end array-data

    :array_37c
    .array-data 4
        0x2
        0x2
        0x1
        0x2
        0x1
        0x3
    .end array-data

    :array_38c
    .array-data 4
        0x2
        0x2
        0x1
        0x3
        0x1
        0x2
    .end array-data

    :array_39c
    .array-data 4
        0x2
        0x3
        0x1
        0x2
        0x1
        0x2
    .end array-data

    :array_3ac
    .array-data 4
        0x1
        0x1
        0x2
        0x2
        0x3
        0x2
    .end array-data

    :array_3bc
    .array-data 4
        0x1
        0x2
        0x2
        0x1
        0x3
        0x2
    .end array-data

    :array_3cc
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x3
        0x1
    .end array-data

    :array_3dc
    .array-data 4
        0x1
        0x1
        0x3
        0x2
        0x2
        0x2
    .end array-data

    :array_3ec
    .array-data 4
        0x1
        0x2
        0x3
        0x1
        0x2
        0x2
    .end array-data

    :array_3fc
    .array-data 4
        0x1
        0x2
        0x3
        0x2
        0x2
        0x1
    .end array-data

    :array_40c
    .array-data 4
        0x2
        0x2
        0x3
        0x2
        0x1
        0x1
    .end array-data

    :array_41c
    .array-data 4
        0x2
        0x2
        0x1
        0x1
        0x3
        0x2
    .end array-data

    :array_42c
    .array-data 4
        0x2
        0x2
        0x1
        0x2
        0x3
        0x1
    .end array-data

    :array_43c
    .array-data 4
        0x2
        0x1
        0x3
        0x2
        0x1
        0x2
    .end array-data

    :array_44c
    .array-data 4
        0x2
        0x2
        0x3
        0x1
        0x1
        0x2
    .end array-data

    :array_45c
    .array-data 4
        0x3
        0x1
        0x2
        0x1
        0x3
        0x1
    .end array-data

    :array_46c
    .array-data 4
        0x3
        0x1
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_47c
    .array-data 4
        0x3
        0x2
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_48c
    .array-data 4
        0x3
        0x2
        0x1
        0x2
        0x2
        0x1
    .end array-data

    :array_49c
    .array-data 4
        0x3
        0x1
        0x2
        0x2
        0x1
        0x2
    .end array-data

    :array_4ac
    .array-data 4
        0x3
        0x2
        0x2
        0x1
        0x1
        0x2
    .end array-data

    :array_4bc
    .array-data 4
        0x3
        0x2
        0x2
        0x2
        0x1
        0x1
    .end array-data

    :array_4cc
    .array-data 4
        0x2
        0x1
        0x2
        0x1
        0x2
        0x3
    .end array-data

    :array_4dc
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x2
        0x1
    .end array-data

    :array_4ec
    .array-data 4
        0x2
        0x3
        0x2
        0x1
        0x2
        0x1
    .end array-data

    :array_4fc
    .array-data 4
        0x1
        0x1
        0x1
        0x3
        0x2
        0x3
    .end array-data

    :array_50c
    .array-data 4
        0x1
        0x3
        0x1
        0x1
        0x2
        0x3
    .end array-data

    :array_51c
    .array-data 4
        0x1
        0x3
        0x1
        0x3
        0x2
        0x1
    .end array-data

    :array_52c
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x1
        0x3
    .end array-data

    :array_53c
    .array-data 4
        0x1
        0x3
        0x2
        0x1
        0x1
        0x3
    .end array-data

    :array_54c
    .array-data 4
        0x1
        0x3
        0x2
        0x3
        0x1
        0x1
    .end array-data

    :array_55c
    .array-data 4
        0x2
        0x1
        0x1
        0x3
        0x1
        0x3
    .end array-data

    :array_56c
    .array-data 4
        0x2
        0x3
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_57c
    .array-data 4
        0x2
        0x3
        0x1
        0x3
        0x1
        0x1
    .end array-data

    :array_58c
    .array-data 4
        0x1
        0x1
        0x2
        0x1
        0x3
        0x3
    .end array-data

    :array_59c
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x3
        0x1
    .end array-data

    :array_5ac
    .array-data 4
        0x1
        0x3
        0x2
        0x1
        0x3
        0x1
    .end array-data

    :array_5bc
    .array-data 4
        0x1
        0x1
        0x3
        0x1
        0x2
        0x3
    .end array-data

    :array_5cc
    .array-data 4
        0x1
        0x1
        0x3
        0x3
        0x2
        0x1
    .end array-data

    :array_5dc
    .array-data 4
        0x1
        0x3
        0x3
        0x1
        0x2
        0x1
    .end array-data

    :array_5ec
    .array-data 4
        0x3
        0x1
        0x3
        0x1
        0x2
        0x1
    .end array-data

    :array_5fc
    .array-data 4
        0x2
        0x1
        0x1
        0x3
        0x3
        0x1
    .end array-data

    :array_60c
    .array-data 4
        0x2
        0x3
        0x1
        0x1
        0x3
        0x1
    .end array-data

    :array_61c
    .array-data 4
        0x2
        0x1
        0x3
        0x1
        0x1
        0x3
    .end array-data

    :array_62c
    .array-data 4
        0x2
        0x1
        0x3
        0x3
        0x1
        0x1
    .end array-data

    :array_63c
    .array-data 4
        0x2
        0x1
        0x3
        0x1
        0x3
        0x1
    .end array-data

    :array_64c
    .array-data 4
        0x3
        0x1
        0x1
        0x1
        0x2
        0x3
    .end array-data

    :array_65c
    .array-data 4
        0x3
        0x1
        0x1
        0x3
        0x2
        0x1
    .end array-data

    :array_66c
    .array-data 4
        0x3
        0x3
        0x1
        0x1
        0x2
        0x1
    .end array-data

    :array_67c
    .array-data 4
        0x3
        0x1
        0x2
        0x1
        0x1
        0x3
    .end array-data

    :array_68c
    .array-data 4
        0x3
        0x1
        0x2
        0x3
        0x1
        0x1
    .end array-data

    :array_69c
    .array-data 4
        0x3
        0x3
        0x2
        0x1
        0x1
        0x1
    .end array-data

    :array_6ac
    .array-data 4
        0x3
        0x1
        0x4
        0x1
        0x1
        0x1
    .end array-data

    :array_6bc
    .array-data 4
        0x2
        0x2
        0x1
        0x4
        0x1
        0x1
    .end array-data

    :array_6cc
    .array-data 4
        0x4
        0x3
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_6dc
    .array-data 4
        0x1
        0x1
        0x1
        0x2
        0x2
        0x4
    .end array-data

    :array_6ec
    .array-data 4
        0x1
        0x1
        0x1
        0x4
        0x2
        0x2
    .end array-data

    :array_6fc
    .array-data 4
        0x1
        0x2
        0x1
        0x1
        0x2
        0x4
    .end array-data

    :array_70c
    .array-data 4
        0x1
        0x2
        0x1
        0x4
        0x2
        0x1
    .end array-data

    :array_71c
    .array-data 4
        0x1
        0x4
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_72c
    .array-data 4
        0x1
        0x4
        0x1
        0x2
        0x2
        0x1
    .end array-data

    :array_73c
    .array-data 4
        0x1
        0x1
        0x2
        0x2
        0x1
        0x4
    .end array-data

    :array_74c
    .array-data 4
        0x1
        0x1
        0x2
        0x4
        0x1
        0x2
    .end array-data

    :array_75c
    .array-data 4
        0x1
        0x2
        0x2
        0x1
        0x1
        0x4
    .end array-data

    :array_76c
    .array-data 4
        0x1
        0x2
        0x2
        0x4
        0x1
        0x1
    .end array-data

    :array_77c
    .array-data 4
        0x1
        0x4
        0x2
        0x1
        0x1
        0x2
    .end array-data

    :array_78c
    .array-data 4
        0x1
        0x4
        0x2
        0x2
        0x1
        0x1
    .end array-data

    :array_79c
    .array-data 4
        0x2
        0x4
        0x1
        0x2
        0x1
        0x1
    .end array-data

    :array_7ac
    .array-data 4
        0x2
        0x2
        0x1
        0x1
        0x1
        0x4
    .end array-data

    :array_7bc
    .array-data 4
        0x4
        0x1
        0x3
        0x1
        0x1
        0x1
    .end array-data

    :array_7cc
    .array-data 4
        0x2
        0x4
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_7dc
    .array-data 4
        0x1
        0x3
        0x4
        0x1
        0x1
        0x1
    .end array-data

    :array_7ec
    .array-data 4
        0x1
        0x1
        0x1
        0x2
        0x4
        0x2
    .end array-data

    :array_7fc
    .array-data 4
        0x1
        0x2
        0x1
        0x1
        0x4
        0x2
    .end array-data

    :array_80c
    .array-data 4
        0x1
        0x2
        0x1
        0x2
        0x4
        0x1
    .end array-data

    :array_81c
    .array-data 4
        0x1
        0x1
        0x4
        0x2
        0x1
        0x2
    .end array-data

    :array_82c
    .array-data 4
        0x1
        0x2
        0x4
        0x1
        0x1
        0x2
    .end array-data

    :array_83c
    .array-data 4
        0x1
        0x2
        0x4
        0x2
        0x1
        0x1
    .end array-data

    :array_84c
    .array-data 4
        0x4
        0x1
        0x1
        0x2
        0x1
        0x2
    .end array-data

    :array_85c
    .array-data 4
        0x4
        0x2
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_86c
    .array-data 4
        0x4
        0x2
        0x1
        0x2
        0x1
        0x1
    .end array-data

    :array_87c
    .array-data 4
        0x2
        0x1
        0x2
        0x1
        0x4
        0x1
    .end array-data

    :array_88c
    .array-data 4
        0x2
        0x1
        0x4
        0x1
        0x2
        0x1
    .end array-data

    :array_89c
    .array-data 4
        0x4
        0x1
        0x2
        0x1
        0x2
        0x1
    .end array-data

    :array_8ac
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x4
        0x3
    .end array-data

    :array_8bc
    .array-data 4
        0x1
        0x1
        0x1
        0x3
        0x4
        0x1
    .end array-data

    :array_8cc
    .array-data 4
        0x1
        0x3
        0x1
        0x1
        0x4
        0x1
    .end array-data

    :array_8dc
    .array-data 4
        0x1
        0x1
        0x4
        0x1
        0x1
        0x3
    .end array-data

    :array_8ec
    .array-data 4
        0x1
        0x1
        0x4
        0x3
        0x1
        0x1
    .end array-data

    :array_8fc
    .array-data 4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_90c
    .array-data 4
        0x4
        0x1
        0x1
        0x3
        0x1
        0x1
    .end array-data

    :array_91c
    .array-data 4
        0x1
        0x1
        0x3
        0x1
        0x4
        0x1
    .end array-data

    :array_92c
    .array-data 4
        0x1
        0x1
        0x4
        0x1
        0x3
        0x1
    .end array-data

    :array_93c
    .array-data 4
        0x3
        0x1
        0x1
        0x1
        0x4
        0x1
    .end array-data

    :array_94c
    .array-data 4
        0x4
        0x1
        0x1
        0x1
        0x3
        0x1
    .end array-data

    :array_95c
    .array-data 4
        0x2
        0x1
        0x1
        0x4
        0x1
        0x2
    .end array-data

    :array_96c
    .array-data 4
        0x2
        0x1
        0x1
        0x2
        0x1
        0x4
    .end array-data

    :array_97c
    .array-data 4
        0x2
        0x1
        0x1
        0x2
        0x3
        0x2
    .end array-data

    :array_98c
    .array-data 4
        0x2
        0x3
        0x3
        0x1
        0x1
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    return-void
.end method

.method private static decodeCode(Lcom/google/zxing/common/BitArray;[II)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 216
    invoke-static {p0, p2, p1}, Lcom/google/zxing/oned/Code128Reader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    const/high16 p0, 0x3e800000    # 0.25f

    const/4 p2, -0x1

    const/4 v0, 0x0

    .line 219
    :goto_7
    sget-object v1, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    array-length v2, v1

    if-ge v0, v2, :cond_1e

    .line 220
    aget-object v1, v1, v0

    const v2, 0x3f333333    # 0.7f

    .line 221
    invoke-static {p1, v1, v2}, Lcom/google/zxing/oned/Code128Reader;->patternMatchVariance([I[IF)F

    move-result v1

    cmpg-float v2, v1, p0

    if-gez v2, :cond_1b

    move p2, v0

    move p0, v1

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1e
    if-ltz p2, :cond_21

    return p2

    .line 231
    :cond_21
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private static findStartPattern(Lcom/google/zxing/common/BitArray;)[I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 170
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    const/4 v1, 0x0

    .line 171
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v2

    const/4 v3, 0x6

    .line 174
    new-array v3, v3, [I

    move v5, v1

    move v6, v5

    move v4, v2

    :goto_f
    if-ge v2, v0, :cond_70

    .line 180
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v5, :cond_1e

    .line 181
    aget v7, v3, v6

    add-int/2addr v7, v8

    aput v7, v3, v6

    goto :goto_6d

    :cond_1e
    const/4 v7, 0x5

    if-ne v6, v7, :cond_67

    const/4 v7, -0x1

    const/high16 v9, 0x3e800000    # 0.25f

    const/16 v10, 0x67

    :goto_26
    const/16 v11, 0x69

    if-gt v10, v11, :cond_3e

    .line 187
    sget-object v11, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v11, v11, v10

    const v12, 0x3f333333    # 0.7f

    invoke-static {v3, v11, v12}, Lcom/google/zxing/oned/Code128Reader;->patternMatchVariance([I[IF)F

    move-result v11

    cmpg-float v12, v11, v9

    if-gez v12, :cond_3b

    move v7, v10

    move v9, v11

    :cond_3b
    add-int/lit8 v10, v10, 0x1

    goto :goto_26

    :cond_3e
    const/4 v9, 0x2

    if-ltz v7, :cond_55

    sub-int v10, v2, v4

    .line 195
    div-int/2addr v10, v9

    sub-int v10, v4, v10

    .line 196
    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual {p0, v10, v4, v1}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v10

    if-eqz v10, :cond_55

    .line 197
    filled-new-array {v4, v2, v7}, [I

    move-result-object p0

    return-object p0

    .line 199
    :cond_55
    aget v7, v3, v1

    aget v10, v3, v8

    add-int/2addr v7, v10

    add-int/2addr v4, v7

    add-int/lit8 v7, v6, -0x1

    .line 200
    invoke-static {v3, v9, v3, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    aput v1, v3, v7

    .line 202
    aput v1, v3, v6

    add-int/lit8 v6, v6, -0x1

    goto :goto_69

    :cond_67
    add-int/lit8 v6, v6, 0x1

    .line 207
    :goto_69
    aput v8, v3, v6

    xor-int/lit8 v5, v5, 0x1

    :goto_6d
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 211
    :cond_70
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_12

    .line 239
    sget-object v4, Lcom/google/zxing/DecodeHintType;->ASSUME_GS1:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    move v1, v2

    goto :goto_13

    :cond_12
    move v1, v3

    .line 241
    :goto_13
    invoke-static/range {p2 .. p2}, Lcom/google/zxing/oned/Code128Reader;->findStartPattern(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v4

    const/4 v5, 0x2

    .line 242
    aget v6, v4, v5

    .line 244
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0x14

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    int-to-byte v9, v6

    .line 245
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    packed-switch v6, :pswitch_data_224

    .line 259
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :pswitch_31
    const/16 v12, 0x63

    goto :goto_39

    :pswitch_34
    const/16 v12, 0x64

    goto :goto_39

    :pswitch_37
    const/16 v12, 0x65

    .line 265
    :goto_39
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 267
    aget v8, v4, v3

    .line 268
    aget v14, v4, v2

    const/4 v15, 0x6

    .line 269
    new-array v2, v15, [I

    move v5, v3

    move v9, v5

    move/from16 v16, v9

    move/from16 v17, v16

    move/from16 v18, v17

    move/from16 v19, v18

    const/16 v20, 0x1

    move/from16 v24, v12

    move v12, v8

    move v8, v14

    move/from16 v14, v24

    :goto_57
    if-nez v16, :cond_196

    .line 288
    invoke-static {v0, v2, v8}, Lcom/google/zxing/oned/Code128Reader;->decodeCode(Lcom/google/zxing/common/BitArray;[II)I

    move-result v9

    int-to-byte v12, v9

    .line 290
    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v12, 0x6a

    if-eq v9, v12, :cond_6b

    const/16 v20, 0x1

    :cond_6b
    if-eq v9, v12, :cond_73

    add-int/lit8 v19, v19, 0x1

    mul-int v21, v19, v9

    add-int v6, v6, v21

    :cond_73
    move/from16 v22, v8

    const/4 v11, 0x0

    :goto_76
    if-ge v11, v15, :cond_7f

    .line 305
    aget v23, v2, v11

    add-int v22, v22, v23

    add-int/lit8 v11, v11, 0x1

    goto :goto_76

    :cond_7f
    packed-switch v9, :pswitch_data_22e

    const/16 v11, 0x60

    .line 317
    const-string v15, "]C1"

    packed-switch v14, :pswitch_data_238

    goto/16 :goto_fc

    .line 314
    :pswitch_8b
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :pswitch_90
    const/16 v10, 0x40

    if-ge v9, v10, :cond_a5

    if-ne v3, v5, :cond_9e

    add-int/lit8 v3, v9, 0x20

    int-to-char v3, v3

    .line 322
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_fb

    :cond_9e
    add-int/lit16 v3, v9, 0xa0

    int-to-char v3, v3

    .line 324
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_fb

    :cond_a5
    if-ge v9, v11, :cond_b7

    if-ne v3, v5, :cond_b0

    add-int/lit8 v3, v9, -0x40

    int-to-char v3, v3

    .line 329
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_fb

    :cond_b0
    add-int/lit8 v3, v9, 0x40

    int-to-char v3, v3

    .line 331
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_fb

    :cond_b7
    if-eq v9, v12, :cond_bb

    const/16 v20, 0x0

    :cond_bb
    if-eq v9, v12, :cond_13d

    packed-switch v9, :pswitch_data_242

    goto :goto_11b

    :pswitch_c1
    if-eqz v1, :cond_11b

    .line 343
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-nez v10, :cond_cd

    .line 346
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11b

    :cond_cd
    const/16 v10, 0x1d

    .line 349
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_11b

    :pswitch_d3
    if-nez v5, :cond_da

    if-eqz v3, :cond_da

    const/4 v3, 0x0

    const/4 v5, 0x1

    goto :goto_127

    :cond_da
    if-eqz v5, :cond_130

    if-eqz v3, :cond_130

    const/4 v3, 0x0

    const/4 v5, 0x0

    goto :goto_127

    :pswitch_e1
    move v10, v3

    const/4 v3, 0x0

    goto :goto_e6

    :pswitch_e4
    move v10, v3

    const/4 v3, 0x1

    :goto_e6
    const/16 v14, 0x64

    goto/16 :goto_141

    :pswitch_ea
    if-ge v9, v11, :cond_100

    if-ne v3, v5, :cond_f5

    add-int/lit8 v3, v9, 0x20

    int-to-char v3, v3

    .line 387
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_fb

    :cond_f5
    add-int/lit16 v3, v9, 0xa0

    int-to-char v3, v3

    .line 389
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_fb
    const/4 v3, 0x0

    :goto_fc
    const/16 v10, 0x64

    goto/16 :goto_17d

    :cond_100
    if-eq v9, v12, :cond_104

    const/16 v20, 0x0

    :cond_104
    if-eq v9, v12, :cond_13d

    packed-switch v9, :pswitch_data_250

    goto :goto_11b

    :pswitch_10a
    if-eqz v1, :cond_11b

    .line 399
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-nez v10, :cond_116

    .line 402
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11b

    :cond_116
    const/16 v10, 0x1d

    .line 405
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_11b
    :goto_11b
    move v10, v3

    const/4 v3, 0x0

    goto :goto_141

    :pswitch_11e
    move v10, v3

    const/4 v3, 0x0

    goto :goto_13a

    :pswitch_121
    if-nez v5, :cond_129

    if-eqz v3, :cond_129

    const/4 v3, 0x0

    const/4 v5, 0x1

    :goto_127
    const/4 v10, 0x0

    goto :goto_141

    :cond_129
    if-eqz v5, :cond_130

    if-eqz v3, :cond_130

    const/4 v3, 0x0

    const/4 v5, 0x0

    goto :goto_127

    :cond_130
    const/4 v3, 0x0

    const/4 v10, 0x1

    goto :goto_141

    :pswitch_133
    move v10, v3

    const/4 v3, 0x0

    const/16 v14, 0x63

    goto :goto_141

    :pswitch_138
    move v10, v3

    const/4 v3, 0x1

    :goto_13a
    const/16 v14, 0x65

    goto :goto_141

    :cond_13d
    move v10, v3

    const/4 v3, 0x0

    const/16 v16, 0x1

    :goto_141
    move v11, v3

    move v3, v10

    const/16 v10, 0x64

    goto :goto_17e

    :pswitch_146
    const/16 v10, 0x64

    if-ge v9, v10, :cond_157

    const/16 v11, 0xa

    if-ge v9, v11, :cond_153

    const/16 v11, 0x30

    .line 443
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 445
    :cond_153
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_17d

    :cond_157
    if-eq v9, v12, :cond_15b

    const/16 v20, 0x0

    :cond_15b
    if-eq v9, v12, :cond_179

    packed-switch v9, :pswitch_data_25e

    goto :goto_17d

    :pswitch_161
    if-eqz v1, :cond_17d

    .line 453
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-nez v11, :cond_16d

    .line 456
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17d

    :cond_16d
    const/16 v11, 0x1d

    .line 459
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_17d

    :pswitch_173
    const/4 v11, 0x0

    const/16 v14, 0x65

    goto :goto_17e

    :pswitch_177
    move v14, v10

    goto :goto_17d

    :cond_179
    const/4 v11, 0x0

    const/16 v16, 0x1

    goto :goto_17e

    :cond_17d
    :goto_17d
    const/4 v11, 0x0

    :goto_17e
    const/16 v15, 0x65

    if-eqz v17, :cond_188

    if-ne v14, v15, :cond_186

    move v12, v10

    goto :goto_187

    :cond_186
    move v12, v15

    :goto_187
    move v14, v12

    :cond_188
    move v12, v8

    move/from16 v17, v11

    move/from16 v8, v22

    const/4 v15, 0x6

    move/from16 v24, v18

    move/from16 v18, v9

    move/from16 v9, v24

    goto/16 :goto_57

    :cond_196
    sub-int v1, v8, v12

    .line 489
    invoke-virtual {v0, v8}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v2

    .line 491
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    sub-int v5, v2, v12

    const/4 v8, 0x2

    div-int/2addr v5, v8

    add-int/2addr v5, v2

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v5, 0x0

    .line 490
    invoke-virtual {v0, v2, v3, v5}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v0

    if-eqz v0, :cond_21e

    mul-int v19, v19, v9

    sub-int v6, v6, v19

    .line 499
    rem-int/lit8 v6, v6, 0x67

    if-ne v6, v9, :cond_219

    .line 504
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_214

    if-lez v0, :cond_1d1

    if-eqz v20, :cond_1d1

    const/16 v2, 0x63

    if-ne v14, v2, :cond_1cc

    add-int/lit8 v2, v0, -0x2

    .line 514
    invoke-virtual {v13, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_1d1

    :cond_1cc
    add-int/lit8 v2, v0, -0x1

    .line 516
    invoke-virtual {v13, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_1d1
    :goto_1d1
    const/4 v0, 0x1

    .line 520
    aget v0, v4, v0

    const/4 v2, 0x0

    aget v3, v4, v2

    add-int/2addr v0, v3

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    int-to-float v4, v12

    int-to-float v1, v1

    div-float/2addr v1, v3

    add-float/2addr v4, v1

    .line 523
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    .line 524
    new-array v3, v1, [B

    :goto_1e6
    if-ge v2, v1, :cond_1f7

    .line 526
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    aput-byte v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e6

    .line 529
    :cond_1f7
    new-instance v1, Lcom/google/zxing/Result;

    .line 530
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/google/zxing/ResultPoint;

    move/from16 v6, p1

    int-to-float v6, v6

    invoke-direct {v5, v0, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v0, Lcom/google/zxing/ResultPoint;

    invoke-direct {v0, v4, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    filled-new-array {v5, v0}, [Lcom/google/zxing/ResultPoint;

    move-result-object v0

    sget-object v4, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v1

    .line 507
    :cond_214
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 500
    :cond_219
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    .line 493
    :cond_21e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_224
    .packed-switch 0x67
        :pswitch_37
        :pswitch_34
        :pswitch_31
    .end packed-switch

    :pswitch_data_22e
    .packed-switch 0x67
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
    .end packed-switch

    :pswitch_data_238
    .packed-switch 0x63
        :pswitch_146
        :pswitch_ea
        :pswitch_90
    .end packed-switch

    :pswitch_data_242
    .packed-switch 0x62
        :pswitch_e4
        :pswitch_133
        :pswitch_e1
        :pswitch_d3
        :pswitch_c1
    .end packed-switch

    :pswitch_data_250
    .packed-switch 0x62
        :pswitch_138
        :pswitch_133
        :pswitch_121
        :pswitch_11e
        :pswitch_10a
    .end packed-switch

    :pswitch_data_25e
    .packed-switch 0x64
        :pswitch_177
        :pswitch_173
        :pswitch_161
    .end packed-switch
.end method
