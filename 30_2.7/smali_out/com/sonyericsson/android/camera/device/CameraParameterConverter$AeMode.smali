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

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getApi2Value(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    .line 280
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    sparse-switch v0, :sswitch_data_d4

    goto :goto_5e

    :sswitch_e
    const-string v0, "display-auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5e

    const/4 p1, 0x7

    goto :goto_5f

    :sswitch_18
    const-string v0, "night_portrait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5e

    move p1, v1

    goto :goto_5f

    :sswitch_22
    const-string v0, "red-eye"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5e

    const/4 p1, 0x5

    goto :goto_5f

    :sswitch_2c
    const-string v0, "torch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5e

    move p1, v2

    goto :goto_5f

    :sswitch_36
    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5e

    move p1, v6

    goto :goto_5f

    :sswitch_40
    const-string v0, "off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5e

    move p1, v4

    goto :goto_5f

    :sswitch_4a
    const-string v0, "on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5e

    move p1, v3

    goto :goto_5f

    :sswitch_54
    const-string v0, "display-on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5e

    const/4 p1, 0x6

    goto :goto_5f

    :cond_5e
    :goto_5e
    move p1, v5

    :goto_5f
    const v0, 0x2dddaf

    packed-switch p1, :pswitch_data_f6

    move v4, v6

    goto/16 :goto_d3

    .line 361
    :pswitch_68
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    if-eq p1, v0, :cond_6f

    goto :goto_78

    :cond_6f
    const-string p1, "auto"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_78

    move v5, v6

    :cond_78
    :goto_78
    if-eqz v5, :cond_7d

    move v4, v6

    goto/16 :goto_d3

    :cond_7d
    move v4, v2

    goto/16 :goto_d3

    .line 342
    :pswitch_80
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    if-eq p1, v0, :cond_87

    goto :goto_90

    :cond_87
    const-string p1, "auto"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_90

    move v5, v6

    :cond_90
    :goto_90
    if-eqz v5, :cond_d3

    move v4, v6

    goto :goto_d3

    .line 322
    :pswitch_94
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    if-eq p1, v0, :cond_9b

    goto :goto_a4

    :cond_9b
    const-string p1, "auto"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a4

    move v5, v6

    :cond_a4
    :goto_a4
    if-eqz v5, :cond_a8

    move v4, v6

    goto :goto_d3

    :cond_a8
    move v4, v1

    goto :goto_d3

    .line 302
    :pswitch_aa
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    if-eq p1, v0, :cond_b1

    goto :goto_ba

    :cond_b1
    const-string p1, "auto"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_ba

    move v5, v6

    :cond_ba
    :goto_ba
    if-eqz v5, :cond_d3

    move v4, v6

    goto :goto_d3

    .line 282
    :pswitch_be
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    if-eq p1, v0, :cond_c5

    goto :goto_ce

    :cond_c5
    const-string p1, "auto"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_ce

    move v5, v6

    :cond_ce
    :goto_ce
    if-eqz v5, :cond_d2

    move v4, v6

    goto :goto_d3

    :cond_d2
    move v4, v3

    :cond_d3
    :goto_d3
    :pswitch_d3
    return v4

    :sswitch_data_d4
    .sparse-switch
        -0x36833136 -> :sswitch_54
        0xddf -> :sswitch_4a
        0x1ad6f -> :sswitch_40
        0x2dddaf -> :sswitch_36
        0x696d3fc -> :sswitch_2c
        0x407706f5 -> :sswitch_22
        0x5890a3e2 -> :sswitch_18
        0x5d7e0fda -> :sswitch_e
    .end sparse-switch

    :pswitch_data_f6
    .packed-switch 0x0
        :pswitch_be
        :pswitch_aa
        :pswitch_94
        :pswitch_94
        :pswitch_80
        :pswitch_68
        :pswitch_d3
        :pswitch_d3
    .end packed-switch
.end method
