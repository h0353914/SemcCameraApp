.class Lcom/sonyericsson/android/camera/device/CameraParameterConverter$VideoSuperResolutionZoom;
.super Ljava/lang/Object;
.source "CameraParameterConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraParameterConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VideoSuperResolutionZoom"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getApi2Value(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 5

    .line 575
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x1ad6f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1b

    const v1, 0x2dddaf

    if-eq v0, v1, :cond_11

    goto :goto_25

    :cond_11
    const-string v0, "auto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_25

    move p0, v2

    goto :goto_26

    :cond_1b
    const-string v0, "off"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_25

    move p0, v3

    goto :goto_26

    :cond_25
    :goto_25
    const/4 p0, -0x1

    :goto_26
    packed-switch p0, :pswitch_data_36

    const/4 p0, 0x0

    goto :goto_34

    .line 581
    :pswitch_2b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_34

    .line 577
    :pswitch_30
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_34
    return-object p0

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_30
        :pswitch_2b
    .end packed-switch
.end method
