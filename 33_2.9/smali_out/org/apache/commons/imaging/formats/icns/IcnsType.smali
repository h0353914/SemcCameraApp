.class final enum Lorg/apache/commons/imaging/formats/icns/IcnsType;
.super Ljava/lang/Enum;
.source "IcnsType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/imaging/formats/icns/IcnsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field private static final ALL_IMAGE_TYPES:[Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field private static final ALL_MASK_TYPES:[Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_128x128_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_128x128_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_16x12_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_16x12_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_16x12_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_16x16_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_16x16_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_16x16_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_16x16_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_16x16_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_256x256_32BIT_ARGB_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_32x32_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_32x32_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_32x32_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_32x32_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_32x32_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_48x48_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_48x48_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_48x48_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_48x48_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_48x48_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_512x512_32BIT_ARGB_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;


# instance fields
.field private final bitsPerPixel:I

.field private final hasMask:Z

.field private final height:I

.field private final type:I

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .registers 43

    .line 23
    new-instance v8, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v1, "ICNS_16x12_1BIT_IMAGE_AND_MASK"

    const/4 v2, 0x0

    const-string v3, "icm#"

    const/16 v4, 0x10

    const/16 v5, 0xc

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v8, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x12_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 24
    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v10, "ICNS_16x12_4BIT_IMAGE"

    const/4 v11, 0x1

    const-string v12, "icm4"

    const/16 v13, 0x10

    const/16 v14, 0xc

    const/4 v15, 0x4

    const/16 v16, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x12_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 25
    new-instance v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v18, "ICNS_16x12_8BIT_IMAGE"

    const/16 v19, 0x2

    const-string v20, "icm8"

    const/16 v21, 0x10

    const/16 v22, 0xc

    const/16 v23, 0x8

    const/16 v24, 0x0

    move-object/from16 v17, v1

    invoke-direct/range {v17 .. v24}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x12_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 27
    new-instance v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v10, "ICNS_16x16_8BIT_MASK"

    const/4 v11, 0x3

    const-string v12, "s8mk"

    const/16 v14, 0x10

    const/16 v15, 0x8

    const/16 v16, 0x1

    move-object v9, v2

    invoke-direct/range {v9 .. v16}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x16_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 28
    new-instance v3, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v18, "ICNS_16x16_1BIT_IMAGE_AND_MASK"

    const/16 v19, 0x4

    const-string v20, "ics#"

    const/16 v22, 0x10

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v24}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v3, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x16_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 29
    new-instance v4, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v10, "ICNS_16x16_4BIT_IMAGE"

    const/4 v11, 0x5

    const-string v12, "ics4"

    const/4 v15, 0x4

    const/16 v16, 0x0

    move-object v9, v4

    invoke-direct/range {v9 .. v16}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v4, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x16_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 30
    new-instance v5, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v18, "ICNS_16x16_8BIT_IMAGE"

    const/16 v19, 0x6

    const-string v20, "ics8"

    const/16 v23, 0x8

    const/16 v24, 0x0

    move-object/from16 v17, v5

    invoke-direct/range {v17 .. v24}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v5, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x16_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 31
    new-instance v6, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v10, "ICNS_16x16_32BIT_IMAGE"

    const/4 v11, 0x7

    const-string v12, "is32"

    const/16 v15, 0x20

    move-object v9, v6

    invoke-direct/range {v9 .. v16}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v6, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x16_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 33
    new-instance v7, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v18, "ICNS_32x32_8BIT_MASK"

    const/16 v19, 0x8

    const-string v20, "l8mk"

    const/16 v21, 0x20

    const/16 v22, 0x20

    const/16 v24, 0x1

    move-object/from16 v17, v7

    invoke-direct/range {v17 .. v24}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v7, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_32x32_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 34
    new-instance v17, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v10, "ICNS_32x32_1BIT_IMAGE_AND_MASK"

    const/16 v11, 0x9

    const-string v12, "ICN#"

    const/16 v13, 0x20

    const/16 v14, 0x20

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v9, v17

    invoke-direct/range {v9 .. v16}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v17, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_32x32_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 35
    new-instance v9, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v19, "ICNS_32x32_4BIT_IMAGE"

    const/16 v20, 0xa

    const-string v21, "icl4"

    const/16 v23, 0x20

    const/16 v24, 0x4

    const/16 v25, 0x0

    move-object/from16 v18, v9

    invoke-direct/range {v18 .. v25}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v9, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_32x32_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 36
    new-instance v10, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v27, "ICNS_32x32_8BIT_IMAGE"

    const/16 v28, 0xb

    const-string v29, "icl8"

    const/16 v30, 0x20

    const/16 v31, 0x20

    const/16 v32, 0x8

    const/16 v33, 0x0

    move-object/from16 v26, v10

    invoke-direct/range {v26 .. v33}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v10, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_32x32_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 37
    new-instance v11, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v19, "ICNS_32x32_32BIT_IMAGE"

    const/16 v20, 0xc

    const-string v21, "il32"

    const/16 v24, 0x20

    move-object/from16 v18, v11

    invoke-direct/range {v18 .. v25}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v11, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_32x32_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 39
    new-instance v12, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v27, "ICNS_48x48_8BIT_MASK"

    const/16 v28, 0xd

    const-string v29, "h8mk"

    const/16 v30, 0x30

    const/16 v31, 0x30

    const/16 v33, 0x1

    move-object/from16 v26, v12

    invoke-direct/range {v26 .. v33}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v12, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_48x48_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 40
    new-instance v13, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v19, "ICNS_48x48_1BIT_IMAGE_AND_MASK"

    const/16 v20, 0xe

    const-string v21, "ich#"

    const/16 v22, 0x30

    const/16 v23, 0x30

    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v18, v13

    invoke-direct/range {v18 .. v25}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v13, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_48x48_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 41
    new-instance v14, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v27, "ICNS_48x48_4BIT_IMAGE"

    const/16 v28, 0xf

    const-string v29, "ich4"

    const/16 v32, 0x4

    const/16 v33, 0x0

    move-object/from16 v26, v14

    invoke-direct/range {v26 .. v33}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v14, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_48x48_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 42
    new-instance v15, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v19, "ICNS_48x48_8BIT_IMAGE"

    const/16 v20, 0x10

    const-string v21, "ich8"

    const/16 v24, 0x8

    const/16 v25, 0x0

    move-object/from16 v18, v15

    invoke-direct/range {v18 .. v25}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v15, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_48x48_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 43
    new-instance v16, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v27, "ICNS_48x48_32BIT_IMAGE"

    const/16 v28, 0x11

    const-string v29, "ih32"

    const/16 v32, 0x20

    move-object/from16 v26, v16

    invoke-direct/range {v26 .. v33}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v16, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_48x48_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 45
    new-instance v26, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v19, "ICNS_128x128_8BIT_MASK"

    const/16 v20, 0x12

    const-string v21, "t8mk"

    const/16 v22, 0x80

    const/16 v23, 0x80

    const/16 v25, 0x1

    move-object/from16 v18, v26

    invoke-direct/range {v18 .. v25}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v26, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_128x128_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 46
    new-instance v18, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v28, "ICNS_128x128_32BIT_IMAGE"

    const/16 v29, 0x13

    const-string v30, "it32"

    const/16 v31, 0x80

    const/16 v32, 0x80

    const/16 v33, 0x20

    const/16 v34, 0x0

    move-object/from16 v27, v18

    invoke-direct/range {v27 .. v34}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v18, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_128x128_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 48
    new-instance v19, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v36, "ICNS_256x256_32BIT_ARGB_IMAGE"

    const/16 v37, 0x14

    const-string v38, "ic08"

    const/16 v39, 0x100

    const/16 v40, 0x100

    const/16 v41, 0x20

    const/16 v42, 0x0

    move-object/from16 v35, v19

    invoke-direct/range {v35 .. v42}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v19, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_256x256_32BIT_ARGB_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 50
    new-instance v20, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v28, "ICNS_512x512_32BIT_ARGB_IMAGE"

    const/16 v29, 0x15

    const-string v30, "ic09"

    const/16 v31, 0x200

    const/16 v32, 0x200

    move-object/from16 v27, v20

    invoke-direct/range {v27 .. v34}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v20, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_512x512_32BIT_ARGB_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    move-object/from16 v21, v15

    const/16 v15, 0x16

    new-array v15, v15, [Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const/16 v22, 0x0

    aput-object v8, v15, v22

    const/16 v23, 0x1

    aput-object v0, v15, v23

    const/16 v24, 0x2

    aput-object v1, v15, v24

    const/16 v25, 0x3

    aput-object v2, v15, v25

    const/16 v27, 0x4

    aput-object v3, v15, v27

    const/16 v28, 0x5

    aput-object v4, v15, v28

    const/16 v29, 0x6

    aput-object v5, v15, v29

    const/16 v30, 0x7

    aput-object v6, v15, v30

    move-object/from16 v31, v2

    const/16 v2, 0x8

    aput-object v7, v15, v2

    const/16 v32, 0x9

    aput-object v17, v15, v32

    const/16 v33, 0xa

    aput-object v9, v15, v33

    const/16 v34, 0xb

    aput-object v10, v15, v34

    const/16 v35, 0xc

    aput-object v11, v15, v35

    const/16 v36, 0xd

    aput-object v12, v15, v36

    const/16 v37, 0xe

    aput-object v13, v15, v37

    const/16 v38, 0xf

    aput-object v14, v15, v38

    const/16 v39, 0x10

    aput-object v21, v15, v39

    const/16 v40, 0x11

    aput-object v16, v15, v40

    const/16 v2, 0x12

    aput-object v26, v15, v2

    const/16 v42, 0x13

    aput-object v18, v15, v42

    const/16 v42, 0x14

    aput-object v19, v15, v42

    const/16 v42, 0x15

    aput-object v20, v15, v42

    .line 21
    sput-object v15, Lorg/apache/commons/imaging/formats/icns/IcnsType;->$VALUES:[Lorg/apache/commons/imaging/formats/icns/IcnsType;

    new-array v2, v2, [Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v8, v2, v22

    aput-object v0, v2, v23

    aput-object v1, v2, v24

    aput-object v3, v2, v25

    aput-object v4, v2, v27

    aput-object v5, v2, v28

    aput-object v6, v2, v29

    aput-object v17, v2, v30

    const/16 v0, 0x8

    aput-object v9, v2, v0

    aput-object v10, v2, v32

    aput-object v11, v2, v33

    aput-object v13, v2, v34

    aput-object v14, v2, v35

    aput-object v21, v2, v36

    aput-object v16, v2, v37

    aput-object v18, v2, v38

    aput-object v19, v2, v39

    aput-object v20, v2, v40

    .line 52
    sput-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ALL_IMAGE_TYPES:[Lorg/apache/commons/imaging/formats/icns/IcnsType;

    new-array v0, v0, [Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v8, v0, v22

    aput-object v3, v0, v23

    aput-object v31, v0, v24

    aput-object v17, v0, v25

    aput-object v7, v0, v27

    aput-object v13, v0, v28

    aput-object v12, v0, v29

    aput-object v26, v0, v30

    .line 72
    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ALL_MASK_TYPES:[Lorg/apache/commons/imaging/formats/icns/IcnsType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIZ)V"
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 89
    invoke-static {p3}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->typeAsInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->type:I

    .line 90
    iput p4, p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->width:I

    .line 91
    iput p5, p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->height:I

    .line 92
    iput p6, p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->bitsPerPixel:I

    .line 93
    iput-boolean p7, p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->hasMask:Z

    return-void
.end method

.method public static describeType(I)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x3

    aput-byte p0, v0, v1

    .line 191
    :try_start_21
    new-instance p0, Ljava/lang/String;

    const-string v1, "US-ASCII"

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_28
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_21 .. :try_end_28} :catch_29

    return-object p0

    :catch_29
    move-exception p0

    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Your Java doesn\'t support US-ASCII"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static find1BPPMaskType(Lorg/apache/commons/imaging/formats/icns/IcnsType;)Lorg/apache/commons/imaging/formats/icns/IcnsType;
    .registers 7

    .line 158
    sget-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ALL_MASK_TYPES:[Lorg/apache/commons/imaging/formats/icns/IcnsType;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_27

    aget-object v3, v0, v2

    .line 159
    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getBitsPerPixel()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_24

    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_24

    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getHeight()I

    move-result v5

    if-ne v4, v5, :cond_24

    return-object v3

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_27
    const/4 p0, 0x0

    return-object p0
.end method

.method public static find8BPPMaskType(Lorg/apache/commons/imaging/formats/icns/IcnsType;)Lorg/apache/commons/imaging/formats/icns/IcnsType;
    .registers 7

    .line 147
    sget-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ALL_MASK_TYPES:[Lorg/apache/commons/imaging/formats/icns/IcnsType;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_28

    aget-object v3, v0, v2

    .line 148
    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getBitsPerPixel()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_25

    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_25

    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getHeight()I

    move-result v5

    if-ne v4, v5, :cond_25

    return-object v3

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_28
    const/4 p0, 0x0

    return-object p0
.end method

.method public static findAnyType(I)Lorg/apache/commons/imaging/formats/icns/IcnsType;
    .registers 7

    .line 124
    sget-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ALL_IMAGE_TYPES:[Lorg/apache/commons/imaging/formats/icns/IcnsType;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_13

    aget-object v4, v0, v3

    .line 125
    invoke-virtual {v4}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getType()I

    move-result v5

    if-ne v5, p0, :cond_10

    return-object v4

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 129
    :cond_13
    sget-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ALL_MASK_TYPES:[Lorg/apache/commons/imaging/formats/icns/IcnsType;

    array-length v1, v0

    :goto_16
    if-ge v2, v1, :cond_24

    aget-object v3, v0, v2

    .line 130
    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getType()I

    move-result v4

    if-ne v4, p0, :cond_21

    return-object v3

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_24
    const/4 p0, 0x0

    return-object p0
.end method

.method public static findImageType(I)Lorg/apache/commons/imaging/formats/icns/IcnsType;
    .registers 6

    .line 138
    sget-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ALL_IMAGE_TYPES:[Lorg/apache/commons/imaging/formats/icns/IcnsType;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 139
    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getType()I

    move-result v4

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static typeAsInt(Ljava/lang/String;)I
    .registers 3

    :try_start_0
    const-string v0, "US-ASCII"

    .line 171
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_30

    .line 175
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_28

    const/4 v0, 0x0

    .line 178
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0

    .line 176
    :cond_28
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid ICNS type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_30
    move-exception p0

    .line 173
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Your Java doesn\'t support US-ASCII"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/imaging/formats/icns/IcnsType;
    .registers 2

    .line 21
    const-class v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/imaging/formats/icns/IcnsType;
    .registers 1

    .line 21
    sget-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->$VALUES:[Lorg/apache/commons/imaging/formats/icns/IcnsType;

    invoke-virtual {v0}, [Lorg/apache/commons/imaging/formats/icns/IcnsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/imaging/formats/icns/IcnsType;

    return-object v0
.end method


# virtual methods
.method public getBitsPerPixel()I
    .registers 1

    .line 109
    iget p0, p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->bitsPerPixel:I

    return p0
.end method

.method public getHeight()I
    .registers 1

    .line 105
    iget p0, p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->height:I

    return p0
.end method

.method public getType()I
    .registers 1

    .line 97
    iget p0, p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->type:I

    return p0
.end method

.method public getWidth()I
    .registers 1

    .line 101
    iget p0, p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->width:I

    return p0
.end method

.method public hasMask()Z
    .registers 1

    .line 113
    iget-boolean p0, p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->hasMask:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "height="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->height:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "bpp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->bitsPerPixel:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "hasMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean p0, p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->hasMask:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
