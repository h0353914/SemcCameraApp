.class Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AeMode;
.super Ljava/lang/Object;
.source "CameraParameterConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraParameterConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AeMode"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getApi2Value(Ljava/lang/String;Ljava/lang/String;)I
    .registers 16

    .line 276
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x1

    sparse-switch v0, :sswitch_data_1b4

    goto :goto_56

    :sswitch_10
    const-string v0, "display-auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_56

    move p1, v3

    goto :goto_57

    :sswitch_1a
    const-string v0, "red-eye"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_56

    move p1, v2

    goto :goto_57

    :sswitch_24
    const-string v0, "torch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_56

    move p1, v6

    goto :goto_57

    :sswitch_2e
    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_56

    move p1, v7

    goto :goto_57

    :sswitch_38
    const-string v0, "off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_56

    move p1, v8

    goto :goto_57

    :sswitch_42
    const-string v0, "on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_56

    move p1, v5

    goto :goto_57

    :sswitch_4c
    const-string v0, "display-on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_56

    move p1, v1

    goto :goto_57

    :cond_56
    :goto_56
    move p1, v4

    :goto_57
    const/16 v0, 0x9

    const/16 v9, 0xd

    const v10, 0x7c5dd888

    const v11, 0x1ee0b6f0

    const v12, 0x2dddaf

    const v13, -0x2d8f5b52

    packed-switch p1, :pswitch_data_1d2

    goto/16 :goto_1b2

    :pswitch_6c
    const/16 v7, 0x10

    goto/16 :goto_1b2

    :pswitch_70
    const/16 v7, 0xf

    goto/16 :goto_1b2

    .line 356
    :pswitch_74
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    if-eq p1, v13, :cond_9f

    if-eq p1, v12, :cond_95

    if-eq p1, v11, :cond_8b

    if-eq p1, v10, :cond_81

    goto :goto_a8

    :cond_81
    const-string p1, "shutter-prio"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a8

    move v4, v5

    goto :goto_a8

    :cond_8b
    const-string p1, "iso-prio"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a8

    move v4, v8

    goto :goto_a8

    :cond_95
    const-string p1, "auto"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a8

    move v4, v7

    goto :goto_a8

    :cond_9f
    const-string p1, "semi-auto"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a8

    move v4, v6

    :cond_a8
    :goto_a8
    packed-switch v4, :pswitch_data_1e4

    goto/16 :goto_1b2

    :pswitch_ad
    move v7, v9

    goto/16 :goto_1b2

    :pswitch_b0
    const/16 v2, 0xc

    goto :goto_b5

    :pswitch_b3
    const/16 v2, 0x8

    :goto_b5
    :pswitch_b5
    move v7, v2

    goto/16 :goto_1b2

    .line 337
    :pswitch_b8
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    if-eq p1, v13, :cond_e3

    if-eq p1, v12, :cond_d9

    if-eq p1, v11, :cond_cf

    if-eq p1, v10, :cond_c5

    goto :goto_ec

    :cond_c5
    const-string p1, "shutter-prio"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_ec

    move v4, v5

    goto :goto_ec

    :cond_cf
    const-string p1, "iso-prio"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_ec

    move v4, v8

    goto :goto_ec

    :cond_d9
    const-string p1, "auto"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_ec

    move v4, v7

    goto :goto_ec

    :cond_e3
    const-string p1, "semi-auto"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_ec

    move v4, v6

    :cond_ec
    :goto_ec
    packed-switch v4, :pswitch_data_1f0

    goto/16 :goto_1b2

    :pswitch_f1
    move v7, v0

    goto/16 :goto_1b2

    :pswitch_f4
    move v7, v3

    goto/16 :goto_1b2

    :pswitch_f7
    move v7, v8

    goto/16 :goto_1b2

    .line 317
    :pswitch_fa
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    if-eq p1, v13, :cond_125

    if-eq p1, v12, :cond_11b

    if-eq p1, v11, :cond_111

    if-eq p1, v10, :cond_107

    goto :goto_12e

    :cond_107
    const-string p1, "shutter-prio"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12e

    move v4, v5

    goto :goto_12e

    :cond_111
    const-string p1, "iso-prio"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12e

    move v4, v8

    goto :goto_12e

    :cond_11b
    const-string p1, "auto"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12e

    move v4, v7

    goto :goto_12e

    :cond_125
    const-string p1, "semi-auto"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12e

    move v4, v6

    :cond_12e
    :goto_12e
    packed-switch v4, :pswitch_data_1fc

    goto/16 :goto_1b2

    :pswitch_133
    const/16 v6, 0xe

    goto :goto_13a

    :pswitch_136
    const/16 v6, 0xb

    goto :goto_13a

    :pswitch_139
    const/4 v6, 0x7

    :goto_13a
    :pswitch_13a
    move v7, v6

    goto/16 :goto_1b2

    .line 298
    :pswitch_13d
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    if-eq p1, v13, :cond_168

    if-eq p1, v12, :cond_15e

    if-eq p1, v11, :cond_154

    if-eq p1, v10, :cond_14a

    goto :goto_171

    :cond_14a
    const-string p1, "shutter-prio"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_171

    move v4, v5

    goto :goto_171

    :cond_154
    const-string p1, "iso-prio"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_171

    move v4, v8

    goto :goto_171

    :cond_15e
    const-string p1, "auto"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_171

    move v4, v7

    goto :goto_171

    :cond_168
    const-string p1, "semi-auto"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_171

    move v4, v6

    :cond_171
    :goto_171
    packed-switch v4, :pswitch_data_208

    goto :goto_1b2

    .line 278
    :pswitch_175
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    if-eq p1, v13, :cond_1a0

    if-eq p1, v12, :cond_196

    if-eq p1, v11, :cond_18c

    if-eq p1, v10, :cond_182

    goto :goto_1a9

    :cond_182
    const-string p1, "shutter-prio"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a9

    move v4, v5

    goto :goto_1a9

    :cond_18c
    const-string p1, "iso-prio"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a9

    move v4, v8

    goto :goto_1a9

    :cond_196
    const-string p1, "auto"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a9

    move v4, v7

    goto :goto_1a9

    :cond_1a0
    const-string p1, "semi-auto"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a9

    move v4, v6

    :cond_1a9
    :goto_1a9
    packed-switch v4, :pswitch_data_214

    goto :goto_1b2

    :pswitch_1ad
    const/16 v1, 0xa

    :pswitch_1af
    move v7, v1

    goto :goto_1b2

    :pswitch_1b1
    move v7, v5

    :goto_1b2
    return v7

    nop

    :sswitch_data_1b4
    .sparse-switch
        -0x36833136 -> :sswitch_4c
        0xddf -> :sswitch_42
        0x1ad6f -> :sswitch_38
        0x2dddaf -> :sswitch_2e
        0x696d3fc -> :sswitch_24
        0x407706f5 -> :sswitch_1a
        0x5d7e0fda -> :sswitch_10
    .end sparse-switch

    :pswitch_data_1d2
    .packed-switch 0x0
        :pswitch_175
        :pswitch_13d
        :pswitch_fa
        :pswitch_b8
        :pswitch_74
        :pswitch_70
        :pswitch_6c
    .end packed-switch

    :pswitch_data_1e4
    .packed-switch 0x0
        :pswitch_b5
        :pswitch_b3
        :pswitch_b0
        :pswitch_ad
    .end packed-switch

    :pswitch_data_1f0
    .packed-switch 0x0
        :pswitch_f7
        :pswitch_f4
        :pswitch_f1
        :pswitch_ad
    .end packed-switch

    :pswitch_data_1fc
    .packed-switch 0x0
        :pswitch_13a
        :pswitch_139
        :pswitch_136
        :pswitch_133
    .end packed-switch

    :pswitch_data_208
    .packed-switch 0x0
        :pswitch_f7
        :pswitch_f4
        :pswitch_f1
        :pswitch_ad
    .end packed-switch

    :pswitch_data_214
    .packed-switch 0x0
        :pswitch_1b1
        :pswitch_1af
        :pswitch_1ad
        :pswitch_ad
    .end packed-switch
.end method
