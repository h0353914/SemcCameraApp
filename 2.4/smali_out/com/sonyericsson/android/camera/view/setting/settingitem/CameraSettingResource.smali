.class Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource;
.super Ljava/lang/Object;
.source "CameraSettingResource.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCommonTitleResId()I
    .registers 1

    const v0, 0x7f0e0306

    return v0
.end method

.method static getDescriptionResId(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)I
    .registers 2

    .line 53
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_3c

    const/4 p0, -0x1

    return p0

    :pswitch_d
    const p0, 0x7f0e0167

    return p0

    :pswitch_11
    const p0, 0x7f0e00ca

    return p0

    :pswitch_15
    const p0, 0x7f0e0290

    return p0

    :pswitch_19
    const p0, 0x7f0e0365

    return p0

    :pswitch_1d
    const p0, 0x7f0e01d1

    return p0

    .line 61
    :pswitch_21
    invoke-static {}, Lcom/sonyericsson/android/camera/util/SettingUtil;->isSideBarSupported()Z

    move-result p0

    if-eqz p0, :cond_2b

    const p0, 0x7f0e031a

    return p0

    :cond_2b
    const p0, 0x7f0e031b

    return p0

    :pswitch_2f
    const p0, 0x7f0e0369

    return p0

    :pswitch_33
    const p0, 0x7f0e0239

    return p0

    :pswitch_37
    const p0, 0x7f0e028d

    return p0

    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
    .end packed-switch
.end method

.method static getImageResId(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)I
    .registers 2

    .line 140
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_24

    const/16 v0, 0x9

    if-eq p0, v0, :cond_20

    packed-switch p0, :pswitch_data_28

    const/4 p0, -0x1

    return p0

    :pswitch_14
    const p0, 0x7f0802aa

    return p0

    :pswitch_18
    const p0, 0x7f0802f7

    return p0

    :pswitch_1c
    const p0, 0x7f080250

    return p0

    :cond_20
    const p0, 0x7f080243

    return p0

    :cond_24
    const p0, 0x7f08026f

    return p0

    :pswitch_data_28
    .packed-switch 0x2
        :pswitch_1c
        :pswitch_18
        :pswitch_14
    .end packed-switch
.end method

.method static getInformationResId(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)I
    .registers 4

    .line 118
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x3

    const v1, 0x7f0e02c0

    if-eq p1, v0, :cond_1a

    packed-switch p1, :pswitch_data_1c

    goto :goto_17

    .line 124
    :pswitch_12
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, p1, :cond_17

    return v1

    :cond_17
    :goto_17
    const/4 p0, -0x1

    return p0

    :pswitch_19
    return v1

    :cond_1a
    return v1

    nop

    :pswitch_data_1c
    .packed-switch 0xa
        :pswitch_19
        :pswitch_12
    .end packed-switch
.end method

.method static getModeTitleResId(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)I
    .registers 2

    .line 22
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_32

    const/4 p0, -0x1

    return p0

    :pswitch_d
    const p0, 0x7f0e0310

    return p0

    :pswitch_11
    const p0, 0x7f0e030f

    return p0

    :pswitch_15
    const p0, 0x7f0e030d

    return p0

    :pswitch_19
    const p0, 0x7f0e0307

    return p0

    :pswitch_1d
    const p0, 0x7f0e030b

    return p0

    :pswitch_21
    const p0, 0x7f0e0309

    return p0

    :pswitch_25
    const p0, 0x7f0e030e

    return p0

    :pswitch_29
    const p0, 0x7f0e0308

    return p0

    :pswitch_2d
    const p0, 0x7f0e030c

    return p0

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
    .end packed-switch
.end method

.method static getSubDescriptionResId(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)I
    .registers 3

    .line 84
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_29

    const/4 v0, 0x7

    if-eq p0, v0, :cond_f

    goto :goto_43

    .line 99
    :cond_f
    instance-of p0, p1, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;

    if-eqz p0, :cond_43

    .line 100
    sget-object p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$PredictiveLaunch:[I

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_46

    goto :goto_43

    :pswitch_21
    const p0, 0x7f0e0298

    return p0

    :pswitch_25
    const p0, 0x7f0e0299

    return p0

    .line 86
    :cond_29
    instance-of p0, p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    if-eqz p0, :cond_43

    .line 87
    sget-object p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoCodec:[I

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_4e

    goto :goto_43

    :pswitch_3b
    const p0, 0x7f0e01d3

    return p0

    :pswitch_3f
    const p0, 0x7f0e01d2

    return p0

    :cond_43
    :goto_43
    const/4 p0, -0x1

    return p0

    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_25
        :pswitch_21
    .end packed-switch

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_3b
    .end packed-switch
.end method

.method static isExclusiveInformationId(I)Z
    .registers 2

    const v0, 0x7f0e02c0

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method
