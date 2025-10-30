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

    .line 35
    new-array v1, v0, [S

    fill-array-data v1, :array_12

    sput-object v1, Lcom/sonyericsson/android/camera/view/blur/BlurProcess;->stackblur_mul:[S

    .line 57
    new-array v0, v0, [B

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
    .registers 49

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

    if-ne v3, v7, :cond_1a7

    mul-int v3, p5, v1

    .line 126
    div-int v3, v3, p4

    add-int/lit8 v5, p5, 0x1

    mul-int/2addr v5, v1

    .line 127
    div-int v5, v5, p4

    :goto_2b
    if-ge v3, v5, :cond_34e

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

    move v11, v7

    move v12, v10

    move v7, v1

    move v10, v2

    const/4 v1, 0x0

    :goto_db
    if-ge v1, v0, :cond_19c

    .line 173
    aget v31, p0, v7

    const/high16 v38, -0x1000000

    and-int v15, v31, v38

    move/from16 v31, v1

    int-to-long v0, v15

    move-wide/from16 p4, v13

    int-to-long v13, v8

    mul-long v40, v19, v13

    ushr-long v40, v40, v9

    const-wide/16 v32, 0xff

    and-long v40, v40, v32

    shl-long v40, v40, v16

    or-long v0, v0, v40

    mul-long v40, v21, v13

    ushr-long v40, v40, v9

    and-long v40, v40, v32

    const/16 v15, 0x8

    shl-long v40, v40, v15

    or-long v0, v0, v40

    mul-long v13, v13, v23

    ushr-long/2addr v13, v9

    and-long v13, v13, v32

    or-long/2addr v0, v13

    long-to-int v0, v0

    aput v0, p0, v7

    const/4 v0, 0x1

    add-int/2addr v7, v0

    sub-long v19, v19, v25

    sub-long v21, v21, v27

    sub-long v23, v23, v29

    add-int v0, v10, v6

    sub-int/2addr v0, v2

    if-lt v0, v6, :cond_118

    sub-int/2addr v0, v6

    .line 187
    :cond_118
    aget v1, v39, v0

    ushr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-long v13, v1

    sub-long v25, v25, v13

    .line 188
    aget v1, v39, v0

    const/16 v13, 0x8

    ushr-int/2addr v1, v13

    and-int/lit16 v1, v1, 0xff

    int-to-long v13, v1

    sub-long v27, v27, v13

    .line 189
    aget v1, v39, v0

    and-int/lit16 v1, v1, 0xff

    int-to-long v13, v1

    sub-long v29, v29, v13

    if-ge v11, v4, :cond_138

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v11, v11, 0x1

    .line 196
    :cond_138
    aget v1, p0, v12

    aput v1, v39, v0

    .line 198
    aget v0, p0, v12

    ushr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    add-long v13, p4, v0

    .line 199
    aget v0, p0, v12

    const/16 v1, 0x8

    ushr-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    add-long v34, v34, v0

    .line 200
    aget v0, p0, v12

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    add-long v36, v36, v0

    add-long v19, v19, v13

    add-long v21, v21, v34

    add-long v23, v23, v36

    add-int/lit8 v10, v10, 0x1

    if-lt v10, v6, :cond_161

    const/4 v10, 0x0

    .line 210
    :cond_161
    aget v0, v39, v10

    ushr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    add-long v25, v25, v0

    .line 211
    aget v0, v39, v10

    const/16 v1, 0x8

    ushr-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    add-long v27, v27, v0

    .line 212
    aget v0, v39, v10

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    add-long v29, v29, v0

    .line 213
    aget v0, v39, v10

    ushr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    sub-long/2addr v13, v0

    .line 214
    aget v0, v39, v10

    const/16 v1, 0x8

    ushr-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    sub-long v34, v34, v0

    .line 215
    aget v0, v39, v10

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    sub-long v36, v36, v0

    add-int/lit8 v1, v31, 0x1

    move/from16 v0, p1

    const/16 v15, 0x8

    goto/16 :goto_db

    :cond_19c
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v10, v39

    move/from16 v0, p1

    const/4 v7, 0x1

    const/16 v15, 0x8

    goto/16 :goto_2b

    :cond_1a7
    move-object/from16 v39, v10

    const/4 v0, 0x2

    if-ne v3, v0, :cond_34e

    mul-int v0, p5, p1

    .line 223
    div-int v0, v0, p4

    const/4 v3, 0x1

    add-int/lit8 v4, p5, 0x1

    mul-int v4, v4, p1

    .line 224
    div-int v4, v4, p4

    :goto_1b7
    if-ge v0, v4, :cond_34e

    move-wide/from16 v10, v17

    move-wide v12, v10

    move-wide v14, v12

    move-wide/from16 v19, v14

    move-wide/from16 v21, v19

    move-wide/from16 v23, v21

    const/4 v7, 0x0

    :goto_1c4
    if-gt v7, v2, :cond_206

    .line 240
    aget v25, p0, v0

    aput v25, v39, v7

    .line 241
    aget v25, p0, v0

    ushr-int/lit8 v3, v25, 0x10

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v7, v7, 0x1

    mul-int/2addr v3, v7

    move/from16 p4, v4

    int-to-long v3, v3

    add-long/2addr v10, v3

    .line 242
    aget v3, p0, v0

    const/16 v4, 0x8

    ushr-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    mul-int/2addr v3, v7

    int-to-long v3, v3

    add-long/2addr v12, v3

    .line 243
    aget v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    mul-int/2addr v3, v7

    int-to-long v3, v3

    add-long/2addr v14, v3

    .line 244
    aget v3, p0, v0

    ushr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    add-long v19, v19, v3

    .line 245
    aget v3, p0, v0

    const/16 v4, 0x8

    ushr-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    add-long v21, v21, v3

    .line 246
    aget v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    add-long v23, v23, v3

    move/from16 v4, p4

    const/4 v3, 0x1

    goto :goto_1c4

    :cond_206
    move/from16 p4, v4

    move v4, v0

    move-wide/from16 v25, v17

    move-wide/from16 v27, v25

    move-wide/from16 v29, v27

    const/4 v3, 0x1

    :goto_210
    if-gt v3, v2, :cond_25e

    if-gt v3, v5, :cond_216

    add-int v4, v4, p1

    :cond_216
    add-int v7, v3, v2

    .line 253
    aget v31, p0, v4

    aput v31, v39, v7

    .line 254
    aget v7, p0, v4

    ushr-int/lit8 v7, v7, 0x10

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v31, v2, 0x1

    sub-int v31, v31, v3

    mul-int v7, v7, v31

    move/from16 v34, v6

    int-to-long v6, v7

    add-long/2addr v10, v6

    .line 255
    aget v6, p0, v4

    const/16 v7, 0x8

    ushr-int/2addr v6, v7

    and-int/lit16 v6, v6, 0xff

    mul-int v6, v6, v31

    int-to-long v6, v6

    add-long/2addr v12, v6

    .line 256
    aget v6, p0, v4

    and-int/lit16 v6, v6, 0xff

    mul-int v6, v6, v31

    int-to-long v6, v6

    add-long/2addr v14, v6

    .line 257
    aget v6, p0, v4

    ushr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long v25, v25, v6

    .line 258
    aget v6, p0, v4

    const/16 v7, 0x8

    ushr-int/2addr v6, v7

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long v27, v27, v6

    .line 259
    aget v6, p0, v4

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long v29, v29, v6

    add-int/lit8 v3, v3, 0x1

    move/from16 v6, v34

    goto :goto_210

    :cond_25e
    move/from16 v34, v6

    if-le v2, v5, :cond_264

    move v3, v5

    goto :goto_265

    :cond_264
    move v3, v2

    :goto_265
    mul-int v4, v3, p1

    add-int/2addr v4, v0

    move v6, v2

    move v7, v3

    move-wide/from16 v35, v27

    const/4 v3, 0x0

    move-wide/from16 v26, v25

    move/from16 v25, v4

    move v4, v0

    :goto_272
    if-ge v3, v1, :cond_33a

    .line 269
    aget v28, p0, v4

    const/high16 v31, -0x1000000

    and-int v1, v28, v31

    move/from16 v28, v0

    int-to-long v0, v1

    move/from16 v37, v3

    int-to-long v2, v8

    mul-long v40, v10, v2

    ushr-long v40, v40, v9

    const-wide/16 v32, 0xff

    and-long v40, v40, v32

    shl-long v40, v40, v16

    or-long v0, v0, v40

    mul-long v40, v12, v2

    ushr-long v40, v40, v9

    and-long v40, v40, v32

    const/16 v38, 0x8

    shl-long v40, v40, v38

    or-long v0, v0, v40

    mul-long/2addr v2, v14

    ushr-long/2addr v2, v9

    and-long v2, v2, v32

    or-long/2addr v0, v2

    long-to-int v0, v0

    aput v0, p0, v4

    add-int v4, v4, p1

    sub-long v10, v10, v19

    sub-long v12, v12, v21

    sub-long v14, v14, v23

    add-int v0, v6, v34

    sub-int v0, v0, p3

    move/from16 v1, v34

    if-lt v0, v1, :cond_2b1

    sub-int/2addr v0, v1

    .line 283
    :cond_2b1
    aget v2, v39, v0

    ushr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    sub-long v19, v19, v2

    .line 284
    aget v2, v39, v0

    const/16 v3, 0x8

    ushr-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    sub-long v21, v21, v2

    .line 285
    aget v2, v39, v0

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    sub-long v23, v23, v2

    if-ge v7, v5, :cond_2d1

    add-int v25, v25, p1

    add-int/lit8 v7, v7, 0x1

    .line 292
    :cond_2d1
    aget v2, p0, v25

    aput v2, v39, v0

    .line 294
    aget v0, p0, v25

    ushr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-long v2, v0

    add-long v26, v26, v2

    .line 295
    aget v0, p0, v25

    const/16 v2, 0x8

    ushr-int/2addr v0, v2

    and-int/lit16 v0, v0, 0xff

    int-to-long v2, v0

    add-long v35, v35, v2

    .line 296
    aget v0, p0, v25

    and-int/lit16 v0, v0, 0xff

    int-to-long v2, v0

    add-long v29, v29, v2

    add-long v10, v10, v26

    add-long v12, v12, v35

    add-long v14, v14, v29

    add-int/lit8 v6, v6, 0x1

    if-lt v6, v1, :cond_2fa

    const/4 v6, 0x0

    .line 306
    :cond_2fa
    aget v0, v39, v6

    ushr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-long v2, v0

    add-long v19, v19, v2

    .line 307
    aget v0, v39, v6

    const/16 v2, 0x8

    ushr-int/2addr v0, v2

    and-int/lit16 v0, v0, 0xff

    int-to-long v2, v0

    add-long v21, v21, v2

    .line 308
    aget v0, v39, v6

    and-int/lit16 v0, v0, 0xff

    int-to-long v2, v0

    add-long v23, v23, v2

    .line 309
    aget v0, v39, v6

    ushr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-long v2, v0

    sub-long v26, v26, v2

    .line 310
    aget v0, v39, v6

    const/16 v2, 0x8

    ushr-int/2addr v0, v2

    and-int/lit16 v0, v0, 0xff

    int-to-long v2, v0

    sub-long v35, v35, v2

    .line 311
    aget v0, v39, v6

    and-int/lit16 v0, v0, 0xff

    int-to-long v2, v0

    sub-long v29, v29, v2

    add-int/lit8 v3, v37, 0x1

    move/from16 v2, p3

    move/from16 v34, v1

    move/from16 v0, v28

    move/from16 v1, p2

    goto/16 :goto_272

    :cond_33a
    move/from16 v28, v0

    move/from16 v1, v34

    const/high16 v31, -0x1000000

    const-wide/16 v32, 0xff

    add-int/lit8 v0, v28, 0x1

    move/from16 v2, p3

    move/from16 v4, p4

    move v6, v1

    move/from16 v1, p2

    const/4 v3, 0x1

    goto/16 :goto_1b7

    :cond_34e
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
    .catch Ljava/lang/InterruptedException; {:try_start_50 .. :try_end_55} :catch_62

    .line 97
    :try_start_55
    sget-object v1, Lcom/sonyericsson/android/camera/view/blur/StackBlurManager;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v13}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;
    :try_end_5a
    .catch Ljava/lang/InterruptedException; {:try_start_55 .. :try_end_5a} :catch_61

    .line 102
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 103
    invoke-static {v10, v8, v9, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :catch_61
    return-object v0

    :catch_62
    return-object v0
.end method
