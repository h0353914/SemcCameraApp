.class public Lcom/sonyericsson/android/camera/mediasaving/JfifIntegrator;
.super Ljava/lang/Object;
.source "JfifIntegrator.java"


# static fields
.field private static final M_DHT:I = 0xc4

.field private static final M_DQT:I = 0xdb

.field private static final M_MARKER:I = 0xff

.field private static final M_SOI:I = 0xd8

.field private static final M_SOS:I = 0xda

.field public static final TAG:Ljava/lang/String; = "JfifIntegrator"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static integrate([B[B)I
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 35
    array-length v2, v0

    const/4 v3, 0x2

    .line 38
    new-array v4, v3, [B

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    :goto_e
    add-int/lit8 v11, v6, 0x1

    const/16 v12, -0x28

    .line 50
    const-string v13, "No \'FF\' marker."

    const/16 v14, -0x26

    const/4 v15, -0x1

    const/16 v18, 0x1

    if-ge v11, v2, :cond_6e

    .line 52
    aget-byte v3, v0, v6

    aput-byte v3, v4, v5

    .line 53
    aget-byte v11, v0, v11

    aput-byte v11, v4, v18

    add-int/lit8 v20, v6, 0x2

    if-ne v15, v3, :cond_68

    if-ne v14, v11, :cond_2a

    goto :goto_6e

    :cond_2a
    if-ne v12, v11, :cond_30

    move/from16 v6, v20

    :goto_2e
    const/4 v3, 0x2

    goto :goto_e

    .line 71
    :cond_30
    aget-byte v3, v0, v20

    add-int/lit8 v6, v6, 0x3

    .line 72
    aget-byte v6, v0, v6

    const/4 v11, 0x2

    new-array v12, v11, [B

    aput-byte v3, v12, v5

    aput-byte v6, v12, v18

    .line 73
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v12}, Ljava/math/BigInteger;-><init>([B)V

    .line 74
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    .line 76
    aget-byte v6, v4, v18

    const/16 v11, -0x3c

    if-ne v11, v6, :cond_57

    if-nez v8, :cond_50

    move v6, v3

    goto :goto_52

    :cond_50
    add-int/lit8 v6, v3, -0x2

    :goto_52
    add-int/2addr v8, v6

    add-int/lit8 v6, v3, 0x2

    add-int/2addr v10, v6

    goto :goto_65

    :cond_57
    const/16 v11, -0x25

    if-ne v11, v6, :cond_65

    if-nez v7, :cond_5f

    move v6, v3

    goto :goto_61

    :cond_5f
    add-int/lit8 v6, v3, -0x2

    :goto_61
    add-int/2addr v7, v6

    add-int/lit8 v6, v3, 0x2

    add-int/2addr v9, v6

    :cond_65
    :goto_65
    add-int v6, v20, v3

    goto :goto_2e

    .line 58
    :cond_68
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;

    invoke-direct {v0, v13}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6e
    :goto_6e
    add-int/lit8 v3, v7, 0x2

    .line 90
    new-array v6, v3, [B

    add-int/lit8 v11, v8, 0x2

    .line 91
    new-array v12, v11, [B

    .line 94
    aput-byte v15, v6, v5

    const/16 v17, -0x25

    .line 95
    aput-byte v17, v6, v18

    .line 96
    aput-byte v15, v12, v5

    const/16 v16, -0x3c

    .line 97
    aput-byte v16, v12, v18

    .line 99
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    .line 100
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    .line 102
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v14}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    const/4 v14, 0x0

    .line 104
    aget-byte v21, v5, v14

    const/16 v19, 0x2

    aput-byte v21, v6, v19

    .line 105
    aget-byte v5, v5, v18

    const/16 v22, 0x3

    aput-byte v5, v6, v22

    .line 107
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v15}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    .line 109
    aget-byte v15, v5, v14

    aput-byte v15, v12, v19

    .line 110
    aget-byte v5, v5, v18

    aput-byte v5, v12, v22

    sub-int v5, v2, v9

    sub-int/2addr v5, v10

    add-int/2addr v5, v7

    add-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v8

    add-int/lit8 v5, v5, 0x2

    const/4 v7, 0x4

    move v8, v7

    const/4 v9, 0x0

    const/4 v14, 0x0

    :goto_be
    add-int/lit8 v10, v14, 0x1

    if-ge v10, v2, :cond_142

    .line 129
    aget-byte v15, v0, v14

    move/from16 v22, v5

    const/4 v5, 0x0

    aput-byte v15, v4, v5

    .line 130
    aget-byte v10, v0, v10

    aput-byte v10, v4, v18

    add-int/lit8 v23, v14, 0x2

    const/4 v5, -0x1

    if-ne v5, v15, :cond_13c

    const/16 v5, -0x26

    if-ne v5, v10, :cond_e4

    const/4 v5, 0x0

    .line 141
    invoke-static {v6, v5, v1, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v9, v3

    .line 144
    invoke-static {v12, v5, v1, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v9, v11

    sub-int/2addr v2, v14

    .line 148
    invoke-static {v0, v14, v1, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_144

    :cond_e4
    const/16 v5, -0x28

    if-ne v5, v10, :cond_f7

    .line 153
    aput-byte v15, v1, v14

    add-int/lit8 v14, v14, 0x1

    .line 154
    aget-byte v10, v4, v18

    aput-byte v10, v1, v14

    add-int/lit8 v9, v9, 0x2

    move/from16 v5, v22

    move/from16 v14, v23

    goto :goto_be

    .line 160
    :cond_f7
    aget-byte v10, v0, v23

    add-int/lit8 v15, v14, 0x3

    .line 161
    aget-byte v15, v0, v15

    move/from16 v19, v2

    const/4 v5, 0x2

    new-array v2, v5, [B

    const/16 v21, 0x0

    aput-byte v10, v2, v21

    aput-byte v15, v2, v18

    .line 162
    new-instance v10, Ljava/math/BigInteger;

    invoke-direct {v10, v2}, Ljava/math/BigInteger;-><init>([B)V

    .line 163
    invoke-virtual {v10}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    .line 165
    aget-byte v10, v4, v18

    const/16 v15, -0x3c

    if-ne v15, v10, :cond_122

    add-int/lit8 v14, v14, 0x4

    add-int/lit8 v10, v2, -0x2

    .line 166
    invoke-static {v0, v14, v12, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v7, v10

    const/16 v5, -0x25

    goto :goto_135

    :cond_122
    const/16 v5, -0x25

    if-ne v5, v10, :cond_12f

    add-int/lit8 v14, v14, 0x4

    add-int/lit8 v10, v2, -0x2

    .line 169
    invoke-static {v0, v14, v6, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v8, v10

    goto :goto_135

    :cond_12f
    add-int/lit8 v10, v2, 0x2

    .line 172
    invoke-static {v0, v14, v1, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v9, v10

    :goto_135
    add-int v14, v23, v2

    move/from16 v2, v19

    move/from16 v5, v22

    goto :goto_be

    .line 134
    :cond_13c
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;

    invoke-direct {v0, v13}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_142
    move/from16 v22, v5

    :goto_144
    return v22
.end method
