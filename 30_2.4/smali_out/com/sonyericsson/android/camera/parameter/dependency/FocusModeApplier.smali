.class public Lcom/sonyericsson/android/camera/parameter/dependency/FocusModeApplier;
.super Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
.source "FocusModeApplier.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FocusModeApplier"


# instance fields
.field private final mValue:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V
    .registers 2

    .line 28
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/sonyericsson/android/camera/parameter/dependency/FocusModeApplier;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    return-void
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .registers 4

    .line 40
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/dependency/FocusModeApplier;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FACE_DETECTION:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    if-ne v0, v1, :cond_7

    return-void

    .line 44
    :cond_7
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mShutterTrigger:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;->SMILE_SHUTTER:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    if-ne v0, v1, :cond_18

    .line 45
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mShutterTrigger:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->applyRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 47
    :cond_18
    iget-object p1, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoShutterTrigger:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->applyRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    return-void
.end method

.method public reset(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .registers 4

    .line 59
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/dependency/FocusModeApplier;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FACE_DETECTION:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    if-ne v0, v1, :cond_7

    return-void

    .line 63
    :cond_7
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mShutterTrigger:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 64
    iget-object p1, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoShutterTrigger:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    return-void
.end method
