.class synthetic Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$LaunchCondition$ExtraOperation:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$NavigatorContents:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$SideTouchArea:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$AutoReview:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$TouchCapture:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$controller$AbstractDraggingEventHandler$Direction:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$BurstRejectedReason:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$view$ViewFinderImpl$PredictiveLaunchHideTrigger:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationType:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialController$TutorialType:[I

.field static final synthetic $SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

.field static final synthetic $SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageState:[I

.field static final synthetic $SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 18

    .line 10059
    invoke-static {}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->values()[Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinderImpl$PredictiveLaunchHideTrigger:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinderImpl$PredictiveLaunchHideTrigger:[I

    sget-object v2, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_14

    :catch_14
    const/4 v1, 0x2

    :try_start_15
    sget-object v2, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinderImpl$PredictiveLaunchHideTrigger:[I

    sget-object v3, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->SIDE_SENSING:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_1f

    :catch_1f
    const/4 v2, 0x3

    :try_start_20
    sget-object v3, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinderImpl$PredictiveLaunchHideTrigger:[I

    sget-object v4, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->VOLUME_KEY_SHUTTER:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_2a} :catch_2a

    :catch_2a
    const/4 v3, 0x4

    :try_start_2b
    sget-object v4, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinderImpl$PredictiveLaunchHideTrigger:[I

    sget-object v5, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->TOUCH_UP_CAPTURE:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_35} :catch_35

    .line 9763
    :catch_35
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->values()[Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

    :try_start_3e
    sget-object v4, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

    sget-object v5, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->BURST:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_48} :catch_48

    :catch_48
    :try_start_48
    sget-object v4, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

    sget-object v5, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO_DURING_REC:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_52} :catch_52

    :catch_52
    :try_start_52
    sget-object v4, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

    sget-object v5, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_5c} :catch_5c

    :catch_5c
    :try_start_5c
    sget-object v4, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

    sget-object v5, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->VIDEO:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_66
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5c .. :try_end_66} :catch_66

    :catch_66
    const/4 v4, 0x5

    :try_start_67
    sget-object v5, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

    sget-object v6, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->TIME_SHIFT:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_71
    .catch Ljava/lang/NoSuchFieldError; {:try_start_67 .. :try_end_71} :catch_71

    .line 9337
    :catch_71
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->values()[Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageState:[I

    :try_start_7a
    sget-object v5, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageState:[I

    sget-object v6, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_84} :catch_84

    :catch_84
    :try_start_84
    sget-object v5, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageState:[I

    sget-object v6, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->AVAILABLE_NEAR_FULL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_8e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_8e} :catch_8e

    :catch_8e
    :try_start_8e
    sget-object v5, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageState:[I

    sget-object v6, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->FULL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_98
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8e .. :try_end_98} :catch_98

    :catch_98
    :try_start_98
    sget-object v5, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageState:[I

    sget-object v6, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->UNAVAILABLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->ordinal()I

    move-result v6

    aput v3, v5, v6
    :try_end_a2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_98 .. :try_end_a2} :catch_a2

    :catch_a2
    :try_start_a2
    sget-object v5, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageState:[I

    sget-object v6, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->REMOVED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_ac
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a2 .. :try_end_ac} :catch_ac

    :catch_ac
    const/4 v5, 0x6

    :try_start_ad
    sget-object v6, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageState:[I

    sget-object v7, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->READ_ONLY:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_b7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ad .. :try_end_b7} :catch_b7

    :catch_b7
    const/4 v6, 0x7

    :try_start_b8
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageState:[I

    sget-object v8, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->CORRUPT:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b8 .. :try_end_c2} :catch_c2

    .line 9349
    :catch_c2
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->values()[Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v7

    array-length v7, v7

    new-array v7, v7, [I

    sput-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageType:[I

    :try_start_cb
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageType:[I

    sget-object v8, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->ordinal()I

    move-result v8

    aput v0, v7, v8
    :try_end_d5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cb .. :try_end_d5} :catch_d5

    :catch_d5
    :try_start_d5
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageType:[I

    sget-object v8, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->ordinal()I

    move-result v8

    aput v1, v7, v8
    :try_end_df
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d5 .. :try_end_df} :catch_df

    .line 9199
    :catch_df
    invoke-static {}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->values()[Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    move-result-object v7

    array-length v7, v7

    new-array v7, v7, [I

    sput-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialController$TutorialType:[I

    :try_start_e8
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialController$TutorialType:[I

    sget-object v8, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->VIDEO_FUSION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->ordinal()I

    move-result v8

    aput v0, v7, v8
    :try_end_f2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e8 .. :try_end_f2} :catch_f2

    :catch_f2
    :try_start_f2
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialController$TutorialType:[I

    sget-object v8, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->MANUAL_FUSION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->ordinal()I

    move-result v8

    aput v1, v7, v8
    :try_end_fc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f2 .. :try_end_fc} :catch_fc

    .line 8474
    :catch_fc
    invoke-static {}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->values()[Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    move-result-object v7

    array-length v7, v7

    new-array v7, v7, [I

    sput-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    :try_start_105
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v8, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MEMORY_FULL_PROPOSE_CHANGE_TO_INTERNAL:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v8

    aput v0, v7, v8
    :try_end_10f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_105 .. :try_end_10f} :catch_10f

    :catch_10f
    :try_start_10f
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v8, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MEMORY_UNAVAILABLE_PROPOSE_CHANGE_TO_INTERNAL:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v8

    aput v1, v7, v8
    :try_end_119
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10f .. :try_end_119} :catch_119

    :catch_119
    :try_start_119
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v8, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MEMORY_FULL_PROPOSE_CHANGE_TO_SD:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v8

    aput v2, v7, v8
    :try_end_123
    .catch Ljava/lang/NoSuchFieldError; {:try_start_119 .. :try_end_123} :catch_123

    :catch_123
    :try_start_123
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v8, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MEMORY_UNAVAILABLE_PROPOSE_CHANGE_TO_SD:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v8

    aput v3, v7, v8
    :try_end_12d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_123 .. :try_end_12d} :catch_12d

    :catch_12d
    :try_start_12d
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v8, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->UNLOCK_REQUEST_FOR_OPENING_OPTION_MENU:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v8

    aput v4, v7, v8
    :try_end_137
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12d .. :try_end_137} :catch_137

    :catch_137
    :try_start_137
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v8, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->THERMAL_NOTE:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v8

    aput v5, v7, v8
    :try_end_141
    .catch Ljava/lang/NoSuchFieldError; {:try_start_137 .. :try_end_141} :catch_141

    :catch_141
    :try_start_141
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v8, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->LOCATION_SERVICE_DISABLE_ON_LAUNCH:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_14b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_141 .. :try_end_14b} :catch_14b

    :catch_14b
    const/16 v7, 0x8

    :try_start_14d
    sget-object v8, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v9, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->LOCATION_SERVICE_DISABLE_ON_CONTEXTUAL_SETTINGS:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_157
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14d .. :try_end_157} :catch_157

    :catch_157
    const/16 v8, 0x9

    :try_start_159
    sget-object v9, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v10, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->HIGH_SPEED_SD_RECOMMENDATION_ON_MODE_CHANGE:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_163
    .catch Ljava/lang/NoSuchFieldError; {:try_start_159 .. :try_end_163} :catch_163

    :catch_163
    const/16 v9, 0xa

    :try_start_165
    sget-object v10, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v11, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->UNLOCK_REQUEST_FOR_OPENING_ADD_ON_APP:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v11

    aput v9, v10, v11
    :try_end_16f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_165 .. :try_end_16f} :catch_16f

    :catch_16f
    const/16 v10, 0xb

    :try_start_171
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v12, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->FOURK_HIGH_SPEED_SD_RECOMMENDATION_ON_VIDEOSIZE_CHANGE:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v12

    aput v10, v11, v12
    :try_end_17b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_171 .. :try_end_17b} :catch_17b

    :catch_17b
    const/16 v11, 0xc

    :try_start_17d
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v13, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->SIDE_SENSE_DISABLE_ON_CONTEXTUAL_SETTINGS:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v13

    aput v11, v12, v13
    :try_end_187
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17d .. :try_end_187} :catch_187

    :catch_187
    const/16 v12, 0xd

    :try_start_189
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v14, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->RESET_CONFIRMATION:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v14}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v14

    aput v12, v13, v14
    :try_end_193
    .catch Ljava/lang/NoSuchFieldError; {:try_start_189 .. :try_end_193} :catch_193

    :catch_193
    const/16 v13, 0xe

    :try_start_195
    sget-object v14, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->REQUEST_SD_CARD_PERMISSION:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v15

    aput v13, v14, v15
    :try_end_19f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_195 .. :try_end_19f} :catch_19f

    :catch_19f
    const/16 v14, 0xf

    :try_start_1a1
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v13, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->SD_CARD_PERMISSION_UNAVAILABLE:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v13

    aput v14, v15, v13
    :try_end_1ab
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a1 .. :try_end_1ab} :catch_1ab

    :catch_1ab
    :try_start_1ab
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ERROR_IN_USE_BY_ANOTHER_APPLICATION:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v15

    const/16 v17, 0x10

    aput v17, v13, v15
    :try_end_1b7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ab .. :try_end_1b7} :catch_1b7

    :catch_1b7
    :try_start_1b7
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ERROR_UNKNOWN:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v15

    const/16 v17, 0x11

    aput v17, v13, v15
    :try_end_1c3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b7 .. :try_end_1c3} :catch_1c3

    :catch_1c3
    :try_start_1c3
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ERROR_USE_OF_CAMERA_RESTRICTED:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v15

    const/16 v17, 0x12

    aput v17, v13, v15
    :try_end_1cf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c3 .. :try_end_1cf} :catch_1cf

    :catch_1cf
    :try_start_1cf
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MEMORY_SHORTAGE_ON_ONE_SHOT_VIDEO:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v15

    const/16 v17, 0x13

    aput v17, v13, v15
    :try_end_1db
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1cf .. :try_end_1db} :catch_1db

    :catch_1db
    :try_start_1db
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->COULD_NOT_SAVE_PHOTO:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v15

    const/16 v17, 0x14

    aput v17, v13, v15
    :try_end_1e7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1db .. :try_end_1e7} :catch_1e7

    :catch_1e7
    :try_start_1e7
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->COULD_NOT_START_RECORDING:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v15

    const/16 v17, 0x15

    aput v17, v13, v15
    :try_end_1f3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e7 .. :try_end_1f3} :catch_1f3

    :catch_1f3
    :try_start_1f3
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->THERMAL_CRITICAL:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v15

    const/16 v17, 0x16

    aput v17, v13, v15
    :try_end_1ff
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f3 .. :try_end_1ff} :catch_1ff

    :catch_1ff
    :try_start_1ff
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->LOW_BATTERY_CRITICAL_ON_RECORDING:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v15

    const/16 v17, 0x17

    aput v17, v13, v15
    :try_end_20b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ff .. :try_end_20b} :catch_20b

    :catch_20b
    :try_start_20b
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->LOW_BATTERY_CRITICAL_ON_PHOTO:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v15

    const/16 v17, 0x18

    aput v17, v13, v15
    :try_end_217
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20b .. :try_end_217} :catch_217

    :catch_217
    :try_start_217
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MEMORY_SD_UNAVAILABLE_FOR_CORRUPT:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v15

    const/16 v17, 0x19

    aput v17, v13, v15
    :try_end_223
    .catch Ljava/lang/NoSuchFieldError; {:try_start_217 .. :try_end_223} :catch_223

    :catch_223
    :try_start_223
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MEMORY_FULL:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v15

    const/16 v17, 0x1a

    aput v17, v13, v15
    :try_end_22f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_223 .. :try_end_22f} :catch_22f

    :catch_22f
    :try_start_22f
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MEMORY_SD_UNAVAILABLE:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v15

    const/16 v17, 0x1b

    aput v17, v13, v15
    :try_end_23b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22f .. :try_end_23b} :catch_23b

    :catch_23b
    :try_start_23b
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MEMORY_INTERNAL_UNAVAILABLE:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v15

    const/16 v17, 0x1c

    aput v17, v13, v15
    :try_end_247
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23b .. :try_end_247} :catch_247

    :catch_247
    :try_start_247
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MAX_FILESIZE_REACHED:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v15

    const/16 v17, 0x1d

    aput v17, v13, v15
    :try_end_253
    .catch Ljava/lang/NoSuchFieldError; {:try_start_247 .. :try_end_253} :catch_253

    :catch_253
    :try_start_253
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MAX_DURATION_REACHED:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v15

    const/16 v17, 0x1e

    aput v17, v13, v15
    :try_end_25f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_253 .. :try_end_25f} :catch_25f

    :catch_25f
    :try_start_25f
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->PREDICTIVE_LAUNCH_DESCRIPTION:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v15

    const/16 v17, 0x1f

    aput v17, v13, v15
    :try_end_26b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25f .. :try_end_26b} :catch_26b

    .line 7729
    :catch_26b
    invoke-static {}, Lcom/sonyericsson/android/camera/NavigatorContents;->values()[Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object v13

    array-length v13, v13

    new-array v13, v13, [I

    sput-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$NavigatorContents:[I

    :try_start_274
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$NavigatorContents:[I

    sget-object v15, Lcom/sonyericsson/android/camera/NavigatorContents;->SUPERIOR_AUTO:Lcom/sonyericsson/android/camera/NavigatorContents;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/NavigatorContents;->ordinal()I

    move-result v15

    aput v0, v13, v15
    :try_end_27e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_274 .. :try_end_27e} :catch_27e

    :catch_27e
    :try_start_27e
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$NavigatorContents:[I

    sget-object v15, Lcom/sonyericsson/android/camera/NavigatorContents;->VIDEO:Lcom/sonyericsson/android/camera/NavigatorContents;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/NavigatorContents;->ordinal()I

    move-result v15

    aput v1, v13, v15
    :try_end_288
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27e .. :try_end_288} :catch_288

    .line 7296
    :catch_288
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    move-result-object v13

    array-length v13, v13

    new-array v13, v13, [I

    sput-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$AutoReview:[I

    :try_start_291
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$AutoReview:[I

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->ALWAYS:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->ordinal()I

    move-result v15

    aput v0, v13, v15
    :try_end_29b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_291 .. :try_end_29b} :catch_29b

    :catch_29b
    :try_start_29b
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$AutoReview:[I

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->FRONT_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->ordinal()I

    move-result v15

    aput v1, v13, v15
    :try_end_2a5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29b .. :try_end_2a5} :catch_2a5

    :catch_2a5
    :try_start_2a5
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$AutoReview:[I

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->ordinal()I

    move-result v15

    aput v2, v13, v15
    :try_end_2af
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a5 .. :try_end_2af} :catch_2af

    .line 5162
    :catch_2af
    invoke-static {}, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->values()[Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    move-result-object v13

    array-length v13, v13

    new-array v13, v13, [I

    sput-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$BurstRejectedReason:[I

    :try_start_2b8
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$BurstRejectedReason:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->CANNOT_BURST_IN_DARK_CONDITION:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->ordinal()I

    move-result v15

    aput v0, v13, v15
    :try_end_2c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b8 .. :try_end_2c2} :catch_2c2

    :catch_2c2
    :try_start_2c2
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$BurstRejectedReason:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->CANNOT_BURST_USING_FRONT_CAMERA:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->ordinal()I

    move-result v15

    aput v1, v13, v15
    :try_end_2cc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c2 .. :try_end_2cc} :catch_2cc

    :catch_2cc
    :try_start_2cc
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$BurstRejectedReason:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->CANNOT_BURST_DUE_TO_FUSION_MODE:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->ordinal()I

    move-result v15

    aput v2, v13, v15
    :try_end_2d6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2cc .. :try_end_2d6} :catch_2d6

    :catch_2d6
    :try_start_2d6
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$BurstRejectedReason:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->BURST_IS_DISABLED_BY_CAMERA_KEY_ASSIGN_SETTING:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->ordinal()I

    move-result v15

    aput v3, v13, v15
    :try_end_2e0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d6 .. :try_end_2e0} :catch_2e0

    .line 4467
    :catch_2e0
    invoke-static {}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->values()[Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    move-result-object v13

    array-length v13, v13

    new-array v13, v13, [I

    sput-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    :try_start_2e9
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    aput v0, v13, v15
    :try_end_2f3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e9 .. :try_end_2f3} :catch_2f3

    :catch_2f3
    :try_start_2f3
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_RESIZE_EVF_SCOPE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    aput v1, v13, v15
    :try_end_2fd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f3 .. :try_end_2fd} :catch_2fd

    :catch_2fd
    :try_start_2fd
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_PREPARE_RECORDING_INDICATOR:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    aput v2, v13, v15
    :try_end_307
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2fd .. :try_end_307} :catch_307

    :catch_307
    :try_start_307
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_CAPTURING_MODE_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    aput v3, v13, v15
    :try_end_311
    .catch Ljava/lang/NoSuchFieldError; {:try_start_307 .. :try_end_311} :catch_311

    :catch_311
    :try_start_311
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_DETECTED_SCENE_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    aput v4, v13, v15
    :try_end_31b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_311 .. :try_end_31b} :catch_31b

    :catch_31b
    :try_start_31b
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FACE_DETECTION_STARTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    aput v5, v13, v15
    :try_end_325
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31b .. :try_end_325} :catch_325

    :catch_325
    :try_start_325
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FACE_DETECTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    aput v6, v13, v15
    :try_end_32f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_325 .. :try_end_32f} :catch_32f

    :catch_32f
    :try_start_32f
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_OBJECT_TRACKING_STARTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    aput v7, v13, v15
    :try_end_339
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32f .. :try_end_339} :catch_339

    :catch_339
    :try_start_339
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_OBJECT_TRACKING_TIMEOUT:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    aput v8, v13, v15
    :try_end_343
    .catch Ljava/lang/NoSuchFieldError; {:try_start_339 .. :try_end_343} :catch_343

    :catch_343
    :try_start_343
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_OBJECT_TRACKING_STOP:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    aput v9, v13, v15
    :try_end_34d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_343 .. :try_end_34d} :catch_34d

    :catch_34d
    :try_start_34d
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_TRACKED_OBJECT_STATE_UPDATED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    aput v10, v13, v15
    :try_end_357
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34d .. :try_end_357} :catch_357

    :catch_357
    :try_start_357
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ZOOM_START:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    aput v11, v13, v15
    :try_end_361
    .catch Ljava/lang/NoSuchFieldError; {:try_start_357 .. :try_end_361} :catch_361

    :catch_361
    :try_start_361
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ZOOM_STOP:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    aput v12, v13, v15
    :try_end_36b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_361 .. :try_end_36b} :catch_36b

    :catch_36b
    :try_start_36b
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ZOOM_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    const/16 v16, 0xe

    aput v16, v13, v15
    :try_end_377
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36b .. :try_end_377} :catch_377

    :catch_377
    :try_start_377
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_SELFTIMER_FINISHED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    aput v14, v13, v15
    :try_end_381
    .catch Ljava/lang/NoSuchFieldError; {:try_start_377 .. :try_end_381} :catch_381

    :catch_381
    :try_start_381
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_SELECTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    const/16 v17, 0x10

    aput v17, v13, v15
    :try_end_38d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_381 .. :try_end_38d} :catch_38d

    :catch_38d
    :try_start_38d
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    const/16 v17, 0x11

    aput v17, v13, v15
    :try_end_399
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38d .. :try_end_399} :catch_399

    :catch_399
    :try_start_399
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED_EXCEPT_FACE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    const/16 v17, 0x12

    aput v17, v13, v15
    :try_end_3a5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_399 .. :try_end_3a5} :catch_3a5

    :catch_3a5
    :try_start_3a5
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED_TOUCH_FOCUS:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    const/16 v17, 0x13

    aput v17, v13, v15
    :try_end_3b1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a5 .. :try_end_3b1} :catch_3b1

    :catch_3b1
    :try_start_3b1
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED_BY_SELECT_FACE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    const/16 v17, 0x14

    aput v17, v13, v15
    :try_end_3bd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b1 .. :try_end_3bd} :catch_3bd

    :catch_3bd
    :try_start_3bd
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_RECORDING_PROGRESS:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    const/16 v17, 0x15

    aput v17, v13, v15
    :try_end_3c9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3bd .. :try_end_3c9} :catch_3c9

    :catch_3c9
    :try_start_3c9
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ORIENTATION_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    const/16 v17, 0x16

    aput v17, v13, v15
    :try_end_3d5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c9 .. :try_end_3d5} :catch_3d5

    :catch_3d5
    :try_start_3d5
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_UPDATE_DIALOGS:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    const/16 v17, 0x17

    aput v17, v13, v15
    :try_end_3e1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d5 .. :try_end_3e1} :catch_3e1

    :catch_3e1
    :try_start_3e1
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_CLOSE_ALL_DIALOGS:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    const/16 v17, 0x18

    aput v17, v13, v15
    :try_end_3ed
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e1 .. :try_end_3ed} :catch_3ed

    :catch_3ed
    :try_start_3ed
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHOW_INSTANT_VIEWER:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    const/16 v17, 0x19

    aput v17, v13, v15
    :try_end_3f9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3ed .. :try_end_3f9} :catch_3f9

    :catch_3f9
    :try_start_3f9
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_STORE_COMPLETED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    const/16 v17, 0x1a

    aput v17, v13, v15
    :try_end_405
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f9 .. :try_end_405} :catch_405

    :catch_405
    :try_start_405
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_CAPTURE_FEEDBACK_ANIMATION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    const/16 v17, 0x1b

    aput v17, v13, v15
    :try_end_411
    .catch Ljava/lang/NoSuchFieldError; {:try_start_405 .. :try_end_411} :catch_411

    :catch_411
    :try_start_411
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_LAZY_INITIALIZATION_TASK_RUN:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    const/16 v17, 0x1c

    aput v17, v13, v15
    :try_end_41d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_411 .. :try_end_41d} :catch_41d

    :catch_41d
    :try_start_41d
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ADD_VIDEO_CHAPTER:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    const/16 v17, 0x1d

    aput v17, v13, v15
    :try_end_429
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41d .. :try_end_429} :catch_429

    :catch_429
    :try_start_429
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_THERMAL_NORMAL:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    const/16 v17, 0x1e

    aput v17, v13, v15
    :try_end_435
    .catch Ljava/lang/NoSuchFieldError; {:try_start_429 .. :try_end_435} :catch_435

    :catch_435
    :try_start_435
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_THERMAL_WARNING:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    const/16 v17, 0x1f

    aput v17, v13, v15
    :try_end_441
    .catch Ljava/lang/NoSuchFieldError; {:try_start_435 .. :try_end_441} :catch_441

    :catch_441
    :try_start_441
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_THERMAL_CRITICAL:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    const/16 v17, 0x20

    aput v17, v13, v15
    :try_end_44d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_441 .. :try_end_44d} :catch_44d

    :catch_44d
    :try_start_44d
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_RESTORE_NAVIGATION_BAR_PREVIOUS_VISIBILITY:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    const/16 v17, 0x21

    aput v17, v13, v15
    :try_end_459
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44d .. :try_end_459} :catch_459

    :catch_459
    :try_start_459
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_GRID_LINE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    const/16 v17, 0x22

    aput v17, v13, v15
    :try_end_465
    .catch Ljava/lang/NoSuchFieldError; {:try_start_459 .. :try_end_465} :catch_465

    :catch_465
    :try_start_465
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ANGLE_CHANGE_START:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    const/16 v17, 0x23

    aput v17, v13, v15
    :try_end_471
    .catch Ljava/lang/NoSuchFieldError; {:try_start_465 .. :try_end_471} :catch_471

    :catch_471
    :try_start_471
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ANGLE_CHANGE_COMPLETED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    const/16 v17, 0x24

    aput v17, v13, v15
    :try_end_47d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_471 .. :try_end_47d} :catch_47d

    :catch_47d
    :try_start_47d
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_BURST_REJECTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    const/16 v17, 0x25

    aput v17, v13, v15
    :try_end_489
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47d .. :try_end_489} :catch_489

    :catch_489
    :try_start_489
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_BURST_SHUTTER_DONE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    const/16 v17, 0x26

    aput v17, v13, v15
    :try_end_495
    .catch Ljava/lang/NoSuchFieldError; {:try_start_489 .. :try_end_495} :catch_495

    :catch_495
    :try_start_495
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_BURST_FINISH:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    const/16 v17, 0x27

    aput v17, v13, v15
    :try_end_4a1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_495 .. :try_end_4a1} :catch_4a1

    :catch_4a1
    :try_start_4a1
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_CAPTURE_FINISH:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    const/16 v17, 0x28

    aput v17, v13, v15
    :try_end_4ad
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a1 .. :try_end_4ad} :catch_4ad

    :catch_4ad
    :try_start_4ad
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_CAPTURE_CANCEL:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    const/16 v17, 0x29

    aput v17, v13, v15
    :try_end_4b9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4ad .. :try_end_4b9} :catch_4b9

    :catch_4b9
    :try_start_4b9
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_MAX_DURATION_REACHED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    const/16 v17, 0x2a

    aput v17, v13, v15
    :try_end_4c5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b9 .. :try_end_4c5} :catch_4c5

    :catch_4c5
    :try_start_4c5
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_MAX_FILESIZE_REACHED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    const/16 v17, 0x2b

    aput v17, v13, v15
    :try_end_4d1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c5 .. :try_end_4d1} :catch_4d1

    :catch_4d1
    :try_start_4d1
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_BATTERY_CRITICAL:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    const/16 v17, 0x2c

    aput v17, v13, v15
    :try_end_4dd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d1 .. :try_end_4dd} :catch_4dd

    :catch_4dd
    :try_start_4dd
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_UPDATE_FUSION_MODE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    const/16 v17, 0x2d

    aput v17, v13, v15
    :try_end_4e9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4dd .. :try_end_4e9} :catch_4e9

    :catch_4e9
    :try_start_4e9
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ISO_CHANGED_BY_FUSION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    const/16 v17, 0x2e

    aput v17, v13, v15
    :try_end_4f5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e9 .. :try_end_4f5} :catch_4f5

    :catch_4f5
    :try_start_4f5
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_SHOW_BLACK_SCREEN:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    const/16 v17, 0x2f

    aput v17, v13, v15
    :try_end_501
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f5 .. :try_end_501} :catch_501

    :catch_501
    :try_start_501
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_HIDE_BLACK_SCREEN:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    const/16 v17, 0x30

    aput v17, v13, v15
    :try_end_50d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_501 .. :try_end_50d} :catch_50d

    :catch_50d
    :try_start_50d
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_FUSION_CONDITION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    const/16 v17, 0x31

    aput v17, v13, v15
    :try_end_519
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50d .. :try_end_519} :catch_519

    :catch_519
    :try_start_519
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_VIDEO_HDR_CONDITION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    const/16 v17, 0x32

    aput v17, v13, v15
    :try_end_525
    .catch Ljava/lang/NoSuchFieldError; {:try_start_519 .. :try_end_525} :catch_525

    :catch_525
    :try_start_525
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_CAPTURING_MODE_CHANGING:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    const/16 v17, 0x33

    aput v17, v13, v15
    :try_end_531
    .catch Ljava/lang/NoSuchFieldError; {:try_start_525 .. :try_end_531} :catch_531

    :catch_531
    :try_start_531
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_SETTING_CHANGE_ACCEPTABILITY:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    const/16 v17, 0x34

    aput v17, v13, v15
    :try_end_53d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_531 .. :try_end_53d} :catch_53d

    :catch_53d
    :try_start_53d
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHOW_CHANGE_INTERNAL_STORAGE_MESSAGE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    const/16 v17, 0x35

    aput v17, v13, v15
    :try_end_549
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53d .. :try_end_549} :catch_549

    :catch_549
    :try_start_549
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_MRU_SHORTCUT:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    const/16 v17, 0x36

    aput v17, v13, v15
    :try_end_555
    .catch Ljava/lang/NoSuchFieldError; {:try_start_549 .. :try_end_555} :catch_555

    :catch_555
    :try_start_555
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_APPS_UI_MODE_FINISH:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    const/16 v17, 0x37

    aput v17, v13, v15
    :try_end_561
    .catch Ljava/lang/NoSuchFieldError; {:try_start_555 .. :try_end_561} :catch_561

    :catch_561
    :try_start_561
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHOW_UNLOCK_SCREEN_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v15

    const/16 v17, 0x38

    aput v17, v13, v15
    :try_end_56d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_561 .. :try_end_56d} :catch_56d

    .line 4274
    :catch_56d
    invoke-static {}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->values()[Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    move-result-object v13

    array-length v13, v13

    new-array v13, v13, [I

    sput-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    :try_start_576
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->NOTICE_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v15

    aput v0, v13, v15
    :try_end_580
    .catch Ljava/lang/NoSuchFieldError; {:try_start_576 .. :try_end_580} :catch_580

    :catch_580
    :try_start_580
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->FLASH_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v15

    aput v1, v13, v15
    :try_end_58a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_580 .. :try_end_58a} :catch_58a

    :catch_58a
    :try_start_58a
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->SELF_TIMER_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v15

    aput v2, v13, v15
    :try_end_594
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58a .. :try_end_594} :catch_594

    :catch_594
    :try_start_594
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ASPECT_RATIO_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v15

    aput v3, v13, v15
    :try_end_59e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_594 .. :try_end_59e} :catch_59e

    :catch_59e
    :try_start_59e
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->FUSION_MODE_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v15

    aput v4, v13, v15
    :try_end_5a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59e .. :try_end_5a8} :catch_5a8

    :catch_5a8
    :try_start_5a8
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->VIDEO_HDR_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v15

    aput v5, v13, v15
    :try_end_5b2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a8 .. :try_end_5b2} :catch_5b2

    :catch_5b2
    :try_start_5b2
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->HDR_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v15

    aput v6, v13, v15
    :try_end_5bc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b2 .. :try_end_5bc} :catch_5bc

    :catch_5bc
    :try_start_5bc
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->SETTING_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v15

    aput v7, v13, v15
    :try_end_5c6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5bc .. :try_end_5c6} :catch_5c6

    :catch_5c6
    :try_start_5c6
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->MODE_SELECTOR:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v15

    aput v8, v13, v15
    :try_end_5d0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5c6 .. :try_end_5d0} :catch_5d0

    :catch_5d0
    :try_start_5d0
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->REVIEW_WINDOW:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v15

    aput v9, v13, v15
    :try_end_5da
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d0 .. :try_end_5da} :catch_5da

    :catch_5da
    :try_start_5da
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->OVERLAY_CONTROL_SEEKING:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v15

    aput v10, v13, v15
    :try_end_5e4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5da .. :try_end_5e4} :catch_5e4

    :catch_5e4
    :try_start_5e4
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->TUTORIAL:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v15

    aput v11, v13, v15
    :try_end_5ee
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5e4 .. :try_end_5ee} :catch_5ee

    .line 4217
    :catch_5ee
    invoke-static {}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->values()[Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    move-result-object v13

    array-length v13, v13

    new-array v13, v13, [I

    sput-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern:[I

    :try_start_5f7
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ordinal()I

    move-result v15

    aput v0, v13, v15
    :try_end_601
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f7 .. :try_end_601} :catch_601

    :catch_601
    :try_start_601
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING_IN_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ordinal()I

    move-result v15

    aput v1, v13, v15
    :try_end_60b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_601 .. :try_end_60b} :catch_60b

    :catch_60b
    :try_start_60b
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->PAUSE_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ordinal()I

    move-result v15

    aput v2, v13, v15
    :try_end_615
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60b .. :try_end_615} :catch_615

    :catch_615
    :try_start_615
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING_IN_PAUSE_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ordinal()I

    move-result v15

    aput v3, v13, v15
    :try_end_61f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_615 .. :try_end_61f} :catch_61f

    :catch_61f
    :try_start_61f
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ordinal()I

    move-result v15

    aput v4, v13, v15
    :try_end_629
    .catch Ljava/lang/NoSuchFieldError; {:try_start_61f .. :try_end_629} :catch_629

    :catch_629
    :try_start_629
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->FOCUS_SEARCHING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ordinal()I

    move-result v15

    aput v5, v13, v15
    :try_end_633
    .catch Ljava/lang/NoSuchFieldError; {:try_start_629 .. :try_end_633} :catch_633

    :catch_633
    :try_start_633
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->FOCUS_DONE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ordinal()I

    move-result v15

    aput v6, v13, v15
    :try_end_63d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_633 .. :try_end_63d} :catch_63d

    .line 3622
    :catch_63d
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    move-result-object v13

    array-length v13, v13

    new-array v13, v13, [I

    sput-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$TouchCapture:[I

    :try_start_646
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$TouchCapture:[I

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->ordinal()I

    move-result v15

    aput v0, v13, v15
    :try_end_650
    .catch Ljava/lang/NoSuchFieldError; {:try_start_646 .. :try_end_650} :catch_650

    :catch_650
    :try_start_650
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$TouchCapture:[I

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->FRONT_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->ordinal()I

    move-result v15

    aput v1, v13, v15
    :try_end_65a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_650 .. :try_end_65a} :catch_65a

    .line 3081
    :catch_65a
    invoke-static {}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->values()[Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    move-result-object v13

    array-length v13, v13

    new-array v13, v13, [I

    sput-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree:[I

    :try_start_663
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->START:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->ordinal()I

    move-result v15

    aput v0, v13, v15
    :try_end_66d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_663 .. :try_end_66d} :catch_66d

    :catch_66d
    :try_start_66d
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->EXEC:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->ordinal()I

    move-result v15

    aput v1, v13, v15
    :try_end_677
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66d .. :try_end_677} :catch_677

    :catch_677
    :try_start_677
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->CANCEL:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->ordinal()I

    move-result v15

    aput v2, v13, v15
    :try_end_681
    .catch Ljava/lang/NoSuchFieldError; {:try_start_677 .. :try_end_681} :catch_681

    :catch_681
    :try_start_681
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->FINISH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->ordinal()I

    move-result v15

    aput v3, v13, v15
    :try_end_68b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_681 .. :try_end_68b} :catch_68b

    .line 3064
    :catch_68b
    invoke-static {}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->values()[Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    move-result-object v13

    array-length v13, v13

    new-array v13, v13, [I

    sput-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationType:[I

    :try_start_694
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationType:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->MODE_TOUCH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->ordinal()I

    move-result v15

    aput v0, v13, v15
    :try_end_69e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_694 .. :try_end_69e} :catch_69e

    :catch_69e
    :try_start_69e
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationType:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->MODE_ICON:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->ordinal()I

    move-result v15

    aput v1, v13, v15
    :try_end_6a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_69e .. :try_end_6a8} :catch_6a8

    :catch_6a8
    :try_start_6a8
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationType:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->MODE_SELECTOR:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->ordinal()I

    move-result v15

    aput v2, v13, v15
    :try_end_6b2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a8 .. :try_end_6b2} :catch_6b2

    :catch_6b2
    :try_start_6b2
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationType:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->MRU_SHORTCUT:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->ordinal()I

    move-result v15

    aput v3, v13, v15
    :try_end_6bc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b2 .. :try_end_6bc} :catch_6bc

    :catch_6bc
    :try_start_6bc
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationType:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->SWITCH_TOUCH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->ordinal()I

    move-result v15

    aput v4, v13, v15
    :try_end_6c6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6bc .. :try_end_6c6} :catch_6c6

    .line 2816
    :catch_6c6
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->values()[Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v13

    array-length v13, v13

    new-array v13, v13, [I

    sput-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    :try_start_6cf
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_NONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v15

    aput v0, v13, v15
    :try_end_6d9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6cf .. :try_end_6d9} :catch_6d9

    :catch_6d9
    :try_start_6d9
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_INITIALIZE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v15

    aput v1, v13, v15
    :try_end_6e3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6d9 .. :try_end_6e3} :catch_6e3

    :catch_6e3
    :try_start_6e3
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_RESUME:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v15

    aput v2, v13, v15
    :try_end_6ed
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e3 .. :try_end_6ed} :catch_6ed

    :catch_6ed
    :try_start_6ed
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v15

    aput v3, v13, v15
    :try_end_6f7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6ed .. :try_end_6f7} :catch_6f7

    :catch_6f7
    :try_start_6f7
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v15

    aput v4, v13, v15
    :try_end_701
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6f7 .. :try_end_701} :catch_701

    :catch_701
    :try_start_701
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_CAPTURE_COUNTDOWN:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v15

    aput v5, v13, v15
    :try_end_70b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_701 .. :try_end_70b} :catch_70b

    :catch_70b
    :try_start_70b
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_OPERATION_RESTRICTED:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v15

    aput v6, v13, v15
    :try_end_715
    .catch Ljava/lang/NoSuchFieldError; {:try_start_70b .. :try_end_715} :catch_715

    :catch_715
    :try_start_715
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_AF_SEARCH:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v15

    aput v7, v13, v15
    :try_end_71f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_715 .. :try_end_71f} :catch_71f

    :catch_71f
    :try_start_71f
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_AF_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v15

    aput v8, v13, v15
    :try_end_729
    .catch Ljava/lang/NoSuchFieldError; {:try_start_71f .. :try_end_729} :catch_729

    :catch_729
    :try_start_729
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE_WAIT_FOR_AF_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v15

    aput v9, v13, v15
    :try_end_733
    .catch Ljava/lang/NoSuchFieldError; {:try_start_729 .. :try_end_733} :catch_733

    :catch_733
    :try_start_733
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_BURST_CAPTURE_WAIT_FOR_AF_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v15

    aput v10, v13, v15
    :try_end_73d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_733 .. :try_end_73d} :catch_73d

    :catch_73d
    :try_start_73d
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v15

    aput v11, v13, v15
    :try_end_747
    .catch Ljava/lang/NoSuchFieldError; {:try_start_73d .. :try_end_747} :catch_747

    :catch_747
    :try_start_747
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v13, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_BURST_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v13

    aput v12, v11, v13
    :try_end_751
    .catch Ljava/lang/NoSuchFieldError; {:try_start_747 .. :try_end_751} :catch_751

    :catch_751
    :try_start_751
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    const/16 v13, 0xe

    aput v13, v11, v12
    :try_end_75d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_751 .. :try_end_75d} :catch_75d

    :catch_75d
    :try_start_75d
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_CAPTURE_WHILE_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    aput v14, v11, v12
    :try_end_767
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75d .. :try_end_767} :catch_767

    :catch_767
    :try_start_767
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_STORE_PHOTO_WHILE_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    const/16 v13, 0x10

    aput v13, v11, v12
    :try_end_773
    .catch Ljava/lang/NoSuchFieldError; {:try_start_767 .. :try_end_773} :catch_773

    :catch_773
    :try_start_773
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_STORE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    const/16 v13, 0x11

    aput v13, v11, v12
    :try_end_77f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_773 .. :try_end_77f} :catch_77f

    :catch_77f
    :try_start_77f
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_FATAL:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    const/16 v13, 0x12

    aput v13, v11, v12
    :try_end_78b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_77f .. :try_end_78b} :catch_78b

    :catch_78b
    :try_start_78b
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PAUSE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    const/16 v13, 0x13

    aput v13, v11, v12
    :try_end_797
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78b .. :try_end_797} :catch_797

    :catch_797
    :try_start_797
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_WARNING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    const/16 v13, 0x14

    aput v13, v11, v12
    :try_end_7a3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_797 .. :try_end_7a3} :catch_7a3

    :catch_7a3
    :try_start_7a3
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_FINALIZE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    const/16 v13, 0x15

    aput v13, v11, v12
    :try_end_7af
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a3 .. :try_end_7af} :catch_7af

    :catch_7af
    :try_start_7af
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_RECORDING_PAUSING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    const/16 v13, 0x16

    aput v13, v11, v12
    :try_end_7bb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7af .. :try_end_7bb} :catch_7bb

    :catch_7bb
    :try_start_7bb
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_CAMERA_SWITCHING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    const/16 v13, 0x17

    aput v13, v11, v12
    :try_end_7c7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7bb .. :try_end_7c7} :catch_7c7

    :catch_7c7
    :try_start_7c7
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_READY_FOR_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    const/16 v13, 0x18

    aput v13, v11, v12
    :try_end_7d3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7c7 .. :try_end_7d3} :catch_7d3

    :catch_7d3
    :try_start_7d3
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_MODE_CHANGING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    const/16 v13, 0x19

    aput v13, v11, v12
    :try_end_7df
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7d3 .. :try_end_7df} :catch_7df

    :catch_7df
    :try_start_7df
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_WAITING_EVF_PREPARED_IN_MODE_CHANGE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    const/16 v13, 0x1a

    aput v13, v11, v12
    :try_end_7eb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7df .. :try_end_7eb} :catch_7eb

    :catch_7eb
    :try_start_7eb
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_HIGH_FRAME_RATE_VIDEO_RECORDING_IN_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    const/16 v13, 0x1b

    aput v13, v11, v12
    :try_end_7f7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7eb .. :try_end_7f7} :catch_7f7

    :catch_7f7
    :try_start_7f7
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_LOW_FRAME_RATE_VIDEO_RECORDING_IN_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    const/16 v13, 0x1c

    aput v13, v11, v12
    :try_end_803
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7f7 .. :try_end_803} :catch_803

    :catch_803
    :try_start_803
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_WAIT_FOR_HIGH_FRAME_RATE_VIDEO_RECORDING_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    const/16 v13, 0x1d

    aput v13, v11, v12
    :try_end_80f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_803 .. :try_end_80f} :catch_80f

    .line 2613
    :catch_80f
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    move-result-object v11

    array-length v11, v11

    new-array v11, v11, [I

    sput-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    :try_start_818
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result v12

    aput v0, v11, v12
    :try_end_822
    .catch Ljava/lang/NoSuchFieldError; {:try_start_818 .. :try_end_822} :catch_822

    :catch_822
    :try_start_822
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result v12

    aput v1, v11, v12
    :try_end_82c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_822 .. :try_end_82c} :catch_82c

    :catch_82c
    :try_start_82c
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result v12

    aput v2, v11, v12
    :try_end_836
    .catch Ljava/lang/NoSuchFieldError; {:try_start_82c .. :try_end_836} :catch_836

    .line 2353
    :catch_836
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    move-result-object v11

    array-length v11, v11

    new-array v11, v11, [I

    sput-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer:[I

    :try_start_83f
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer:[I

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->LONG:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->ordinal()I

    move-result v12

    aput v0, v11, v12
    :try_end_849
    .catch Ljava/lang/NoSuchFieldError; {:try_start_83f .. :try_end_849} :catch_849

    :catch_849
    :try_start_849
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer:[I

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->GESTURE_SHUTTER_COUNT_DOWN:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->ordinal()I

    move-result v12

    aput v1, v11, v12
    :try_end_853
    .catch Ljava/lang/NoSuchFieldError; {:try_start_849 .. :try_end_853} :catch_853

    :catch_853
    :try_start_853
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer:[I

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->SHORT:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->ordinal()I

    move-result v12

    aput v2, v11, v12
    :try_end_85d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_853 .. :try_end_85d} :catch_85d

    :catch_85d
    :try_start_85d
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer:[I

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->LAUNCH_AND_CAPTURE_COUNT_DOWN:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->ordinal()I

    move-result v12

    aput v3, v11, v12
    :try_end_867
    .catch Ljava/lang/NoSuchFieldError; {:try_start_85d .. :try_end_867} :catch_867

    :catch_867
    :try_start_867
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer:[I

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->ordinal()I

    move-result v12

    aput v4, v11, v12
    :try_end_871
    .catch Ljava/lang/NoSuchFieldError; {:try_start_867 .. :try_end_871} :catch_871

    .line 2250
    :catch_871
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->values()[Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    move-result-object v11

    array-length v11, v11

    new-array v11, v11, [I

    sput-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$controller$AbstractDraggingEventHandler$Direction:[I

    :try_start_87a
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$controller$AbstractDraggingEventHandler$Direction:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->UP:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->ordinal()I

    move-result v12

    aput v0, v11, v12
    :try_end_884
    .catch Ljava/lang/NoSuchFieldError; {:try_start_87a .. :try_end_884} :catch_884

    :catch_884
    :try_start_884
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$controller$AbstractDraggingEventHandler$Direction:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->DOWN:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->ordinal()I

    move-result v12

    aput v1, v11, v12
    :try_end_88e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_884 .. :try_end_88e} :catch_88e

    :catch_88e
    :try_start_88e
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$controller$AbstractDraggingEventHandler$Direction:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->LEFT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->ordinal()I

    move-result v12

    aput v2, v11, v12
    :try_end_898
    .catch Ljava/lang/NoSuchFieldError; {:try_start_88e .. :try_end_898} :catch_898

    :catch_898
    :try_start_898
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$controller$AbstractDraggingEventHandler$Direction:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->RIGHT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->ordinal()I

    move-result v12

    aput v3, v11, v12
    :try_end_8a2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_898 .. :try_end_8a2} :catch_8a2

    .line 1786
    :catch_8a2
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->values()[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v11

    array-length v11, v11

    new-array v11, v11, [I

    sput-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    :try_start_8ab
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v12

    aput v0, v11, v12
    :try_end_8b5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8ab .. :try_end_8b5} :catch_8b5

    :catch_8b5
    :try_start_8b5
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GEO_TAG:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v12

    aput v1, v11, v12
    :try_end_8bf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8b5 .. :try_end_8bf} :catch_8bf

    :catch_8bf
    :try_start_8bf
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v12

    aput v2, v11, v12
    :try_end_8c9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8bf .. :try_end_8c9} :catch_8c9

    :catch_8c9
    :try_start_8c9
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HELP_GUIDE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v12

    aput v3, v11, v12
    :try_end_8d3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c9 .. :try_end_8d3} :catch_8d3

    :catch_8d3
    :try_start_8d3
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESET_SETTINGS:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v12

    aput v4, v11, v12
    :try_end_8dd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8d3 .. :try_end_8dd} :catch_8dd

    :catch_8dd
    :try_start_8dd
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->WHITE_BALANCE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v12

    aput v5, v11, v12
    :try_end_8e7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8dd .. :try_end_8e7} :catch_8e7

    :catch_8e7
    :try_start_8e7
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->EV:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v12

    aput v6, v11, v12
    :try_end_8f1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8e7 .. :try_end_8f1} :catch_8f1

    .line 1751
    :catch_8f1
    invoke-static {}, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->values()[Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    move-result-object v11

    array-length v11, v11

    new-array v11, v11, [I

    sput-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$LaunchCondition$ExtraOperation:[I

    :try_start_8fa
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$LaunchCondition$ExtraOperation:[I

    sget-object v12, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->OPEN_SETTINGS_MENU:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->ordinal()I

    move-result v12

    aput v0, v11, v12
    :try_end_904
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8fa .. :try_end_904} :catch_904

    .line 1724
    :catch_904
    invoke-static {}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->values()[Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    move-result-object v11

    array-length v11, v11

    new-array v11, v11, [I

    sput-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    :try_start_90d
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->PHOTO_READY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v12

    aput v0, v11, v12
    :try_end_917
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90d .. :try_end_917} :catch_917

    :catch_917
    :try_start_917
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->PHOTO_CAPTURE:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v12

    aput v1, v11, v12
    :try_end_921
    .catch Ljava/lang/NoSuchFieldError; {:try_start_917 .. :try_end_921} :catch_921

    :catch_921
    :try_start_921
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->PHOTO_BURST_CAPTURE:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v12

    aput v2, v11, v12
    :try_end_92b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_921 .. :try_end_92b} :catch_92b

    :catch_92b
    :try_start_92b
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->VIDEO_READY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v12

    aput v3, v11, v12
    :try_end_935
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92b .. :try_end_935} :catch_935

    :catch_935
    :try_start_935
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->VIDEO_RECORDING:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v12

    aput v4, v11, v12
    :try_end_93f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_935 .. :try_end_93f} :catch_93f

    :catch_93f
    :try_start_93f
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->SUPER_SLOW_MOTION_STANDBY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v12

    aput v5, v11, v12
    :try_end_949
    .catch Ljava/lang/NoSuchFieldError; {:try_start_93f .. :try_end_949} :catch_949

    :catch_949
    :try_start_949
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->SUPER_SLOW_MOTION_RECORDING:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v12

    aput v6, v11, v12
    :try_end_953
    .catch Ljava/lang/NoSuchFieldError; {:try_start_949 .. :try_end_953} :catch_953

    :catch_953
    :try_start_953
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->STANDARD_SLOW_MOTION_STANDBY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v12

    aput v7, v11, v12
    :try_end_95d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_953 .. :try_end_95d} :catch_95d

    :catch_95d
    :try_start_95d
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->STANDARD_SLOW_MOTION_RECORDING:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v11

    aput v8, v7, v11
    :try_end_967
    .catch Ljava/lang/NoSuchFieldError; {:try_start_95d .. :try_end_967} :catch_967

    :catch_967
    :try_start_967
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v8, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->SUPER_SLOW_SHOT_STANDBY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v8

    aput v9, v7, v8
    :try_end_971
    .catch Ljava/lang/NoSuchFieldError; {:try_start_967 .. :try_end_971} :catch_971

    :catch_971
    :try_start_971
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v8, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->VIDEO_PAUSING:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v8

    aput v10, v7, v8
    :try_end_97b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_971 .. :try_end_97b} :catch_97b

    .line 1082
    :catch_97b
    invoke-static {}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->values()[Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    move-result-object v7

    array-length v7, v7

    new-array v7, v7, [I

    sput-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$SideTouchArea:[I

    :try_start_984
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$SideTouchArea:[I

    sget-object v8, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->TOP:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->ordinal()I

    move-result v8

    aput v0, v7, v8
    :try_end_98e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_984 .. :try_end_98e} :catch_98e

    :catch_98e
    :try_start_98e
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$SideTouchArea:[I

    sget-object v8, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->BOTTOM:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->ordinal()I

    move-result v8

    aput v1, v7, v8
    :try_end_998
    .catch Ljava/lang/NoSuchFieldError; {:try_start_98e .. :try_end_998} :catch_998

    :catch_998
    :try_start_998
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$SideTouchArea:[I

    sget-object v8, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->LEFT:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->ordinal()I

    move-result v8

    aput v2, v7, v8
    :try_end_9a2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_998 .. :try_end_9a2} :catch_9a2

    :catch_9a2
    :try_start_9a2
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$SideTouchArea:[I

    sget-object v8, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->RIGHT:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->ordinal()I

    move-result v8

    aput v3, v7, v8
    :try_end_9ac
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9a2 .. :try_end_9ac} :catch_9ac

    .line 1046
    :catch_9ac
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v7

    array-length v7, v7

    new-array v7, v7, [I

    sput-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    :try_start_9b5
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v8

    aput v0, v7, v8
    :try_end_9bf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9b5 .. :try_end_9bf} :catch_9bf

    :catch_9bf
    :try_start_9bf
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v8

    aput v1, v7, v8
    :try_end_9c9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9bf .. :try_end_9c9} :catch_9c9

    :catch_9c9
    :try_start_9c9
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v8

    aput v2, v7, v8
    :try_end_9d3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c9 .. :try_end_9d3} :catch_9d3

    :catch_9d3
    :try_start_9d3
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v8

    aput v3, v7, v8
    :try_end_9dd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9d3 .. :try_end_9dd} :catch_9dd

    :catch_9dd
    :try_start_9dd
    sget-object v3, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v7

    aput v4, v3, v7
    :try_end_9e7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9dd .. :try_end_9e7} :catch_9e7

    :catch_9e7
    :try_start_9e7
    sget-object v3, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v4

    aput v5, v3, v4
    :try_end_9f1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e7 .. :try_end_9f1} :catch_9f1

    :catch_9f1
    :try_start_9f1
    sget-object v3, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v4

    aput v6, v3, v4
    :try_end_9fb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9f1 .. :try_end_9fb} :catch_9fb

    .line 681
    :catch_9fb
    invoke-static {}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->values()[Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

    :try_start_a04
    sget-object v3, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

    sget-object v4, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->PORTRAIT_SELFIE:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_a0e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a04 .. :try_end_a0e} :catch_a0e

    :catch_a0e
    :try_start_a0e
    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

    sget-object v3, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->DUAL_BACKGROUND_DEFOCUS:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_a18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a0e .. :try_end_a18} :catch_a18

    :catch_a18
    :try_start_a18
    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->DUAL_MONOCHROME:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_a22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a18 .. :try_end_a22} :catch_a22

    :catch_a22
    return-void
.end method
