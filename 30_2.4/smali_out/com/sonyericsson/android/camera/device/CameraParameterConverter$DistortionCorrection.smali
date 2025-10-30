.class Lcom/sonyericsson/android/camera/device/CameraParameterConverter$DistortionCorrection;
.super Ljava/lang/Object;
.source "CameraParameterConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraParameterConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DistortionCorrection"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getApi2Value(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 5

    .line 448
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xddf

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1a

    const v1, 0x1ad6f

    if-eq v0, v1, :cond_10

    goto :goto_24

    :cond_10
    const-string v0, "off"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_24

    move p0, v3

    goto :goto_25

    :cond_1a
    const-string v0, "on"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_24

    move p0, v2

    goto :goto_25

    :cond_24
    :goto_24
    const/4 p0, -0x1

    :goto_25
    packed-switch p0, :pswitch_data_34

    const/4 p0, 0x0

    goto :goto_33

    .line 454
    :pswitch_2a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_33

    .line 450
    :pswitch_2f
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_33
    return-object p0

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2a
    .end packed-switch
.end method
