.class Lcom/sonyericsson/android/camera/device/CameraParameterConverter$VideoHdrMode;
.super Ljava/lang/Object;
.source "CameraParameterConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraParameterConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VideoHdrMode"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getApi2Value(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 6

    const/4 v0, 0x0

    .line 428
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 429
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x6f6a33ca

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1f

    const v3, 0x1ad6f

    if-eq v2, v3, :cond_15

    goto :goto_29

    :cond_15
    const-string v2, "off"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_29

    move p0, v0

    goto :goto_2a

    :cond_1f
    const-string v2, "on-video-hdr"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_29

    move p0, v4

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 p0, -0x1

    :goto_2a
    packed-switch p0, :pswitch_data_38

    goto :goto_37

    .line 434
    :pswitch_2e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_37

    .line 431
    :pswitch_33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_37
    return-object v1

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_33
        :pswitch_2e
    .end packed-switch
.end method
