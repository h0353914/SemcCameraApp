.class Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource;
.super Ljava/lang/Object;
.source "CameraSettingResource.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAddedDescriptionResId(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)I
    .registers 2

    .line 92
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    const/4 p0, -0x1

    return p0

    :cond_d
    const p0, 0x7f0f02af

    return p0
.end method

.method static getCommonTitleResId()I
    .registers 1

    const v0, 0x7f0f03a5

    return v0
.end method

.method static getDescriptionResId(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)I
    .registers 2

    .line 56
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_48

    const/4 p0, -0x1

    return p0

    :pswitch_d
    const p0, 0x7f0f04b0

    return p0

    :pswitch_11
    const p0, 0x7f0f0466

    return p0

    :pswitch_15
    const p0, 0x7f0f00df

    return p0

    :pswitch_19
    const p0, 0x7f0f0320

    return p0

    :pswitch_1d
    const p0, 0x7f0f0456

    return p0

    :pswitch_21
    const p0, 0x7f0f0220

    return p0

    .line 68
    :pswitch_25
    invoke-static {}, Lcom/sonyericsson/android/camera/util/SettingUtil;->isSideBarSupported()Z

    move-result p0

    if-eqz p0, :cond_2f

    const p0, 0x7f0f040a

    return p0

    :cond_2f
    const p0, 0x7f0f040b

    return p0

    :pswitch_33
    const p0, 0x7f0f046b

    return p0

    :pswitch_37
    const p0, 0x7f0f0148

    return p0

    :pswitch_3b
    const p0, 0x7f0f00b3

    return p0

    :pswitch_3f
    const p0, 0x7f0f02b0

    return p0

    :pswitch_43
    const p0, 0x7f0f031d

    return p0

    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_43
        :pswitch_3f
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_25
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

    .line 156
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_28

    const/16 v0, 0x9

    if-eq p0, v0, :cond_24

    const/16 v0, 0xc

    if-eq p0, v0, :cond_20

    packed-switch p0, :pswitch_data_2c

    const/4 p0, -0x1

    return p0

    :pswitch_18
    const p0, 0x7f0802b6

    return p0

    :pswitch_1c
    const p0, 0x7f080232

    return p0

    :cond_20
    const p0, 0x7f08031d

    return p0

    :cond_24
    const p0, 0x7f080279

    return p0

    :cond_28
    const p0, 0x7f080253

    return p0

    :pswitch_data_2c
    .packed-switch 0x4
        :pswitch_1c
        :pswitch_1c
        :pswitch_18
    .end packed-switch
.end method

.method static getInformationResId(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)I
    .registers 3

    .line 136
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const v0, 0x7f0f035a

    packed-switch p1, :pswitch_data_1c

    goto :goto_19

    .line 140
    :pswitch_f
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, p1, :cond_17

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, p1, :cond_19

    :cond_17
    return v0

    :pswitch_18
    return v0

    :cond_19
    :goto_19
    const/4 p0, -0x1

    return p0

    nop

    :pswitch_data_1c
    .packed-switch 0xd
        :pswitch_18
        :pswitch_f
    .end packed-switch
.end method

.method static getModeTitleResId(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)I
    .registers 3

    .line 23
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3e

    const/4 p0, -0x1

    return p0

    :pswitch_d
    const p0, 0x7f0f03ae

    return p0

    :pswitch_11
    const p0, 0x7f0f03a6

    return p0

    :pswitch_15
    const p0, 0x7f0f03aa

    return p0

    :pswitch_19
    const p0, 0x7f0f03a8

    return p0

    :pswitch_1d
    const p0, 0x7f0f03b1

    return p0

    :pswitch_21
    const p0, 0x7f0f03a7

    return p0

    .line 25
    :pswitch_25
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getZoomStep()I

    move-result p0

    const/16 v0, 0xa8

    if-ge p0, v0, :cond_31

    const p0, 0x7f0f03b2

    return p0

    :cond_31
    const/16 v0, 0x198

    if-lt p0, v0, :cond_39

    const p0, 0x7f0f03af

    return p0

    :cond_39
    const p0, 0x7f0f03ad

    return p0

    nop

    :pswitch_data_3e
    .packed-switch 0x1
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

    .line 102
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x9

    if-eq p0, v0, :cond_10

    goto :goto_44

    .line 117
    :cond_10
    instance-of p0, p1, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;

    if-eqz p0, :cond_44

    .line 118
    sget-object p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$PredictiveLaunch:[I

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_46

    goto :goto_44

    :pswitch_22
    const p0, 0x7f0f0328

    return p0

    :pswitch_26
    const p0, 0x7f0f0329

    return p0

    .line 104
    :cond_2a
    instance-of p0, p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    if-eqz p0, :cond_44

    .line 105
    sget-object p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoCodec:[I

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_4e

    goto :goto_44

    :pswitch_3c
    const p0, 0x7f0f0222

    return p0

    :pswitch_40
    const p0, 0x7f0f0221

    return p0

    :cond_44
    :goto_44
    const/4 p0, -0x1

    return p0

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_26
        :pswitch_22
    .end packed-switch

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_40
        :pswitch_3c
    .end packed-switch
.end method

.method static isExclusiveInformationId(I)Z
    .registers 2

    const v0, 0x7f0f035a

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method
