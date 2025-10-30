.class public Lcom/sonyericsson/android/camera/view/tutorial/FeatureListBuilder;
.super Ljava/lang/Object;
.source "FeatureListBuilder.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLegacyFeatureList(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 37
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFaultPhotoDetectionSupported()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 38
    sget-object v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_FAULT_DETECTION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_10
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isTransferAndTaggingSupported()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 42
    sget-object v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_TAGGING:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_1b
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getAvailableCameraIdsMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_27
    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 45
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isDistortionCorrectionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 46
    sget-object v3, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_LENS_CORRECTION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_3e
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isOpticalZoomSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 49
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isWideCameraSupported()Z

    move-result v3

    if-eqz v3, :cond_50

    .line 50
    sget-object v3, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_TRIPLE_CAMERA:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_55

    .line 52
    :cond_50
    sget-object v3, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_DUAL_ZOOM_CAMERA:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_55
    :goto_55
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isBokehSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 56
    sget-object v3, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_BOKEH_CAMERAUI:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_60
    invoke-static {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->isLongExposureSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 59
    sget-object v3, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_LONG_SS:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_6b
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isEyeDetectionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 62
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isAnimalEyeDetectionAvailable(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 63
    sget-object v2, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_EYE_AF:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 66
    :cond_7d
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isLiftTriggerSupported()Z

    move-result v1

    if-eqz v1, :cond_88

    .line 67
    sget-object v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_PREDICTIVE_LAUNCH:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_88
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSideTouchSupported()Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 70
    invoke-static {}, Lcom/sonyericsson/android/camera/util/SettingUtil;->isSideBarSupported()Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 71
    sget-object v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_SIDE_BAR:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_9f

    .line 73
    :cond_9a
    sget-object v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_SIDE_SENSE:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_9f
    :goto_9f
    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->isPortraitSelfieAvailable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_aa

    .line 77
    sget-object p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_PORTRAIT_SELFIE:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_aa
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getAvailableCameraIdsMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b6
    :goto_b6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ce

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 80
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isHighSensitivityFusionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 81
    sget-object v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_DUAL_CAMERA:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_b6

    .line 84
    :cond_ce
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->isMonochromeSupported()Z

    move-result p0

    if-eqz p0, :cond_d9

    .line 85
    sget-object p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_MONO:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_d9
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->isBokehSupported()Z

    move-result p0

    if-eqz p0, :cond_e4

    .line 88
    sget-object p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_BOKEH:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_e4
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getAvailableCameraIdsMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f0
    :goto_f0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_108

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 91
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSuperSlowMotionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_f0

    .line 92
    sget-object v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_SLOW_MOTION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_f0

    .line 95
    :cond_108
    sget-object p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_HAND_SHUTTER:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_SELFIE:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public static getNewFeatureList()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 25
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getAvailableCameraIdsMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 26
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isAnimalEyeDetectionAvailable(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 27
    sget-object v2, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_ANIMAL_EYE_AF:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 31
    :cond_29
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method
