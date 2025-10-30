.class Lcom/sonyericsson/android/camera/device/CameraParameterConverter$BokehMode;
.super Ljava/lang/Object;
.source "CameraParameterConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraParameterConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BokehMode"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getApi2Value(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 4

    .line 505
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xddf

    if-eq v0, v1, :cond_18

    const v1, 0x1ad6f

    if-eq v0, v1, :cond_e

    goto :goto_22

    :cond_e
    const-string v0, "off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    const/4 p1, 0x0

    goto :goto_23

    :cond_18
    const-string v0, "on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    const/4 p1, 0x1

    goto :goto_23

    :cond_22
    :goto_22
    const/4 p1, -0x1

    :goto_23
    packed-switch p1, :pswitch_data_38

    const/4 p0, 0x0

    goto :goto_36

    :pswitch_28
    const/4 p0, 0x2

    .line 510
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_36

    .line 507
    :pswitch_2e
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getDefaultLogicalMultiCameraMode(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_36
    return-object p0

    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_28
    .end packed-switch
.end method
