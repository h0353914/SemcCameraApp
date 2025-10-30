.class Lcom/sonyericsson/android/camera/device/CameraParameterConverter$VideoStabilizationMode;
.super Ljava/lang/Object;
.source "CameraParameterConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraParameterConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VideoStabilizationMode"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getVanillaValue(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 5

    .line 560
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xddf

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_29

    const v1, 0x1ad6f

    if-eq v0, v1, :cond_1f

    const v1, 0x603e49ce

    if-eq v0, v1, :cond_15

    goto :goto_33

    :cond_15
    const-string v0, "intelligent_active"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_33

    const/4 p0, 0x2

    goto :goto_34

    :cond_1f
    const-string v0, "off"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_33

    move p0, v2

    goto :goto_34

    :cond_29
    const-string v0, "on"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_33

    move p0, v3

    goto :goto_34

    :cond_33
    :goto_33
    const/4 p0, -0x1

    :goto_34
    packed-switch p0, :pswitch_data_48

    const/4 p0, 0x0

    goto :goto_47

    .line 568
    :pswitch_39
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_47

    .line 565
    :pswitch_3e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_47

    .line 562
    :pswitch_43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_47
    return-object p0

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3e
        :pswitch_39
    .end packed-switch
.end method

.method static getVendorValue(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 6

    .line 539
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xddf

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v1, :cond_2a

    const v1, 0x1ad6f

    if-eq v0, v1, :cond_20

    const v1, 0x603e49ce

    if-eq v0, v1, :cond_16

    goto :goto_34

    :cond_16
    const-string v0, "intelligent_active"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    move p0, v2

    goto :goto_35

    :cond_20
    const-string v0, "off"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    move p0, v4

    goto :goto_35

    :cond_2a
    const-string v0, "on"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    move p0, v3

    goto :goto_35

    :cond_34
    :goto_34
    const/4 p0, -0x1

    :goto_35
    packed-switch p0, :pswitch_data_4a

    const/4 p0, 0x0

    goto :goto_48

    .line 549
    :pswitch_3a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_48

    .line 545
    :pswitch_3f
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_48

    .line 541
    :pswitch_44
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_48
    return-object p0

    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_44
        :pswitch_3f
        :pswitch_3a
    .end packed-switch
.end method
