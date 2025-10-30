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

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getApi2Value(Ljava/lang/String;Ljava/lang/String;)I
    .registers 16

    .line 279
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, -0x1

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    sparse-switch v0, :sswitch_data_1d0

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

    move p1, v1

    goto :goto_57

    :sswitch_24
    const-string v0, "torch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_56

    move p1, v5

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

    move p1, v6

    goto :goto_57

    :sswitch_4c
    const-string v0, "display-on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_56

    move p1, v2

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

    packed-switch p1, :pswitch_data_1ee

    goto/16 :goto_1ce

    :pswitch_6c
    const/16 v7, 0x10

    goto/16 :goto_1ce

    :pswitch_70
    const/16 v7, 0xf

    goto/16 :goto_1ce

    .line 359
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

    move v4, v6

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

    move v4, v5

    :cond_a8
    :goto_a8
    packed-switch v4, :pswitch_data_200

    goto/16 :goto_1ce

    :pswitch_ad
    move v7, v9

    goto/16 :goto_1ce

    :pswitch_b0
    const/16 v1, 0xc

    move v7, v1

    goto/16 :goto_1ce

    :pswitch_b5
    const/16 v1, 0x8

    move v7, v1

    goto/16 :goto_1ce

    :pswitch_ba
    move v7, v1

    goto/16 :goto_1ce

    .line 340
    :pswitch_bd
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    if-eq p1, v13, :cond_e8

    if-eq p1, v12, :cond_de

    if-eq p1, v11, :cond_d4

    if-eq p1, v10, :cond_ca

    goto :goto_f1

    :cond_ca
    const-string p1, "shutter-prio"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f1

    move v4, v6

    goto :goto_f1

    :cond_d4
    const-string p1, "iso-prio"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f1

    move v4, v8

    goto :goto_f1

    :cond_de
    const-string p1, "auto"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f1

    move v4, v7

    goto :goto_f1

    :cond_e8
    const-string p1, "semi-auto"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f1

    move v4, v5

    :cond_f1
    :goto_f1
    packed-switch v4, :pswitch_data_20c

    goto/16 :goto_1ce

    :pswitch_f6
    move v7, v9

    goto/16 :goto_1ce

    :pswitch_f9
    move v7, v0

    goto/16 :goto_1ce

    :pswitch_fc
    move v7, v3

    goto/16 :goto_1ce

    :pswitch_ff
    move v7, v8

    goto/16 :goto_1ce

    .line 320
    :pswitch_102
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    if-eq p1, v13, :cond_12d

    if-eq p1, v12, :cond_123

    if-eq p1, v11, :cond_119

    if-eq p1, v10, :cond_10f

    goto :goto_136

    :cond_10f
    const-string p1, "shutter-prio"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_136

    move v4, v6

    goto :goto_136

    :cond_119
    const-string p1, "iso-prio"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_136

    move v4, v8

    goto :goto_136

    :cond_123
    const-string p1, "auto"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_136

    move v4, v7

    goto :goto_136

    :cond_12d
    const-string p1, "semi-auto"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_136

    move v4, v5

    :cond_136
    :goto_136
    packed-switch v4, :pswitch_data_218

    goto/16 :goto_1ce

    :pswitch_13b
    const/16 v5, 0xe

    move v7, v5

    goto/16 :goto_1ce

    :pswitch_140
    const/16 v5, 0xb

    move v7, v5

    goto/16 :goto_1ce

    :pswitch_145
    const/4 v5, 0x7

    move v7, v5

    goto/16 :goto_1ce

    :pswitch_149
    move v7, v5

    goto/16 :goto_1ce

    .line 301
    :pswitch_14c
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    if-eq p1, v13, :cond_177

    if-eq p1, v12, :cond_16d

    if-eq p1, v11, :cond_163

    if-eq p1, v10, :cond_159

    goto :goto_180

    :cond_159
    const-string p1, "shutter-prio"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_180

    move v4, v6

    goto :goto_180

    :cond_163
    const-string p1, "iso-prio"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_180

    move v4, v8

    goto :goto_180

    :cond_16d
    const-string p1, "auto"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_180

    move v4, v7

    goto :goto_180

    :cond_177
    const-string p1, "semi-auto"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_180

    move v4, v5

    :cond_180
    :goto_180
    packed-switch v4, :pswitch_data_224

    goto/16 :goto_1ce

    :pswitch_185
    move v7, v9

    goto :goto_1ce

    :pswitch_187
    move v7, v0

    goto :goto_1ce

    :pswitch_189
    move v7, v3

    goto :goto_1ce

    :pswitch_18b
    move v7, v8

    goto :goto_1ce

    .line 281
    :pswitch_18d
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    if-eq p1, v13, :cond_1b8

    if-eq p1, v12, :cond_1ae

    if-eq p1, v11, :cond_1a4

    if-eq p1, v10, :cond_19a

    goto :goto_1c1

    :cond_19a
    const-string p1, "shutter-prio"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c1

    move v4, v6

    goto :goto_1c1

    :cond_1a4
    const-string p1, "iso-prio"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c1

    move v4, v8

    goto :goto_1c1

    :cond_1ae
    const-string p1, "auto"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c1

    move v4, v7

    goto :goto_1c1

    :cond_1b8
    const-string p1, "semi-auto"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c1

    move v4, v5

    :cond_1c1
    :goto_1c1
    packed-switch v4, :pswitch_data_230

    goto :goto_1ce

    :pswitch_1c5
    move v7, v9

    goto :goto_1ce

    :pswitch_1c7
    const/16 v2, 0xa

    move v7, v2

    goto :goto_1ce

    :pswitch_1cb
    move v7, v2

    goto :goto_1ce

    :pswitch_1cd
    move v7, v6

    :goto_1ce
    return v7

    nop

    :sswitch_data_1d0
    .sparse-switch
        -0x36833136 -> :sswitch_4c
        0xddf -> :sswitch_42
        0x1ad6f -> :sswitch_38
        0x2dddaf -> :sswitch_2e
        0x696d3fc -> :sswitch_24
        0x407706f5 -> :sswitch_1a
        0x5d7e0fda -> :sswitch_10
    .end sparse-switch

    :pswitch_data_1ee
    .packed-switch 0x0
        :pswitch_18d
        :pswitch_14c
        :pswitch_102
        :pswitch_bd
        :pswitch_74
        :pswitch_70
        :pswitch_6c
    .end packed-switch

    :pswitch_data_200
    .packed-switch 0x0
        :pswitch_ba
        :pswitch_b5
        :pswitch_b0
        :pswitch_ad
    .end packed-switch

    :pswitch_data_20c
    .packed-switch 0x0
        :pswitch_ff
        :pswitch_fc
        :pswitch_f9
        :pswitch_f6
    .end packed-switch

    :pswitch_data_218
    .packed-switch 0x0
        :pswitch_149
        :pswitch_145
        :pswitch_140
        :pswitch_13b
    .end packed-switch

    :pswitch_data_224
    .packed-switch 0x0
        :pswitch_18b
        :pswitch_189
        :pswitch_187
        :pswitch_185
    .end packed-switch

    :pswitch_data_230
    .packed-switch 0x0
        :pswitch_1cd
        :pswitch_1cb
        :pswitch_1c7
        :pswitch_1c5
    .end packed-switch
.end method
