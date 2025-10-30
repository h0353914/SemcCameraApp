.class synthetic Lcom/sonyericsson/android/camera/controller/StateMachine$12;
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

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$NextCaptureCondition:[I

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

    .line 10065
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->values()[Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageType:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageType:[I

    sget-object v2, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_14

    :catch_14
    const/4 v1, 0x2

    :try_start_15
    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageType:[I

    sget-object v3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_1f

    .line 8619
    :catch_1f
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->values()[Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

    :try_start_28
    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

    sget-object v3, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->BURST:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_32} :catch_32

    :catch_32
    :try_start_32
    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

    sget-object v3, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->VIDEO:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3c} :catch_3c

    :catch_3c
    const/4 v2, 0x3

    :try_start_3d
    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

    sget-object v4, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_47} :catch_47

    .line 8577
    :catch_47
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->values()[Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$device$CameraInfo$CameraId:[I

    :try_start_50
    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$device$CameraInfo$CameraId:[I

    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_5a} :catch_5a

    :catch_5a
    :try_start_5a
    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$device$CameraInfo$CameraId:[I

    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_64} :catch_64

    .line 7579
    :catch_64
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->values()[Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    :try_start_6d
    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v4, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_PHOTO_STACK_INITIALIZED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_77
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6d .. :try_end_77} :catch_77

    :catch_77
    :try_start_77
    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v4, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_HEAD_UP_DISPLAY_INITIALIZED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_81
    .catch Ljava/lang/NoSuchFieldError; {:try_start_77 .. :try_end_81} :catch_81

    :catch_81
    :try_start_81
    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v4, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_SCENE_MODE_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_8b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_81 .. :try_end_8b} :catch_8b

    :catch_8b
    const/4 v3, 0x4

    :try_start_8c
    sget-object v4, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v5, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_AUTO_FLASH_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_96
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c .. :try_end_96} :catch_96

    :catch_96
    const/4 v4, 0x5

    :try_start_97
    sget-object v5, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v6, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_FACE_DETECTED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_a1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_97 .. :try_end_a1} :catch_a1

    :catch_a1
    const/4 v5, 0x6

    :try_start_a2
    sget-object v6, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v7, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_OBJECT_TRACKED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_ac
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a2 .. :try_end_ac} :catch_ac

    :catch_ac
    const/4 v6, 0x7

    :try_start_ad
    sget-object v7, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_ORIENTATION_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_b7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ad .. :try_end_b7} :catch_b7

    :catch_b7
    const/16 v7, 0x8

    :try_start_b9
    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_LAZY_INITIALIZATION_TASK_RUN:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_c3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b9 .. :try_end_c3} :catch_c3

    :catch_c3
    const/16 v8, 0x9

    :try_start_c5
    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_OBJECT_TRACKING_LOST:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_cf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c5 .. :try_end_cf} :catch_cf

    :catch_cf
    const/16 v9, 0xa

    :try_start_d1
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_GESTURE_SHUTTER_SETTING_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v11

    aput v9, v10, v11
    :try_end_db
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d1 .. :try_end_db} :catch_db

    :catch_db
    const/16 v10, 0xb

    :try_start_dd
    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_TEMPORARY_THUMBNAIL_CREATED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v12

    aput v10, v11, v12
    :try_end_e7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_dd .. :try_end_e7} :catch_e7

    :catch_e7
    const/16 v11, 0xc

    :try_start_e9
    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v13, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_RECORDING_STARTED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v13

    aput v11, v12, v13
    :try_end_f3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e9 .. :try_end_f3} :catch_f3

    :catch_f3
    const/16 v12, 0xd

    :try_start_f5
    sget-object v13, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v14, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_PREVIEW_STARTED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v14}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v14

    aput v12, v13, v14
    :try_end_ff
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f5 .. :try_end_ff} :catch_ff

    :catch_ff
    const/16 v13, 0xe

    :try_start_101
    sget-object v14, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_EVF_HIDE:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v15

    aput v13, v14, v15
    :try_end_10b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_101 .. :try_end_10b} :catch_10b

    :catch_10b
    const/16 v14, 0xf

    :try_start_10d
    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_LOGICAL_MODE_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v16

    aput v14, v15, v16
    :try_end_117
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10d .. :try_end_117} :catch_117

    :catch_117
    :try_start_117
    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_CROP_REGION_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x10

    aput v17, v15, v16
    :try_end_123
    .catch Ljava/lang/NoSuchFieldError; {:try_start_117 .. :try_end_123} :catch_123

    .line 7596
    :catch_123
    invoke-static {}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->values()[Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    :try_start_12c
    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->PHOTO_READY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v16

    aput v0, v15, v16
    :try_end_136
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12c .. :try_end_136} :catch_136

    :catch_136
    :try_start_136
    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->VIDEO_READY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v16

    aput v1, v15, v16
    :try_end_140
    .catch Ljava/lang/NoSuchFieldError; {:try_start_136 .. :try_end_140} :catch_140

    :catch_140
    :try_start_140
    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->VIDEO_RECORDING:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v16

    aput v2, v15, v16
    :try_end_14a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_140 .. :try_end_14a} :catch_14a

    .line 7231
    :catch_14a
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->values()[Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    :try_start_153
    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_INITIALIZE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v16

    aput v0, v15, v16
    :try_end_15d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_153 .. :try_end_15d} :catch_15d

    :catch_15d
    :try_start_15d
    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_RESUME:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v16

    aput v1, v15, v16
    :try_end_167
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15d .. :try_end_167} :catch_167

    :catch_167
    :try_start_167
    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_RESUME_TIMEOUT:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v16

    aput v2, v15, v16
    :try_end_171
    .catch Ljava/lang/NoSuchFieldError; {:try_start_167 .. :try_end_171} :catch_171

    :catch_171
    :try_start_171
    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_PAUSE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v16

    aput v3, v15, v16
    :try_end_17b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_171 .. :try_end_17b} :catch_17b

    :catch_17b
    :try_start_17b
    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_FINALIZE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v16

    aput v4, v15, v16
    :try_end_185
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17b .. :try_end_185} :catch_185

    :catch_185
    :try_start_185
    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_HEATED_OVER_WARNING:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v16

    aput v5, v15, v16
    :try_end_18f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_185 .. :try_end_18f} :catch_18f

    :catch_18f
    :try_start_18f
    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_HEATED_OVER_WARNING_EXTRA:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v16

    aput v6, v15, v16
    :try_end_199
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18f .. :try_end_199} :catch_199

    :catch_199
    :try_start_199
    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_HEATED_OVER_COOLING_LOW:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v16

    aput v7, v15, v16
    :try_end_1a3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_199 .. :try_end_1a3} :catch_1a3

    :catch_1a3
    :try_start_1a3
    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_HEATED_OVER_COOLING_ULTRA_LOW:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v16

    aput v8, v15, v16
    :try_end_1ad
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a3 .. :try_end_1ad} :catch_1ad

    :catch_1ad
    :try_start_1ad
    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_REACH_BATTERY_LIMIT:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v16

    aput v9, v15, v16
    :try_end_1b7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ad .. :try_end_1b7} :catch_1b7

    :catch_1b7
    :try_start_1b7
    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_REACH_BATTERY_LOW:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v16

    aput v10, v15, v16
    :try_end_1c1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b7 .. :try_end_1c1} :catch_1c1

    :catch_1c1
    :try_start_1c1
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_BATTERY_LEVEL_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v15

    aput v11, v10, v15
    :try_end_1cb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c1 .. :try_end_1cb} :catch_1cb

    :catch_1cb
    :try_start_1cb
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_HEATED_OVER_CRITICAL:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    aput v12, v10, v11
    :try_end_1d5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1cb .. :try_end_1d5} :catch_1d5

    :catch_1d5
    :try_start_1d5
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_HEATED_OVER_NORMAL:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    aput v13, v10, v11
    :try_end_1df
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d5 .. :try_end_1df} :catch_1df

    :catch_1df
    :try_start_1df
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_EVF_PREPARED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    aput v14, v10, v11
    :try_end_1e9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1df .. :try_end_1e9} :catch_1e9

    :catch_1e9
    :try_start_1e9
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_INITIAL_AUTO_FOCUS_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x10

    aput v12, v10, v11
    :try_end_1f5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e9 .. :try_end_1f5} :catch_1f5

    :catch_1f5
    :try_start_1f5
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_AUTO_FOCUS_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x11

    aput v12, v10, v11
    :try_end_201
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f5 .. :try_end_201} :catch_201

    :catch_201
    :try_start_201
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_PRE_SHUTTER_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x12

    aput v12, v10, v11
    :try_end_20d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_201 .. :try_end_20d} :catch_20d

    :catch_20d
    :try_start_20d
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_SHUTTER_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x13

    aput v12, v10, v11
    :try_end_219
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20d .. :try_end_219} :catch_219

    :catch_219
    :try_start_219
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_PREPARE_BURST_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x14

    aput v12, v10, v11
    :try_end_225
    .catch Ljava/lang/NoSuchFieldError; {:try_start_219 .. :try_end_225} :catch_225

    :catch_225
    :try_start_225
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_PRE_TAKE_PICTURE_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x15

    aput v12, v10, v11
    :try_end_231
    .catch Ljava/lang/NoSuchFieldError; {:try_start_225 .. :try_end_231} :catch_231

    :catch_231
    :try_start_231
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_TAKE_PICTURE_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x16

    aput v12, v10, v11
    :try_end_23d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_231 .. :try_end_23d} :catch_23d

    :catch_23d
    :try_start_23d
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_VIDEO_RECORDING_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x17

    aput v12, v10, v11
    :try_end_249
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23d .. :try_end_249} :catch_249

    :catch_249
    :try_start_249
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_TOUCH_CONTENT_PROGRESS:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x18

    aput v12, v10, v11
    :try_end_255
    .catch Ljava/lang/NoSuchFieldError; {:try_start_249 .. :try_end_255} :catch_255

    :catch_255
    :try_start_255
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_STORE_REQUESTED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x19

    aput v12, v10, v11
    :try_end_261
    .catch Ljava/lang/NoSuchFieldError; {:try_start_255 .. :try_end_261} :catch_261

    :catch_261
    :try_start_261
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_STORE_COMPLETED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x1a

    aput v12, v10, v11
    :try_end_26d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_261 .. :try_end_26d} :catch_26d

    :catch_26d
    :try_start_26d
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_KEY_MENU:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x1b

    aput v12, v10, v11
    :try_end_279
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26d .. :try_end_279} :catch_279

    :catch_279
    :try_start_279
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_START_TRANSITION_OPERATION:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x1c

    aput v12, v10, v11
    :try_end_285
    .catch Ljava/lang/NoSuchFieldError; {:try_start_279 .. :try_end_285} :catch_285

    :catch_285
    :try_start_285
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_FINISH_TRANSITION_OPERATION:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x1d

    aput v12, v10, v11
    :try_end_291
    .catch Ljava/lang/NoSuchFieldError; {:try_start_285 .. :try_end_291} :catch_291

    :catch_291
    :try_start_291
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CLEAR_FOCUS:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x1e

    aput v12, v10, v11
    :try_end_29d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_291 .. :try_end_29d} :catch_29d

    :catch_29d
    :try_start_29d
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_DIALOG_OPENED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x1f

    aput v12, v10, v11
    :try_end_2a9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29d .. :try_end_2a9} :catch_2a9

    :catch_2a9
    :try_start_2a9
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_DIALOG_CLOSED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x20

    aput v12, v10, v11
    :try_end_2b5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a9 .. :try_end_2b5} :catch_2b5

    :catch_2b5
    :try_start_2b5
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_STORAGE_ERROR:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x21

    aput v12, v10, v11
    :try_end_2c1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b5 .. :try_end_2c1} :catch_2c1

    :catch_2c1
    :try_start_2c1
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_STORAGE_MOUNTED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x22

    aput v12, v10, v11
    :try_end_2cd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c1 .. :try_end_2cd} :catch_2cd

    :catch_2cd
    :try_start_2cd
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_SET_TOUCHED_POSITION:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x23

    aput v12, v10, v11
    :try_end_2d9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2cd .. :try_end_2d9} :catch_2d9

    :catch_2d9
    :try_start_2d9
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x24

    aput v12, v10, v11
    :try_end_2e5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d9 .. :try_end_2e5} :catch_2e5

    :catch_2e5
    :try_start_2e5
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_RECORDING_START_WAIT_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x25

    aput v12, v10, v11
    :try_end_2f1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e5 .. :try_end_2f1} :catch_2f1

    :catch_2f1
    :try_start_2f1
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_RECORDING_ERROR:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x26

    aput v12, v10, v11
    :try_end_2fd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f1 .. :try_end_2fd} :catch_2fd

    :catch_2fd
    :try_start_2fd
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CHANGE_SELECTED_FACE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x27

    aput v12, v10, v11
    :try_end_309
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2fd .. :try_end_309} :catch_309

    :catch_309
    :try_start_309
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_SET_SELECTED_OBJECT_POSITION:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x28

    aput v12, v10, v11
    :try_end_315
    .catch Ljava/lang/NoSuchFieldError; {:try_start_309 .. :try_end_315} :catch_315

    :catch_315
    :try_start_315
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_DESELECT_OBJECT_POSITION:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x29

    aput v12, v10, v11
    :try_end_321
    .catch Ljava/lang/NoSuchFieldError; {:try_start_315 .. :try_end_321} :catch_321

    :catch_321
    :try_start_321
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_START_AF_AFTER_OBJECT_TRACKED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x2a

    aput v12, v10, v11
    :try_end_32d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_321 .. :try_end_32d} :catch_32d

    :catch_32d
    :try_start_32d
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_BURST_SHUTTER_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x2b

    aput v12, v10, v11
    :try_end_339
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32d .. :try_end_339} :catch_339

    :catch_339
    :try_start_339
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_BURST_STORE_COMPLETED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x2c

    aput v12, v10, v11
    :try_end_345
    .catch Ljava/lang/NoSuchFieldError; {:try_start_339 .. :try_end_345} :catch_345

    :catch_345
    :try_start_345
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_PREDICTIVE_CAPTURE_GROUP_STORE_COMPLETED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x2d

    aput v12, v10, v11
    :try_end_351
    .catch Ljava/lang/NoSuchFieldError; {:try_start_345 .. :try_end_351} :catch_351

    :catch_351
    :try_start_351
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_ONE_PREVIEW_FRAME_UPDATED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x2e

    aput v12, v10, v11
    :try_end_35d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_351 .. :try_end_35d} :catch_35d

    :catch_35d
    :try_start_35d
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_CONTINUOUS_PREVIEW_FRAME_UPDATED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x2f

    aput v12, v10, v11
    :try_end_369
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35d .. :try_end_369} :catch_369

    :catch_369
    :try_start_369
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_SWITCH_CAMERA:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x30

    aput v12, v10, v11
    :try_end_375
    .catch Ljava/lang/NoSuchFieldError; {:try_start_369 .. :try_end_375} :catch_375

    :catch_375
    :try_start_375
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CANCEL_TOUCHED_POSITION:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x31

    aput v12, v10, v11
    :try_end_381
    .catch Ljava/lang/NoSuchFieldError; {:try_start_375 .. :try_end_381} :catch_381

    :catch_381
    :try_start_381
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_SEMIAUTO_ENABLED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x32

    aput v12, v10, v11
    :try_end_38d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_381 .. :try_end_38d} :catch_38d

    :catch_38d
    :try_start_38d
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_SEMIAUTO_DISABLED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x33

    aput v12, v10, v11
    :try_end_399
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38d .. :try_end_399} :catch_399

    :catch_399
    :try_start_399
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_AMBER_BLUE_COLOR_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x34

    aput v12, v10, v11
    :try_end_3a5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_399 .. :try_end_3a5} :catch_3a5

    :catch_3a5
    :try_start_3a5
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_BRIGHTNESS_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x35

    aput v12, v10, v11
    :try_end_3b1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a5 .. :try_end_3b1} :catch_3b1

    :catch_3b1
    :try_start_3b1
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_BOKEH_ENABLED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x36

    aput v12, v10, v11
    :try_end_3bd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b1 .. :try_end_3bd} :catch_3bd

    :catch_3bd
    :try_start_3bd
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_BOKEH_DISABLED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x37

    aput v12, v10, v11
    :try_end_3c9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3bd .. :try_end_3c9} :catch_3c9

    :catch_3c9
    :try_start_3c9
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_BOKEH_STRENGTH_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x38

    aput v12, v10, v11
    :try_end_3d5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c9 .. :try_end_3d5} :catch_3d5

    :catch_3d5
    :try_start_3d5
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_BOKEH_CONDITION_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x39

    aput v12, v10, v11
    :try_end_3e1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d5 .. :try_end_3e1} :catch_3e1

    :catch_3e1
    :try_start_3e1
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_SELFTIMER_CANCEL:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x3a

    aput v12, v10, v11
    :try_end_3ed
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e1 .. :try_end_3ed} :catch_3ed

    :catch_3ed
    :try_start_3ed
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_CAMERA_DEVICE_OPENED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x3b

    aput v12, v10, v11
    :try_end_3f9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3ed .. :try_end_3f9} :catch_3f9

    :catch_3f9
    :try_start_3f9
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_CAMERA_DEVICE_CLOSED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x3c

    aput v12, v10, v11
    :try_end_405
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f9 .. :try_end_405} :catch_405

    :catch_405
    :try_start_405
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_CAMERA_AVAILABLE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x3d

    aput v12, v10, v11
    :try_end_411
    .catch Ljava/lang/NoSuchFieldError; {:try_start_405 .. :try_end_411} :catch_411

    :catch_411
    :try_start_411
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_STOP_RECORDING_SLOW_MOTION_BUTTON_RELEASE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x3e

    aput v12, v10, v11
    :try_end_41d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_411 .. :try_end_41d} :catch_41d

    :catch_41d
    :try_start_41d
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_SLOW_MOTION_FEEDBACK_ANIMATION_END:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x3f

    aput v12, v10, v11
    :try_end_429
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41d .. :try_end_429} :catch_429

    :catch_429
    :try_start_429
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_HIGH_FRAME_RATE_RECORDING_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x40

    aput v12, v10, v11
    :try_end_435
    .catch Ljava/lang/NoSuchFieldError; {:try_start_429 .. :try_end_435} :catch_435

    :catch_435
    :try_start_435
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ANGLE_CHANGE_START:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x41

    aput v12, v10, v11
    :try_end_441
    .catch Ljava/lang/NoSuchFieldError; {:try_start_435 .. :try_end_441} :catch_441

    :catch_441
    :try_start_441
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x42

    aput v12, v10, v11
    :try_end_44d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_441 .. :try_end_44d} :catch_44d

    :catch_44d
    :try_start_44d
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_START_CAPTURE_COUNTDOWN:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x43

    aput v12, v10, v11
    :try_end_459
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44d .. :try_end_459} :catch_459

    :catch_459
    :try_start_459
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x44

    aput v12, v10, v11
    :try_end_465
    .catch Ljava/lang/NoSuchFieldError; {:try_start_459 .. :try_end_465} :catch_465

    :catch_465
    :try_start_465
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_BURST:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x45

    aput v12, v10, v11
    :try_end_471
    .catch Ljava/lang/NoSuchFieldError; {:try_start_465 .. :try_end_471} :catch_471

    :catch_471
    :try_start_471
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_CANCEL:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x46

    aput v12, v10, v11
    :try_end_47d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_471 .. :try_end_47d} :catch_47d

    :catch_47d
    :try_start_47d
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_RECORD_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x47

    aput v12, v10, v11
    :try_end_489
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47d .. :try_end_489} :catch_489

    :catch_489
    :try_start_489
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_START_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x48

    aput v12, v10, v11
    :try_end_495
    .catch Ljava/lang/NoSuchFieldError; {:try_start_489 .. :try_end_495} :catch_495

    :catch_495
    :try_start_495
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_STOP_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x49

    aput v12, v10, v11
    :try_end_4a1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_495 .. :try_end_4a1} :catch_4a1

    :catch_4a1
    :try_start_4a1
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_RESUME_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x4a

    aput v12, v10, v11
    :try_end_4ad
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a1 .. :try_end_4ad} :catch_4ad

    :catch_4ad
    :try_start_4ad
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_PAUSE_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x4b

    aput v12, v10, v11
    :try_end_4b9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4ad .. :try_end_4b9} :catch_4b9

    :catch_4b9
    :try_start_4b9
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_TRIGGER_SLOW_MOTION:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x4c

    aput v12, v10, v11
    :try_end_4c5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b9 .. :try_end_4c5} :catch_4c5

    :catch_4c5
    :try_start_4c5
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_REQUEST_UPDATE_HIGH_SENSITIVITY_FUSION_MODE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x4d

    aput v12, v10, v11
    :try_end_4d1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c5 .. :try_end_4d1} :catch_4d1

    :catch_4d1
    :try_start_4d1
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_FUSION_CONDITION_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x4e

    aput v12, v10, v11
    :try_end_4dd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d1 .. :try_end_4dd} :catch_4dd

    :catch_4dd
    :try_start_4dd
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_STORAGE_READY_STATE_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x4f

    aput v12, v10, v11
    :try_end_4e9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4dd .. :try_end_4e9} :catch_4e9

    :catch_4e9
    :try_start_4e9
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CHANGE_CAPTURING_MODE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x50

    aput v12, v10, v11
    :try_end_4f5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e9 .. :try_end_4f5} :catch_4f5

    :catch_4f5
    :try_start_4f5
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ZOOM_PREPARE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x51

    aput v12, v10, v11
    :try_end_501
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f5 .. :try_end_501} :catch_501

    :catch_501
    :try_start_501
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ZOOM_PERFORM:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x52

    aput v12, v10, v11
    :try_end_50d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_501 .. :try_end_50d} :catch_50d

    :catch_50d
    :try_start_50d
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ZOOM_FINISH:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v11

    const/16 v12, 0x53

    aput v12, v10, v11
    :try_end_519
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50d .. :try_end_519} :catch_519

    .line 6452
    :catch_519
    invoke-static {}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->values()[Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    move-result-object v10

    array-length v10, v10

    new-array v10, v10, [I

    sput-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree:[I

    :try_start_522
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree:[I

    sget-object v11, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->CANCEL:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->ordinal()I

    move-result v11

    aput v0, v10, v11
    :try_end_52c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_522 .. :try_end_52c} :catch_52c

    :catch_52c
    :try_start_52c
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree:[I

    sget-object v11, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->EXEC:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->ordinal()I

    move-result v11

    aput v1, v10, v11
    :try_end_536
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52c .. :try_end_536} :catch_536

    .line 6390
    :catch_536
    invoke-static {}, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;->values()[Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    move-result-object v10

    array-length v10, v10

    new-array v10, v10, [I

    sput-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$recorder$RecorderController$Result:[I

    :try_start_53f
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$recorder$RecorderController$Result:[I

    sget-object v11, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;->MAX_DURATION_REACHED:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;->ordinal()I

    move-result v11

    aput v0, v10, v11
    :try_end_549
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53f .. :try_end_549} :catch_549

    :catch_549
    :try_start_549
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$recorder$RecorderController$Result:[I

    sget-object v11, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;->MAX_FILESIZE_REACHED:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;->ordinal()I

    move-result v11

    aput v1, v10, v11
    :try_end_553
    .catch Ljava/lang/NoSuchFieldError; {:try_start_549 .. :try_end_553} :catch_553

    .line 5048
    :catch_553
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;->values()[Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

    move-result-object v10

    array-length v10, v10

    new-array v10, v10, [I

    sput-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$NextCaptureCondition:[I

    :try_start_55c
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$NextCaptureCondition:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;->READY:Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;->ordinal()I

    move-result v11

    aput v0, v10, v11
    :try_end_566
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55c .. :try_end_566} :catch_566

    :catch_566
    :try_start_566
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$NextCaptureCondition:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;->REQUESTED:Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;->ordinal()I

    move-result v11

    aput v1, v10, v11
    :try_end_570
    .catch Ljava/lang/NoSuchFieldError; {:try_start_566 .. :try_end_570} :catch_570

    :catch_570
    :try_start_570
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$NextCaptureCondition:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;->UNACCEPTABLE:Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;->ordinal()I

    move-result v11

    aput v2, v10, v11
    :try_end_57a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_570 .. :try_end_57a} :catch_57a

    .line 4194
    :catch_57a
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->values()[Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v10

    array-length v10, v10

    new-array v10, v10, [I

    sput-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    :try_start_583
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_OPERATION_RESTRICTED:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v11

    aput v0, v10, v11
    :try_end_58d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_583 .. :try_end_58d} :catch_58d

    :catch_58d
    :try_start_58d
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v11

    aput v1, v10, v11
    :try_end_597
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58d .. :try_end_597} :catch_597

    :catch_597
    :try_start_597
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v11

    aput v2, v10, v11
    :try_end_5a1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_597 .. :try_end_5a1} :catch_5a1

    :catch_5a1
    :try_start_5a1
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_WARNING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v11

    aput v3, v10, v11
    :try_end_5ab
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a1 .. :try_end_5ab} :catch_5ab

    :catch_5ab
    :try_start_5ab
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_LOW_FRAME_RATE_VIDEO_RECORDING_IN_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v11

    aput v4, v10, v11
    :try_end_5b5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5ab .. :try_end_5b5} :catch_5b5

    :catch_5b5
    :try_start_5b5
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v11

    aput v5, v10, v11
    :try_end_5bf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b5 .. :try_end_5bf} :catch_5bf

    :catch_5bf
    :try_start_5bf
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_RECORDING_PAUSING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v11

    aput v6, v10, v11
    :try_end_5c9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5bf .. :try_end_5c9} :catch_5c9

    :catch_5c9
    :try_start_5c9
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_STORE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v11

    aput v7, v10, v11
    :try_end_5d3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5c9 .. :try_end_5d3} :catch_5d3

    .line 2282
    :catch_5d3
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->values()[Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v10

    array-length v10, v10

    new-array v10, v10, [I

    sput-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState:[I

    :try_start_5dc
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState:[I

    sget-object v11, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_SCAN_DONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->ordinal()I

    move-result v11

    aput v0, v10, v11
    :try_end_5e6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5dc .. :try_end_5e6} :catch_5e6

    :catch_5e6
    :try_start_5e6
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState:[I

    sget-object v11, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->ordinal()I

    move-result v11

    aput v1, v10, v11
    :try_end_5f0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5e6 .. :try_end_5f0} :catch_5f0

    :catch_5f0
    :try_start_5f0
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState:[I

    sget-object v11, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_DONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->ordinal()I

    move-result v11

    aput v2, v10, v11
    :try_end_5fa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f0 .. :try_end_5fa} :catch_5fa

    :catch_5fa
    :try_start_5fa
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState:[I

    sget-object v11, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_SCAN_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->ordinal()I

    move-result v11

    aput v3, v10, v11
    :try_end_604
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5fa .. :try_end_604} :catch_604

    :catch_604
    :try_start_604
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState:[I

    sget-object v11, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_SHUTTER_DONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->ordinal()I

    move-result v11

    aput v4, v10, v11
    :try_end_60e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_604 .. :try_end_60e} :catch_60e

    :catch_60e
    :try_start_60e
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState:[I

    sget-object v11, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->NOT_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->ordinal()I

    move-result v11

    aput v5, v10, v11
    :try_end_618
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60e .. :try_end_618} :catch_618

    :catch_618
    :try_start_618
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState:[I

    sget-object v11, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_RELEASED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->ordinal()I

    move-result v11

    aput v6, v10, v11
    :try_end_622
    .catch Ljava/lang/NoSuchFieldError; {:try_start_618 .. :try_end_622} :catch_622

    .line 1593
    :catch_622
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    move-result-object v10

    array-length v10, v10

    new-array v10, v10, [I

    sput-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    :try_start_62b
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    sget-object v11, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result v11

    aput v0, v10, v11
    :try_end_635
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62b .. :try_end_635} :catch_635

    :catch_635
    :try_start_635
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    sget-object v11, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result v11

    aput v1, v10, v11
    :try_end_63f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_635 .. :try_end_63f} :catch_63f

    :catch_63f
    :try_start_63f
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    sget-object v11, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result v11

    aput v2, v10, v11
    :try_end_649
    .catch Ljava/lang/NoSuchFieldError; {:try_start_63f .. :try_end_649} :catch_649

    .line 983
    :catch_649
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v10

    array-length v10, v10

    new-array v10, v10, [I

    sput-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    :try_start_652
    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v11, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v11

    aput v0, v10, v11
    :try_end_65c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_652 .. :try_end_65c} :catch_65c

    :catch_65c
    :try_start_65c
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v10

    aput v1, v0, v10
    :try_end_666
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65c .. :try_end_666} :catch_666

    :catch_666
    :try_start_666
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_670
    .catch Ljava/lang/NoSuchFieldError; {:try_start_666 .. :try_end_670} :catch_670

    :catch_670
    :try_start_670
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_67a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_670 .. :try_end_67a} :catch_67a

    :catch_67a
    :try_start_67a
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_684
    .catch Ljava/lang/NoSuchFieldError; {:try_start_67a .. :try_end_684} :catch_684

    :catch_684
    :try_start_684
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_68e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_684 .. :try_end_68e} :catch_68e

    :catch_68e
    :try_start_68e
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_698
    .catch Ljava/lang/NoSuchFieldError; {:try_start_68e .. :try_end_698} :catch_698

    :catch_698
    :try_start_698
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_6a2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_698 .. :try_end_6a2} :catch_6a2

    :catch_6a2
    :try_start_6a2
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aput v8, v0, v1
    :try_end_6ac
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a2 .. :try_end_6ac} :catch_6ac

    :catch_6ac
    :try_start_6ac
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$12;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aput v9, v0, v1
    :try_end_6b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6ac .. :try_end_6b6} :catch_6b6

    :catch_6b6
    return-void
.end method
