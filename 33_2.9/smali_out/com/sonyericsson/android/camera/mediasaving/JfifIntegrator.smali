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
    .registers 25
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

    const-string v13, "No \'FF\' marker."

    const/16 v14, -0x26

    const/4 v15, -0x1

    const/16 v18, 0x1

    if-ge v11, v2, :cond_71

    .line 52
    aget-byte v19, v0, v6

    aput-byte v19, v4, v5

    .line 53
    aget-byte v11, v0, v11

    aput-byte v11, v4, v18

    add-int/lit8 v6, v6, 0x2

    .line 57
    aget-byte v11, v4, v5

    if-ne v15, v11, :cond_6b

    .line 62
    aget-byte v11, v4, v18

    if-ne v14, v11, :cond_2e

    goto :goto_71

    .line 64
    :cond_2e
    aget-byte v11, v4, v18

    if-ne v12, v11, :cond_33

    goto :goto_e

    :cond_33
    new-array v11, v3, [B

    .line 71
    aget-byte v12, v0, v6

    aput-byte v12, v11, v5

    add-int/lit8 v12, v6, 0x1

    .line 72
    aget-byte v12, v0, v12

    aput-byte v12, v11, v18

    .line 73
    new-instance v12, Ljava/math/BigInteger;

    invoke-direct {v12, v11}, Ljava/math/BigInteger;-><init>([B)V

    .line 74
    invoke-virtual {v12}, Ljava/math/BigInteger;->intValue()I

    move-result v11

    .line 76
    aget-byte v12, v4, v18

    const/16 v13, -0x3c

    if-ne v13, v12, :cond_59

    if-nez v8, :cond_52

    move v12, v11

    goto :goto_54

    :cond_52
    add-int/lit8 v12, v11, -0x2

    :goto_54
    add-int/2addr v8, v12

    add-int/lit8 v12, v11, 0x2

    add-int/2addr v10, v12

    goto :goto_69

    .line 81
    :cond_59
    aget-byte v12, v4, v18

    const/16 v13, -0x25

    if-ne v13, v12, :cond_69

    if-nez v7, :cond_63

    move v12, v11

    goto :goto_65

    :cond_63
    add-int/lit8 v12, v11, -0x2

    :goto_65
    add-int/2addr v7, v12

    add-int/lit8 v12, v11, 0x2

    add-int/2addr v9, v12

    :cond_69
    :goto_69
    add-int/2addr v6, v11

    goto :goto_e

    .line 58
    :cond_6b
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;

    invoke-direct {v0, v13}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_71
    :goto_71
    add-int/lit8 v6, v7, 0x2

    .line 90
    new-array v11, v6, [B

    add-int/lit8 v12, v8, 0x2

    .line 91
    new-array v14, v12, [B

    .line 94
    aput-byte v15, v11, v5

    const/16 v17, -0x25

    .line 95
    aput-byte v17, v11, v18

    .line 96
    aput-byte v15, v14, v5

    const/16 v16, -0x3c

    .line 97
    aput-byte v16, v14, v18

    .line 99
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    .line 100
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 102
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v15}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    const/4 v15, 0x0

    .line 104
    aget-byte v21, v5, v15

    const/16 v20, 0x2

    aput-byte v21, v11, v20

    .line 105
    aget-byte v5, v5, v18

    const/16 v22, 0x3

    aput-byte v5, v11, v22

    .line 107
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    .line 109
    aget-byte v5, v3, v15

    aput-byte v5, v14, v20

    .line 110
    aget-byte v3, v3, v18

    aput-byte v3, v14, v22

    sub-int v3, v2, v9

    sub-int/2addr v3, v10

    add-int/2addr v3, v7

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v8

    add-int/lit8 v3, v3, 0x2

    const/4 v5, 0x4

    move v7, v5

    const/4 v8, 0x0

    const/4 v15, 0x0

    :goto_c1
    add-int/lit8 v9, v15, 0x1

    if-ge v9, v2, :cond_147

    .line 129
    aget-byte v10, v0, v15

    move/from16 v22, v3

    const/4 v3, 0x0

    aput-byte v10, v4, v3

    .line 130
    aget-byte v9, v0, v9

    aput-byte v9, v4, v18

    add-int/lit8 v15, v15, 0x2

    .line 133
    aget-byte v9, v4, v3

    const/4 v10, -0x1

    if-ne v10, v9, :cond_141

    .line 137
    aget-byte v9, v4, v18

    const/16 v10, -0x26

    if-ne v10, v9, :cond_ec

    .line 141
    invoke-static {v11, v3, v1, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v8, v6

    .line 144
    invoke-static {v14, v3, v1, v8, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v8, v12

    const/4 v3, 0x2

    sub-int/2addr v15, v3

    sub-int/2addr v2, v15

    .line 148
    invoke-static {v0, v15, v1, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_149

    .line 151
    :cond_ec
    aget-byte v9, v4, v18

    const/16 v10, -0x28

    if-ne v10, v9, :cond_103

    add-int/lit8 v9, v15, -0x2

    .line 153
    aget-byte v19, v4, v3

    aput-byte v19, v1, v9

    add-int/lit8 v9, v15, -0x1

    .line 154
    aget-byte v19, v4, v18

    aput-byte v19, v1, v9

    add-int/lit8 v8, v8, 0x2

    :goto_100
    move/from16 v3, v22

    goto :goto_c1

    :cond_103
    const/4 v9, 0x2

    new-array v10, v9, [B

    .line 160
    aget-byte v20, v0, v15

    aput-byte v20, v10, v3

    add-int/lit8 v20, v15, 0x1

    .line 161
    aget-byte v20, v0, v20

    aput-byte v20, v10, v18

    .line 162
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v10}, Ljava/math/BigInteger;-><init>([B)V

    .line 163
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    .line 165
    aget-byte v10, v4, v18

    const/16 v9, -0x3c

    if-ne v9, v10, :cond_128

    add-int/lit8 v10, v15, 0x2

    add-int/lit8 v9, v3, -0x2

    .line 166
    invoke-static {v0, v10, v14, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v9

    goto :goto_13f

    .line 168
    :cond_128
    aget-byte v9, v4, v18

    const/16 v10, -0x25

    if-ne v10, v9, :cond_137

    add-int/lit8 v9, v15, 0x2

    add-int/lit8 v10, v3, -0x2

    .line 169
    invoke-static {v0, v9, v11, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v7, v10

    goto :goto_13f

    :cond_137
    add-int/lit8 v9, v15, -0x2

    add-int/lit8 v10, v3, 0x2

    .line 172
    invoke-static {v0, v9, v1, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v8, v10

    :goto_13f
    add-int/2addr v15, v3

    goto :goto_100

    .line 134
    :cond_141
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;

    invoke-direct {v0, v13}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_147
    move/from16 v22, v3

    :goto_149
    return v22
.end method
