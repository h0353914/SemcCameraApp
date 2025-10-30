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

    .line 85
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    const/4 p0, -0x1

    return p0

    :cond_d
    const p0, 0x7f0f0265

    return p0
.end method

.method static getCommonTitleResId()I
    .registers 1

    const v0, 0x7f0f0353

    return v0
.end method

.method static getDescriptionResId(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)I
    .registers 2

    .line 59
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_34

    const/4 p0, -0x1

    return p0

    :pswitch_d
    const p0, 0x7f0f00d0

    return p0

    :pswitch_11
    const p0, 0x7f0f02d4

    return p0

    :pswitch_15
    const p0, 0x7f0f03b6

    return p0

    :pswitch_19
    const p0, 0x7f0f01fa

    return p0

    .line 65
    :pswitch_1d
    invoke-static {}, Lcom/sonyericsson/android/camera/util/SettingUtil;->isSideBarSupported()Z

    move-result p0

    if-eqz p0, :cond_27

    const p0, 0x7f0f036a

    return p0

    :cond_27
    const p0, 0x7f0f036b

    return p0

    :pswitch_2b
    const p0, 0x7f0f0266

    return p0

    :pswitch_2f
    const p0, 0x7f0f02d1

    return p0

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2b
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
    .end packed-switch
.end method

.method static getImageResId(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)I
    .registers 2

    .line 149
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_18

    packed-switch p0, :pswitch_data_1c

    const/4 p0, -0x1

    return p0

    :pswitch_10
    const p0, 0x7f0802a0

    return p0

    :pswitch_14
    const p0, 0x7f080243

    return p0

    :cond_18
    const p0, 0x7f080264

    return p0

    :pswitch_data_1c
    .packed-switch 0x2
        :pswitch_14
        :pswitch_10
    .end packed-switch
.end method

.method static getInformationResId(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)I
    .registers 3

    .line 129
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const v0, 0x7f0f0309

    packed-switch p1, :pswitch_data_18

    goto :goto_15

    .line 133
    :pswitch_f
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, p1, :cond_15

    return v0

    :pswitch_14
    return v0

    :cond_15
    :goto_15
    const/4 p0, -0x1

    return p0

    nop

    :pswitch_data_18
    .packed-switch 0x8
        :pswitch_14
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

    packed-switch v0, :pswitch_data_42

    const/4 p0, -0x1

    return p0

    :pswitch_d
    const p0, 0x7f0f0359

    return p0

    :pswitch_11
    const p0, 0x7f0f035b

    return p0

    :pswitch_15
    const p0, 0x7f0f0354

    return p0

    :pswitch_19
    const p0, 0x7f0f0358

    return p0

    :pswitch_1d
    const p0, 0x7f0f0356

    return p0

    :pswitch_21
    const p0, 0x7f0f035d

    return p0

    :pswitch_25
    const p0, 0x7f0f0355

    return p0

    .line 25
    :pswitch_29
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getZoomStep()I

    move-result p0

    const/16 v0, 0x1c

    if-ge p0, v0, :cond_35

    const p0, 0x7f0f035e

    return p0

    :cond_35
    const/16 v0, 0x43

    if-lt p0, v0, :cond_3d

    const p0, 0x7f0f035c

    return p0

    :cond_3d
    const p0, 0x7f0f035a

    return p0

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method static getSubDescriptionResId(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)I
    .registers 3

    .line 95
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_29

    const/4 v0, 0x6

    if-eq p0, v0, :cond_f

    goto :goto_43

    .line 110
    :cond_f
    instance-of p0, p1, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;

    if-eqz p0, :cond_43

    .line 111
    sget-object p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$PredictiveLaunch:[I

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_46

    goto :goto_43

    :pswitch_21
    const p0, 0x7f0f02dc

    return p0

    :pswitch_25
    const p0, 0x7f0f02dd

    return p0

    .line 97
    :cond_29
    instance-of p0, p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    if-eqz p0, :cond_43

    .line 98
    sget-object p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoCodec:[I

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_4e

    goto :goto_43

    :pswitch_3b
    const p0, 0x7f0f01fc

    return p0

    :pswitch_3f
    const p0, 0x7f0f01fb

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

    const v0, 0x7f0f0309

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method
