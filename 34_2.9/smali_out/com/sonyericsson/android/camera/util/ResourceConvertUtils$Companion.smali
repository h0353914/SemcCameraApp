.class public final Lcom/sonyericsson/android/camera/util/ResourceConvertUtils$Companion;
.super Ljava/lang/Object;
.source "ResourceConvertUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/util/ResourceConvertUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0008H\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/sonyericsson/android/camera/util/ResourceConvertUtils$Companion;",
        "",
        "()V",
        "convertIso",
        "",
        "inputIso",
        "convertSs",
        "inputSs",
        "",
        "SemcCameraUI_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/util/ResourceConvertUtils$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final convertIso(I)I
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/16 p0, 0x8

    const/16 v0, 0xc

    if-gt p0, p1, :cond_d

    if-ge p1, v0, :cond_d

    const p0, 0x7f0f028a

    goto/16 :goto_1cf

    :cond_d
    const/16 p0, 0xf

    if-gt v0, p1, :cond_18

    if-ge p1, p0, :cond_18

    const p0, 0x7f0f0290

    goto/16 :goto_1cf

    :cond_18
    const/16 v0, 0x12

    if-gt p0, p1, :cond_23

    if-ge p1, v0, :cond_23

    const p0, 0x7f0f0294

    goto/16 :goto_1cf

    :cond_23
    const/16 p0, 0x17

    if-gt v0, p1, :cond_2e

    if-ge p1, p0, :cond_2e

    const p0, 0x7f0f0298

    goto/16 :goto_1cf

    :cond_2e
    const/16 v0, 0x1d

    if-gt p0, p1, :cond_39

    if-ge p1, v0, :cond_39

    const p0, 0x7f0f029c

    goto/16 :goto_1cf

    :cond_39
    const/16 p0, 0x24

    if-gt v0, p1, :cond_44

    if-ge p1, p0, :cond_44

    const p0, 0x7f0f02a1

    goto/16 :goto_1cf

    :cond_44
    const/16 v0, 0x2d

    if-gt p0, p1, :cond_4f

    if-ge p1, v0, :cond_4f

    const p0, 0x7f0f02a5

    goto/16 :goto_1cf

    :cond_4f
    const/16 p0, 0x39

    if-gt v0, p1, :cond_5a

    if-ge p1, p0, :cond_5a

    const p0, 0x7f0f02a8

    goto/16 :goto_1cf

    :cond_5a
    const/16 v0, 0x48

    if-gt p0, p1, :cond_65

    if-ge p1, v0, :cond_65

    const p0, 0x7f0f02ad

    goto/16 :goto_1cf

    :cond_65
    const/16 p0, 0x5a

    if-gt v0, p1, :cond_70

    if-ge p1, p0, :cond_70

    const p0, 0x7f0f02b1

    goto/16 :goto_1cf

    :cond_70
    const/16 v0, 0x71

    if-gt p0, p1, :cond_7b

    if-ge p1, v0, :cond_7b

    const p0, 0x7f0f0289

    goto/16 :goto_1cf

    :cond_7b
    const/16 p0, 0x8e

    if-gt v0, p1, :cond_86

    if-ge p1, p0, :cond_86

    const p0, 0x7f0f028e

    goto/16 :goto_1cf

    :cond_86
    const/16 v0, 0xb3

    if-gt p0, p1, :cond_91

    if-ge p1, v0, :cond_91

    const p0, 0x7f0f0293

    goto/16 :goto_1cf

    :cond_91
    const/16 p0, 0xe1

    if-gt v0, p1, :cond_9c

    if-ge p1, p0, :cond_9c

    const p0, 0x7f0f0297

    goto/16 :goto_1cf

    :cond_9c
    const/16 v0, 0x11b

    if-gt p0, p1, :cond_a7

    if-ge p1, v0, :cond_a7

    const p0, 0x7f0f029a

    goto/16 :goto_1cf

    :cond_a7
    const/16 p0, 0x165

    if-gt v0, p1, :cond_b2

    if-ge p1, p0, :cond_b2

    const p0, 0x7f0f02a0

    goto/16 :goto_1cf

    :cond_b2
    const/16 v0, 0x1c2

    if-gt p0, p1, :cond_bd

    if-ge p1, v0, :cond_bd

    const p0, 0x7f0f02a4

    goto/16 :goto_1cf

    :cond_bd
    const/16 p0, 0x236

    if-gt v0, p1, :cond_c8

    if-ge p1, p0, :cond_c8

    const p0, 0x7f0f02a7

    goto/16 :goto_1cf

    :cond_c8
    const/16 v0, 0x2c9

    if-gt p0, p1, :cond_d3

    if-ge p1, v0, :cond_d3

    const p0, 0x7f0f02ac

    goto/16 :goto_1cf

    :cond_d3
    const/16 p0, 0x37b

    if-gt v0, p1, :cond_de

    if-ge p1, p0, :cond_de

    const p0, 0x7f0f02b0

    goto/16 :goto_1cf

    :cond_de
    const/16 v0, 0x463

    if-gt p0, p1, :cond_e9

    if-ge p1, v0, :cond_e9

    const p0, 0x7f0f0288

    goto/16 :goto_1cf

    :cond_e9
    const/16 p0, 0x587

    if-gt v0, p1, :cond_f4

    if-ge p1, p0, :cond_f4

    const p0, 0x7f0f028d

    goto/16 :goto_1cf

    :cond_f4
    if-gt p0, p1, :cond_ff

    const/16 p0, 0x6f7

    if-ge p1, p0, :cond_ff

    const p0, 0x7f0f0292

    goto/16 :goto_1cf

    :cond_ff
    const/16 p0, 0x6f7

    if-gt p0, p1, :cond_10c

    const/16 p0, 0x8c6

    if-ge p1, p0, :cond_10c

    const p0, 0x7f0f0296

    goto/16 :goto_1cf

    :cond_10c
    const/16 p0, 0x8c6

    if-gt p0, p1, :cond_119

    const/16 p0, 0xb0d

    if-ge p1, p0, :cond_119

    const p0, 0x7f0f0299

    goto/16 :goto_1cf

    :cond_119
    const/16 p0, 0xb0d

    if-gt p0, p1, :cond_126

    const/16 p0, 0xded

    if-ge p1, p0, :cond_126

    const p0, 0x7f0f029f

    goto/16 :goto_1cf

    :cond_126
    const/16 p0, 0xded

    if-gt p0, p1, :cond_133

    const/16 p0, 0x118b

    if-ge p1, p0, :cond_133

    const p0, 0x7f0f02a3

    goto/16 :goto_1cf

    :cond_133
    const/16 p0, 0x118b

    if-gt p0, p1, :cond_140

    const/16 p0, 0x161a

    if-ge p1, p0, :cond_140

    const p0, 0x7f0f02a6

    goto/16 :goto_1cf

    :cond_140
    const/16 p0, 0x161a

    if-gt p0, p1, :cond_14d

    const/16 p0, 0x1bd8

    if-ge p1, p0, :cond_14d

    const p0, 0x7f0f02ab

    goto/16 :goto_1cf

    :cond_14d
    const/16 p0, 0x1bd8

    if-gt p0, p1, :cond_15a

    const/16 p0, 0x22ce

    if-ge p1, p0, :cond_15a

    const p0, 0x7f0f02af

    goto/16 :goto_1cf

    :cond_15a
    const/16 p0, 0x22ce

    if-gt p0, p1, :cond_167

    const/16 p0, 0x2bda

    if-ge p1, p0, :cond_167

    const p0, 0x7f0f0287

    goto/16 :goto_1cf

    :cond_167
    const/16 p0, 0x2bda

    if-gt p0, p1, :cond_173

    const/16 p0, 0x373f

    if-ge p1, p0, :cond_173

    const p0, 0x7f0f028f

    goto :goto_1cf

    :cond_173
    const/16 p0, 0x373f

    if-gt p0, p1, :cond_17f

    const/16 p0, 0x459b

    if-ge p1, p0, :cond_17f

    const p0, 0x7f0f0291

    goto :goto_1cf

    :cond_17f
    const/16 p0, 0x459b

    if-gt p0, p1, :cond_18b

    const/16 p0, 0x57b2

    if-ge p1, p0, :cond_18b

    const p0, 0x7f0f0295

    goto :goto_1cf

    :cond_18b
    const/16 p0, 0x57b2

    if-gt p0, p1, :cond_197

    const/16 p0, 0x6e7d

    if-ge p1, p0, :cond_197

    const p0, 0x7f0f029b

    goto :goto_1cf

    :cond_197
    const/16 p0, 0x6e7d

    if-gt p0, p1, :cond_1a4

    const p0, 0x8b35

    if-ge p1, p0, :cond_1a4

    const p0, 0x7f0f029e

    goto :goto_1cf

    :cond_1a4
    const p0, 0x8b35

    if-gt p0, p1, :cond_1b2

    const p0, 0xaf63

    if-ge p1, p0, :cond_1b2

    const p0, 0x7f0f02a2

    goto :goto_1cf

    :cond_1b2
    const p0, 0xaf63

    if-gt p0, p1, :cond_1c0

    const p0, 0xdcfa

    if-ge p1, p0, :cond_1c0

    const p0, 0x7f0f02a9

    goto :goto_1cf

    :cond_1c0
    const p0, 0xdcfa

    if-gt p0, p1, :cond_1ce

    const p0, 0x11669

    if-ge p1, p0, :cond_1ce

    const p0, 0x7f0f02aa

    goto :goto_1cf

    :cond_1ce
    const/4 p0, -0x1

    :goto_1cf
    return p0
.end method

.method public final convertSs(J)I
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-wide/16 v0, 0x1

    cmp-long p0, p1, v0

    if-nez p0, :cond_b

    const p0, 0x7f0f03d8

    goto/16 :goto_403

    :cond_b
    const-wide/16 v0, 0x2

    cmp-long p0, p1, v0

    if-nez p0, :cond_16

    const p0, 0x7f0f03fb

    goto/16 :goto_403

    :cond_16
    const-wide/16 v0, 0x3

    cmp-long p0, p1, v0

    if-nez p0, :cond_21

    const p0, 0x7f0f03f6

    goto/16 :goto_403

    :cond_21
    const-wide/16 v0, 0x4

    cmp-long p0, p1, v0

    if-nez p0, :cond_2c

    const p0, 0x7f0f03f0

    goto/16 :goto_403

    :cond_2c
    const-wide/16 v0, 0x5

    cmp-long p0, p1, v0

    if-nez p0, :cond_37

    const p0, 0x7f0f03eb

    goto/16 :goto_403

    :cond_37
    const-wide/16 v0, 0x6

    cmp-long p0, p1, v0

    if-nez p0, :cond_42

    const p0, 0x7f0f03e7

    goto/16 :goto_403

    :cond_42
    const-wide/16 v0, 0x7

    cmp-long p0, v0, p1

    const-wide/16 v0, 0x9

    if-gtz p0, :cond_53

    cmp-long p0, p1, v0

    if-gez p0, :cond_53

    const p0, 0x7f0f03e1

    goto/16 :goto_403

    :cond_53
    cmp-long p0, v0, p1

    const-wide/16 v0, 0xb

    if-gtz p0, :cond_62

    cmp-long p0, p1, v0

    if-gez p0, :cond_62

    const p0, 0x7f0f03d9

    goto/16 :goto_403

    :cond_62
    cmp-long p0, v0, p1

    const-wide/16 v0, 0xe

    if-gtz p0, :cond_71

    cmp-long p0, p1, v0

    if-gez p0, :cond_71

    const p0, 0x7f0f040b

    goto/16 :goto_403

    :cond_71
    cmp-long p0, v0, p1

    const-wide/16 v0, 0x12

    if-gtz p0, :cond_80

    cmp-long p0, p1, v0

    if-gez p0, :cond_80

    const p0, 0x7f0f0407

    goto/16 :goto_403

    :cond_80
    cmp-long p0, v0, p1

    const-wide/16 v0, 0x16

    if-gtz p0, :cond_8f

    cmp-long p0, p1, v0

    if-gez p0, :cond_8f

    const p0, 0x7f0f0401

    goto/16 :goto_403

    :cond_8f
    cmp-long p0, v0, p1

    const-wide/16 v0, 0x1c

    if-gtz p0, :cond_9e

    cmp-long p0, p1, v0

    if-gez p0, :cond_9e

    const p0, 0x7f0f03fc

    goto/16 :goto_403

    :cond_9e
    cmp-long p0, v0, p1

    const-wide/16 v0, 0x24

    if-gtz p0, :cond_ad

    cmp-long p0, p1, v0

    if-gez p0, :cond_ad

    const p0, 0x7f0f03f7

    goto/16 :goto_403

    :cond_ad
    cmp-long p0, v0, p1

    const-wide/16 v0, 0x2d

    if-gtz p0, :cond_bc

    cmp-long p0, p1, v0

    if-gez p0, :cond_bc

    const p0, 0x7f0f03f1

    goto/16 :goto_403

    :cond_bc
    cmp-long p0, v0, p1

    const-wide/16 v0, 0x39

    if-gtz p0, :cond_cb

    cmp-long p0, p1, v0

    if-gez p0, :cond_cb

    const p0, 0x7f0f03ec

    goto/16 :goto_403

    :cond_cb
    cmp-long p0, v0, p1

    const-wide/16 v0, 0x47

    if-gtz p0, :cond_da

    cmp-long p0, p1, v0

    if-gez p0, :cond_da

    const p0, 0x7f0f03e8

    goto/16 :goto_403

    :cond_da
    cmp-long p0, v0, p1

    const-wide/16 v0, 0x59

    if-gtz p0, :cond_e9

    cmp-long p0, p1, v0

    if-gez p0, :cond_e9

    const p0, 0x7f0f03e2

    goto/16 :goto_403

    :cond_e9
    cmp-long p0, v0, p1

    const-wide/16 v0, 0x70

    if-gtz p0, :cond_f8

    cmp-long p0, p1, v0

    if-gez p0, :cond_f8

    const p0, 0x7f0f03da

    goto/16 :goto_403

    :cond_f8
    cmp-long p0, v0, p1

    const-wide/16 v0, 0x8d

    if-gtz p0, :cond_107

    cmp-long p0, p1, v0

    if-gez p0, :cond_107

    const p0, 0x7f0f040c

    goto/16 :goto_403

    :cond_107
    cmp-long p0, v0, p1

    const-wide/16 v0, 0xb2

    if-gtz p0, :cond_116

    cmp-long p0, p1, v0

    if-gez p0, :cond_116

    const p0, 0x7f0f0408

    goto/16 :goto_403

    :cond_116
    cmp-long p0, v0, p1

    const-wide/16 v0, 0xe1

    if-gtz p0, :cond_125

    cmp-long p0, p1, v0

    if-gez p0, :cond_125

    const p0, 0x7f0f0402

    goto/16 :goto_403

    :cond_125
    cmp-long p0, v0, p1

    const-wide/16 v0, 0x11b

    if-gtz p0, :cond_134

    cmp-long p0, p1, v0

    if-gez p0, :cond_134

    const p0, 0x7f0f03fd

    goto/16 :goto_403

    :cond_134
    cmp-long p0, v0, p1

    const-wide/16 v0, 0x164

    if-gtz p0, :cond_143

    cmp-long p0, p1, v0

    if-gez p0, :cond_143

    const p0, 0x7f0f03f8

    goto/16 :goto_403

    :cond_143
    cmp-long p0, v0, p1

    const-wide/16 v0, 0x1c1

    if-gtz p0, :cond_152

    cmp-long p0, p1, v0

    if-gez p0, :cond_152

    const p0, 0x7f0f03f2

    goto/16 :goto_403

    :cond_152
    cmp-long p0, v0, p1

    const-wide/16 v0, 0x236

    if-gtz p0, :cond_161

    cmp-long p0, p1, v0

    if-gez p0, :cond_161

    const p0, 0x7f0f03ed

    goto/16 :goto_403

    :cond_161
    cmp-long p0, v0, p1

    const-wide/16 v0, 0x2c9

    if-gtz p0, :cond_170

    cmp-long p0, p1, v0

    if-gez p0, :cond_170

    const p0, 0x7f0f03e9

    goto/16 :goto_403

    :cond_170
    cmp-long p0, v0, p1

    const-wide/16 v0, 0x37b

    if-gtz p0, :cond_17f

    cmp-long p0, p1, v0

    if-gez p0, :cond_17f

    const p0, 0x7f0f03e3

    goto/16 :goto_403

    :cond_17f
    cmp-long p0, v0, p1

    const-wide/16 v0, 0x462

    if-gtz p0, :cond_18e

    cmp-long p0, p1, v0

    if-gez p0, :cond_18e

    const p0, 0x7f0f03db

    goto/16 :goto_403

    :cond_18e
    cmp-long p0, v0, p1

    if-gtz p0, :cond_19d

    const-wide/16 v0, 0x586

    cmp-long p0, p1, v0

    if-gez p0, :cond_19d

    const p0, 0x7f0f040d

    goto/16 :goto_403

    :cond_19d
    const-wide/16 v0, 0x586

    cmp-long p0, v0, p1

    if-gtz p0, :cond_1ae

    const-wide/16 v0, 0x6f6

    cmp-long p0, p1, v0

    if-gez p0, :cond_1ae

    const p0, 0x7f0f0409

    goto/16 :goto_403

    :cond_1ae
    const-wide/16 v0, 0x6f6

    cmp-long p0, v0, p1

    if-gtz p0, :cond_1bf

    const-wide/16 v0, 0x8c5

    cmp-long p0, p1, v0

    if-gez p0, :cond_1bf

    const p0, 0x7f0f0403

    goto/16 :goto_403

    :cond_1bf
    const-wide/16 v0, 0x8c5

    cmp-long p0, v0, p1

    if-gtz p0, :cond_1d0

    const-wide/16 v0, 0xb0c

    cmp-long p0, p1, v0

    if-gez p0, :cond_1d0

    const p0, 0x7f0f03fe

    goto/16 :goto_403

    :cond_1d0
    const-wide/16 v0, 0xb0c

    cmp-long p0, v0, p1

    if-gtz p0, :cond_1e1

    const-wide/16 v0, 0xdec

    cmp-long p0, p1, v0

    if-gez p0, :cond_1e1

    const p0, 0x7f0f03f9

    goto/16 :goto_403

    :cond_1e1
    const-wide/16 v0, 0xdec

    cmp-long p0, v0, p1

    if-gtz p0, :cond_1f2

    const-wide/16 v0, 0x118a

    cmp-long p0, p1, v0

    if-gez p0, :cond_1f2

    const p0, 0x7f0f03f3

    goto/16 :goto_403

    :cond_1f2
    const-wide/16 v0, 0x118a

    cmp-long p0, v0, p1

    if-gtz p0, :cond_203

    const-wide/16 v0, 0x1619

    cmp-long p0, p1, v0

    if-gez p0, :cond_203

    const p0, 0x7f0f03ee

    goto/16 :goto_403

    :cond_203
    const-wide/16 v0, 0x1619

    cmp-long p0, v0, p1

    if-gtz p0, :cond_214

    const-wide/16 v0, 0x1bd7

    cmp-long p0, p1, v0

    if-gez p0, :cond_214

    const p0, 0x7f0f03ea

    goto/16 :goto_403

    :cond_214
    const-wide/16 v0, 0x1bd7

    cmp-long p0, v0, p1

    if-gtz p0, :cond_225

    const-wide/16 v0, 0x22ce

    cmp-long p0, p1, v0

    if-gez p0, :cond_225

    const p0, 0x7f0f03e4

    goto/16 :goto_403

    :cond_225
    const-wide/16 v0, 0x22ce

    cmp-long p0, v0, p1

    if-gtz p0, :cond_236

    const-wide/16 v0, 0x2bd4

    cmp-long p0, p1, v0

    if-gez p0, :cond_236

    const p0, 0x7f0f03dc

    goto/16 :goto_403

    :cond_236
    const-wide/16 v0, 0x2bd4

    cmp-long p0, v0, p1

    if-gtz p0, :cond_247

    const-wide/16 v0, 0x373c

    cmp-long p0, p1, v0

    if-gez p0, :cond_247

    const p0, 0x7f0f040e

    goto/16 :goto_403

    :cond_247
    const-wide/16 v0, 0x373c

    cmp-long p0, v0, p1

    if-gtz p0, :cond_258

    const-wide/16 v0, 0x459c

    cmp-long p0, p1, v0

    if-gez p0, :cond_258

    const p0, 0x7f0f0406

    goto/16 :goto_403

    :cond_258
    const-wide/16 v0, 0x459c

    cmp-long p0, v0, p1

    if-gtz p0, :cond_269

    const-wide/16 v0, 0x57b2

    cmp-long p0, p1, v0

    if-gez p0, :cond_269

    const p0, 0x7f0f0404

    goto/16 :goto_403

    :cond_269
    const-wide/16 v0, 0x57b2

    cmp-long p0, v0, p1

    if-gtz p0, :cond_27a

    const-wide/16 v0, 0x6e78

    cmp-long p0, p1, v0

    if-gez p0, :cond_27a

    const p0, 0x7f0f03ff

    goto/16 :goto_403

    :cond_27a
    const-wide/16 v0, 0x6e78

    cmp-long p0, v0, p1

    if-gtz p0, :cond_28c

    const-wide/32 v0, 0x8b38

    cmp-long p0, p1, v0

    if-gez p0, :cond_28c

    const p0, 0x7f0f03f5

    goto/16 :goto_403

    :cond_28c
    const-wide/32 v0, 0x8b38

    cmp-long p0, v0, p1

    if-gtz p0, :cond_29f

    const-wide/32 v0, 0xaf64

    cmp-long p0, p1, v0

    if-gez p0, :cond_29f

    const p0, 0x7f0f03f4

    goto/16 :goto_403

    :cond_29f
    const-wide/32 v0, 0xaf64

    cmp-long p0, v0, p1

    if-gtz p0, :cond_2b2

    const-wide/32 v0, 0xdcfa

    cmp-long p0, p1, v0

    if-gez p0, :cond_2b2

    const p0, 0x7f0f03ef

    goto/16 :goto_403

    :cond_2b2
    const-wide/32 v0, 0xdcfa

    cmp-long p0, v0, p1

    if-gtz p0, :cond_2c5

    const-wide/32 v0, 0x11666

    cmp-long p0, p1, v0

    if-gez p0, :cond_2c5

    const p0, 0x7f0f03e6

    goto/16 :goto_403

    :cond_2c5
    const-wide/32 v0, 0x11666

    cmp-long p0, v0, p1

    if-gtz p0, :cond_2d8

    const-wide/32 v0, 0x15c0c

    cmp-long p0, p1, v0

    if-gez p0, :cond_2d8

    const p0, 0x7f0f03e5

    goto/16 :goto_403

    :cond_2d8
    const-wide/32 v0, 0x15c0c

    cmp-long p0, v0, p1

    if-gtz p0, :cond_2eb

    const-wide/32 v0, 0x1b648

    cmp-long p0, p1, v0

    if-gez p0, :cond_2eb

    const p0, 0x7f0f03dd

    goto/16 :goto_403

    :cond_2eb
    const-wide/32 v0, 0x1b648

    cmp-long p0, v0, p1

    if-gtz p0, :cond_2fe

    const-wide/32 v0, 0x22858

    cmp-long p0, p1, v0

    if-gez p0, :cond_2fe

    const p0, 0x7f0f040f

    goto/16 :goto_403

    :cond_2fe
    const-wide/32 v0, 0x22858

    cmp-long p0, v0, p1

    if-gtz p0, :cond_311

    const-wide/32 v0, 0x2b818

    cmp-long p0, p1, v0

    if-gez p0, :cond_311

    const p0, 0x7f0f040a

    goto/16 :goto_403

    :cond_311
    const-wide/32 v0, 0x2b818

    cmp-long p0, v0, p1

    if-gtz p0, :cond_324

    const-wide/32 v0, 0x36cf4

    cmp-long p0, p1, v0

    if-gez p0, :cond_324

    const p0, 0x7f0f0405

    goto/16 :goto_403

    :cond_324
    const-wide/32 v0, 0x36cf4

    cmp-long p0, v0, p1

    if-gtz p0, :cond_337

    const-wide/32 v0, 0x450b0

    cmp-long p0, p1, v0

    if-gez p0, :cond_337

    const p0, 0x7f0f0400

    goto/16 :goto_403

    :cond_337
    const-wide/32 v0, 0x450b0

    cmp-long p0, v0, p1

    if-gtz p0, :cond_34a

    const-wide/32 v0, 0x57030

    cmp-long p0, p1, v0

    if-gez p0, :cond_34a

    const p0, 0x7f0f03fa

    goto/16 :goto_403

    :cond_34a
    const-wide/32 v0, 0x57030

    cmp-long p0, v0, p1

    if-gtz p0, :cond_35d

    const-wide/32 v0, 0x6d9e8

    cmp-long p0, p1, v0

    if-gez p0, :cond_35d

    const p0, 0x7f0f03c4

    goto/16 :goto_403

    :cond_35d
    const-wide/32 v0, 0x6d9e8

    cmp-long p0, v0, p1

    if-gtz p0, :cond_370

    const-wide/32 v0, 0x8a1c4

    cmp-long p0, p1, v0

    if-gez p0, :cond_370

    const p0, 0x7f0f03c5

    goto/16 :goto_403

    :cond_370
    const-wide/32 v0, 0x8a1c4

    cmp-long p0, v0, p1

    if-gtz p0, :cond_383

    const-wide/32 v0, 0xadffc

    cmp-long p0, p1, v0

    if-gez p0, :cond_383

    const p0, 0x7f0f03c6

    goto/16 :goto_403

    :cond_383
    const-wide/32 v0, 0xadffc

    cmp-long p0, v0, p1

    if-gtz p0, :cond_396

    const-wide/32 v0, 0xd9878

    cmp-long p0, p1, v0

    if-gez p0, :cond_396

    const p0, 0x7f0f03c7

    goto/16 :goto_403

    :cond_396
    const-wide/32 v0, 0xd9878

    cmp-long p0, v0, p1

    if-gtz p0, :cond_3a8

    const-wide/32 v0, 0x111ed0

    cmp-long p0, p1, v0

    if-gez p0, :cond_3a8

    const p0, 0x7f0f03cd

    goto :goto_403

    :cond_3a8
    const-wide/32 v0, 0x111ed0

    cmp-long p0, v0, p1

    if-gtz p0, :cond_3ba

    const-wide/32 v0, 0x2fa350

    cmp-long p0, p1, v0

    if-gez p0, :cond_3ba

    const p0, 0x7f0f03d1

    goto :goto_403

    :cond_3ba
    const-wide/32 v0, 0x2fa350

    cmp-long p0, v0, p1

    if-gtz p0, :cond_3cc

    const-wide/32 v0, 0x5d6a10

    cmp-long p0, p1, v0

    if-gez p0, :cond_3cc

    const p0, 0x7f0f03d4

    goto :goto_403

    :cond_3cc
    const-wide/32 v0, 0x5d6a10

    cmp-long p0, v0, p1

    if-gtz p0, :cond_3de

    const-wide/32 v0, 0xafcfd0

    cmp-long p0, p1, v0

    if-gez p0, :cond_3de

    const p0, 0x7f0f03d7

    goto :goto_403

    :cond_3de
    const-wide/32 v0, 0xafcfd0

    cmp-long p0, v0, p1

    if-gtz p0, :cond_3f0

    const-wide/32 v0, 0x157a890

    cmp-long p0, p1, v0

    if-gez p0, :cond_3f0

    const p0, 0x7f0f03ca

    goto :goto_403

    :cond_3f0
    const-wide/32 v0, 0x157a890

    cmp-long p0, v0, p1

    if-gtz p0, :cond_402

    const-wide/32 v0, 0x2366fd0

    cmp-long p0, p1, v0

    if-gez p0, :cond_402

    const p0, 0x7f0f03d2

    goto :goto_403

    :cond_402
    const/4 p0, -0x1

    :goto_403
    return p0
.end method
