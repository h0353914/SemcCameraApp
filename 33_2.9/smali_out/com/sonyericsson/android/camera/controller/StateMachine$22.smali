.class synthetic Lcom/sonyericsson/android/camera/controller/StateMachine$22;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$NextCaptureCondition:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$SessionType:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$device$CameraInfo$CameraId:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$recorder$RecorderController$Result:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree:[I

.field static final synthetic $SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

.field static final synthetic $SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 18

    .line 11437
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->values()[Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageType:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageType:[I

    sget-object v3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    .line 10060
    :catch_1d
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->values()[Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

    :try_start_26
    sget-object v3, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->BURST:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2e
    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

    sget-object v3, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->VIDEO:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_38} :catch_38

    :catch_38
    const/4 v2, 0x3

    :try_start_39
    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

    sget-object v4, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_43} :catch_43

    :catch_43
    const/4 v3, 0x4

    :try_start_44
    sget-object v4, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

    sget-object v5, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO_BOKEN:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4e} :catch_4e

    .line 10020
    :catch_4e
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->values()[Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$device$CameraInfo$CameraId:[I

    :try_start_57
    sget-object v5, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_5f} :catch_5f

    :catch_5f
    :try_start_5f
    sget-object v4, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$device$CameraInfo$CameraId:[I

    sget-object v5, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_69
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_69} :catch_69

    :catch_69
    :try_start_69
    sget-object v4, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$device$CameraInfo$CameraId:[I

    sget-object v5, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT_2:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_73
    .catch Ljava/lang/NoSuchFieldError; {:try_start_69 .. :try_end_73} :catch_73

    .line 9064
    :catch_73
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize:[I

    :try_start_7c
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD_60FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7c .. :try_end_84} :catch_84

    :catch_84
    :try_start_84
    sget-object v4, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize:[I

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_8e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_8e} :catch_8e

    :catch_8e
    :try_start_8e
    sget-object v4, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize:[I

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_98
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8e .. :try_end_98} :catch_98

    :catch_98
    :try_start_98
    sget-object v4, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize:[I

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_PLUS_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_a2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_98 .. :try_end_a2} :catch_a2

    :catch_a2
    const/4 v4, 0x5

    :try_start_a3
    sget-object v5, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize:[I

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_PLUS_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_ad
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a3 .. :try_end_ad} :catch_ad

    :catch_ad
    const/4 v5, 0x6

    :try_start_ae
    sget-object v6, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize:[I

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_ULTRA_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_b8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ae .. :try_end_b8} :catch_b8

    :catch_b8
    const/4 v6, 0x7

    :try_start_b9
    sget-object v7, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_ULTRA_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_c3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b9 .. :try_end_c3} :catch_c3

    .line 8798
    :catch_c3
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->values()[Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    move-result-object v7

    array-length v7, v7

    new-array v7, v7, [I

    sput-object v7, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    :try_start_cc
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_PHOTO_STACK_INITIALIZED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v8

    aput v1, v7, v8
    :try_end_d4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cc .. :try_end_d4} :catch_d4

    :catch_d4
    :try_start_d4
    sget-object v7, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_HEAD_UP_DISPLAY_INITIALIZED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v8

    aput v0, v7, v8
    :try_end_de
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d4 .. :try_end_de} :catch_de

    :catch_de
    :try_start_de
    sget-object v7, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_SCENE_MODE_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v8

    aput v2, v7, v8
    :try_end_e8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_de .. :try_end_e8} :catch_e8

    :catch_e8
    :try_start_e8
    sget-object v7, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_AUTO_FLASH_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v8

    aput v3, v7, v8
    :try_end_f2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e8 .. :try_end_f2} :catch_f2

    :catch_f2
    :try_start_f2
    sget-object v7, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_AUTO_HDR_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v8

    aput v4, v7, v8
    :try_end_fc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f2 .. :try_end_fc} :catch_fc

    :catch_fc
    :try_start_fc
    sget-object v7, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_AUTO_NIGHT_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v8

    aput v5, v7, v8
    :try_end_106
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fc .. :try_end_106} :catch_106

    :catch_106
    :try_start_106
    sget-object v7, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_FACE_DETECTED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_110
    .catch Ljava/lang/NoSuchFieldError; {:try_start_106 .. :try_end_110} :catch_110

    :catch_110
    const/16 v7, 0x8

    :try_start_112
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_OBJECT_TRACKED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_11c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_112 .. :try_end_11c} :catch_11c

    :catch_11c
    const/16 v8, 0x9

    :try_start_11e
    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_ORIENTATION_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_128
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11e .. :try_end_128} :catch_128

    :catch_128
    const/16 v9, 0xa

    :try_start_12a
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_LAZY_INITIALIZATION_TASK_RUN:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v11

    aput v9, v10, v11
    :try_end_134
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12a .. :try_end_134} :catch_134

    :catch_134
    const/16 v10, 0xb

    :try_start_136
    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_OBJECT_TRACKING_LOST:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v12

    aput v10, v11, v12
    :try_end_140
    .catch Ljava/lang/NoSuchFieldError; {:try_start_136 .. :try_end_140} :catch_140

    :catch_140
    const/16 v11, 0xc

    :try_start_142
    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v13, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_GESTURE_SHUTTER_SETTING_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v13

    aput v11, v12, v13
    :try_end_14c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_142 .. :try_end_14c} :catch_14c

    :catch_14c
    const/16 v12, 0xd

    :try_start_14e
    sget-object v13, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v14, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_RECORDING_STARTED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v14}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v14

    aput v12, v13, v14
    :try_end_158
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14e .. :try_end_158} :catch_158

    :catch_158
    const/16 v13, 0xe

    :try_start_15a
    sget-object v14, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_PREVIEW_STARTED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v15

    aput v13, v14, v15
    :try_end_164
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15a .. :try_end_164} :catch_164

    :catch_164
    const/16 v14, 0xf

    :try_start_166
    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_WIFI_RESULT:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v16

    aput v14, v15, v16
    :try_end_170
    .catch Ljava/lang/NoSuchFieldError; {:try_start_166 .. :try_end_170} :catch_170

    :catch_170
    const/16 v15, 0x10

    :try_start_172
    sget-object v16, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v17, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_START_QR_SCANNING:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual/range {v17 .. v17}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v17

    aput v15, v16, v17
    :try_end_17c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_172 .. :try_end_17c} :catch_17c

    .line 8815
    :catch_17c
    invoke-static {}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->values()[Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    :try_start_185
    sget-object v17, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->PHOTO_READY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual/range {v17 .. v17}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v17

    aput v1, v15, v17
    :try_end_18d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_185 .. :try_end_18d} :catch_18d

    :catch_18d
    :try_start_18d
    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v17, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->VIDEO_READY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual/range {v17 .. v17}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v17

    aput v0, v15, v17
    :try_end_197
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18d .. :try_end_197} :catch_197

    :catch_197
    :try_start_197
    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v17, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->VIDEO_RECORDING:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual/range {v17 .. v17}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v17

    aput v2, v15, v17
    :try_end_1a1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_197 .. :try_end_1a1} :catch_1a1

    .line 8418
    :catch_1a1
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->values()[Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    :try_start_1aa
    sget-object v17, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_INITIALIZE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual/range {v17 .. v17}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v17

    aput v1, v15, v17
    :try_end_1b2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1aa .. :try_end_1b2} :catch_1b2

    :catch_1b2
    :try_start_1b2
    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v17, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_RESUME:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual/range {v17 .. v17}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v17

    aput v0, v15, v17
    :try_end_1bc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b2 .. :try_end_1bc} :catch_1bc

    :catch_1bc
    :try_start_1bc
    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v17, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_RESUME_TIMEOUT:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual/range {v17 .. v17}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v17

    aput v2, v15, v17
    :try_end_1c6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1bc .. :try_end_1c6} :catch_1c6

    :catch_1c6
    :try_start_1c6
    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v17, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_PAUSE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual/range {v17 .. v17}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v17

    aput v3, v15, v17
    :try_end_1d0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c6 .. :try_end_1d0} :catch_1d0

    :catch_1d0
    :try_start_1d0
    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v17, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_FINALIZE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual/range {v17 .. v17}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v17

    aput v4, v15, v17
    :try_end_1da
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d0 .. :try_end_1da} :catch_1da

    :catch_1da
    :try_start_1da
    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v17, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_HEATED_OVER_WARNING:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual/range {v17 .. v17}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v17

    aput v5, v15, v17
    :try_end_1e4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1da .. :try_end_1e4} :catch_1e4

    :catch_1e4
    :try_start_1e4
    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v17, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_HEATED_OVER_WARNING_EXTRA:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual/range {v17 .. v17}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v17

    aput v6, v15, v17
    :try_end_1ee
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e4 .. :try_end_1ee} :catch_1ee

    :catch_1ee
    :try_start_1ee
    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v17, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_HEATED_OVER_COOLING_LOW:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual/range {v17 .. v17}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v17

    aput v7, v15, v17
    :try_end_1f8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ee .. :try_end_1f8} :catch_1f8

    :catch_1f8
    :try_start_1f8
    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v17, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_HEATED_OVER_COOLING_ULTRA_LOW:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual/range {v17 .. v17}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v17

    aput v8, v15, v17
    :try_end_202
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f8 .. :try_end_202} :catch_202

    :catch_202
    :try_start_202
    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v17, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_REACH_BATTERY_LIMIT:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual/range {v17 .. v17}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v17

    aput v9, v15, v17
    :try_end_20c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_202 .. :try_end_20c} :catch_20c

    :catch_20c
    :try_start_20c
    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v17, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_REACH_BATTERY_LOW:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual/range {v17 .. v17}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v17

    aput v10, v15, v17
    :try_end_216
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20c .. :try_end_216} :catch_216

    :catch_216
    :try_start_216
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_BATTERY_LEVEL_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v15

    aput v11, v10, v15
    :try_end_220
    .catch Ljava/lang/NoSuchFieldError; {:try_start_216 .. :try_end_220} :catch_220

    :catch_220
    :try_start_220
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_HEATED_OVER_CRITICAL:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    aput v12, v10, v11
    :try_end_22a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_220 .. :try_end_22a} :catch_22a

    :catch_22a
    :try_start_22a
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_HEATED_OVER_NORMAL:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    aput v13, v10, v11
    :try_end_234
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22a .. :try_end_234} :catch_234

    :catch_234
    :try_start_234
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_EVF_PREPARED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    aput v14, v10, v11
    :try_end_23e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_234 .. :try_end_23e} :catch_23e

    :catch_23e
    :try_start_23e
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_INITIAL_AUTO_FOCUS_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x10

    aput v12, v10, v11
    :try_end_24a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23e .. :try_end_24a} :catch_24a

    :catch_24a
    :try_start_24a
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_PRE_SCAN_STARTED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x11

    aput v12, v10, v11
    :try_end_256
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24a .. :try_end_256} :catch_256

    :catch_256
    :try_start_256
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_AUTO_FOCUS_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x12

    aput v12, v10, v11
    :try_end_262
    .catch Ljava/lang/NoSuchFieldError; {:try_start_256 .. :try_end_262} :catch_262

    :catch_262
    :try_start_262
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_PRE_SHUTTER_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x13

    aput v12, v10, v11
    :try_end_26e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_262 .. :try_end_26e} :catch_26e

    :catch_26e
    :try_start_26e
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_CAPTURE_REQUESTED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x14

    aput v12, v10, v11
    :try_end_27a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26e .. :try_end_27a} :catch_27a

    :catch_27a
    :try_start_27a
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_SHUTTER_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x15

    aput v12, v10, v11
    :try_end_286
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27a .. :try_end_286} :catch_286

    :catch_286
    :try_start_286
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_PREPARE_BURST_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x16

    aput v12, v10, v11
    :try_end_292
    .catch Ljava/lang/NoSuchFieldError; {:try_start_286 .. :try_end_292} :catch_292

    :catch_292
    :try_start_292
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_PRE_TAKE_PICTURE_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x17

    aput v12, v10, v11
    :try_end_29e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_292 .. :try_end_29e} :catch_29e

    :catch_29e
    :try_start_29e
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_TAKE_PICTURE_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x18

    aput v12, v10, v11
    :try_end_2aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29e .. :try_end_2aa} :catch_2aa

    :catch_2aa
    :try_start_2aa
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_VIDEO_RECORDING_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x19

    aput v12, v10, v11
    :try_end_2b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2aa .. :try_end_2b6} :catch_2b6

    :catch_2b6
    :try_start_2b6
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_RECORDING_RESTRICTED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x1a

    aput v12, v10, v11
    :try_end_2c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b6 .. :try_end_2c2} :catch_2c2

    :catch_2c2
    :try_start_2c2
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_TOUCH_CONTENT_PROGRESS:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x1b

    aput v12, v10, v11
    :try_end_2ce
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c2 .. :try_end_2ce} :catch_2ce

    :catch_2ce
    :try_start_2ce
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_STORE_REQUESTED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x1c

    aput v12, v10, v11
    :try_end_2da
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2ce .. :try_end_2da} :catch_2da

    :catch_2da
    :try_start_2da
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_STORE_COMPLETED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x1d

    aput v12, v10, v11
    :try_end_2e6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2da .. :try_end_2e6} :catch_2e6

    :catch_2e6
    :try_start_2e6
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_KEY_MENU:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x1e

    aput v12, v10, v11
    :try_end_2f2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e6 .. :try_end_2f2} :catch_2f2

    :catch_2f2
    :try_start_2f2
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_START_TRANSITION_OPERATION:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x1f

    aput v12, v10, v11
    :try_end_2fe
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f2 .. :try_end_2fe} :catch_2fe

    :catch_2fe
    :try_start_2fe
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_FINISH_TRANSITION_OPERATION:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x20

    aput v12, v10, v11
    :try_end_30a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2fe .. :try_end_30a} :catch_30a

    :catch_30a
    :try_start_30a
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CLEAR_FOCUS:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x21

    aput v12, v10, v11
    :try_end_316
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30a .. :try_end_316} :catch_316

    :catch_316
    :try_start_316
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_DIALOG_OPENED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x22

    aput v12, v10, v11
    :try_end_322
    .catch Ljava/lang/NoSuchFieldError; {:try_start_316 .. :try_end_322} :catch_322

    :catch_322
    :try_start_322
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_DIALOG_CLOSED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x23

    aput v12, v10, v11
    :try_end_32e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_322 .. :try_end_32e} :catch_32e

    :catch_32e
    :try_start_32e
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_STORAGE_ERROR:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x24

    aput v12, v10, v11
    :try_end_33a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32e .. :try_end_33a} :catch_33a

    :catch_33a
    :try_start_33a
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_STORAGE_MOUNTED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x25

    aput v12, v10, v11
    :try_end_346
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33a .. :try_end_346} :catch_346

    :catch_346
    :try_start_346
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_SET_TOUCHED_POSITION:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x26

    aput v12, v10, v11
    :try_end_352
    .catch Ljava/lang/NoSuchFieldError; {:try_start_346 .. :try_end_352} :catch_352

    :catch_352
    :try_start_352
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x27

    aput v12, v10, v11
    :try_end_35e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_352 .. :try_end_35e} :catch_35e

    :catch_35e
    :try_start_35e
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_RECORDING_START_WAIT_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x28

    aput v12, v10, v11
    :try_end_36a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35e .. :try_end_36a} :catch_36a

    :catch_36a
    :try_start_36a
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_RECORDING_ERROR:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x29

    aput v12, v10, v11
    :try_end_376
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36a .. :try_end_376} :catch_376

    :catch_376
    :try_start_376
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CHANGE_SELECTED_FACE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x2a

    aput v12, v10, v11
    :try_end_382
    .catch Ljava/lang/NoSuchFieldError; {:try_start_376 .. :try_end_382} :catch_382

    :catch_382
    :try_start_382
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_SET_SELECTED_OBJECT_POSITION:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x2b

    aput v12, v10, v11
    :try_end_38e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_382 .. :try_end_38e} :catch_38e

    :catch_38e
    :try_start_38e
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_DESELECT_OBJECT_POSITION:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x2c

    aput v12, v10, v11
    :try_end_39a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38e .. :try_end_39a} :catch_39a

    :catch_39a
    :try_start_39a
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_START_AF_AFTER_OBJECT_TRACKED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x2d

    aput v12, v10, v11
    :try_end_3a6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39a .. :try_end_3a6} :catch_3a6

    :catch_3a6
    :try_start_3a6
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_BURST_SHUTTER_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x2e

    aput v12, v10, v11
    :try_end_3b2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a6 .. :try_end_3b2} :catch_3b2

    :catch_3b2
    :try_start_3b2
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_BURST_STORE_COMPLETED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x2f

    aput v12, v10, v11
    :try_end_3be
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b2 .. :try_end_3be} :catch_3be

    :catch_3be
    :try_start_3be
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_PREDICTIVE_CAPTURE_GROUP_STORE_COMPLETED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x30

    aput v12, v10, v11
    :try_end_3ca
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3be .. :try_end_3ca} :catch_3ca

    :catch_3ca
    :try_start_3ca
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_ONE_PREVIEW_FRAME_UPDATED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x31

    aput v12, v10, v11
    :try_end_3d6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3ca .. :try_end_3d6} :catch_3d6

    :catch_3d6
    :try_start_3d6
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_CONTINUOUS_PREVIEW_FRAME_UPDATED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x32

    aput v12, v10, v11
    :try_end_3e2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d6 .. :try_end_3e2} :catch_3e2

    :catch_3e2
    :try_start_3e2
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_SWITCH_CAMERA:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x33

    aput v12, v10, v11
    :try_end_3ee
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e2 .. :try_end_3ee} :catch_3ee

    :catch_3ee
    :try_start_3ee
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CANCEL_TOUCHED_POSITION:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x34

    aput v12, v10, v11
    :try_end_3fa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3ee .. :try_end_3fa} :catch_3fa

    :catch_3fa
    :try_start_3fa
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_SEMIAUTO_ENABLED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x35

    aput v12, v10, v11
    :try_end_406
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3fa .. :try_end_406} :catch_406

    :catch_406
    :try_start_406
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_SEMIAUTO_DISABLED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x36

    aput v12, v10, v11
    :try_end_412
    .catch Ljava/lang/NoSuchFieldError; {:try_start_406 .. :try_end_412} :catch_412

    :catch_412
    :try_start_412
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_AMBER_BLUE_COLOR_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x37

    aput v12, v10, v11
    :try_end_41e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_412 .. :try_end_41e} :catch_41e

    :catch_41e
    :try_start_41e
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_BRIGHTNESS_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x38

    aput v12, v10, v11
    :try_end_42a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41e .. :try_end_42a} :catch_42a

    :catch_42a
    :try_start_42a
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_BOKEH_ENABLED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x39

    aput v12, v10, v11
    :try_end_436
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42a .. :try_end_436} :catch_436

    :catch_436
    :try_start_436
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_BOKEH_DISABLED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x3a

    aput v12, v10, v11
    :try_end_442
    .catch Ljava/lang/NoSuchFieldError; {:try_start_436 .. :try_end_442} :catch_442

    :catch_442
    :try_start_442
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_BOKEH_STRENGTH_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x3b

    aput v12, v10, v11
    :try_end_44e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_442 .. :try_end_44e} :catch_44e

    :catch_44e
    :try_start_44e
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_BOKEH_CONDITION_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x3c

    aput v12, v10, v11
    :try_end_45a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44e .. :try_end_45a} :catch_45a

    :catch_45a
    :try_start_45a
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_SELFTIMER_CANCEL:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x3d

    aput v12, v10, v11
    :try_end_466
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45a .. :try_end_466} :catch_466

    :catch_466
    :try_start_466
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_CAMERA_DEVICE_OPENED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x3e

    aput v12, v10, v11
    :try_end_472
    .catch Ljava/lang/NoSuchFieldError; {:try_start_466 .. :try_end_472} :catch_472

    :catch_472
    :try_start_472
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_CAMERA_DEVICE_CLOSED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x3f

    aput v12, v10, v11
    :try_end_47e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_472 .. :try_end_47e} :catch_47e

    :catch_47e
    :try_start_47e
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_STOP_RECORDING_SLOW_MOTION_BUTTON_RELEASE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x40

    aput v12, v10, v11
    :try_end_48a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47e .. :try_end_48a} :catch_48a

    :catch_48a
    :try_start_48a
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_SLOW_MOTION_FEEDBACK_ANIMATION_END:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x41

    aput v12, v10, v11
    :try_end_496
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48a .. :try_end_496} :catch_496

    :catch_496
    :try_start_496
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_HIGH_FRAME_RATE_RECORDING_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x42

    aput v12, v10, v11
    :try_end_4a2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_496 .. :try_end_4a2} :catch_4a2

    :catch_4a2
    :try_start_4a2
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ANGLE_CHANGE_START:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x43

    aput v12, v10, v11
    :try_end_4ae
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a2 .. :try_end_4ae} :catch_4ae

    :catch_4ae
    :try_start_4ae
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_REQUEST_UPDATE_VIDEO_HDR:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x44

    aput v12, v10, v11
    :try_end_4ba
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4ae .. :try_end_4ba} :catch_4ba

    :catch_4ba
    :try_start_4ba
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x45

    aput v12, v10, v11
    :try_end_4c6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4ba .. :try_end_4c6} :catch_4c6

    :catch_4c6
    :try_start_4c6
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_START_CAPTURE_COUNTDOWN:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x46

    aput v12, v10, v11
    :try_end_4d2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c6 .. :try_end_4d2} :catch_4d2

    :catch_4d2
    :try_start_4d2
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x47

    aput v12, v10, v11
    :try_end_4de
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d2 .. :try_end_4de} :catch_4de

    :catch_4de
    :try_start_4de
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_BURST:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x48

    aput v12, v10, v11
    :try_end_4ea
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4de .. :try_end_4ea} :catch_4ea

    :catch_4ea
    :try_start_4ea
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_CANCEL:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x49

    aput v12, v10, v11
    :try_end_4f6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4ea .. :try_end_4f6} :catch_4f6

    :catch_4f6
    :try_start_4f6
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_RECORD_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x4a

    aput v12, v10, v11
    :try_end_502
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f6 .. :try_end_502} :catch_502

    :catch_502
    :try_start_502
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_START_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x4b

    aput v12, v10, v11
    :try_end_50e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_502 .. :try_end_50e} :catch_50e

    :catch_50e
    :try_start_50e
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_STOP_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x4c

    aput v12, v10, v11
    :try_end_51a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50e .. :try_end_51a} :catch_51a

    :catch_51a
    :try_start_51a
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_RESUME_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x4d

    aput v12, v10, v11
    :try_end_526
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51a .. :try_end_526} :catch_526

    :catch_526
    :try_start_526
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_PAUSE_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x4e

    aput v12, v10, v11
    :try_end_532
    .catch Ljava/lang/NoSuchFieldError; {:try_start_526 .. :try_end_532} :catch_532

    :catch_532
    :try_start_532
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_TRIGGER_SLOW_MOTION:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x4f

    aput v12, v10, v11
    :try_end_53e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_532 .. :try_end_53e} :catch_53e

    :catch_53e
    :try_start_53e
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_REQUEST_UPDATE_HIGH_SENSITIVITY_FUSION_MODE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x50

    aput v12, v10, v11
    :try_end_54a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53e .. :try_end_54a} :catch_54a

    :catch_54a
    :try_start_54a
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_FUSION_CONDITION_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x51

    aput v12, v10, v11
    :try_end_556
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54a .. :try_end_556} :catch_556

    :catch_556
    :try_start_556
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_STORAGE_READY_STATE_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x52

    aput v12, v10, v11
    :try_end_562
    .catch Ljava/lang/NoSuchFieldError; {:try_start_556 .. :try_end_562} :catch_562

    :catch_562
    :try_start_562
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CHANGE_CAPTURING_MODE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x53

    aput v12, v10, v11
    :try_end_56e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_562 .. :try_end_56e} :catch_56e

    :catch_56e
    :try_start_56e
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ZOOM_PREPARE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x54

    aput v12, v10, v11
    :try_end_57a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56e .. :try_end_57a} :catch_57a

    :catch_57a
    :try_start_57a
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ZOOM_PERFORM:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x55

    aput v12, v10, v11
    :try_end_586
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57a .. :try_end_586} :catch_586

    :catch_586
    :try_start_586
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ZOOM_FINISH:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x56

    aput v12, v10, v11
    :try_end_592
    .catch Ljava/lang/NoSuchFieldError; {:try_start_586 .. :try_end_592} :catch_592

    :catch_592
    :try_start_592
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_SESSION_CONFIGURED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x57

    aput v12, v10, v11
    :try_end_59e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_592 .. :try_end_59e} :catch_59e

    :catch_59e
    :try_start_59e
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_RESOLUTION_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x58

    aput v12, v10, v11
    :try_end_5aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59e .. :try_end_5aa} :catch_5aa

    :catch_5aa
    :try_start_5aa
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_VIDEO_SIZE_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x59

    aput v12, v10, v11
    :try_end_5b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5aa .. :try_end_5b6} :catch_5b6

    :catch_5b6
    :try_start_5b6
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_SLOW_MOTION_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x5a

    aput v12, v10, v11
    :try_end_5c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b6 .. :try_end_5c2} :catch_5c2

    :catch_5c2
    :try_start_5c2
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_PREVIEW_STEADY:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x5b

    aput v12, v10, v11
    :try_end_5ce
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5c2 .. :try_end_5ce} :catch_5ce

    .line 7749
    :catch_5ce
    invoke-static {}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->values()[Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    move-result-object v10

    array-length v10, v10

    new-array v10, v10, [I

    sput-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree:[I

    :try_start_5d7
    sget-object v11, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->CANCEL:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->ordinal()I

    move-result v11

    aput v1, v10, v11
    :try_end_5df
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d7 .. :try_end_5df} :catch_5df

    :catch_5df
    :try_start_5df
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree:[I

    sget-object v11, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->EXEC:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->ordinal()I

    move-result v11

    aput v0, v10, v11
    :try_end_5e9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5df .. :try_end_5e9} :catch_5e9

    .line 7690
    :catch_5e9
    invoke-static {}, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;->values()[Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    move-result-object v10

    array-length v10, v10

    new-array v10, v10, [I

    sput-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$recorder$RecorderController$Result:[I

    :try_start_5f2
    sget-object v11, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;->MAX_DURATION_REACHED:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;->ordinal()I

    move-result v11

    aput v1, v10, v11
    :try_end_5fa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f2 .. :try_end_5fa} :catch_5fa

    :catch_5fa
    :try_start_5fa
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$recorder$RecorderController$Result:[I

    sget-object v11, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;->MAX_FILESIZE_REACHED:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;->ordinal()I

    move-result v11

    aput v0, v10, v11
    :try_end_604
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5fa .. :try_end_604} :catch_604

    .line 6301
    :catch_604
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;->values()[Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

    move-result-object v10

    array-length v10, v10

    new-array v10, v10, [I

    sput-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$NextCaptureCondition:[I

    :try_start_60d
    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;->READY:Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;->ordinal()I

    move-result v11

    aput v1, v10, v11
    :try_end_615
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60d .. :try_end_615} :catch_615

    :catch_615
    :try_start_615
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$NextCaptureCondition:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;->REQUESTED:Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;->ordinal()I

    move-result v11

    aput v0, v10, v11
    :try_end_61f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_615 .. :try_end_61f} :catch_61f

    :catch_61f
    :try_start_61f
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$NextCaptureCondition:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;->UNACCEPTABLE:Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;->ordinal()I

    move-result v11

    aput v2, v10, v11
    :try_end_629
    .catch Ljava/lang/NoSuchFieldError; {:try_start_61f .. :try_end_629} :catch_629

    .line 5285
    :catch_629
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->values()[Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v10

    array-length v10, v10

    new-array v10, v10, [I

    sput-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    :try_start_632
    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_OPERATION_RESTRICTED:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v11

    aput v1, v10, v11
    :try_end_63a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_632 .. :try_end_63a} :catch_63a

    :catch_63a
    :try_start_63a
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v11

    aput v0, v10, v11
    :try_end_644
    .catch Ljava/lang/NoSuchFieldError; {:try_start_63a .. :try_end_644} :catch_644

    :catch_644
    :try_start_644
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v11

    aput v2, v10, v11
    :try_end_64e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_644 .. :try_end_64e} :catch_64e

    :catch_64e
    :try_start_64e
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_WARNING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v11

    aput v3, v10, v11
    :try_end_658
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64e .. :try_end_658} :catch_658

    :catch_658
    :try_start_658
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_LOW_FRAME_RATE_VIDEO_RECORDING_IN_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v11

    aput v4, v10, v11
    :try_end_662
    .catch Ljava/lang/NoSuchFieldError; {:try_start_658 .. :try_end_662} :catch_662

    :catch_662
    :try_start_662
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v11

    aput v5, v10, v11
    :try_end_66c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_662 .. :try_end_66c} :catch_66c

    :catch_66c
    :try_start_66c
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_RECORDING_PAUSING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v11

    aput v6, v10, v11
    :try_end_676
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66c .. :try_end_676} :catch_676

    :catch_676
    :try_start_676
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_STORE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v11

    aput v7, v10, v11
    :try_end_680
    .catch Ljava/lang/NoSuchFieldError; {:try_start_676 .. :try_end_680} :catch_680

    .line 3509
    :catch_680
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->values()[Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v10

    array-length v10, v10

    new-array v10, v10, [I

    sput-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$SessionType:[I

    :try_start_689
    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_LOW_LIGHT:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->ordinal()I

    move-result v11

    aput v1, v10, v11
    :try_end_691
    .catch Ljava/lang/NoSuchFieldError; {:try_start_689 .. :try_end_691} :catch_691

    :catch_691
    :try_start_691
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$SessionType:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_HDR:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->ordinal()I

    move-result v11

    aput v0, v10, v11
    :try_end_69b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_691 .. :try_end_69b} :catch_69b

    :catch_69b
    :try_start_69b
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$SessionType:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_NIGHT_PORTRAIT:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->ordinal()I

    move-result v11

    aput v2, v10, v11
    :try_end_6a5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_69b .. :try_end_6a5} :catch_6a5

    :catch_6a5
    :try_start_6a5
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$SessionType:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_BOKEH:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->ordinal()I

    move-result v11

    aput v3, v10, v11
    :try_end_6af
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a5 .. :try_end_6af} :catch_6af

    :catch_6af
    :try_start_6af
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$SessionType:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_WALKING:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->ordinal()I

    move-result v11

    aput v4, v10, v11
    :try_end_6b9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6af .. :try_end_6b9} :catch_6b9

    :catch_6b9
    :try_start_6b9
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$SessionType:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_NORMAL:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->ordinal()I

    move-result v11

    aput v5, v10, v11
    :try_end_6c3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b9 .. :try_end_6c3} :catch_6c3

    .line 2787
    :catch_6c3
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->values()[Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v10

    array-length v10, v10

    new-array v10, v10, [I

    sput-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState:[I

    :try_start_6cc
    sget-object v11, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_SCAN_DONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->ordinal()I

    move-result v11

    aput v1, v10, v11
    :try_end_6d4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6cc .. :try_end_6d4} :catch_6d4

    :catch_6d4
    :try_start_6d4
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState:[I

    sget-object v11, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->ordinal()I

    move-result v11

    aput v0, v10, v11
    :try_end_6de
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6d4 .. :try_end_6de} :catch_6de

    :catch_6de
    :try_start_6de
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState:[I

    sget-object v11, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_DONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->ordinal()I

    move-result v11

    aput v2, v10, v11
    :try_end_6e8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6de .. :try_end_6e8} :catch_6e8

    :catch_6e8
    :try_start_6e8
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState:[I

    sget-object v11, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_SCAN_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->ordinal()I

    move-result v11

    aput v3, v10, v11
    :try_end_6f2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e8 .. :try_end_6f2} :catch_6f2

    :catch_6f2
    :try_start_6f2
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState:[I

    sget-object v11, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_SHUTTER_DONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->ordinal()I

    move-result v11

    aput v4, v10, v11
    :try_end_6fc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6f2 .. :try_end_6fc} :catch_6fc

    :catch_6fc
    :try_start_6fc
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState:[I

    sget-object v11, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->NOT_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->ordinal()I

    move-result v11

    aput v5, v10, v11
    :try_end_706
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6fc .. :try_end_706} :catch_706

    :catch_706
    :try_start_706
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState:[I

    sget-object v11, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_RELEASED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->ordinal()I

    move-result v11

    aput v6, v10, v11
    :try_end_710
    .catch Ljava/lang/NoSuchFieldError; {:try_start_706 .. :try_end_710} :catch_710

    .line 1957
    :catch_710
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    move-result-object v10

    array-length v10, v10

    new-array v10, v10, [I

    sput-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    :try_start_719
    sget-object v11, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result v11

    aput v1, v10, v11
    :try_end_721
    .catch Ljava/lang/NoSuchFieldError; {:try_start_719 .. :try_end_721} :catch_721

    :catch_721
    :try_start_721
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    sget-object v11, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result v11

    aput v0, v10, v11
    :try_end_72b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_721 .. :try_end_72b} :catch_72b

    :catch_72b
    :try_start_72b
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    sget-object v11, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result v11

    aput v2, v10, v11
    :try_end_735
    .catch Ljava/lang/NoSuchFieldError; {:try_start_72b .. :try_end_735} :catch_735

    .line 1109
    :catch_735
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v10

    array-length v10, v10

    new-array v10, v10, [I

    sput-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    :try_start_73e
    sget-object v11, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v11

    aput v1, v10, v11
    :try_end_746
    .catch Ljava/lang/NoSuchFieldError; {:try_start_73e .. :try_end_746} :catch_746

    :catch_746
    :try_start_746
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v10

    aput v0, v1, v10
    :try_end_750
    .catch Ljava/lang/NoSuchFieldError; {:try_start_746 .. :try_end_750} :catch_750

    :catch_750
    :try_start_750
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_75a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_750 .. :try_end_75a} :catch_75a

    :catch_75a
    :try_start_75a
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_764
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75a .. :try_end_764} :catch_764

    :catch_764
    :try_start_764
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_76e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_764 .. :try_end_76e} :catch_76e

    :catch_76e
    :try_start_76e
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_778
    .catch Ljava/lang/NoSuchFieldError; {:try_start_76e .. :try_end_778} :catch_778

    :catch_778
    :try_start_778
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_782
    .catch Ljava/lang/NoSuchFieldError; {:try_start_778 .. :try_end_782} :catch_782

    :catch_782
    :try_start_782
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_78c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_782 .. :try_end_78c} :catch_78c

    :catch_78c
    :try_start_78c
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aput v8, v0, v1
    :try_end_796
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78c .. :try_end_796} :catch_796

    :catch_796
    :try_start_796
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aput v9, v0, v1
    :try_end_7a0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_796 .. :try_end_7a0} :catch_7a0

    :catch_7a0
    return-void
.end method
