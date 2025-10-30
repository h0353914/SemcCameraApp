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

    move-result v2

    const v3, 0x1ad6f

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_2f

    const v3, 0x2dddaf

    if-eq v2, v3, :cond_25

    const v3, 0x5ebc3ae3

    if-eq v2, v3, :cond_1b

    goto :goto_39

    :cond_1b
    const-string v2, "on-still-hdr"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_39

    move p0, v5

    goto :goto_3a

    :cond_25
    const-string v2, "auto"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_39

    move p0, v4

    goto :goto_3a

    :cond_2f
    const-string v2, "off"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_39

    move p0, v0

    goto :goto_3a

    :cond_39
    :goto_39
    const/4 p0, -0x1

    :goto_3a
    packed-switch p0, :pswitch_data_4e

    goto :goto_4c

    .line 436
    :pswitch_3e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_4c

    .line 433
    :pswitch_43
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_4c

    .line 430
    :pswitch_48
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_4c
    return-object v1

    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_48
        :pswitch_43
        :pswitch_3e
    .end packed-switch
.end method
