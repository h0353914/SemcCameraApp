.class Lcom/sonyericsson/android/camera/device/CameraParameterConverter$VideoStabilizerMode;
.super Ljava/lang/Object;
.source "CameraParameterConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraParameterConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VideoStabilizerMode"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getApi2Value(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 7

    const/4 v0, 0x0

    .line 445
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-nez p0, :cond_8

    return-object v1

    :cond_8
    const/4 v2, -0x1

    .line 449
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0xddf

    const/4 v5, 0x1

    if-eq v3, v4, :cond_22

    const v4, 0x1ad6f

    if-eq v3, v4, :cond_18

    goto :goto_2b

    :cond_18
    const-string v3, "off"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2b

    move v2, v5

    goto :goto_2b

    :cond_22
    const-string v3, "on"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2b

    move v2, v0

    :cond_2b
    :goto_2b
    packed-switch v2, :pswitch_data_3a

    goto :goto_38

    .line 454
    :pswitch_2f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_38

    .line 451
    :pswitch_34
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_38
    return-object v1

    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_34
        :pswitch_2f
    .end packed-switch
.end method
