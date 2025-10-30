.class Lcom/sonyericsson/android/camera/view/blur/BlurProcess;
.super Ljava/lang/Object;
.source "BlurProcess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/blur/BlurProcess$BlurTask;
    }
.end annotation


# static fields
.field private static final stackblur_mul:[S

.field private static final stackblur_shr:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0xff

    new-array v1, v0, [S

    .line 35
    fill-array-data v1, :array_12

    sput-object v1, Lcom/sonyericsson/android/camera/view/blur/BlurProcess;->stackblur_mul:[S

    new-array v0, v0, [B

    .line 57
    fill-array-data v0, :array_116

    sput-object v0, Lcom/sonyericsson/android/camera/view/blur/BlurProcess;->stackblur_shr:[B

    return-void

    nop

    :array_12
    .array-data 2
        0x200s
        0x200s
        0x1c8s
        0x200s
        0x148s
        0x1c8s
        0x14fs
        0x200s
        0x195s
        0x148s
        0x10fs
        0x1c8s
        0x184s
        0x14fs
        0x124s
        0x200s
        0x1c6s
        0x195s
        0x16cs
        0x148s
        0x12as
        0x10fs
        0x1f0s
        0x1c8s
        0x1a4s
        0x184s
        0x168s
        0x14fs
        0x138s
        0x124s
        0x111s
        0x200s
        0x1e2s
        0x1c6s
        0x1acs
        0x195s
        0x17fs
        0x16cs
        0x159s
        0x148s
        0x138s
        0x12as
        0x11cs
        0x10fs
        0x103s
        0x1f0s
        0x1dbs
        0x1c8s
        0x1b5s
        0x1a4s
        0x194s
        0x184s
        0x176s
        0x168s
        0x15bs
        0x14fs
        0x143s
        0x138s
        0x12es
        0x124s
        0x11as
        0x111s
        0x109s
        0x200s
        0x1f1s
        0x1e2s
        0x1d4s
        0x1c6s
        0x1b9s
        0x1acs
        0x1a1s
        0x195s
        0x18as
        0x17fs
        0x175s
        0x16cs
        0x162s
        0x159s
        0x151s
        0x148s
        0x140s
        0x138s
        0x131s
        0x12as
        0x123s
        0x11cs
        0x116s
        0x10fs
        0x109s
        0x103s
        0x1fbs
        0x1f0s
        0x1e5s
        0x1dbs
        0x1d1s
        0x1c8s
        0x1bes
        0x1b5s
        0x1acs
        0x1a4s
        0x19cs
        0x194s
        0x18cs
        0x184s
        0x17ds
        0x176s
        0x16fs
        0x168s
        0x162s
        0x15bs
        0x155s
        0x14fs
        0x149s
        0x143s
        0x13es
        0x138s
        0x133s
        0x12es
        0x129s
        0x124s
        0x11fs
        0x11as
        0x116s
        0x111s
        0x10ds
        0x109s
        0x105s
        0x200s
        0x1f9s
        0x1f1s
        0x1e9s
        0x1e2s
        0x1dbs
        0x1d4s
        0x1cds
        0x1c6s
        0x1bfs
        0x1b9s
        0x1b3s
        0x1acs
        0x1a6s
        0x1a1s
        0x19bs
        0x195s
        0x18fs
        0x18as
        0x185s
        0x17fs
        0x17as
        0x175s
        0x170s
        0x16cs
        0x167s
        0x162s
        0x15es
        0x159s
        0x155s
        0x151s
        0x14cs
        0x148s
        0x144s
        0x140s
        0x13cs
        0x138s
        0x135s
        0x131s
        0x12ds
        0x12as
        0x126s
        0x123s
        0x11fs
        0x11cs
        0x119s
        0x116s
        0x112s
        0x10fs
        0x10cs
        0x109s
        0x106s
        0x103s
        0x101s
        0x1fbs
        0x1f5s
        0x1f0s
        0x1ebs
        0x1e5s
        0x1e0s
        0x1dbs
        0x1d6s
        0x1d1s
        0x1ccs
        0x1c8s
        0x1c3s
        0x1bes
        0x1bas
        0x1b5s
        0x1b1s
        0x1acs
        0x1a8s
        0x1a4s
        0x1a0s
        0x19cs
        0x198s
        0x194s
        0x190s
        0x18cs
        0x188s
        0x184s
        0x181s
        0x17ds
        0x179s
        0x176s
        0x172s
        0x16fs
        0x16bs
        0x168s
        0x165s
        0x162s
        0x15es
        0x15bs
        0x158s
        0x155s
        0x152s
        0x14fs
        0x14cs
        0x149s
        0x146s
        0x143s
        0x140s
        0x13es
        0x13bs
        0x138s
        0x136s
        0x133s
        0x130s
        0x12es
        0x12bs
        0x129s
        0x126s
        0x124s
        0x121s
        0x11fs
        0x11ds
        0x11as
        0x118s
        0x116s
        0x113s
        0x111s
        0x10fs
        0x10ds
        0x10bs
        0x109s
        0x107s
        0x105s
        0x103s
    .end array-data

    nop

    :array_116
    .array-data 1
        0x9t
        0xbt
        0xct
        0xdt
        0xdt
        0xet
        0xet
        0xft
        0xft
        0xft
        0xft
        0x10t
        0x10t
        0x10t
        0x10t
        0x11t
        0x11t
        0x11t
        0x11t
        0x11t
        0x11t
        0x11t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([IIIIIII)V
    .registers 7

    .line 33
    invoke-static/range {p0 .. p6}, Lcom/sonyericsson/android/camera/view/blur/BlurProcess;->blurIteration([IIIIIII)V

    return-void
.end method

.method private static blurIteration([IIIIIII)V
    .registers 50

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p6

    add-int/lit8 v4, v0, -0x1

    add-int/lit8 v5, v1, -0x1

    mul-int/lit8 v6, v2, 0x2

    const/4 v7, 0x1

    add-int/2addr v6, v7

    .line 121
    sget-object v8, Lcom/sonyericsson/android/camera/view/blur/BlurProcess;->stackblur_mul:[S

    aget-short v8, v8, v2

    .line 122
    sget-object v9, Lcom/sonyericsson/android/camera/view/blur/BlurProcess;->stackblur_shr:[B

    aget-byte v9, v9, v2

    .line 123
    new-array v10, v6, [I

    const/16 v15, 0x8

    const/16 v16, 0x10

    const-wide/16 v17, 0x0

    if-ne v3, v7, :cond_1b5

    mul-int v3, p5, v1

    .line 126
    div-int v3, v3, p4

    add-int/lit8 v5, p5, 0x1

    mul-int/2addr v5, v1

    .line 127
    div-int v5, v5, p4

    :goto_2b
    if-ge v3, v5, :cond_35d

    mul-int v1, v0, v3

    move-wide/from16 v19, v17

    move-wide/from16 v21, v19

    move-wide/from16 v23, v21

    move-wide/from16 v25, v23

    move-wide/from16 v27, v25

    move-wide/from16 v29, v27

    const/4 v14, 0x0

    :goto_3c
    if-gt v14, v2, :cond_79

    .line 144
    aget v31, p0, v1

    aput v31, v10, v14

    .line 145
    aget v31, p0, v1

    ushr-int/lit8 v7, v31, 0x10

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v14, v14, 0x1

    mul-int/2addr v7, v14

    int-to-long v12, v7

    add-long v19, v19, v12

    .line 146
    aget v7, p0, v1

    ushr-int/2addr v7, v15

    and-int/lit16 v7, v7, 0xff

    mul-int/2addr v7, v14

    int-to-long v12, v7

    add-long v21, v21, v12

    .line 147
    aget v7, p0, v1

    and-int/lit16 v7, v7, 0xff

    mul-int/2addr v7, v14

    int-to-long v12, v7

    add-long v23, v23, v12

    .line 148
    aget v7, p0, v1

    ushr-int/lit8 v7, v7, 0x10

    and-int/lit16 v7, v7, 0xff

    int-to-long v12, v7

    add-long v25, v25, v12

    .line 149
    aget v7, p0, v1

    ushr-int/2addr v7, v15

    and-int/lit16 v7, v7, 0xff

    int-to-long v12, v7

    add-long v27, v27, v12

    .line 150
    aget v7, p0, v1

    and-int/lit16 v7, v7, 0xff

    int-to-long v12, v7

    add-long v29, v29, v12

    const/4 v7, 0x1

    goto :goto_3c

    :cond_79
    move v12, v1

    move-wide/from16 v13, v17

    move-wide/from16 v34, v13

    move-wide/from16 v36, v34

    const/4 v7, 0x1

    :goto_81
    if-gt v7, v2, :cond_cd

    if-gt v7, v4, :cond_87

    add-int/lit8 v12, v12, 0x1

    :cond_87
    add-int v31, v7, v2

    .line 157
    aget v38, p0, v12

    aput v38, v10, v31

    .line 158
    aget v31, p0, v12

    ushr-int/lit8 v11, v31, 0x10

    and-int/lit16 v11, v11, 0xff

    add-int/lit8 v31, v2, 0x1

    sub-int v31, v31, v7

    mul-int v11, v11, v31

    move-object/from16 v39, v10

    int-to-long v10, v11

    add-long v19, v19, v10

    .line 159
    aget v10, p0, v12

    ushr-int/2addr v10, v15

    and-int/lit16 v10, v10, 0xff

    mul-int v10, v10, v31

    int-to-long v10, v10

    add-long v21, v21, v10

    .line 160
    aget v10, p0, v12

    and-int/lit16 v10, v10, 0xff

    mul-int v10, v10, v31

    int-to-long v10, v10

    add-long v23, v23, v10

    .line 161
    aget v10, p0, v12

    ushr-int/lit8 v10, v10, 0x10

    and-int/lit16 v10, v10, 0xff

    int-to-long v10, v10

    add-long/2addr v13, v10

    .line 162
    aget v10, p0, v12

    ushr-int/2addr v10, v15

    and-int/lit16 v10, v10, 0xff

    int-to-long v10, v10

    add-long v34, v34, v10

    .line 163
    aget v10, p0, v12

    and-int/lit16 v10, v10, 0xff

    int-to-long v10, v10

    add-long v36, v36, v10

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v10, v39

    goto :goto_81

    :cond_cd
    move-object/from16 v39, v10

    if-le v2, v4, :cond_d3

    move v7, v4

    goto :goto_d4

    :cond_d3
    move v7, v2

    :goto_d4
    add-int v10, v7, v1

    move v12, v2

    const/4 v11, 0x0

    :goto_d8
    if-ge v11, v0, :cond_1a8

    .line 173
    aget v31, p0, v1

    const/high16 v38, -0x1000000

    and-int v15, v31, v38

    move-wide/from16 p4, v13

    int-to-long v13, v15

    move/from16 p2, v10

    move v15, v11

    int-to-long v10, v8

    mul-long v41, v19, v10

    ushr-long v41, v41, v9

    const-wide/16 v32, 0xff

    and-long v41, v41, v32

    shl-long v41, v41, v16

    or-long v13, v13, v41

    mul-long v41, v21, v10

    ushr-long v41, v41, v9

    and-long v41, v41, v32

    const/16 v31, 0x8

    shl-long v41, v41, v31

    or-long v13, v13, v41

    mul-long v10, v10, v23

    ushr-long/2addr v10, v9

    and-long v10, v10, v32

    or-long/2addr v10, v13

    long-to-int v10, v10

    aput v10, p0, v1

    const/4 v10, 0x1

    add-int/2addr v1, v10

    sub-long v19, v19, v25

    sub-long v21, v21, v27

    sub-long v23, v23, v29

    add-int v10, v12, v6

    sub-int/2addr v10, v2

    if-lt v10, v6, :cond_116

    sub-int/2addr v10, v6

    .line 187
    :cond_116
    aget v11, v39, v10

    ushr-int/lit8 v11, v11, 0x10

    and-int/lit16 v11, v11, 0xff

    int-to-long v13, v11

    sub-long v25, v25, v13

    .line 188
    aget v11, v39, v10

    const/16 v13, 0x8

    ushr-int/2addr v11, v13

    and-int/lit16 v11, v11, 0xff

    int-to-long v13, v11

    sub-long v27, v27, v13

    .line 189
    aget v11, v39, v10

    and-int/lit16 v11, v11, 0xff

    int-to-long v13, v11

    sub-long v29, v29, v13

    if-ge v7, v4, :cond_137

    add-int/lit8 v11, p2, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_139

    :cond_137
    move/from16 v11, p2

    .line 196
    :goto_139
    aget v13, p0, v11

    aput v13, v39, v10

    .line 198
    aget v10, p0, v11

    ushr-int/lit8 v10, v10, 0x10

    and-int/lit16 v10, v10, 0xff

    int-to-long v13, v10

    move-wide/from16 v41, p4

    add-long v13, v41, v13

    .line 199
    aget v10, p0, v11

    const/16 v31, 0x8

    ushr-int/lit8 v10, v10, 0x8

    and-int/lit16 v10, v10, 0xff

    move/from16 v31, v4

    move/from16 p2, v5

    int-to-long v4, v10

    add-long v34, v34, v4

    .line 200
    aget v4, p0, v11

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long v36, v36, v4

    add-long v19, v19, v13

    add-long v21, v21, v34

    add-long v23, v23, v36

    add-int/lit8 v12, v12, 0x1

    if-lt v12, v6, :cond_169

    const/4 v12, 0x0

    .line 210
    :cond_169
    aget v4, v39, v12

    ushr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long v25, v25, v4

    .line 211
    aget v4, v39, v12

    const/16 v5, 0x8

    ushr-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long v27, v27, v4

    .line 212
    aget v4, v39, v12

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long v29, v29, v4

    .line 213
    aget v4, v39, v12

    ushr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    sub-long/2addr v13, v4

    .line 214
    aget v4, v39, v12

    const/16 v5, 0x8

    ushr-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    sub-long v34, v34, v4

    .line 215
    aget v4, v39, v12

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    sub-long v36, v36, v4

    add-int/lit8 v4, v15, 0x1

    move/from16 v5, p2

    move v10, v11

    const/16 v15, 0x8

    move v11, v4

    move/from16 v4, v31

    goto/16 :goto_d8

    :cond_1a8
    move/from16 v31, v4

    move/from16 p2, v5

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v10, v39

    const/4 v7, 0x1

    const/16 v15, 0x8

    goto/16 :goto_2b

    :cond_1b5
    move-object/from16 v39, v10

    const/4 v4, 0x2

    if-ne v3, v4, :cond_35d

    mul-int v3, p5, v0

    .line 223
    div-int v3, v3, p4

    const/4 v10, 0x1

    add-int/lit8 v4, p5, 0x1

    mul-int/2addr v4, v0

    .line 224
    div-int v4, v4, p4

    :goto_1c4
    if-ge v3, v4, :cond_35d

    move-wide/from16 v11, v17

    move-wide v13, v11

    move-wide/from16 v19, v13

    move-wide/from16 v21, v19

    move-wide/from16 v23, v21

    move-wide/from16 v25, v23

    const/4 v7, 0x0

    :goto_1d2
    if-gt v7, v2, :cond_215

    .line 240
    aget v15, p0, v3

    aput v15, v39, v7

    .line 241
    aget v15, p0, v3

    ushr-int/lit8 v15, v15, 0x10

    and-int/lit16 v15, v15, 0xff

    add-int/lit8 v7, v7, 0x1

    mul-int/2addr v15, v7

    move/from16 v27, v9

    int-to-long v9, v15

    add-long/2addr v11, v9

    .line 242
    aget v9, p0, v3

    const/16 v10, 0x8

    ushr-int/2addr v9, v10

    and-int/lit16 v9, v9, 0xff

    mul-int/2addr v9, v7

    int-to-long v9, v9

    add-long/2addr v13, v9

    .line 243
    aget v9, p0, v3

    and-int/lit16 v9, v9, 0xff

    mul-int/2addr v9, v7

    int-to-long v9, v9

    add-long v19, v19, v9

    .line 244
    aget v9, p0, v3

    ushr-int/lit8 v9, v9, 0x10

    and-int/lit16 v9, v9, 0xff

    int-to-long v9, v9

    add-long v21, v21, v9

    .line 245
    aget v9, p0, v3

    const/16 v10, 0x8

    ushr-int/2addr v9, v10

    and-int/lit16 v9, v9, 0xff

    int-to-long v9, v9

    add-long v23, v23, v9

    .line 246
    aget v9, p0, v3

    and-int/lit16 v9, v9, 0xff

    int-to-long v9, v9

    add-long v25, v25, v9

    move/from16 v9, v27

    const/4 v10, 0x1

    goto :goto_1d2

    :cond_215
    move/from16 v27, v9

    move v7, v3

    move-wide/from16 v28, v17

    move-wide/from16 v30, v28

    move-wide/from16 v34, v30

    const/4 v10, 0x1

    :goto_21f
    if-gt v10, v2, :cond_269

    if-gt v10, v5, :cond_224

    add-int/2addr v7, v0

    :cond_224
    add-int v9, v10, v2

    .line 253
    aget v15, p0, v7

    aput v15, v39, v9

    .line 254
    aget v9, p0, v7

    ushr-int/lit8 v9, v9, 0x10

    and-int/lit16 v9, v9, 0xff

    add-int/lit8 v15, v2, 0x1

    sub-int/2addr v15, v10

    mul-int/2addr v9, v15

    move/from16 v36, v8

    int-to-long v8, v9

    add-long/2addr v11, v8

    .line 255
    aget v8, p0, v7

    const/16 v9, 0x8

    ushr-int/2addr v8, v9

    and-int/lit16 v8, v8, 0xff

    mul-int/2addr v8, v15

    int-to-long v8, v8

    add-long/2addr v13, v8

    .line 256
    aget v8, p0, v7

    and-int/lit16 v8, v8, 0xff

    mul-int/2addr v8, v15

    int-to-long v8, v8

    add-long v19, v19, v8

    .line 257
    aget v8, p0, v7

    ushr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    add-long v28, v28, v8

    .line 258
    aget v8, p0, v7

    const/16 v9, 0x8

    ushr-int/2addr v8, v9

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    add-long v30, v30, v8

    .line 259
    aget v8, p0, v7

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    add-long v34, v34, v8

    add-int/lit8 v10, v10, 0x1

    move/from16 v8, v36

    goto :goto_21f

    :cond_269
    move/from16 v36, v8

    if-le v2, v5, :cond_26f

    move v7, v5

    goto :goto_270

    :cond_26f
    move v7, v2

    :goto_270
    mul-int v8, v7, v0

    add-int/2addr v8, v3

    move v15, v2

    move v10, v3

    const/4 v9, 0x0

    :goto_276
    if-ge v9, v1, :cond_348

    .line 269
    aget v37, p0, v10

    const/high16 v38, -0x1000000

    and-int v1, v37, v38

    move/from16 v37, v3

    move/from16 p4, v4

    int-to-long v3, v1

    move/from16 p5, v8

    move/from16 v1, v36

    move/from16 v36, v9

    int-to-long v8, v1

    mul-long v41, v11, v8

    ushr-long v41, v41, v27

    const-wide/16 v32, 0xff

    and-long v41, v41, v32

    shl-long v41, v41, v16

    or-long v3, v3, v41

    mul-long v41, v13, v8

    ushr-long v41, v41, v27

    and-long v41, v41, v32

    const/16 v40, 0x8

    shl-long v41, v41, v40

    or-long v3, v3, v41

    mul-long v8, v8, v19

    ushr-long v8, v8, v27

    and-long v8, v8, v32

    or-long/2addr v3, v8

    long-to-int v3, v3

    aput v3, p0, v10

    add-int/2addr v10, v0

    sub-long v11, v11, v21

    sub-long v13, v13, v23

    sub-long v19, v19, v25

    add-int v3, v15, v6

    sub-int/2addr v3, v2

    if-lt v3, v6, :cond_2b9

    sub-int/2addr v3, v6

    .line 283
    :cond_2b9
    aget v4, v39, v3

    ushr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-long v8, v4

    sub-long v21, v21, v8

    .line 284
    aget v4, v39, v3

    const/16 v8, 0x8

    ushr-int/2addr v4, v8

    and-int/lit16 v4, v4, 0xff

    int-to-long v8, v4

    sub-long v23, v23, v8

    .line 285
    aget v4, v39, v3

    and-int/lit16 v4, v4, 0xff

    int-to-long v8, v4

    sub-long v25, v25, v8

    if-ge v7, v5, :cond_2da

    add-int v8, p5, v0

    add-int/lit8 v7, v7, 0x1

    goto :goto_2dc

    :cond_2da
    move/from16 v8, p5

    .line 292
    :goto_2dc
    aget v4, p0, v8

    aput v4, v39, v3

    .line 294
    aget v3, p0, v8

    ushr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    add-long v28, v28, v3

    .line 295
    aget v3, p0, v8

    const/16 v4, 0x8

    ushr-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    add-long v30, v30, v3

    .line 296
    aget v3, p0, v8

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    add-long v34, v34, v3

    add-long v11, v11, v28

    add-long v13, v13, v30

    add-long v19, v19, v34

    add-int/lit8 v15, v15, 0x1

    if-lt v15, v6, :cond_305

    const/4 v15, 0x0

    .line 306
    :cond_305
    aget v3, v39, v15

    ushr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    add-long v21, v21, v3

    .line 307
    aget v3, v39, v15

    const/16 v4, 0x8

    ushr-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    add-long v23, v23, v3

    .line 308
    aget v3, v39, v15

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    add-long v25, v25, v3

    .line 309
    aget v3, v39, v15

    ushr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    sub-long v28, v28, v3

    .line 310
    aget v3, v39, v15

    const/16 v4, 0x8

    ushr-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    move v9, v5

    int-to-long v4, v3

    sub-long v30, v30, v4

    .line 311
    aget v3, v39, v15

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    sub-long v34, v34, v3

    add-int/lit8 v3, v36, 0x1

    move/from16 v4, p4

    move/from16 v36, v1

    move v5, v9

    move/from16 v1, p2

    move v9, v3

    move/from16 v3, v37

    goto/16 :goto_276

    :cond_348
    move/from16 v37, v3

    move/from16 p4, v4

    move v9, v5

    move/from16 v1, v36

    const-wide/16 v32, 0xff

    const/high16 v38, -0x1000000

    add-int/lit8 v3, v37, 0x1

    move v8, v1

    move/from16 v9, v27

    const/4 v10, 0x1

    move/from16 v1, p2

    goto/16 :goto_1c4

    :cond_35d
    return-void
.end method


# virtual methods
.method public blur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .registers 21

    .line 75
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 76
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v0, v8, v9

    .line 77
    new-array v10, v0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    .line 78
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 79
    sget v11, Lcom/sonyericsson/android/camera/view/blur/StackBlurManager;->EXECUTOR_THREADS:I

    .line 81
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v11}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v14, v0

    :goto_26
    if-ge v14, v11, :cond_4f

    .line 84
    new-instance v15, Lcom/sonyericsson/android/camera/view/blur/BlurProcess$BlurTask;

    move/from16 v7, p2

    float-to-int v6, v7

    const/16 v16, 0x1

    move-object v0, v15

    move-object v1, v10

    move v2, v8

    move v3, v9

    move v4, v6

    move v5, v11

    move/from16 v17, v6

    move v6, v14

    move/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/android/camera/view/blur/BlurProcess$BlurTask;-><init>([IIIIIII)V

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v15, Lcom/sonyericsson/android/camera/view/blur/BlurProcess$BlurTask;

    const/4 v7, 0x2

    move-object v0, v15

    move/from16 v4, v17

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/android/camera/view/blur/BlurProcess$BlurTask;-><init>([IIIIIII)V

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_26

    :cond_4f
    const/4 v0, 0x0

    .line 91
    :try_start_50
    sget-object v1, Lcom/sonyericsson/android/camera/view/blur/StackBlurManager;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v12}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;
    :try_end_55
    .catch Ljava/lang/InterruptedException; {:try_start_50 .. :try_end_55} :catch_60

    .line 97
    :try_start_55
    sget-object v1, Lcom/sonyericsson/android/camera/view/blur/StackBlurManager;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v13}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;
    :try_end_5a
    .catch Ljava/lang/InterruptedException; {:try_start_55 .. :try_end_5a} :catch_60

    .line 102
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 103
    invoke-static {v10, v8, v9, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :catch_60
    return-object v0
.end method
