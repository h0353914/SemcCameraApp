.class Lcom/sonyericsson/android/camera/device/CameraParameterConverter$StillHdr;
.super Ljava/lang/Object;
.source "CameraParameterConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraParameterConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StillHdr"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getApi2Value(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 7

    const/4 v0, 0x0

    .line 427
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 428
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, -0x1

    sparse-switch v2, :sswitch_data_42

    :goto_12
    move v0, v5

    goto :goto_33

    :sswitch_14
    const-string v0, "on-still-hdr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto :goto_12

    :cond_1d
    move v0, v3

    goto :goto_33

    :sswitch_1f
    const-string v0, "auto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_28

    goto :goto_12

    :cond_28
    move v0, v4

    goto :goto_33

    :sswitch_2a
    const-string v2, "off"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_33

    goto :goto_12

    :cond_33
    :goto_33
    packed-switch v0, :pswitch_data_50

    goto :goto_40

    .line 433
    :pswitch_37
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_40

    .line 436
    :pswitch_3c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_40
    :pswitch_40
    return-object v1

    nop

    :sswitch_data_42
    .sparse-switch
        0x1ad6f -> :sswitch_2a
        0x2dddaf -> :sswitch_1f
        0x5ebc3ae3 -> :sswitch_14
    .end sparse-switch

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_40
        :pswitch_3c
        :pswitch_37
    .end packed-switch
.end method
