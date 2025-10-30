.class public Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;
.super Ljava/lang/Object;
.source "PlatformCapabilityList.java"


# static fields
.field private static final KEY_CAMERA_IDS:Ljava/lang/String; = "camera_ids_"

.field private static final KEY_SENSOR_CAMERA_LIFT_TRIGGER:Ljava/lang/String; = "sensor_camera_lift_trigger"

.field private static final KEY_SIDE_SENSE:Ljava/lang/String; = "somc_side_sense"

.field private static final KEY_SOMC_VIBRATION_EFFECT:Ljava/lang/String; = "somc_vibration_effect"

.field private static final KEY_TRANSFER_AND_TAGGING:Ljava/lang/String; = "transfer_and_tagging"

.field private static final KEY_WEARABLE:Ljava/lang/String; = "somc_wearable"

.field private static final SENSOR_CAMERA_LIFT_TRIGGER:Ljava/lang/String; = "com.sonymobile.sensor.camera_lift_trigger"

.field private static final SOMC_VIBRATION_EFFECT_CLASS_NAME:Ljava/lang/String; = "com.sonymobile.vibrationeffect.VibrationEffect"

.field private static final TAG:Ljava/lang/String; = "PlatformCapabilityList"

.field private static final WEARABLE_BRIDGE_PACKAGE_NAME:Ljava/lang/String; = "com.sonymobile.cameracommon.wearablebridge"


# instance fields
.field public final CAMERA_IDS:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/util/capability/CapabilityItem<",
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final CAMERA_LIFT_TRIGGER:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/util/capability/CapabilityItem<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final SIDE_SENSE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/util/capability/CapabilityItem<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final SOMC_VIBRATION_EFFECT:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/util/capability/CapabilityItem<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final TRANSFER_AND_TAGGING:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/util/capability/CapabilityItem<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final WEARABLE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/util/capability/CapabilityItem<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/util/capability/CapabilityItem<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_10

    const-string v0, "loadPlatformCapabilityFromDevice"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 83
    :cond_10
    new-instance v0, Lcom/sonyericsson/android/camera/util/capability/BooleanCapabilityItem;

    const-string v1, "sensor_camera_lift_trigger"

    .line 84
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->isLiftTriggerSupported(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/util/capability/BooleanCapabilityItem;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->CAMERA_LIFT_TRIGGER:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 85
    new-instance v0, Lcom/sonyericsson/android/camera/util/capability/BooleanCapabilityItem;

    const-string v1, "somc_side_sense"

    .line 86
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->isSideSenseSupported()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/util/capability/BooleanCapabilityItem;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->SIDE_SENSE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 87
    new-instance v0, Lcom/sonyericsson/android/camera/util/capability/BooleanCapabilityItem;

    const-string v1, "somc_wearable"

    .line 88
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->isWearableSupported(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/util/capability/BooleanCapabilityItem;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->WEARABLE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 89
    new-instance v0, Lcom/sonyericsson/android/camera/util/capability/BooleanCapabilityItem;

    const-string v1, "somc_vibration_effect"

    .line 90
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->isSomcVibrationEffectSupported()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/util/capability/BooleanCapabilityItem;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->SOMC_VIBRATION_EFFECT:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 91
    new-instance v0, Lcom/sonyericsson/android/camera/util/capability/CameraIdMapCapabilityItem;

    const-string v1, "camera_ids_"

    .line 92
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->initializeCameraIdsPairing(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/util/capability/CameraIdMapCapabilityItem;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->CAMERA_IDS:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 93
    new-instance v0, Lcom/sonyericsson/android/camera/util/capability/BooleanCapabilityItem;

    const-string v1, "transfer_and_tagging"

    .line 94
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->isTransferAndTaggingSupported(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/sonyericsson/android/camera/util/capability/BooleanCapabilityItem;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->TRANSFER_AND_TAGGING:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 95
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->createList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->mValues:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .registers 4

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_10

    const-string p1, "loadPlatformCapabilityFromSharedPreferences"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 72
    :cond_10
    new-instance p1, Lcom/sonyericsson/android/camera/util/capability/BooleanCapabilityItem;

    const-string v0, "sensor_camera_lift_trigger"

    invoke-direct {p1, v0, p2}, Lcom/sonyericsson/android/camera/util/capability/BooleanCapabilityItem;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->CAMERA_LIFT_TRIGGER:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 73
    new-instance p1, Lcom/sonyericsson/android/camera/util/capability/BooleanCapabilityItem;

    const-string v0, "somc_side_sense"

    invoke-direct {p1, v0, p2}, Lcom/sonyericsson/android/camera/util/capability/BooleanCapabilityItem;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->SIDE_SENSE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 74
    new-instance p1, Lcom/sonyericsson/android/camera/util/capability/BooleanCapabilityItem;

    const-string v0, "somc_wearable"

    invoke-direct {p1, v0, p2}, Lcom/sonyericsson/android/camera/util/capability/BooleanCapabilityItem;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->WEARABLE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 75
    new-instance p1, Lcom/sonyericsson/android/camera/util/capability/BooleanCapabilityItem;

    const-string v0, "somc_vibration_effect"

    invoke-direct {p1, v0, p2}, Lcom/sonyericsson/android/camera/util/capability/BooleanCapabilityItem;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->SOMC_VIBRATION_EFFECT:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 76
    new-instance p1, Lcom/sonyericsson/android/camera/util/capability/BooleanCapabilityItem;

    const-string v0, "transfer_and_tagging"

    invoke-direct {p1, v0, p2}, Lcom/sonyericsson/android/camera/util/capability/BooleanCapabilityItem;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->TRANSFER_AND_TAGGING:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 77
    new-instance p1, Lcom/sonyericsson/android/camera/util/capability/CameraIdMapCapabilityItem;

    const-string v0, "camera_ids_"

    invoke-direct {p1, v0, p2}, Lcom/sonyericsson/android/camera/util/capability/CameraIdMapCapabilityItem;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->CAMERA_IDS:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 78
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->createList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->mValues:Ljava/util/List;

    return-void
.end method

.method private addIfNotNull(Ljava/util/Map;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_d

    const-string v0, ""

    .line 220
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 221
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-void
.end method

.method private createList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/util/capability/CapabilityItem<",
            "*>;>;"
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->CAMERA_LIFT_TRIGGER:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->SIDE_SENSE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->WEARABLE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->CAMERA_IDS:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->SOMC_VIBRATION_EFFECT:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->TRANSFER_AND_TAGGING:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private getCameraIdForBackMain([Ljava/lang/String;Landroid/hardware/camera2/CameraManager;)Ljava/lang/String;
    .registers 11

    .line 260
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    const/4 v3, 0x1

    if-ge v2, v0, :cond_33

    aget-object v4, p1, v2

    .line 261
    invoke-virtual {p2, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v5

    .line 262
    new-instance v6, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;

    invoke-direct {v6, v5}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;-><init>(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 265
    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->getLensFacing()I

    move-result v7

    if-eq v7, v3, :cond_18

    goto :goto_2f

    .line 270
    :cond_18
    invoke-virtual {v5}, Landroid/hardware/camera2/CameraCharacteristics;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-gt v5, v3, :cond_23

    goto :goto_2f

    .line 275
    :cond_23
    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->isOpticalZoomSupported()Z

    move-result v3

    if-nez v3, :cond_32

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->isBokehSupported()Z

    move-result v3
    :try_end_2d
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_2d} :catch_5f

    if-nez v3, :cond_32

    :goto_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_32
    return-object v4

    .line 290
    :cond_33
    :try_start_33
    array-length v0, p1

    :goto_34
    if-ge v1, v0, :cond_5c

    aget-object v2, p1, v1

    .line 291
    invoke-virtual {p2, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    .line 292
    new-instance v5, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;

    invoke-direct {v5, v4}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;-><init>(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 295
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->getLensFacing()I

    move-result v5

    if-eq v5, v3, :cond_48

    goto :goto_52

    .line 300
    :cond_48
    invoke-virtual {v4}, Landroid/hardware/camera2/CameraCharacteristics;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4
    :try_end_50
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_33 .. :try_end_50} :catch_56

    if-le v4, v3, :cond_55

    :goto_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    :cond_55
    return-object v2

    :catch_56
    move-exception p1

    const-string p2, "Fail to get characteristics for the specific camera id."

    .line 308
    invoke-static {p2, p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5c
    const-string p1, ""

    return-object p1

    :catch_5f
    move-exception p1

    const-string p2, "Fail to get characteristics for the specific camera id."

    .line 283
    invoke-static {p2, p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, ""

    return-object p1
.end method

.method private getCameraIdForBackWide([Ljava/lang/String;Landroid/hardware/camera2/CameraManager;)Ljava/lang/String;
    .registers 19

    move-object/from16 v0, p1

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    :try_start_4
    const-string v3, ""

    .line 361
    array-length v4, v0

    move-wide v6, v1

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v4, :cond_af

    aget-object v2, v0, v1

    move-object/from16 v8, p2

    .line 362
    invoke-virtual {v8, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v9

    .line 363
    new-instance v10, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;

    invoke-direct {v10, v9}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;-><init>(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 366
    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->getLensFacing()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_22

    move v11, v4

    goto/16 :goto_aa

    .line 371
    :cond_22
    invoke-virtual {v9}, Landroid/hardware/camera2/CameraCharacteristics;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v10

    if-le v10, v11, :cond_2f

    move v11, v4

    goto/16 :goto_aa

    .line 376
    :cond_2f
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v9, v10}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    if-eqz v10, :cond_56

    .line 381
    array-length v12, v10

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_3d
    if-ge v13, v12, :cond_4e

    aget v5, v10, v13

    const/16 v11, 0xc

    if-ne v5, v11, :cond_47

    const/4 v14, 0x1

    goto :goto_4a

    :cond_47
    if-nez v5, :cond_4a

    const/4 v15, 0x1

    :cond_4a
    :goto_4a
    add-int/lit8 v13, v13, 0x1

    const/4 v11, 0x1

    goto :goto_3d

    :cond_4e
    if-nez v14, :cond_54

    if-nez v15, :cond_56

    move v11, v4

    goto :goto_aa

    :cond_54
    move v11, v4

    goto :goto_aa

    .line 395
    :cond_56
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v9, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SizeF;

    .line 397
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v9, v10}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [F

    const/high16 v10, -0x40800000    # -1.0f

    .line 402
    array-length v11, v9

    move v12, v10

    const/4 v10, 0x0

    :goto_6b
    if-ge v10, v11, :cond_7e

    aget v13, v9, v10

    const/4 v14, 0x0

    cmpg-float v14, v12, v14

    if-ltz v14, :cond_7a

    .line 403
    invoke-static {v12, v13}, Ljava/lang/Float;->compare(FF)I

    move-result v14

    if-lez v14, :cond_7b

    :cond_7a
    move v12, v13

    :cond_7b
    add-int/lit8 v10, v10, 0x1

    goto :goto_6b

    .line 410
    :cond_7e
    invoke-virtual {v5}, Landroid/util/SizeF;->getWidth()F

    move-result v9

    float-to-double v9, v9

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    .line 411
    invoke-virtual {v5}, Landroid/util/SizeF;->getHeight()F

    move-result v5

    move v11, v4

    float-to-double v4, v5

    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v9, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 410
    invoke-static {v9, v10, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    float-to-double v9, v12

    div-double/2addr v4, v9

    const-wide/16 v9, 0x0

    cmpg-double v9, v6, v9

    if-ltz v9, :cond_a8

    .line 418
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v9
    :try_end_a6
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4 .. :try_end_a6} :catch_b0

    if-lez v9, :cond_aa

    :cond_a8
    move-object v3, v2

    move-wide v6, v4

    :cond_aa
    :goto_aa
    add-int/lit8 v1, v1, 0x1

    move v4, v11

    goto/16 :goto_9

    :cond_af
    return-object v3

    :catch_b0
    move-exception v0

    const-string v1, "Fail to get characteristics for the specific camera id."

    .line 426
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, ""

    return-object v0
.end method

.method private getCameraIdForFrontMain([Ljava/lang/String;Landroid/hardware/camera2/CameraManager;)Ljava/lang/String;
    .registers 8

    .line 325
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_2b

    aget-object v2, p1, v1

    .line 326
    invoke-virtual {p2, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    .line 327
    new-instance v4, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;

    invoke-direct {v4, v3}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;-><init>(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 330
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->getLensFacing()I

    move-result v4

    if-eqz v4, :cond_16

    goto :goto_21

    .line 335
    :cond_16
    invoke-virtual {v3}, Landroid/hardware/camera2/CameraCharacteristics;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3
    :try_end_1e
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_1e} :catch_25

    const/4 v4, 0x1

    if-le v3, v4, :cond_24

    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_24
    return-object v2

    :catch_25
    move-exception p1

    const-string p2, "Fail to get characteristics for the specific camera id."

    .line 343
    invoke-static {p2, p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2b
    const-string p1, ""

    return-object p1
.end method

.method private initializeCameraIdsPairing(Landroid/content/Context;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 184
    const-class v0, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    .line 185
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 189
    :try_start_d
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->getCameraIdForBackMain([Ljava/lang/String;Landroid/hardware/camera2/CameraManager;)Ljava/lang/String;

    move-result-object v2

    .line 193
    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->getCameraIdForFrontMain([Ljava/lang/String;Landroid/hardware/camera2/CameraManager;)Ljava/lang/String;

    move-result-object v3

    .line 194
    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->getCameraIdForBackWide([Ljava/lang/String;Landroid/hardware/camera2/CameraManager;)Ljava/lang/String;

    move-result-object v1

    .line 196
    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-direct {p0, v0, v4, v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->addIfNotNull(Ljava/util/Map;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Ljava/lang/String;)V

    .line 197
    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-direct {p0, v0, v4, v3}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->addIfNotNull(Ljava/util/Map;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Ljava/lang/String;)V

    .line 199
    invoke-direct {p0, v2, v1, p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->isUsingSameCameraId(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/CameraManager;)Z

    move-result p1

    if-nez p1, :cond_32

    .line 200
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->WIDE:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-direct {p0, v0, p1, v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->addIfNotNull(Ljava/util/Map;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Ljava/lang/String;)V
    :try_end_32
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_d .. :try_end_32} :catch_33

    :cond_32
    return-object v0

    :catch_33
    move-exception p1

    .line 205
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Application failed to get Camera IDs list from Manager."

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private isLiftTriggerSupported(Landroid/content/Context;)Z
    .registers 4

    const-string v0, "sensor"

    .line 125
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    const/4 v0, -0x1

    .line 126
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p1

    .line 128
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 129
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sonymobile.sensor.camera_lift_trigger"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 p1, 0x1

    return p1

    :cond_2b
    const/4 p1, 0x0

    return p1
.end method

.method private isSideSenseSupported()Z
    .registers 7

    .line 153
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_1c

    aget v4, v0, v3

    .line 154
    invoke-static {v4}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    const/high16 v5, 0x20000000

    .line 155
    invoke-virtual {v4, v5}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v0, 0x1

    return v0

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_1c
    return v2
.end method

.method private isSomcVibrationEffectSupported()Z
    .registers 5

    const/4 v0, 0x1

    :try_start_1
    const-string v1, "com.sonymobile.vibrationeffect.VibrationEffect"

    .line 168
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v1

    .line 170
    new-array v0, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSomcVibrationEffectSupported() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v2
.end method

.method private isTransferAndTaggingSupported(Landroid/content/Context;)Z
    .registers 3

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f050007

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    return p1
.end method

.method private isUsingSameCameraId(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/CameraManager;)Z
    .registers 5

    .line 236
    :try_start_0
    invoke-virtual {p3, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p3

    .line 239
    invoke-virtual {p3}, Landroid/hardware/camera2/CameraCharacteristics;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_17

    .line 240
    invoke-virtual {p3}, Landroid/hardware/camera2/CameraCharacteristics;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 242
    :cond_17
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1b
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_1b} :catch_1c

    return p1

    :catch_1c
    move-exception p1

    const-string p2, "Fail to get characteristics for the specific camera id."

    .line 245
    invoke-static {p2, p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method private isWearableSupported(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "com.sonymobile.cameracommon.wearablebridge"

    .line 163
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/util/SignatureUtil;->isAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public values()Ljava/util/List;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/util/capability/CapabilityItem<",
            "*>;>;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->mValues:Ljava/util/List;

    return-object v0
.end method
