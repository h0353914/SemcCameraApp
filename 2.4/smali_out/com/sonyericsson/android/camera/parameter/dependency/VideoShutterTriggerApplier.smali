.class public Lcom/sonyericsson/android/camera/parameter/dependency/VideoShutterTriggerApplier;
.super Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
.source "VideoShutterTriggerApplier.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VideoShutterTriggerApplier"


# instance fields
.field private final mValue:Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;)V
    .registers 2

    .line 28
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/sonyericsson/android/camera/parameter/dependency/VideoShutterTriggerApplier;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    return-void
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .registers 4

    .line 40
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/dependency/VideoShutterTriggerApplier;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    if-eq v0, v1, :cond_18

    .line 41
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v0, v1, :cond_27

    .line 42
    iget-object p1, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFocusMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FACE_DETECTION:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->applyRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    goto :goto_27

    .line 45
    :cond_18
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v0, v1, :cond_27

    .line 46
    iget-object p1, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFocusMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    :cond_27
    :goto_27
    return-void
.end method

.method public reset(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .registers 4

    .line 59
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/dependency/VideoShutterTriggerApplier;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    if-eq v0, v1, :cond_15

    .line 60
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v0, v1, :cond_15

    .line 61
    iget-object p1, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFocusMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    :cond_15
    return-void
.end method
