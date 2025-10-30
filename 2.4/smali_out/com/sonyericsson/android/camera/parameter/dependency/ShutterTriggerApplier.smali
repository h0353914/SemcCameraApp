.class public Lcom/sonyericsson/android/camera/parameter/dependency/ShutterTriggerApplier;
.super Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
.source "ShutterTriggerApplier.java"


# instance fields
.field private final mValue:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;)V
    .registers 2

    .line 20
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/sonyericsson/android/camera/parameter/dependency/ShutterTriggerApplier;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    return-void
.end method

.method private applyGestureShutterOff(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .registers 4

    .line 75
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v0, v1, :cond_f

    .line 76
    iget-object p1, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFocusMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    :cond_f
    return-void
.end method

.method private applyGestureShutterOn(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .registers 4

    .line 69
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v0, v1, :cond_11

    .line 70
    iget-object p1, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFocusMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FACE_DETECTION:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->applyRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    :cond_11
    return-void
.end method

.method private applySmileCaptureOff(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .registers 4

    .line 63
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v0, v1, :cond_f

    .line 64
    iget-object p1, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFocusMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    :cond_f
    return-void
.end method

.method private applySmileCaptureOn(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .registers 4

    .line 57
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v0, v1, :cond_11

    .line 58
    iget-object p1, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFocusMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FACE_DETECTION:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->applyRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    :cond_11
    return-void
.end method

.method private resetSmileShutterOn(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .registers 4

    .line 81
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->getDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v0, v1, :cond_f

    .line 82
    iget-object p1, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFocusMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    :cond_f
    return-void
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .registers 4

    .line 26
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/ShutterTriggerApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$ShutterTrigger:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/dependency/ShutterTriggerApplier;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_22

    .line 36
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/parameter/dependency/ShutterTriggerApplier;->applySmileCaptureOff(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/parameter/dependency/ShutterTriggerApplier;->applyGestureShutterOff(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    goto :goto_21

    .line 32
    :pswitch_14
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/parameter/dependency/ShutterTriggerApplier;->applySmileCaptureOff(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/parameter/dependency/ShutterTriggerApplier;->applyGestureShutterOn(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    goto :goto_21

    .line 28
    :pswitch_1b
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/parameter/dependency/ShutterTriggerApplier;->applySmileCaptureOn(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/parameter/dependency/ShutterTriggerApplier;->applyGestureShutterOff(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    :goto_21
    return-void

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_14
    .end packed-switch
.end method

.method public reset(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .registers 4

    .line 44
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/ShutterTriggerApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$ShutterTrigger:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/dependency/ShutterTriggerApplier;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    goto :goto_15

    .line 49
    :pswitch_e
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/parameter/dependency/ShutterTriggerApplier;->applySmileCaptureOff(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    goto :goto_15

    .line 46
    :pswitch_12
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/parameter/dependency/ShutterTriggerApplier;->resetSmileShutterOn(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    :goto_15
    return-void

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_12
        :pswitch_e
    .end packed-switch
.end method
