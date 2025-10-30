.class Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SlowMotionMode;
.super Ljava/lang/Object;
.source "CameraParameterConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraParameterConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SlowMotionMode"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getApi2Value(Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;)Ljava/lang/Integer;
    .registers 2

    .line 580
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_1e

    const/4 p0, 0x0

    .line 589
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_1c

    :pswitch_11
    const/4 p0, 0x2

    .line 586
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_1c

    :pswitch_17
    const/4 p0, 0x1

    .line 582
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_1c
    return-object p0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_17
        :pswitch_11
    .end packed-switch
.end method
