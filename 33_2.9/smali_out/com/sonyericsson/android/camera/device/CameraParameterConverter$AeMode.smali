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

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getApi2Value(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10

    .line 282
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "auto"

    const/4 v7, -0x1

    sparse-switch v0, :sswitch_data_a8

    goto/16 :goto_69

    :sswitch_14
    const-string v0, "display-auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    goto :goto_69

    :cond_1d
    const/4 v7, 0x7

    goto :goto_69

    :sswitch_1f
    const-string v0, "night_portrait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_28

    goto :goto_69

    :cond_28
    const/4 v7, 0x6

    goto :goto_69

    :sswitch_2a
    const-string v0, "red-eye"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_33

    goto :goto_69

    :cond_33
    const/4 v7, 0x5

    goto :goto_69

    :sswitch_35
    const-string v0, "torch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3e

    goto :goto_69

    :cond_3e
    move v7, v1

    goto :goto_69

    :sswitch_40
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_47

    goto :goto_69

    :cond_47
    move v7, v2

    goto :goto_69

    :sswitch_49
    const-string v0, "off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_52

    goto :goto_69

    :cond_52
    move v7, v3

    goto :goto_69

    :sswitch_54
    const-string v0, "on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5d

    goto :goto_69

    :cond_5d
    move v7, v5

    goto :goto_69

    :sswitch_5f
    const-string v0, "display-on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_68

    goto :goto_69

    :cond_68
    move v7, v4

    :goto_69
    packed-switch v7, :pswitch_data_ca

    goto :goto_a6

    .line 363
    :pswitch_6d
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_77

    move v1, v4

    :cond_77
    move v4, v1

    goto :goto_a6

    .line 344
    :pswitch_79
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a5

    goto :goto_a6

    .line 284
    :pswitch_83
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8d

    move v3, v4

    :cond_8d
    move v4, v3

    goto :goto_a6

    .line 304
    :pswitch_8f
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a5

    goto :goto_a6

    .line 324
    :pswitch_99
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a3

    move v2, v4

    :cond_a3
    move v4, v2

    goto :goto_a6

    :cond_a5
    :pswitch_a5
    move v4, v5

    :goto_a6
    return v4

    nop

    :sswitch_data_a8
    .sparse-switch
        -0x36833136 -> :sswitch_5f
        0xddf -> :sswitch_54
        0x1ad6f -> :sswitch_49
        0x2dddaf -> :sswitch_40
        0x696d3fc -> :sswitch_35
        0x407706f5 -> :sswitch_2a
        0x5890a3e2 -> :sswitch_1f
        0x5d7e0fda -> :sswitch_14
    .end sparse-switch

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_a5
        :pswitch_99
        :pswitch_8f
        :pswitch_83
        :pswitch_79
        :pswitch_6d
        :pswitch_99
        :pswitch_a5
    .end packed-switch
.end method
