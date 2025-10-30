.class synthetic Lcom/sonyericsson/android/camera/CameraActivity$12;
.super Ljava/lang/Object;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$CameraActivity$LayoutOrientation:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$LaunchCondition$ExtraOperation:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$LaunchCondition$LaunchCameraMode:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

.field static final synthetic $SwitchMap$com$sonyericsson$cameracommon$utility$LayoutOrientationResolver$LayoutOrientationType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 3620
    invoke-static {}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->values()[Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$LaunchCondition$LaunchCameraMode:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$LaunchCondition$LaunchCameraMode:[I

    sget-object v2, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->FOUR_K_HDR:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_14

    :catch_14
    const/4 v1, 0x2

    :try_start_15
    sget-object v2, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$LaunchCondition$LaunchCameraMode:[I

    sget-object v3, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_1f

    :catch_1f
    const/4 v2, 0x3

    :try_start_20
    sget-object v3, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$LaunchCondition$LaunchCameraMode:[I

    sget-object v4, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_2a} :catch_2a

    .line 3311
    :catch_2a
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->values()[Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$cameracommon$utility$LayoutOrientationResolver$LayoutOrientationType:[I

    :try_start_33
    sget-object v3, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$cameracommon$utility$LayoutOrientationResolver$LayoutOrientationType:[I

    sget-object v4, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3d} :catch_3d

    :catch_3d
    :try_start_3d
    sget-object v3, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$cameracommon$utility$LayoutOrientationResolver$LayoutOrientationType:[I

    sget-object v4, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->LANDSCAPE:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_47} :catch_47

    .line 3264
    :catch_47
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->values()[Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$CameraActivity$LayoutOrientation:[I

    :try_start_50
    sget-object v3, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$CameraActivity$LayoutOrientation:[I

    sget-object v4, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Unknown:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_5a} :catch_5a

    :catch_5a
    :try_start_5a
    sget-object v3, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$CameraActivity$LayoutOrientation:[I

    sget-object v4, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Landscape:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_64} :catch_64

    :catch_64
    :try_start_64
    sget-object v3, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$CameraActivity$LayoutOrientation:[I

    sget-object v4, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Portrait:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_6e} :catch_6e

    :catch_6e
    const/4 v3, 0x4

    :try_start_6f
    sget-object v4, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$CameraActivity$LayoutOrientation:[I

    sget-object v5, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ReverseLandscape:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_79
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6f .. :try_end_79} :catch_79

    :catch_79
    const/4 v4, 0x5

    :try_start_7a
    sget-object v5, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$CameraActivity$LayoutOrientation:[I

    sget-object v6, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ReversePortrait:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_84} :catch_84

    .line 2323
    :catch_84
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    :try_start_8d
    sget-object v5, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_97
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8d .. :try_end_97} :catch_97

    :catch_97
    :try_start_97
    sget-object v5, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_a1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_97 .. :try_end_a1} :catch_a1

    :catch_a1
    :try_start_a1
    sget-object v5, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_ab
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a1 .. :try_end_ab} :catch_ab

    :catch_ab
    :try_start_ab
    sget-object v5, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v6

    aput v3, v5, v6
    :try_end_b5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ab .. :try_end_b5} :catch_b5

    :catch_b5
    :try_start_b5
    sget-object v3, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v5

    aput v4, v3, v5
    :try_end_bf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b5 .. :try_end_bf} :catch_bf

    :catch_bf
    :try_start_bf
    sget-object v3, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v4

    const/4 v5, 0x6

    aput v5, v3, v4
    :try_end_ca
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bf .. :try_end_ca} :catch_ca

    :catch_ca
    :try_start_ca
    sget-object v3, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v4

    const/4 v5, 0x7

    aput v5, v3, v4
    :try_end_d5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ca .. :try_end_d5} :catch_d5

    .line 2309
    :catch_d5
    invoke-static {}, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->values()[Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$LaunchCondition$ExtraOperation:[I

    :try_start_de
    sget-object v3, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$LaunchCondition$ExtraOperation:[I

    sget-object v4, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->OPEN_SETTINGS_MENU:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_e8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_de .. :try_end_e8} :catch_e8

    .line 1343
    :catch_e8
    invoke-static {}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->values()[Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

    :try_start_f1
    sget-object v3, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

    sget-object v4, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->PORTRAIT_SELFIE:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_fb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f1 .. :try_end_fb} :catch_fb

    :catch_fb
    :try_start_fb
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

    sget-object v3, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->DUAL_MONOCHROME:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_105
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fb .. :try_end_105} :catch_105

    :catch_105
    :try_start_105
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->DUAL_BACKGROUND_DEFOCUS:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_10f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_105 .. :try_end_10f} :catch_10f

    :catch_10f
    return-void
.end method
