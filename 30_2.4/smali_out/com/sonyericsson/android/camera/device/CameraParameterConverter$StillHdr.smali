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

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getApi2Value(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 5

    .line 407
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x1ad6f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2a

    const v1, 0x2dddaf

    if-eq v0, v1, :cond_20

    const v1, 0x5ebc3ae3

    if-eq v0, v1, :cond_16

    goto :goto_34

    :cond_16
    const-string v0, "on-still-hdr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    move p0, v2

    goto :goto_35

    :cond_20
    const-string v0, "auto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    const/4 p0, 0x2

    goto :goto_35

    :cond_2a
    const-string v0, "off"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    move p0, v3

    goto :goto_35

    :cond_34
    :goto_34
    const/4 p0, -0x1

    :goto_35
    packed-switch p0, :pswitch_data_46

    goto :goto_43

    .line 412
    :pswitch_39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_44

    .line 409
    :pswitch_3e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_44

    :goto_43
    :pswitch_43
    const/4 p0, 0x0

    :goto_44
    return-object p0

    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_39
        :pswitch_43
    .end packed-switch
.end method
