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
    bv = {
        0x1,
        0x0,
        0x3
    }
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
        0x1,
        0xd
    }
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

    .line 16
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/util/ResourceConvertUtils$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final convertIso(I)I
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/16 v0, 0x8

    if-le v0, p1, :cond_5

    goto :goto_e

    :cond_5
    const/16 v0, 0xb

    if-lt v0, p1, :cond_e

    const p1, 0x7f0f0282

    goto/16 :goto_223

    :cond_e
    :goto_e
    const/16 v0, 0xe

    const/16 v1, 0xc

    if-le v1, p1, :cond_15

    goto :goto_1c

    :cond_15
    if-lt v0, p1, :cond_1c

    const p1, 0x7f0f0288

    goto/16 :goto_223

    :cond_1c
    :goto_1c
    const/16 v0, 0x11

    const/16 v1, 0xf

    if-le v1, p1, :cond_23

    goto :goto_2a

    :cond_23
    if-lt v0, p1, :cond_2a

    const p1, 0x7f0f028c

    goto/16 :goto_223

    :cond_2a
    :goto_2a
    const/16 v0, 0x16

    const/16 v1, 0x12

    if-le v1, p1, :cond_31

    goto :goto_38

    :cond_31
    if-lt v0, p1, :cond_38

    const p1, 0x7f0f0290

    goto/16 :goto_223

    :cond_38
    :goto_38
    const/16 v0, 0x1c

    const/16 v1, 0x17

    if-le v1, p1, :cond_3f

    goto :goto_46

    :cond_3f
    if-lt v0, p1, :cond_46

    const p1, 0x7f0f0294

    goto/16 :goto_223

    :cond_46
    :goto_46
    const/16 v0, 0x23

    const/16 v1, 0x1d

    if-le v1, p1, :cond_4d

    goto :goto_54

    :cond_4d
    if-lt v0, p1, :cond_54

    const p1, 0x7f0f0299

    goto/16 :goto_223

    :cond_54
    :goto_54
    const/16 v0, 0x2c

    const/16 v1, 0x24

    if-le v1, p1, :cond_5b

    goto :goto_62

    :cond_5b
    if-lt v0, p1, :cond_62

    const p1, 0x7f0f029d

    goto/16 :goto_223

    :cond_62
    :goto_62
    const/16 v0, 0x38

    const/16 v1, 0x2d

    if-le v1, p1, :cond_69

    goto :goto_70

    :cond_69
    if-lt v0, p1, :cond_70

    const p1, 0x7f0f02a0

    goto/16 :goto_223

    :cond_70
    :goto_70
    const/16 v0, 0x47

    const/16 v1, 0x39

    if-le v1, p1, :cond_77

    goto :goto_7e

    :cond_77
    if-lt v0, p1, :cond_7e

    const p1, 0x7f0f02a5

    goto/16 :goto_223

    :cond_7e
    :goto_7e
    const/16 v0, 0x59

    const/16 v1, 0x48

    if-le v1, p1, :cond_85

    goto :goto_8c

    :cond_85
    if-lt v0, p1, :cond_8c

    const p1, 0x7f0f02a9

    goto/16 :goto_223

    :cond_8c
    :goto_8c
    const/16 v0, 0x70

    const/16 v1, 0x5a

    if-le v1, p1, :cond_93

    goto :goto_9a

    :cond_93
    if-lt v0, p1, :cond_9a

    const p1, 0x7f0f0281

    goto/16 :goto_223

    :cond_9a
    :goto_9a
    const/16 v0, 0x8d

    const/16 v1, 0x71

    if-le v1, p1, :cond_a1

    goto :goto_a8

    :cond_a1
    if-lt v0, p1, :cond_a8

    const p1, 0x7f0f0286

    goto/16 :goto_223

    :cond_a8
    :goto_a8
    const/16 v0, 0xb2

    const/16 v1, 0x8e

    if-le v1, p1, :cond_af

    goto :goto_b6

    :cond_af
    if-lt v0, p1, :cond_b6

    const p1, 0x7f0f028b

    goto/16 :goto_223

    :cond_b6
    :goto_b6
    const/16 v0, 0xe0

    const/16 v1, 0xb3

    if-le v1, p1, :cond_bd

    goto :goto_c4

    :cond_bd
    if-lt v0, p1, :cond_c4

    const p1, 0x7f0f028f

    goto/16 :goto_223

    :cond_c4
    :goto_c4
    const/16 v0, 0x11a

    const/16 v1, 0xe1

    if-le v1, p1, :cond_cb

    goto :goto_d2

    :cond_cb
    if-lt v0, p1, :cond_d2

    const p1, 0x7f0f0292

    goto/16 :goto_223

    :cond_d2
    :goto_d2
    const/16 v0, 0x164

    const/16 v1, 0x11b

    if-le v1, p1, :cond_d9

    goto :goto_e0

    :cond_d9
    if-lt v0, p1, :cond_e0

    const p1, 0x7f0f0298

    goto/16 :goto_223

    :cond_e0
    :goto_e0
    const/16 v0, 0x1c1

    const/16 v1, 0x165

    if-le v1, p1, :cond_e7

    goto :goto_ee

    :cond_e7
    if-lt v0, p1, :cond_ee

    const p1, 0x7f0f029c

    goto/16 :goto_223

    :cond_ee
    :goto_ee
    const/16 v0, 0x235

    const/16 v1, 0x1c2

    if-le v1, p1, :cond_f5

    goto :goto_fc

    :cond_f5
    if-lt v0, p1, :cond_fc

    const p1, 0x7f0f029f

    goto/16 :goto_223

    :cond_fc
    :goto_fc
    const/16 v0, 0x2c8

    const/16 v1, 0x236

    if-le v1, p1, :cond_103

    goto :goto_10a

    :cond_103
    if-lt v0, p1, :cond_10a

    const p1, 0x7f0f02a4

    goto/16 :goto_223

    :cond_10a
    :goto_10a
    const/16 v0, 0x37a

    const/16 v1, 0x2c9

    if-le v1, p1, :cond_111

    goto :goto_118

    :cond_111
    if-lt v0, p1, :cond_118

    const p1, 0x7f0f02a8

    goto/16 :goto_223

    :cond_118
    :goto_118
    const/16 v0, 0x462

    const/16 v1, 0x37b

    if-le v1, p1, :cond_11f

    goto :goto_126

    :cond_11f
    if-lt v0, p1, :cond_126

    const p1, 0x7f0f0280

    goto/16 :goto_223

    :cond_126
    :goto_126
    const/16 v0, 0x586

    const/16 v1, 0x463

    if-le v1, p1, :cond_12d

    goto :goto_134

    :cond_12d
    if-lt v0, p1, :cond_134

    const p1, 0x7f0f0285

    goto/16 :goto_223

    :cond_134
    :goto_134
    const/16 v0, 0x6f6

    const/16 v1, 0x587

    if-le v1, p1, :cond_13b

    goto :goto_142

    :cond_13b
    if-lt v0, p1, :cond_142

    const p1, 0x7f0f028a

    goto/16 :goto_223

    :cond_142
    :goto_142
    const/16 v0, 0x8c5

    const/16 v1, 0x6f7

    if-le v1, p1, :cond_149

    goto :goto_150

    :cond_149
    if-lt v0, p1, :cond_150

    const p1, 0x7f0f028e

    goto/16 :goto_223

    :cond_150
    :goto_150
    const/16 v0, 0xb0c

    const/16 v1, 0x8c6

    if-le v1, p1, :cond_157

    goto :goto_15e

    :cond_157
    if-lt v0, p1, :cond_15e

    const p1, 0x7f0f0291

    goto/16 :goto_223

    :cond_15e
    :goto_15e
    const/16 v0, 0xdec

    const/16 v1, 0xb0d

    if-le v1, p1, :cond_165

    goto :goto_16c

    :cond_165
    if-lt v0, p1, :cond_16c

    const p1, 0x7f0f0297

    goto/16 :goto_223

    :cond_16c
    :goto_16c
    const/16 v0, 0x118a

    const/16 v1, 0xded

    if-le v1, p1, :cond_173

    goto :goto_17a

    :cond_173
    if-lt v0, p1, :cond_17a

    const p1, 0x7f0f029b

    goto/16 :goto_223

    :cond_17a
    :goto_17a
    const/16 v0, 0x1619

    const/16 v1, 0x118b

    if-le v1, p1, :cond_181

    goto :goto_188

    :cond_181
    if-lt v0, p1, :cond_188

    const p1, 0x7f0f029e

    goto/16 :goto_223

    :cond_188
    :goto_188
    const/16 v0, 0x1bd7

    const/16 v1, 0x161a

    if-le v1, p1, :cond_18f

    goto :goto_196

    :cond_18f
    if-lt v0, p1, :cond_196

    const p1, 0x7f0f02a3

    goto/16 :goto_223

    :cond_196
    :goto_196
    const/16 v0, 0x22cd

    const/16 v1, 0x1bd8

    if-le v1, p1, :cond_19d

    goto :goto_1a4

    :cond_19d
    if-lt v0, p1, :cond_1a4

    const p1, 0x7f0f02a7

    goto/16 :goto_223

    :cond_1a4
    :goto_1a4
    const/16 v0, 0x2bd9

    const/16 v1, 0x22ce

    if-le v1, p1, :cond_1ab

    goto :goto_1b2

    :cond_1ab
    if-lt v0, p1, :cond_1b2

    const p1, 0x7f0f027f

    goto/16 :goto_223

    :cond_1b2
    :goto_1b2
    const/16 v0, 0x373e

    const/16 v1, 0x2bda

    if-le v1, p1, :cond_1b9

    goto :goto_1c0

    :cond_1b9
    if-lt v0, p1, :cond_1c0

    const p1, 0x7f0f0287

    goto/16 :goto_223

    :cond_1c0
    :goto_1c0
    const/16 v0, 0x459a

    const/16 v1, 0x373f

    if-le v1, p1, :cond_1c7

    goto :goto_1cd

    :cond_1c7
    if-lt v0, p1, :cond_1cd

    const p1, 0x7f0f0289

    goto :goto_223

    :cond_1cd
    :goto_1cd
    const/16 v0, 0x57b1

    const/16 v1, 0x459b

    if-le v1, p1, :cond_1d4

    goto :goto_1da

    :cond_1d4
    if-lt v0, p1, :cond_1da

    const p1, 0x7f0f028d

    goto :goto_223

    :cond_1da
    :goto_1da
    const/16 v0, 0x6e7c

    const/16 v1, 0x57b2

    if-le v1, p1, :cond_1e1

    goto :goto_1e7

    :cond_1e1
    if-lt v0, p1, :cond_1e7

    const p1, 0x7f0f0293

    goto :goto_223

    :cond_1e7
    :goto_1e7
    const v0, 0x8b34

    const/16 v1, 0x6e7d

    if-le v1, p1, :cond_1ef

    goto :goto_1f5

    :cond_1ef
    if-lt v0, p1, :cond_1f5

    const p1, 0x7f0f0296

    goto :goto_223

    :cond_1f5
    :goto_1f5
    const v0, 0xaf62

    const v1, 0x8b35

    if-le v1, p1, :cond_1fe

    goto :goto_204

    :cond_1fe
    if-lt v0, p1, :cond_204

    const p1, 0x7f0f029a

    goto :goto_223

    :cond_204
    :goto_204
    const v0, 0xdcf9

    const v1, 0xaf63

    if-le v1, p1, :cond_20d

    goto :goto_213

    :cond_20d
    if-lt v0, p1, :cond_213

    const p1, 0x7f0f02a1

    goto :goto_223

    :cond_213
    :goto_213
    const v0, 0x11668

    const v1, 0xdcfa

    if-le v1, p1, :cond_21c

    goto :goto_222

    :cond_21c
    if-lt v0, p1, :cond_222

    const p1, 0x7f0f02a2

    goto :goto_223

    :cond_222
    :goto_222
    const/4 p1, -0x1

    :goto_223
    return p1
.end method

.method public final convertSs(J)I
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_b

    const p1, 0x7f0f03d0

    goto/16 :goto_4da

    :cond_b
    const-wide/16 v0, 0x2

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const p1, 0x7f0f03f3

    goto/16 :goto_4da

    :cond_16
    const-wide/16 v0, 0x3

    cmp-long v0, p1, v0

    if-nez v0, :cond_21

    const p1, 0x7f0f03ee

    goto/16 :goto_4da

    :cond_21
    const-wide/16 v0, 0x4

    cmp-long v0, p1, v0

    if-nez v0, :cond_2c

    const p1, 0x7f0f03e8

    goto/16 :goto_4da

    :cond_2c
    const-wide/16 v0, 0x5

    cmp-long v0, p1, v0

    if-nez v0, :cond_37

    const p1, 0x7f0f03e3

    goto/16 :goto_4da

    :cond_37
    const-wide/16 v0, 0x6

    cmp-long v0, p1, v0

    if-nez v0, :cond_42

    const p1, 0x7f0f03df

    goto/16 :goto_4da

    :cond_42
    const/16 v0, 0x8

    int-to-long v0, v0

    const/4 v2, 0x7

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_4c

    goto :goto_55

    :cond_4c
    cmp-long v0, v0, p1

    if-ltz v0, :cond_55

    const p1, 0x7f0f03d9

    goto/16 :goto_4da

    :cond_55
    :goto_55
    const/16 v0, 0xa

    int-to-long v0, v0

    const/16 v2, 0x9

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_60

    goto :goto_69

    :cond_60
    cmp-long v0, v0, p1

    if-ltz v0, :cond_69

    const p1, 0x7f0f03d1

    goto/16 :goto_4da

    :cond_69
    :goto_69
    const/16 v0, 0xd

    int-to-long v0, v0

    const/16 v2, 0xb

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_74

    goto :goto_7d

    :cond_74
    cmp-long v0, v0, p1

    if-ltz v0, :cond_7d

    const p1, 0x7f0f0403

    goto/16 :goto_4da

    :cond_7d
    :goto_7d
    const/16 v0, 0x11

    int-to-long v0, v0

    const/16 v2, 0xe

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_88

    goto :goto_91

    :cond_88
    cmp-long v0, v0, p1

    if-ltz v0, :cond_91

    const p1, 0x7f0f03ff

    goto/16 :goto_4da

    :cond_91
    :goto_91
    const/16 v0, 0x15

    int-to-long v0, v0

    const/16 v2, 0x12

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_9c

    goto :goto_a5

    :cond_9c
    cmp-long v0, v0, p1

    if-ltz v0, :cond_a5

    const p1, 0x7f0f03f9

    goto/16 :goto_4da

    :cond_a5
    :goto_a5
    const/16 v0, 0x1b

    int-to-long v0, v0

    const/16 v2, 0x16

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_b0

    goto :goto_b9

    :cond_b0
    cmp-long v0, v0, p1

    if-ltz v0, :cond_b9

    const p1, 0x7f0f03f4

    goto/16 :goto_4da

    :cond_b9
    :goto_b9
    const/16 v0, 0x23

    int-to-long v0, v0

    const/16 v2, 0x1c

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_c4

    goto :goto_cd

    :cond_c4
    cmp-long v0, v0, p1

    if-ltz v0, :cond_cd

    const p1, 0x7f0f03ef

    goto/16 :goto_4da

    :cond_cd
    :goto_cd
    const/16 v0, 0x2c

    int-to-long v0, v0

    const/16 v2, 0x24

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_d8

    goto :goto_e1

    :cond_d8
    cmp-long v0, v0, p1

    if-ltz v0, :cond_e1

    const p1, 0x7f0f03e9

    goto/16 :goto_4da

    :cond_e1
    :goto_e1
    const/16 v0, 0x38

    int-to-long v0, v0

    const/16 v2, 0x2d

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_ec

    goto :goto_f5

    :cond_ec
    cmp-long v0, v0, p1

    if-ltz v0, :cond_f5

    const p1, 0x7f0f03e4

    goto/16 :goto_4da

    :cond_f5
    :goto_f5
    const/16 v0, 0x46

    int-to-long v0, v0

    const/16 v2, 0x39

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_100

    goto :goto_109

    :cond_100
    cmp-long v0, v0, p1

    if-ltz v0, :cond_109

    const p1, 0x7f0f03e0

    goto/16 :goto_4da

    :cond_109
    :goto_109
    const/16 v0, 0x58

    int-to-long v0, v0

    const/16 v2, 0x47

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_114

    goto :goto_11d

    :cond_114
    cmp-long v0, v0, p1

    if-ltz v0, :cond_11d

    const p1, 0x7f0f03da

    goto/16 :goto_4da

    :cond_11d
    :goto_11d
    const/16 v0, 0x6f

    int-to-long v0, v0

    const/16 v2, 0x59

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_128

    goto :goto_131

    :cond_128
    cmp-long v0, v0, p1

    if-ltz v0, :cond_131

    const p1, 0x7f0f03d2

    goto/16 :goto_4da

    :cond_131
    :goto_131
    const/16 v0, 0x8c

    int-to-long v0, v0

    const/16 v2, 0x70

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_13c

    goto :goto_145

    :cond_13c
    cmp-long v0, v0, p1

    if-ltz v0, :cond_145

    const p1, 0x7f0f0404

    goto/16 :goto_4da

    :cond_145
    :goto_145
    const/16 v0, 0xb1

    int-to-long v0, v0

    const/16 v2, 0x8d

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_150

    goto :goto_159

    :cond_150
    cmp-long v0, v0, p1

    if-ltz v0, :cond_159

    const p1, 0x7f0f0400

    goto/16 :goto_4da

    :cond_159
    :goto_159
    const/16 v0, 0xe0

    int-to-long v0, v0

    const/16 v2, 0xb2

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_164

    goto :goto_16d

    :cond_164
    cmp-long v0, v0, p1

    if-ltz v0, :cond_16d

    const p1, 0x7f0f03fa

    goto/16 :goto_4da

    :cond_16d
    :goto_16d
    const/16 v0, 0x11a

    int-to-long v0, v0

    const/16 v2, 0xe1

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_178

    goto :goto_181

    :cond_178
    cmp-long v0, v0, p1

    if-ltz v0, :cond_181

    const p1, 0x7f0f03f5

    goto/16 :goto_4da

    :cond_181
    :goto_181
    const/16 v0, 0x163

    int-to-long v0, v0

    const/16 v2, 0x11b

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_18c

    goto :goto_195

    :cond_18c
    cmp-long v0, v0, p1

    if-ltz v0, :cond_195

    const p1, 0x7f0f03f0

    goto/16 :goto_4da

    :cond_195
    :goto_195
    const/16 v0, 0x1c0

    int-to-long v0, v0

    const/16 v2, 0x164

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_1a0

    goto :goto_1a9

    :cond_1a0
    cmp-long v0, v0, p1

    if-ltz v0, :cond_1a9

    const p1, 0x7f0f03ea

    goto/16 :goto_4da

    :cond_1a9
    :goto_1a9
    const/16 v0, 0x235

    int-to-long v0, v0

    const/16 v2, 0x1c1

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_1b4

    goto :goto_1bd

    :cond_1b4
    cmp-long v0, v0, p1

    if-ltz v0, :cond_1bd

    const p1, 0x7f0f03e5

    goto/16 :goto_4da

    :cond_1bd
    :goto_1bd
    const/16 v0, 0x2c8

    int-to-long v0, v0

    const/16 v2, 0x236

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_1c8

    goto :goto_1d1

    :cond_1c8
    cmp-long v0, v0, p1

    if-ltz v0, :cond_1d1

    const p1, 0x7f0f03e1

    goto/16 :goto_4da

    :cond_1d1
    :goto_1d1
    const/16 v0, 0x37a

    int-to-long v0, v0

    const/16 v2, 0x2c9

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_1dc

    goto :goto_1e5

    :cond_1dc
    cmp-long v0, v0, p1

    if-ltz v0, :cond_1e5

    const p1, 0x7f0f03db

    goto/16 :goto_4da

    :cond_1e5
    :goto_1e5
    const/16 v0, 0x461

    int-to-long v0, v0

    const/16 v2, 0x37b

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_1f0

    goto :goto_1f9

    :cond_1f0
    cmp-long v0, v0, p1

    if-ltz v0, :cond_1f9

    const p1, 0x7f0f03d3

    goto/16 :goto_4da

    :cond_1f9
    :goto_1f9
    const/16 v0, 0x585

    int-to-long v0, v0

    const/16 v2, 0x462

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_204

    goto :goto_20d

    :cond_204
    cmp-long v0, v0, p1

    if-ltz v0, :cond_20d

    const p1, 0x7f0f0405

    goto/16 :goto_4da

    :cond_20d
    :goto_20d
    const/16 v0, 0x6f5

    int-to-long v0, v0

    const/16 v2, 0x586

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_218

    goto :goto_221

    :cond_218
    cmp-long v0, v0, p1

    if-ltz v0, :cond_221

    const p1, 0x7f0f0401

    goto/16 :goto_4da

    :cond_221
    :goto_221
    const/16 v0, 0x8c4

    int-to-long v0, v0

    const/16 v2, 0x6f6

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_22c

    goto :goto_235

    :cond_22c
    cmp-long v0, v0, p1

    if-ltz v0, :cond_235

    const p1, 0x7f0f03fb

    goto/16 :goto_4da

    :cond_235
    :goto_235
    const/16 v0, 0xb0b

    int-to-long v0, v0

    const/16 v2, 0x8c5

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_240

    goto :goto_249

    :cond_240
    cmp-long v0, v0, p1

    if-ltz v0, :cond_249

    const p1, 0x7f0f03f6

    goto/16 :goto_4da

    :cond_249
    :goto_249
    const/16 v0, 0xdeb

    int-to-long v0, v0

    const/16 v2, 0xb0c

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_254

    goto :goto_25d

    :cond_254
    cmp-long v0, v0, p1

    if-ltz v0, :cond_25d

    const p1, 0x7f0f03f1

    goto/16 :goto_4da

    :cond_25d
    :goto_25d
    const/16 v0, 0x1189

    int-to-long v0, v0

    const/16 v2, 0xdec

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_268

    goto :goto_271

    :cond_268
    cmp-long v0, v0, p1

    if-ltz v0, :cond_271

    const p1, 0x7f0f03eb

    goto/16 :goto_4da

    :cond_271
    :goto_271
    const/16 v0, 0x1618

    int-to-long v0, v0

    const/16 v2, 0x118a

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_27c

    goto :goto_285

    :cond_27c
    cmp-long v0, v0, p1

    if-ltz v0, :cond_285

    const p1, 0x7f0f03e6

    goto/16 :goto_4da

    :cond_285
    :goto_285
    const/16 v0, 0x1bd6

    int-to-long v0, v0

    const/16 v2, 0x1619

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_290

    goto :goto_299

    :cond_290
    cmp-long v0, v0, p1

    if-ltz v0, :cond_299

    const p1, 0x7f0f03e2

    goto/16 :goto_4da

    :cond_299
    :goto_299
    const/16 v0, 0x22cd

    int-to-long v0, v0

    const/16 v2, 0x1bd7

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_2a4

    goto :goto_2ad

    :cond_2a4
    cmp-long v0, v0, p1

    if-ltz v0, :cond_2ad

    const p1, 0x7f0f03dc

    goto/16 :goto_4da

    :cond_2ad
    :goto_2ad
    const/16 v0, 0x2bd3

    int-to-long v0, v0

    const/16 v2, 0x22ce

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_2b8

    goto :goto_2c1

    :cond_2b8
    cmp-long v0, v0, p1

    if-ltz v0, :cond_2c1

    const p1, 0x7f0f03d4

    goto/16 :goto_4da

    :cond_2c1
    :goto_2c1
    const/16 v0, 0x373b

    int-to-long v0, v0

    const/16 v2, 0x2bd4

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_2cc

    goto :goto_2d5

    :cond_2cc
    cmp-long v0, v0, p1

    if-ltz v0, :cond_2d5

    const p1, 0x7f0f0406

    goto/16 :goto_4da

    :cond_2d5
    :goto_2d5
    const/16 v0, 0x459b

    int-to-long v0, v0

    const/16 v2, 0x373c

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_2e0

    goto :goto_2e9

    :cond_2e0
    cmp-long v0, v0, p1

    if-ltz v0, :cond_2e9

    const p1, 0x7f0f03fe

    goto/16 :goto_4da

    :cond_2e9
    :goto_2e9
    const/16 v0, 0x57b1

    int-to-long v0, v0

    const/16 v2, 0x459c

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_2f4

    goto :goto_2fd

    :cond_2f4
    cmp-long v0, v0, p1

    if-ltz v0, :cond_2fd

    const p1, 0x7f0f03fc

    goto/16 :goto_4da

    :cond_2fd
    :goto_2fd
    const/16 v0, 0x6e77

    int-to-long v0, v0

    const/16 v2, 0x57b2

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_308

    goto :goto_311

    :cond_308
    cmp-long v0, v0, p1

    if-ltz v0, :cond_311

    const p1, 0x7f0f03f7

    goto/16 :goto_4da

    :cond_311
    :goto_311
    const v0, 0x8b37

    int-to-long v0, v0

    const/16 v2, 0x6e78

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_31d

    goto :goto_326

    :cond_31d
    cmp-long v0, v0, p1

    if-ltz v0, :cond_326

    const p1, 0x7f0f03ed

    goto/16 :goto_4da

    :cond_326
    :goto_326
    const v0, 0xaf63

    int-to-long v0, v0

    const v2, 0x8b38

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_333

    goto :goto_33c

    :cond_333
    cmp-long v0, v0, p1

    if-ltz v0, :cond_33c

    const p1, 0x7f0f03ec

    goto/16 :goto_4da

    :cond_33c
    :goto_33c
    const v0, 0xdcf9

    int-to-long v0, v0

    const v2, 0xaf64

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_349

    goto :goto_352

    :cond_349
    cmp-long v0, v0, p1

    if-ltz v0, :cond_352

    const p1, 0x7f0f03e7

    goto/16 :goto_4da

    :cond_352
    :goto_352
    const v0, 0x11665

    int-to-long v0, v0

    const v2, 0xdcfa

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_35f

    goto :goto_368

    :cond_35f
    cmp-long v0, v0, p1

    if-ltz v0, :cond_368

    const p1, 0x7f0f03de

    goto/16 :goto_4da

    :cond_368
    :goto_368
    const v0, 0x15c0b

    int-to-long v0, v0

    const v2, 0x11666

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_375

    goto :goto_37e

    :cond_375
    cmp-long v0, v0, p1

    if-ltz v0, :cond_37e

    const p1, 0x7f0f03dd

    goto/16 :goto_4da

    :cond_37e
    :goto_37e
    const v0, 0x1b647

    int-to-long v0, v0

    const v2, 0x15c0c

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_38b

    goto :goto_394

    :cond_38b
    cmp-long v0, v0, p1

    if-ltz v0, :cond_394

    const p1, 0x7f0f03d5

    goto/16 :goto_4da

    :cond_394
    :goto_394
    const v0, 0x22857

    int-to-long v0, v0

    const v2, 0x1b648

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_3a1

    goto :goto_3aa

    :cond_3a1
    cmp-long v0, v0, p1

    if-ltz v0, :cond_3aa

    const p1, 0x7f0f0407

    goto/16 :goto_4da

    :cond_3aa
    :goto_3aa
    const v0, 0x2b817

    int-to-long v0, v0

    const v2, 0x22858

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_3b7

    goto :goto_3c0

    :cond_3b7
    cmp-long v0, v0, p1

    if-ltz v0, :cond_3c0

    const p1, 0x7f0f0402

    goto/16 :goto_4da

    :cond_3c0
    :goto_3c0
    const v0, 0x36cf3

    int-to-long v0, v0

    const v2, 0x2b818

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_3cd

    goto :goto_3d6

    :cond_3cd
    cmp-long v0, v0, p1

    if-ltz v0, :cond_3d6

    const p1, 0x7f0f03fd

    goto/16 :goto_4da

    :cond_3d6
    :goto_3d6
    const v0, 0x450af

    int-to-long v0, v0

    const v2, 0x36cf4

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_3e3

    goto :goto_3ec

    :cond_3e3
    cmp-long v0, v0, p1

    if-ltz v0, :cond_3ec

    const p1, 0x7f0f03f8

    goto/16 :goto_4da

    :cond_3ec
    :goto_3ec
    const v0, 0x5702f

    int-to-long v0, v0

    const v2, 0x450b0

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_3f9

    goto :goto_402

    :cond_3f9
    cmp-long v0, v0, p1

    if-ltz v0, :cond_402

    const p1, 0x7f0f03f2

    goto/16 :goto_4da

    :cond_402
    :goto_402
    const v0, 0x6d9e7

    int-to-long v0, v0

    const v2, 0x57030

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_40f

    goto :goto_418

    :cond_40f
    cmp-long v0, v0, p1

    if-ltz v0, :cond_418

    const p1, 0x7f0f03bc

    goto/16 :goto_4da

    :cond_418
    :goto_418
    const v0, 0x8a1c3

    int-to-long v0, v0

    const v2, 0x6d9e8

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_425

    goto :goto_42e

    :cond_425
    cmp-long v0, v0, p1

    if-ltz v0, :cond_42e

    const p1, 0x7f0f03bd

    goto/16 :goto_4da

    :cond_42e
    :goto_42e
    const v0, 0xadffb

    int-to-long v0, v0

    const v2, 0x8a1c4

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_43b

    goto :goto_444

    :cond_43b
    cmp-long v0, v0, p1

    if-ltz v0, :cond_444

    const p1, 0x7f0f03be

    goto/16 :goto_4da

    :cond_444
    :goto_444
    const v0, 0xd9877

    int-to-long v0, v0

    const v2, 0xadffc

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_451

    goto :goto_45a

    :cond_451
    cmp-long v0, v0, p1

    if-ltz v0, :cond_45a

    const p1, 0x7f0f03bf

    goto/16 :goto_4da

    :cond_45a
    :goto_45a
    const v0, 0x111ecf

    int-to-long v0, v0

    const v2, 0xd9878

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_467

    goto :goto_470

    :cond_467
    cmp-long v0, v0, p1

    if-ltz v0, :cond_470

    const p1, 0x7f0f03c5

    goto/16 :goto_4da

    :cond_470
    :goto_470
    const v0, 0x2fa34f

    int-to-long v0, v0

    const v2, 0x111ed0

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_47d

    goto :goto_485

    :cond_47d
    cmp-long v0, v0, p1

    if-ltz v0, :cond_485

    const p1, 0x7f0f03c9

    goto :goto_4da

    :cond_485
    :goto_485
    const v0, 0x5d6a0f

    int-to-long v0, v0

    const v2, 0x2fa350

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_492

    goto :goto_49a

    :cond_492
    cmp-long v0, v0, p1

    if-ltz v0, :cond_49a

    const p1, 0x7f0f03cc

    goto :goto_4da

    :cond_49a
    :goto_49a
    const v0, 0xafcfcf

    int-to-long v0, v0

    const v2, 0x5d6a10

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_4a7

    goto :goto_4af

    :cond_4a7
    cmp-long v0, v0, p1

    if-ltz v0, :cond_4af

    const p1, 0x7f0f03cf

    goto :goto_4da

    :cond_4af
    :goto_4af
    const v0, 0x157a88f

    int-to-long v0, v0

    const v2, 0xafcfd0

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_4bc

    goto :goto_4c4

    :cond_4bc
    cmp-long v0, v0, p1

    if-ltz v0, :cond_4c4

    const p1, 0x7f0f03c2

    goto :goto_4da

    :cond_4c4
    :goto_4c4
    const v0, 0x2366fcf

    int-to-long v0, v0

    const v2, 0x157a890

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_4d1

    goto :goto_4d9

    :cond_4d1
    cmp-long p1, v0, p1

    if-ltz p1, :cond_4d9

    const p1, 0x7f0f03ca

    goto :goto_4da

    :cond_4d9
    :goto_4d9
    const/4 p1, -0x1

    :goto_4da
    return p1
.end method
