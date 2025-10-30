.class Lcom/sonyericsson/android/camera/device/CameraParameterConverter$DisPlayFlashMode;
.super Ljava/lang/Object;
.source "CameraParameterConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraParameterConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DisPlayFlashMode"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getApi2Value(Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x0

    .line 410
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 411
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x36833136

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1f

    const v0, 0x5d7e0fda

    if-eq v2, v0, :cond_15

    goto :goto_28

    :cond_15
    const-string v0, "display-auto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_28

    move v0, v4

    goto :goto_29

    :cond_1f
    const-string v2, "display-on"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_28

    goto :goto_29

    :cond_28
    :goto_28
    const/4 v0, -0x1

    :goto_29
    packed-switch v0, :pswitch_data_3c

    goto :goto_37

    :pswitch_2d
    const/4 p0, 0x2

    .line 416
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_37

    .line 413
    :pswitch_33
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 421
    :goto_37
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_33
        :pswitch_2d
    .end packed-switch
.end method
