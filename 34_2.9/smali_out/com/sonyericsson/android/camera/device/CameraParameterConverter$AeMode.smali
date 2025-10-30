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

    const/4 v4, 0x1

    const-string v5, "auto"

    const/4 v6, 0x0

    const/4 v7, -0x1

    sparse-switch v0, :sswitch_data_a4

    goto/16 :goto_6a

    :sswitch_14
    const-string v0, "display-auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    goto :goto_6a

    :cond_1d
    const/4 v7, 0x7

    goto :goto_6a

    :sswitch_1f
    const-string v0, "night_portrait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_28

    goto :goto_6a

    :cond_28
    const/4 v7, 0x6

    goto :goto_6a

    :sswitch_2a
    const-string v0, "red-eye"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_33

    goto :goto_6a

    :cond_33
    const/4 v7, 0x5

    goto :goto_6a

    :sswitch_35
    const-string/jumbo v0, "torch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3f

    goto :goto_6a

    :cond_3f
    move v7, v1

    goto :goto_6a

    :sswitch_41
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_48

    goto :goto_6a

    :cond_48
    move v7, v2

    goto :goto_6a

    :sswitch_4a
    const-string v0, "off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_53

    goto :goto_6a

    :cond_53
    move v7, v3

    goto :goto_6a

    :sswitch_55
    const-string v0, "on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5e

    goto :goto_6a

    :cond_5e
    move v7, v4

    goto :goto_6a

    :sswitch_60
    const-string v0, "display-on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_69

    goto :goto_6a

    :cond_69
    move v7, v6

    :goto_6a
    packed-switch v7, :pswitch_data_c6

    move v4, v6

    goto :goto_a2

    .line 363
    :pswitch_6f
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_79

    move v1, v6

    :cond_79
    move v4, v1

    goto :goto_a2

    .line 344
    :pswitch_7b
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_a2

    .line 284
    :pswitch_83
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8d

    move v3, v6

    :cond_8d
    move v4, v3

    goto :goto_a2

    .line 304
    :pswitch_8f
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_a2

    .line 324
    :pswitch_97
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a1

    move v2, v6

    :cond_a1
    move v4, v2

    :goto_a2
    :pswitch_a2
    return v4

    nop

    :sswitch_data_a4
    .sparse-switch
        -0x36833136 -> :sswitch_60
        0xddf -> :sswitch_55
        0x1ad6f -> :sswitch_4a
        0x2dddaf -> :sswitch_41
        0x696d3fc -> :sswitch_35
        0x407706f5 -> :sswitch_2a
        0x5890a3e2 -> :sswitch_1f
        0x5d7e0fda -> :sswitch_14
    .end sparse-switch

    :pswitch_data_c6
    .packed-switch 0x0
        :pswitch_a2
        :pswitch_97
        :pswitch_8f
        :pswitch_83
        :pswitch_7b
        :pswitch_6f
        :pswitch_97
        :pswitch_a2
    .end packed-switch
.end method
