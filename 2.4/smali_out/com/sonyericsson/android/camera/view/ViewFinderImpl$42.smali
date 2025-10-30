.class synthetic Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;
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
.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$NavigatorContents:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$SideTouchArea:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$AutoReview:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$HorizontalLevelMeter:[I

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

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$view$overlaycontrol$SimpleIqControl$Type:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

.field static final synthetic $SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

.field static final synthetic $SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageState:[I

.field static final synthetic $SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 18

    .line 11095
    invoke-static {}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->values()[Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinderImpl$PredictiveLaunchHideTrigger:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinderImpl$PredictiveLaunchHideTrigger:[I

    sget-object v2, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_14

    :catch_14
    const/4 v1, 0x2

    :try_start_15
    sget-object v2, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinderImpl$PredictiveLaunchHideTrigger:[I

    sget-object v3, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->SIDE_SENSING:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_1f

    :catch_1f
    const/4 v2, 0x3

    :try_start_20
    sget-object v3, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinderImpl$PredictiveLaunchHideTrigger:[I

    sget-object v4, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->VOLUME_KEY_SHUTTER:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_2a} :catch_2a

    :catch_2a
    const/4 v3, 0x4

    :try_start_2b
    sget-object v4, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinderImpl$PredictiveLaunchHideTrigger:[I

    sget-object v5, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->TOUCH_UP_CAPTURE:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_35} :catch_35

    .line 10862
    :catch_35
    invoke-static {}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;->values()[Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$overlaycontrol$SimpleIqControl$Type:[I

    :try_start_3e
    sget-object v4, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$overlaycontrol$SimpleIqControl$Type:[I

    sget-object v5, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;->SEMI_AUTO:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_48} :catch_48

    :catch_48
    :try_start_48
    sget-object v4, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$overlaycontrol$SimpleIqControl$Type:[I

    sget-object v5, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;->BOKEH:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_52} :catch_52

    .line 10678
    :catch_52
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->values()[Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

    :try_start_5b
    sget-object v4, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

    sget-object v5, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->BURST:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_65} :catch_65

    :catch_65
    :try_start_65
    sget-object v4, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

    sget-object v5, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO_DURING_REC:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_6f} :catch_6f

    :catch_6f
    :try_start_6f
    sget-object v4, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

    sget-object v5, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_79
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6f .. :try_end_79} :catch_79

    :catch_79
    :try_start_79
    sget-object v4, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

    sget-object v5, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->VIDEO:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_83
    .catch Ljava/lang/NoSuchFieldError; {:try_start_79 .. :try_end_83} :catch_83

    :catch_83
    const/4 v4, 0x5

    :try_start_84
    sget-object v5, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

    sget-object v6, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->TIME_SHIFT:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_8e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_8e} :catch_8e

    .line 10204
    :catch_8e
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->values()[Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageState:[I

    :try_start_97
    sget-object v5, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageState:[I

    sget-object v6, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_a1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_97 .. :try_end_a1} :catch_a1

    :catch_a1
    :try_start_a1
    sget-object v5, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageState:[I

    sget-object v6, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->AVAILABLE_NEAR_FULL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_ab
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a1 .. :try_end_ab} :catch_ab

    :catch_ab
    :try_start_ab
    sget-object v5, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageState:[I

    sget-object v6, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->FULL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_b5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ab .. :try_end_b5} :catch_b5

    :catch_b5
    :try_start_b5
    sget-object v5, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageState:[I

    sget-object v6, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->UNAVAILABLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->ordinal()I

    move-result v6

    aput v3, v5, v6
    :try_end_bf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b5 .. :try_end_bf} :catch_bf

    :catch_bf
    :try_start_bf
    sget-object v5, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageState:[I

    sget-object v6, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->REMOVED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_c9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bf .. :try_end_c9} :catch_c9

    :catch_c9
    const/4 v5, 0x6

    :try_start_ca
    sget-object v6, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageState:[I

    sget-object v7, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->READ_ONLY:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_d4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ca .. :try_end_d4} :catch_d4

    :catch_d4
    const/4 v6, 0x7

    :try_start_d5
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageState:[I

    sget-object v8, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->CORRUPT:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_df
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d5 .. :try_end_df} :catch_df

    .line 10216
    :catch_df
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->values()[Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v7

    array-length v7, v7

    new-array v7, v7, [I

    sput-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageType:[I

    :try_start_e8
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageType:[I

    sget-object v8, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->ordinal()I

    move-result v8

    aput v0, v7, v8
    :try_end_f2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e8 .. :try_end_f2} :catch_f2

    :catch_f2
    :try_start_f2
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageType:[I

    sget-object v8, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->ordinal()I

    move-result v8

    aput v1, v7, v8
    :try_end_fc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f2 .. :try_end_fc} :catch_fc

    .line 10020
    :catch_fc
    invoke-static {}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->values()[Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    move-result-object v7

    array-length v7, v7

    new-array v7, v7, [I

    sput-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    :try_start_105
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v8, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->VIDEO_FUSION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v8

    aput v0, v7, v8
    :try_end_10f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_105 .. :try_end_10f} :catch_10f

    :catch_10f
    :try_start_10f
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v8, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->MANUAL_FUSION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v8

    aput v1, v7, v8
    :try_end_119
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10f .. :try_end_119} :catch_119

    .line 9319
    :catch_119
    invoke-static {}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->values()[Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    move-result-object v7

    array-length v7, v7

    new-array v7, v7, [I

    sput-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    :try_start_122
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v8, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MEMORY_FULL_PROPOSE_CHANGE_TO_INTERNAL:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v8

    aput v0, v7, v8
    :try_end_12c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_122 .. :try_end_12c} :catch_12c

    :catch_12c
    :try_start_12c
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v8, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MEMORY_UNAVAILABLE_PROPOSE_CHANGE_TO_INTERNAL:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v8

    aput v1, v7, v8
    :try_end_136
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12c .. :try_end_136} :catch_136

    :catch_136
    :try_start_136
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v8, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MEMORY_FULL_PROPOSE_CHANGE_TO_SD:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v8

    aput v2, v7, v8
    :try_end_140
    .catch Ljava/lang/NoSuchFieldError; {:try_start_136 .. :try_end_140} :catch_140

    :catch_140
    :try_start_140
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v8, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MEMORY_UNAVAILABLE_PROPOSE_CHANGE_TO_SD:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v8

    aput v3, v7, v8
    :try_end_14a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_140 .. :try_end_14a} :catch_14a

    :catch_14a
    :try_start_14a
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v8, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->THERMAL_NOTE:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v8

    aput v4, v7, v8
    :try_end_154
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14a .. :try_end_154} :catch_154

    :catch_154
    :try_start_154
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v8, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->LOCATION_SERVICE_DISABLE_ON_LAUNCH:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v8

    aput v5, v7, v8
    :try_end_15e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_154 .. :try_end_15e} :catch_15e

    :catch_15e
    :try_start_15e
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v8, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->HIGH_SPEED_SD_RECOMMENDATION_ON_MODE_CHANGE:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_168
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15e .. :try_end_168} :catch_168

    :catch_168
    const/16 v7, 0x8

    :try_start_16a
    sget-object v8, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v9, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->UNLOCK_REQUEST_FOR_OPENING_ADD_ON_APP:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_174
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16a .. :try_end_174} :catch_174

    :catch_174
    const/16 v8, 0x9

    :try_start_176
    sget-object v9, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v10, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ERROR_IN_USE_BY_ANOTHER_APPLICATION:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_180
    .catch Ljava/lang/NoSuchFieldError; {:try_start_176 .. :try_end_180} :catch_180

    :catch_180
    const/16 v9, 0xa

    :try_start_182
    sget-object v10, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v11, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ERROR_UNKNOWN:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v11

    aput v9, v10, v11
    :try_end_18c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_182 .. :try_end_18c} :catch_18c

    :catch_18c
    const/16 v10, 0xb

    :try_start_18e
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v12, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ERROR_USE_OF_CAMERA_RESTRICTED:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v12

    aput v10, v11, v12
    :try_end_198
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18e .. :try_end_198} :catch_198

    :catch_198
    const/16 v11, 0xc

    :try_start_19a
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v13, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MEMORY_SHORTAGE_ON_ONE_SHOT_VIDEO:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v13

    aput v11, v12, v13
    :try_end_1a4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19a .. :try_end_1a4} :catch_1a4

    :catch_1a4
    const/16 v12, 0xd

    :try_start_1a6
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v14, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->COULD_NOT_SAVE_PHOTO:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v14}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v14

    aput v12, v13, v14
    :try_end_1b0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a6 .. :try_end_1b0} :catch_1b0

    :catch_1b0
    const/16 v13, 0xe

    :try_start_1b2
    sget-object v14, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->COULD_NOT_START_RECORDING:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v15

    aput v13, v14, v15
    :try_end_1bc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b2 .. :try_end_1bc} :catch_1bc

    :catch_1bc
    const/16 v14, 0xf

    :try_start_1be
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->THERMAL_CRITICAL:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v16

    aput v14, v15, v16
    :try_end_1c8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1be .. :try_end_1c8} :catch_1c8

    :catch_1c8
    :try_start_1c8
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->LOW_BATTERY_CRITICAL_ON_RECORDING:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v16

    const/16 v17, 0x10

    aput v17, v15, v16
    :try_end_1d4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c8 .. :try_end_1d4} :catch_1d4

    :catch_1d4
    :try_start_1d4
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->LOW_BATTERY_CRITICAL_ON_PHOTO:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v16

    const/16 v17, 0x11

    aput v17, v15, v16
    :try_end_1e0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d4 .. :try_end_1e0} :catch_1e0

    :catch_1e0
    :try_start_1e0
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MEMORY_SD_UNAVAILABLE_FOR_CORRUPT:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v16

    const/16 v17, 0x12

    aput v17, v15, v16
    :try_end_1ec
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e0 .. :try_end_1ec} :catch_1ec

    :catch_1ec
    :try_start_1ec
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->STORE_FAIL:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v16

    const/16 v17, 0x13

    aput v17, v15, v16
    :try_end_1f8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ec .. :try_end_1f8} :catch_1f8

    :catch_1f8
    :try_start_1f8
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MEMORY_FULL:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v16

    const/16 v17, 0x14

    aput v17, v15, v16
    :try_end_204
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f8 .. :try_end_204} :catch_204

    :catch_204
    :try_start_204
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MEMORY_SD_UNAVAILABLE:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v16

    const/16 v17, 0x15

    aput v17, v15, v16
    :try_end_210
    .catch Ljava/lang/NoSuchFieldError; {:try_start_204 .. :try_end_210} :catch_210

    :catch_210
    :try_start_210
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MEMORY_INTERNAL_UNAVAILABLE:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v16

    const/16 v17, 0x16

    aput v17, v15, v16
    :try_end_21c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_210 .. :try_end_21c} :catch_21c

    :catch_21c
    :try_start_21c
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MAX_FILESIZE_REACHED:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v16

    const/16 v17, 0x17

    aput v17, v15, v16
    :try_end_228
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21c .. :try_end_228} :catch_228

    :catch_228
    :try_start_228
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MAX_DURATION_REACHED:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v16

    const/16 v17, 0x18

    aput v17, v15, v16
    :try_end_234
    .catch Ljava/lang/NoSuchFieldError; {:try_start_228 .. :try_end_234} :catch_234

    :catch_234
    :try_start_234
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->PREDICTIVE_LAUNCH_DESCRIPTION:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v16

    const/16 v17, 0x19

    aput v17, v15, v16
    :try_end_240
    .catch Ljava/lang/NoSuchFieldError; {:try_start_234 .. :try_end_240} :catch_240

    :catch_240
    :try_start_240
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->RESET_CONFIRMATION:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v16

    const/16 v17, 0x1a

    aput v17, v15, v16
    :try_end_24c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_240 .. :try_end_24c} :catch_24c

    .line 9148
    :catch_24c
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$HorizontalLevelMeter:[I

    :try_start_255
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$HorizontalLevelMeter:[I

    sget-object v16, Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;->ordinal()I

    move-result v16

    aput v0, v15, v16
    :try_end_25f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_255 .. :try_end_25f} :catch_25f

    :catch_25f
    :try_start_25f
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$HorizontalLevelMeter:[I

    sget-object v16, Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;->MAIN_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;->ordinal()I

    move-result v16

    aput v1, v15, v16
    :try_end_269
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25f .. :try_end_269} :catch_269

    :catch_269
    :try_start_269
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$HorizontalLevelMeter:[I

    sget-object v16, Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/configuration/parameters/HorizontalLevelMeter;->ordinal()I

    move-result v16

    aput v2, v15, v16
    :try_end_273
    .catch Ljava/lang/NoSuchFieldError; {:try_start_269 .. :try_end_273} :catch_273

    .line 8415
    :catch_273
    invoke-static {}, Lcom/sonyericsson/android/camera/NavigatorContents;->values()[Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$NavigatorContents:[I

    :try_start_27c
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$NavigatorContents:[I

    sget-object v16, Lcom/sonyericsson/android/camera/NavigatorContents;->SUPERIOR_AUTO:Lcom/sonyericsson/android/camera/NavigatorContents;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/NavigatorContents;->ordinal()I

    move-result v16

    aput v0, v15, v16
    :try_end_286
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27c .. :try_end_286} :catch_286

    :catch_286
    :try_start_286
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$NavigatorContents:[I

    sget-object v16, Lcom/sonyericsson/android/camera/NavigatorContents;->VIDEO:Lcom/sonyericsson/android/camera/NavigatorContents;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/NavigatorContents;->ordinal()I

    move-result v16

    aput v1, v15, v16
    :try_end_290
    .catch Ljava/lang/NoSuchFieldError; {:try_start_286 .. :try_end_290} :catch_290

    .line 7960
    :catch_290
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$AutoReview:[I

    :try_start_299
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$AutoReview:[I

    sget-object v16, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->ALWAYS:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->ordinal()I

    move-result v16

    aput v0, v15, v16
    :try_end_2a3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_299 .. :try_end_2a3} :catch_2a3

    :catch_2a3
    :try_start_2a3
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$AutoReview:[I

    sget-object v16, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->FRONT_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->ordinal()I

    move-result v16

    aput v1, v15, v16
    :try_end_2ad
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a3 .. :try_end_2ad} :catch_2ad

    :catch_2ad
    :try_start_2ad
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$AutoReview:[I

    sget-object v16, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->ordinal()I

    move-result v16

    aput v2, v15, v16
    :try_end_2b7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2ad .. :try_end_2b7} :catch_2b7

    .line 5623
    :catch_2b7
    invoke-static {}, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->values()[Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$BurstRejectedReason:[I

    :try_start_2c0
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$BurstRejectedReason:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->CANNOT_BURST_IN_DARK_CONDITION:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->ordinal()I

    move-result v16

    aput v0, v15, v16
    :try_end_2ca
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c0 .. :try_end_2ca} :catch_2ca

    :catch_2ca
    :try_start_2ca
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$BurstRejectedReason:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->CANNOT_BURST_USING_FRONT_CAMERA:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->ordinal()I

    move-result v16

    aput v1, v15, v16
    :try_end_2d4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2ca .. :try_end_2d4} :catch_2d4

    :catch_2d4
    :try_start_2d4
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$BurstRejectedReason:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->CANNOT_BURST_DUE_TO_FUSION_MODE:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->ordinal()I

    move-result v16

    aput v2, v15, v16
    :try_end_2de
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d4 .. :try_end_2de} :catch_2de

    :catch_2de
    :try_start_2de
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$BurstRejectedReason:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->BURST_IS_DISABLED_BY_CAMERA_KEY_ASSIGN_SETTING:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->ordinal()I

    move-result v16

    aput v3, v15, v16
    :try_end_2e8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2de .. :try_end_2e8} :catch_2e8

    :catch_2e8
    :try_start_2e8
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$BurstRejectedReason:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->CANNOT_BURST_DUE_TO_SHUTTER_SPEED:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->ordinal()I

    move-result v16

    aput v4, v15, v16
    :try_end_2f2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e8 .. :try_end_2f2} :catch_2f2

    :catch_2f2
    :try_start_2f2
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$BurstRejectedReason:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->CANNOT_BURST_DUE_TO_BOKEH_MODE:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->ordinal()I

    move-result v16

    aput v5, v15, v16
    :try_end_2fc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f2 .. :try_end_2fc} :catch_2fc

    :catch_2fc
    :try_start_2fc
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$BurstRejectedReason:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->CANNOT_BURST_DUE_TO_WIDE_MODE:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->ordinal()I

    move-result v16

    aput v6, v15, v16
    :try_end_306
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2fc .. :try_end_306} :catch_306

    :catch_306
    :try_start_306
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$BurstRejectedReason:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->CANNOT_BURST_DUE_TO_TAGGING_MODE:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->ordinal()I

    move-result v16

    aput v7, v15, v16
    :try_end_310
    .catch Ljava/lang/NoSuchFieldError; {:try_start_306 .. :try_end_310} :catch_310

    .line 4850
    :catch_310
    invoke-static {}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->values()[Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    :try_start_319
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    aput v0, v15, v16
    :try_end_323
    .catch Ljava/lang/NoSuchFieldError; {:try_start_319 .. :try_end_323} :catch_323

    :catch_323
    :try_start_323
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_RESIZE_EVF_SCOPE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    aput v1, v15, v16
    :try_end_32d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_323 .. :try_end_32d} :catch_32d

    :catch_32d
    :try_start_32d
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_PREPARE_RECORDING_INDICATOR:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    aput v2, v15, v16
    :try_end_337
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32d .. :try_end_337} :catch_337

    :catch_337
    :try_start_337
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_CAPTURING_MODE_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    aput v3, v15, v16
    :try_end_341
    .catch Ljava/lang/NoSuchFieldError; {:try_start_337 .. :try_end_341} :catch_341

    :catch_341
    :try_start_341
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_DETECTED_SCENE_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    aput v4, v15, v16
    :try_end_34b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_341 .. :try_end_34b} :catch_34b

    :catch_34b
    :try_start_34b
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_AUTO_FLASH_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    aput v5, v15, v16
    :try_end_355
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34b .. :try_end_355} :catch_355

    :catch_355
    :try_start_355
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FACE_DETECTION_STARTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    aput v6, v15, v16
    :try_end_35f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_355 .. :try_end_35f} :catch_35f

    :catch_35f
    :try_start_35f
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FACE_DETECTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    aput v7, v15, v16
    :try_end_369
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35f .. :try_end_369} :catch_369

    :catch_369
    :try_start_369
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_OBJECT_TRACKING_STARTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    aput v8, v15, v16
    :try_end_373
    .catch Ljava/lang/NoSuchFieldError; {:try_start_369 .. :try_end_373} :catch_373

    :catch_373
    :try_start_373
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_OBJECT_TRACKING_TIMEOUT:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    aput v9, v15, v16
    :try_end_37d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_373 .. :try_end_37d} :catch_37d

    :catch_37d
    :try_start_37d
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_OBJECT_TRACKING_STOP:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    aput v10, v15, v16
    :try_end_387
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37d .. :try_end_387} :catch_387

    :catch_387
    :try_start_387
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_TRACKED_OBJECT_STATE_UPDATED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    aput v11, v15, v16
    :try_end_391
    .catch Ljava/lang/NoSuchFieldError; {:try_start_387 .. :try_end_391} :catch_391

    :catch_391
    :try_start_391
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ZOOM_START:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    aput v12, v15, v16
    :try_end_39b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_391 .. :try_end_39b} :catch_39b

    :catch_39b
    :try_start_39b
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ZOOM_STOP:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    aput v13, v15, v16
    :try_end_3a5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39b .. :try_end_3a5} :catch_3a5

    :catch_3a5
    :try_start_3a5
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ZOOM_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    aput v14, v15, v16
    :try_end_3af
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a5 .. :try_end_3af} :catch_3af

    :catch_3af
    :try_start_3af
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_SELFTIMER_FINISHED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x10

    aput v17, v15, v16
    :try_end_3bb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3af .. :try_end_3bb} :catch_3bb

    :catch_3bb
    :try_start_3bb
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_SELECTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x11

    aput v17, v15, v16
    :try_end_3c7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3bb .. :try_end_3c7} :catch_3c7

    :catch_3c7
    :try_start_3c7
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x12

    aput v17, v15, v16
    :try_end_3d3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c7 .. :try_end_3d3} :catch_3d3

    :catch_3d3
    :try_start_3d3
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED_EXCEPT_FACE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x13

    aput v17, v15, v16
    :try_end_3df
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d3 .. :try_end_3df} :catch_3df

    :catch_3df
    :try_start_3df
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED_TOUCH_FOCUS:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x14

    aput v17, v15, v16
    :try_end_3eb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3df .. :try_end_3eb} :catch_3eb

    :catch_3eb
    :try_start_3eb
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED_BY_SELECT_FACE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x15

    aput v17, v15, v16
    :try_end_3f7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3eb .. :try_end_3f7} :catch_3f7

    :catch_3f7
    :try_start_3f7
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_RECORDING_PROGRESS:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x16

    aput v17, v15, v16
    :try_end_403
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f7 .. :try_end_403} :catch_403

    :catch_403
    :try_start_403
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ORIENTATION_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x17

    aput v17, v15, v16
    :try_end_40f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_403 .. :try_end_40f} :catch_40f

    :catch_40f
    :try_start_40f
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_UPDATE_DIALOGS:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x18

    aput v17, v15, v16
    :try_end_41b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40f .. :try_end_41b} :catch_41b

    :catch_41b
    :try_start_41b
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_CLOSE_ALL_DIALOGS:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x19

    aput v17, v15, v16
    :try_end_427
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41b .. :try_end_427} :catch_427

    :catch_427
    :try_start_427
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHOW_INSTANT_VIEWER:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x1a

    aput v17, v15, v16
    :try_end_433
    .catch Ljava/lang/NoSuchFieldError; {:try_start_427 .. :try_end_433} :catch_433

    :catch_433
    :try_start_433
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_STORE_COMPLETED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x1b

    aput v17, v15, v16
    :try_end_43f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_433 .. :try_end_43f} :catch_43f

    :catch_43f
    :try_start_43f
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_CAPTURE_FEEDBACK_PROGRESS:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x1c

    aput v17, v15, v16
    :try_end_44b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43f .. :try_end_44b} :catch_44b

    :catch_44b
    :try_start_44b
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_CAPTURE_FEEDBACK_PROGRESS_LONG:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x1d

    aput v17, v15, v16
    :try_end_457
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44b .. :try_end_457} :catch_457

    :catch_457
    :try_start_457
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_CAPTURE_FEEDBACK_ANIMATION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x1e

    aput v17, v15, v16
    :try_end_463
    .catch Ljava/lang/NoSuchFieldError; {:try_start_457 .. :try_end_463} :catch_463

    :catch_463
    :try_start_463
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_LAZY_INITIALIZATION_TASK_RUN:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x1f

    aput v17, v15, v16
    :try_end_46f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_463 .. :try_end_46f} :catch_46f

    :catch_46f
    :try_start_46f
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ADD_VIDEO_CHAPTER:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x20

    aput v17, v15, v16
    :try_end_47b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46f .. :try_end_47b} :catch_47b

    :catch_47b
    :try_start_47b
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_THERMAL_NORMAL:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x21

    aput v17, v15, v16
    :try_end_487
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47b .. :try_end_487} :catch_487

    :catch_487
    :try_start_487
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_THERMAL_WARNING:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x22

    aput v17, v15, v16
    :try_end_493
    .catch Ljava/lang/NoSuchFieldError; {:try_start_487 .. :try_end_493} :catch_493

    :catch_493
    :try_start_493
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_THERMAL_CRITICAL:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x23

    aput v17, v15, v16
    :try_end_49f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_493 .. :try_end_49f} :catch_49f

    :catch_49f
    :try_start_49f
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_GEO_TAG:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x24

    aput v17, v15, v16
    :try_end_4ab
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49f .. :try_end_4ab} :catch_4ab

    :catch_4ab
    :try_start_4ab
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_GRID_LINE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x25

    aput v17, v15, v16
    :try_end_4b7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4ab .. :try_end_4b7} :catch_4b7

    :catch_4b7
    :try_start_4b7
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ANGLE_CHANGE_START:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x26

    aput v17, v15, v16
    :try_end_4c3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b7 .. :try_end_4c3} :catch_4c3

    :catch_4c3
    :try_start_4c3
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ANGLE_CHANGE_COMPLETED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x27

    aput v17, v15, v16
    :try_end_4cf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c3 .. :try_end_4cf} :catch_4cf

    :catch_4cf
    :try_start_4cf
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_BURST_REJECTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x28

    aput v17, v15, v16
    :try_end_4db
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4cf .. :try_end_4db} :catch_4db

    :catch_4db
    :try_start_4db
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_BURST_SHUTTER_DONE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x29

    aput v17, v15, v16
    :try_end_4e7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4db .. :try_end_4e7} :catch_4e7

    :catch_4e7
    :try_start_4e7
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_BURST_FINISH:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x2a

    aput v17, v15, v16
    :try_end_4f3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e7 .. :try_end_4f3} :catch_4f3

    :catch_4f3
    :try_start_4f3
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_PREVIEW_STARTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x2b

    aput v17, v15, v16
    :try_end_4ff
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f3 .. :try_end_4ff} :catch_4ff

    :catch_4ff
    :try_start_4ff
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_HIDE_HORIZONTAL_LEVEL_METER_VIEW:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x2c

    aput v17, v15, v16
    :try_end_50b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4ff .. :try_end_50b} :catch_50b

    :catch_50b
    :try_start_50b
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHOW_HORIZONTAL_LEVEL_METER_VIEW:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x2d

    aput v17, v15, v16
    :try_end_517
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50b .. :try_end_517} :catch_517

    :catch_517
    :try_start_517
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_CAPTURE_FINISH:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x2e

    aput v17, v15, v16
    :try_end_523
    .catch Ljava/lang/NoSuchFieldError; {:try_start_517 .. :try_end_523} :catch_523

    :catch_523
    :try_start_523
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_CAPTURE_CANCEL:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x2f

    aput v17, v15, v16
    :try_end_52f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_523 .. :try_end_52f} :catch_52f

    :catch_52f
    :try_start_52f
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_MAX_DURATION_REACHED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x30

    aput v17, v15, v16
    :try_end_53b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52f .. :try_end_53b} :catch_53b

    :catch_53b
    :try_start_53b
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_MAX_FILESIZE_REACHED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x31

    aput v17, v15, v16
    :try_end_547
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53b .. :try_end_547} :catch_547

    :catch_547
    :try_start_547
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_BATTERY_CRITICAL:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x32

    aput v17, v15, v16
    :try_end_553
    .catch Ljava/lang/NoSuchFieldError; {:try_start_547 .. :try_end_553} :catch_553

    :catch_553
    :try_start_553
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_UPDATE_FUSION_MODE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x33

    aput v17, v15, v16
    :try_end_55f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_553 .. :try_end_55f} :catch_55f

    :catch_55f
    :try_start_55f
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ISO_CHANGED_BY_FUSION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x34

    aput v17, v15, v16
    :try_end_56b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55f .. :try_end_56b} :catch_56b

    :catch_56b
    :try_start_56b
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_SHOW_BLACK_SCREEN:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x35

    aput v17, v15, v16
    :try_end_577
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56b .. :try_end_577} :catch_577

    :catch_577
    :try_start_577
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_HIDE_BLACK_SCREEN:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x36

    aput v17, v15, v16
    :try_end_583
    .catch Ljava/lang/NoSuchFieldError; {:try_start_577 .. :try_end_583} :catch_583

    :catch_583
    :try_start_583
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_FUSION_CONDITION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x37

    aput v17, v15, v16
    :try_end_58f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_583 .. :try_end_58f} :catch_58f

    :catch_58f
    :try_start_58f
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_VIDEO_HDR_CONDITION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x38

    aput v17, v15, v16
    :try_end_59b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58f .. :try_end_59b} :catch_59b

    :catch_59b
    :try_start_59b
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_CAPTURING_MODE_CHANGING:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x39

    aput v17, v15, v16
    :try_end_5a7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59b .. :try_end_5a7} :catch_5a7

    :catch_5a7
    :try_start_5a7
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_SETTING_CHANGE_ACCEPTABILITY:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x3a

    aput v17, v15, v16
    :try_end_5b3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a7 .. :try_end_5b3} :catch_5b3

    :catch_5b3
    :try_start_5b3
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_MRU_SHORTCUT:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x3b

    aput v17, v15, v16
    :try_end_5bf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b3 .. :try_end_5bf} :catch_5bf

    :catch_5bf
    :try_start_5bf
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_APPS_UI_MODE_FINISH:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x3c

    aput v17, v15, v16
    :try_end_5cb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5bf .. :try_end_5cb} :catch_5cb

    :catch_5cb
    :try_start_5cb
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_TOUCHFOCUS_REJECT:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x3d

    aput v17, v15, v16
    :try_end_5d7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5cb .. :try_end_5d7} :catch_5d7

    :catch_5d7
    :try_start_5d7
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_BOKEH_MODE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x3e

    aput v17, v15, v16
    :try_end_5e3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d7 .. :try_end_5e3} :catch_5e3

    :catch_5e3
    :try_start_5e3
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_BOKEH_CONDITION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x3f

    aput v17, v15, v16
    :try_end_5ef
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5e3 .. :try_end_5ef} :catch_5ef

    :catch_5ef
    :try_start_5ef
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_SHOW_TEMPORARY_THUBNAIL:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x40

    aput v17, v15, v16
    :try_end_5fb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5ef .. :try_end_5fb} :catch_5fb

    :catch_5fb
    :try_start_5fb
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHOW_FAULT_DETECTION_NOTIFICATION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x41

    aput v17, v15, v16
    :try_end_607
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5fb .. :try_end_607} :catch_607

    :catch_607
    :try_start_607
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHOW_FAULT_DETECTION_NOTIFICATION_FOR_SNAPSHOT:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x42

    aput v17, v15, v16
    :try_end_613
    .catch Ljava/lang/NoSuchFieldError; {:try_start_607 .. :try_end_613} :catch_613

    :catch_613
    :try_start_613
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_RESTRICT_FAULT_DETECTION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x43

    aput v17, v15, v16
    :try_end_61f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_613 .. :try_end_61f} :catch_61f

    :catch_61f
    :try_start_61f
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_STOP_RECORDING:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x44

    aput v17, v15, v16
    :try_end_62b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_61f .. :try_end_62b} :catch_62b

    :catch_62b
    :try_start_62b
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHOW_UNLOCK_SCREEN_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v16

    const/16 v17, 0x45

    aput v17, v15, v16
    :try_end_637
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62b .. :try_end_637} :catch_637

    .line 4650
    :catch_637
    invoke-static {}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->values()[Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    :try_start_640
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->NOTICE_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v16

    aput v0, v15, v16
    :try_end_64a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_640 .. :try_end_64a} :catch_64a

    :catch_64a
    :try_start_64a
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->FLASH_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v16

    aput v1, v15, v16
    :try_end_654
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64a .. :try_end_654} :catch_654

    :catch_654
    :try_start_654
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->SELF_TIMER_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v16

    aput v2, v15, v16
    :try_end_65e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_654 .. :try_end_65e} :catch_65e

    :catch_65e
    :try_start_65e
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ASPECT_RATIO_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v16

    aput v3, v15, v16
    :try_end_668
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65e .. :try_end_668} :catch_668

    :catch_668
    :try_start_668
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->FUSION_MODE_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v16

    aput v4, v15, v16
    :try_end_672
    .catch Ljava/lang/NoSuchFieldError; {:try_start_668 .. :try_end_672} :catch_672

    :catch_672
    :try_start_672
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->VIDEO_HDR_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v16

    aput v5, v15, v16
    :try_end_67c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_672 .. :try_end_67c} :catch_67c

    :catch_67c
    :try_start_67c
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->HDR_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v16

    aput v6, v15, v16
    :try_end_686
    .catch Ljava/lang/NoSuchFieldError; {:try_start_67c .. :try_end_686} :catch_686

    :catch_686
    :try_start_686
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->SETTING_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v16

    aput v7, v15, v16
    :try_end_690
    .catch Ljava/lang/NoSuchFieldError; {:try_start_686 .. :try_end_690} :catch_690

    :catch_690
    :try_start_690
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->MODE_SELECTOR:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v16

    aput v8, v15, v16
    :try_end_69a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_690 .. :try_end_69a} :catch_69a

    :catch_69a
    :try_start_69a
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->REVIEW_WINDOW:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v16

    aput v9, v15, v16
    :try_end_6a4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_69a .. :try_end_6a4} :catch_6a4

    :catch_6a4
    :try_start_6a4
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->OVERLAY_CONTROL_SEEKING:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v16

    aput v10, v15, v16
    :try_end_6ae
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a4 .. :try_end_6ae} :catch_6ae

    :catch_6ae
    :try_start_6ae
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->TUTORIAL:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v16

    aput v11, v15, v16
    :try_end_6b8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6ae .. :try_end_6b8} :catch_6b8

    .line 4595
    :catch_6b8
    invoke-static {}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->values()[Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern:[I

    :try_start_6c1
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ordinal()I

    move-result v16

    aput v0, v15, v16
    :try_end_6cb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c1 .. :try_end_6cb} :catch_6cb

    :catch_6cb
    :try_start_6cb
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING_IN_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ordinal()I

    move-result v16

    aput v1, v15, v16
    :try_end_6d5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6cb .. :try_end_6d5} :catch_6d5

    :catch_6d5
    :try_start_6d5
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->PAUSE_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ordinal()I

    move-result v16

    aput v2, v15, v16
    :try_end_6df
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6d5 .. :try_end_6df} :catch_6df

    :catch_6df
    :try_start_6df
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING_IN_PAUSE_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ordinal()I

    move-result v16

    aput v3, v15, v16
    :try_end_6e9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6df .. :try_end_6e9} :catch_6e9

    :catch_6e9
    :try_start_6e9
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ordinal()I

    move-result v16

    aput v4, v15, v16
    :try_end_6f3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e9 .. :try_end_6f3} :catch_6f3

    :catch_6f3
    :try_start_6f3
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->FOCUS_SEARCHING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ordinal()I

    move-result v16

    aput v5, v15, v16
    :try_end_6fd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6f3 .. :try_end_6fd} :catch_6fd

    :catch_6fd
    :try_start_6fd
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->FOCUS_DONE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ordinal()I

    move-result v16

    aput v6, v15, v16
    :try_end_707
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6fd .. :try_end_707} :catch_707

    .line 3992
    :catch_707
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$TouchCapture:[I

    :try_start_710
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$TouchCapture:[I

    sget-object v16, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->ordinal()I

    move-result v16

    aput v0, v15, v16
    :try_end_71a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_710 .. :try_end_71a} :catch_71a

    :catch_71a
    :try_start_71a
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$TouchCapture:[I

    sget-object v16, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->FRONT_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->ordinal()I

    move-result v16

    aput v1, v15, v16
    :try_end_724
    .catch Ljava/lang/NoSuchFieldError; {:try_start_71a .. :try_end_724} :catch_724

    .line 3342
    :catch_724
    invoke-static {}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->values()[Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree:[I

    :try_start_72d
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->START:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->ordinal()I

    move-result v16

    aput v0, v15, v16
    :try_end_737
    .catch Ljava/lang/NoSuchFieldError; {:try_start_72d .. :try_end_737} :catch_737

    :catch_737
    :try_start_737
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->EXEC:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->ordinal()I

    move-result v16

    aput v1, v15, v16
    :try_end_741
    .catch Ljava/lang/NoSuchFieldError; {:try_start_737 .. :try_end_741} :catch_741

    :catch_741
    :try_start_741
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->CANCEL:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->ordinal()I

    move-result v16

    aput v2, v15, v16
    :try_end_74b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_741 .. :try_end_74b} :catch_74b

    :catch_74b
    :try_start_74b
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->FINISH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->ordinal()I

    move-result v16

    aput v3, v15, v16
    :try_end_755
    .catch Ljava/lang/NoSuchFieldError; {:try_start_74b .. :try_end_755} :catch_755

    .line 3325
    :catch_755
    invoke-static {}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->values()[Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationType:[I

    :try_start_75e
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationType:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->MODE_TOUCH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->ordinal()I

    move-result v16

    aput v0, v15, v16
    :try_end_768
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75e .. :try_end_768} :catch_768

    :catch_768
    :try_start_768
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationType:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->MODE_ICON:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->ordinal()I

    move-result v16

    aput v1, v15, v16
    :try_end_772
    .catch Ljava/lang/NoSuchFieldError; {:try_start_768 .. :try_end_772} :catch_772

    :catch_772
    :try_start_772
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationType:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->MODE_SELECTOR:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->ordinal()I

    move-result v16

    aput v2, v15, v16
    :try_end_77c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_772 .. :try_end_77c} :catch_77c

    :catch_77c
    :try_start_77c
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationType:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->MRU_SHORTCUT:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->ordinal()I

    move-result v16

    aput v3, v15, v16
    :try_end_786
    .catch Ljava/lang/NoSuchFieldError; {:try_start_77c .. :try_end_786} :catch_786

    :catch_786
    :try_start_786
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationType:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->SWITCH_TOUCH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->ordinal()I

    move-result v16

    aput v4, v15, v16
    :try_end_790
    .catch Ljava/lang/NoSuchFieldError; {:try_start_786 .. :try_end_790} :catch_790

    .line 3094
    :catch_790
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->values()[Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    :try_start_799
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v16, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_NONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v16

    aput v0, v15, v16
    :try_end_7a3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_799 .. :try_end_7a3} :catch_7a3

    :catch_7a3
    :try_start_7a3
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v16, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_INITIALIZE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v16

    aput v1, v15, v16
    :try_end_7ad
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a3 .. :try_end_7ad} :catch_7ad

    :catch_7ad
    :try_start_7ad
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v16, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_RESUME:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v16

    aput v2, v15, v16
    :try_end_7b7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7ad .. :try_end_7b7} :catch_7b7

    :catch_7b7
    :try_start_7b7
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v16, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_RESUME_AND_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v16

    aput v3, v15, v16
    :try_end_7c1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7b7 .. :try_end_7c1} :catch_7c1

    :catch_7c1
    :try_start_7c1
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v16, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v16

    aput v4, v15, v16
    :try_end_7cb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7c1 .. :try_end_7cb} :catch_7cb

    :catch_7cb
    :try_start_7cb
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v16, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v16

    aput v5, v15, v16
    :try_end_7d5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7cb .. :try_end_7d5} :catch_7d5

    :catch_7d5
    :try_start_7d5
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v16, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_CAPTURE_COUNTDOWN:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v16

    aput v6, v15, v16
    :try_end_7df
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7d5 .. :try_end_7df} :catch_7df

    :catch_7df
    :try_start_7df
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v16, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_OPERATION_RESTRICTED:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v16

    aput v7, v15, v16
    :try_end_7e9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7df .. :try_end_7e9} :catch_7e9

    :catch_7e9
    :try_start_7e9
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v16, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_AF_SEARCH:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v16

    aput v8, v15, v16
    :try_end_7f3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e9 .. :try_end_7f3} :catch_7f3

    :catch_7f3
    :try_start_7f3
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v16, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_AF_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v16

    aput v9, v15, v16
    :try_end_7fd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7f3 .. :try_end_7fd} :catch_7fd

    :catch_7fd
    :try_start_7fd
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v16, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE_WAIT_FOR_AF_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v16

    aput v10, v15, v16
    :try_end_807
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7fd .. :try_end_807} :catch_807

    :catch_807
    :try_start_807
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v16, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_BURST_CAPTURE_WAIT_FOR_AF_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v16

    aput v11, v15, v16
    :try_end_811
    .catch Ljava/lang/NoSuchFieldError; {:try_start_807 .. :try_end_811} :catch_811

    :catch_811
    :try_start_811
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v16, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v16

    aput v12, v15, v16
    :try_end_81b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_811 .. :try_end_81b} :catch_81b

    :catch_81b
    :try_start_81b
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_BURST_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v15

    aput v13, v12, v15
    :try_end_825
    .catch Ljava/lang/NoSuchFieldError; {:try_start_81b .. :try_end_825} :catch_825

    :catch_825
    :try_start_825
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v13, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v13

    aput v14, v12, v13
    :try_end_82f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_825 .. :try_end_82f} :catch_82f

    :catch_82f
    :try_start_82f
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v13, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PREPARE_FOR_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v13

    const/16 v14, 0x10

    aput v14, v12, v13
    :try_end_83b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_82f .. :try_end_83b} :catch_83b

    :catch_83b
    :try_start_83b
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v13, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_CAPTURE_WHILE_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v13

    const/16 v14, 0x11

    aput v14, v12, v13
    :try_end_847
    .catch Ljava/lang/NoSuchFieldError; {:try_start_83b .. :try_end_847} :catch_847

    :catch_847
    :try_start_847
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v13, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_STORE_PHOTO_WHILE_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v13

    const/16 v14, 0x12

    aput v14, v12, v13
    :try_end_853
    .catch Ljava/lang/NoSuchFieldError; {:try_start_847 .. :try_end_853} :catch_853

    :catch_853
    :try_start_853
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v13, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_STORE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v13

    const/16 v14, 0x13

    aput v14, v12, v13
    :try_end_85f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_853 .. :try_end_85f} :catch_85f

    :catch_85f
    :try_start_85f
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v13, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_FATAL:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v13

    const/16 v14, 0x14

    aput v14, v12, v13
    :try_end_86b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_85f .. :try_end_86b} :catch_86b

    :catch_86b
    :try_start_86b
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v13, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PAUSE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v13

    const/16 v14, 0x15

    aput v14, v12, v13
    :try_end_877
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86b .. :try_end_877} :catch_877

    :catch_877
    :try_start_877
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v13, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_WARNING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v13

    const/16 v14, 0x16

    aput v14, v12, v13
    :try_end_883
    .catch Ljava/lang/NoSuchFieldError; {:try_start_877 .. :try_end_883} :catch_883

    :catch_883
    :try_start_883
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v13, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_FINALIZE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v13

    const/16 v14, 0x17

    aput v14, v12, v13
    :try_end_88f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_883 .. :try_end_88f} :catch_88f

    :catch_88f
    :try_start_88f
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v13, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_RECORDING_PAUSING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v13

    const/16 v14, 0x18

    aput v14, v12, v13
    :try_end_89b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_88f .. :try_end_89b} :catch_89b

    :catch_89b
    :try_start_89b
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v13, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_CAMERA_SWITCHING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v13

    const/16 v14, 0x19

    aput v14, v12, v13
    :try_end_8a7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89b .. :try_end_8a7} :catch_8a7

    :catch_8a7
    :try_start_8a7
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v13, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_READY_FOR_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v13

    const/16 v14, 0x1a

    aput v14, v12, v13
    :try_end_8b3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8a7 .. :try_end_8b3} :catch_8b3

    :catch_8b3
    :try_start_8b3
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v13, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_MODE_CHANGING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v13

    const/16 v14, 0x1b

    aput v14, v12, v13
    :try_end_8bf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8b3 .. :try_end_8bf} :catch_8bf

    :catch_8bf
    :try_start_8bf
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v13, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_WAITING_EVF_PREPARED_IN_MODE_CHANGE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v13

    const/16 v14, 0x1c

    aput v14, v12, v13
    :try_end_8cb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8bf .. :try_end_8cb} :catch_8cb

    :catch_8cb
    :try_start_8cb
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v13, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_HIGH_FRAME_RATE_VIDEO_RECORDING_IN_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v13

    const/16 v14, 0x1d

    aput v14, v12, v13
    :try_end_8d7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8cb .. :try_end_8d7} :catch_8d7

    :catch_8d7
    :try_start_8d7
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v13, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_LOW_FRAME_RATE_VIDEO_RECORDING_IN_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v13

    const/16 v14, 0x1e

    aput v14, v12, v13
    :try_end_8e3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8d7 .. :try_end_8e3} :catch_8e3

    :catch_8e3
    :try_start_8e3
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v13, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_WAIT_FOR_HIGH_FRAME_RATE_VIDEO_RECORDING_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v13

    const/16 v14, 0x1f

    aput v14, v12, v13
    :try_end_8ef
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8e3 .. :try_end_8ef} :catch_8ef

    .line 2873
    :catch_8ef
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    move-result-object v12

    array-length v12, v12

    new-array v12, v12, [I

    sput-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    :try_start_8f8
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result v13

    aput v0, v12, v13
    :try_end_902
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8f8 .. :try_end_902} :catch_902

    :catch_902
    :try_start_902
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result v13

    aput v1, v12, v13
    :try_end_90c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_902 .. :try_end_90c} :catch_90c

    :catch_90c
    :try_start_90c
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result v13

    aput v2, v12, v13
    :try_end_916
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90c .. :try_end_916} :catch_916

    .line 2671
    :catch_916
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->values()[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v12

    array-length v12, v12

    new-array v12, v12, [I

    sput-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    :try_start_91f
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FOCUS_RANGE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v13

    aput v0, v12, v13
    :try_end_929
    .catch Ljava/lang/NoSuchFieldError; {:try_start_91f .. :try_end_929} :catch_929

    :catch_929
    :try_start_929
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_SPEED:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v13

    aput v1, v12, v13
    :try_end_933
    .catch Ljava/lang/NoSuchFieldError; {:try_start_929 .. :try_end_933} :catch_933

    :catch_933
    :try_start_933
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->WHITE_BALANCE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v13

    aput v2, v12, v13
    :try_end_93d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_933 .. :try_end_93d} :catch_93d

    :catch_93d
    :try_start_93d
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->EV:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v13

    aput v3, v12, v13
    :try_end_947
    .catch Ljava/lang/NoSuchFieldError; {:try_start_93d .. :try_end_947} :catch_947

    :catch_947
    :try_start_947
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v13

    aput v4, v12, v13
    :try_end_951
    .catch Ljava/lang/NoSuchFieldError; {:try_start_947 .. :try_end_951} :catch_951

    :catch_951
    :try_start_951
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v13

    aput v5, v12, v13
    :try_end_95b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_951 .. :try_end_95b} :catch_95b

    :catch_95b
    :try_start_95b
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GEO_TAG:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v13

    aput v6, v12, v13
    :try_end_965
    .catch Ljava/lang/NoSuchFieldError; {:try_start_95b .. :try_end_965} :catch_965

    .line 2496
    :catch_965
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    move-result-object v12

    array-length v12, v12

    new-array v12, v12, [I

    sput-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer:[I

    :try_start_96e
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer:[I

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->LONG:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->ordinal()I

    move-result v13

    aput v0, v12, v13
    :try_end_978
    .catch Ljava/lang/NoSuchFieldError; {:try_start_96e .. :try_end_978} :catch_978

    :catch_978
    :try_start_978
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer:[I

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->GESTURE_SHUTTER_COUNT_DOWN:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->ordinal()I

    move-result v13

    aput v1, v12, v13
    :try_end_982
    .catch Ljava/lang/NoSuchFieldError; {:try_start_978 .. :try_end_982} :catch_982

    :catch_982
    :try_start_982
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer:[I

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->SHORT:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->ordinal()I

    move-result v13

    aput v2, v12, v13
    :try_end_98c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_982 .. :try_end_98c} :catch_98c

    :catch_98c
    :try_start_98c
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer:[I

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->LAUNCH_AND_CAPTURE_COUNT_DOWN:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->ordinal()I

    move-result v13

    aput v3, v12, v13
    :try_end_996
    .catch Ljava/lang/NoSuchFieldError; {:try_start_98c .. :try_end_996} :catch_996

    :catch_996
    :try_start_996
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer:[I

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->ordinal()I

    move-result v13

    aput v4, v12, v13
    :try_end_9a0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_996 .. :try_end_9a0} :catch_9a0

    .line 2391
    :catch_9a0
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->values()[Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    move-result-object v12

    array-length v12, v12

    new-array v12, v12, [I

    sput-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$controller$AbstractDraggingEventHandler$Direction:[I

    :try_start_9a9
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$controller$AbstractDraggingEventHandler$Direction:[I

    sget-object v13, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->UP:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->ordinal()I

    move-result v13

    aput v0, v12, v13
    :try_end_9b3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9a9 .. :try_end_9b3} :catch_9b3

    :catch_9b3
    :try_start_9b3
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$controller$AbstractDraggingEventHandler$Direction:[I

    sget-object v13, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->DOWN:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->ordinal()I

    move-result v13

    aput v1, v12, v13
    :try_end_9bd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9b3 .. :try_end_9bd} :catch_9bd

    :catch_9bd
    :try_start_9bd
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$controller$AbstractDraggingEventHandler$Direction:[I

    sget-object v13, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->LEFT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->ordinal()I

    move-result v13

    aput v2, v12, v13
    :try_end_9c7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9bd .. :try_end_9c7} :catch_9c7

    :catch_9c7
    :try_start_9c7
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$controller$AbstractDraggingEventHandler$Direction:[I

    sget-object v13, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->RIGHT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->ordinal()I

    move-result v13

    aput v3, v12, v13
    :try_end_9d1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c7 .. :try_end_9d1} :catch_9d1

    .line 1935
    :catch_9d1
    invoke-static {}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->values()[Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    move-result-object v12

    array-length v12, v12

    new-array v12, v12, [I

    sput-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    :try_start_9da
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->PHOTO_READY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v13

    aput v0, v12, v13
    :try_end_9e4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9da .. :try_end_9e4} :catch_9e4

    :catch_9e4
    :try_start_9e4
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->PHOTO_CAPTURE:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v13

    aput v1, v12, v13
    :try_end_9ee
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e4 .. :try_end_9ee} :catch_9ee

    :catch_9ee
    :try_start_9ee
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->PHOTO_BURST_CAPTURE:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v13

    aput v2, v12, v13
    :try_end_9f8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9ee .. :try_end_9f8} :catch_9f8

    :catch_9f8
    :try_start_9f8
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->VIDEO_READY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v13

    aput v3, v12, v13
    :try_end_a02
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9f8 .. :try_end_a02} :catch_a02

    :catch_a02
    :try_start_a02
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->VIDEO_RECORDING:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v13

    aput v4, v12, v13
    :try_end_a0c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a02 .. :try_end_a0c} :catch_a0c

    :catch_a0c
    :try_start_a0c
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->SUPER_SLOW_MOTION_STANDBY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v13

    aput v5, v12, v13
    :try_end_a16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a0c .. :try_end_a16} :catch_a16

    :catch_a16
    :try_start_a16
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->SUPER_SLOW_MOTION_RECORDING:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v13

    aput v6, v12, v13
    :try_end_a20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a16 .. :try_end_a20} :catch_a20

    :catch_a20
    :try_start_a20
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->STANDARD_SLOW_MOTION_STANDBY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v13

    aput v7, v12, v13
    :try_end_a2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a20 .. :try_end_a2a} :catch_a2a

    :catch_a2a
    :try_start_a2a
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->STANDARD_SLOW_MOTION_RECORDING:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v13

    aput v8, v12, v13
    :try_end_a34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a2a .. :try_end_a34} :catch_a34

    :catch_a34
    :try_start_a34
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->SUPER_SLOW_SHOT_STANDBY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v13

    aput v9, v12, v13
    :try_end_a3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a34 .. :try_end_a3e} :catch_a3e

    :catch_a3e
    :try_start_a3e
    sget-object v9, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->VIDEO_STOPPING_RECORDING:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v12

    aput v10, v9, v12
    :try_end_a48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a3e .. :try_end_a48} :catch_a48

    :catch_a48
    :try_start_a48
    sget-object v9, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v10, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->VIDEO_PAUSING:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v10

    aput v11, v9, v10
    :try_end_a52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a48 .. :try_end_a52} :catch_a52

    .line 1151
    :catch_a52
    invoke-static {}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->values()[Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$SideTouchArea:[I

    :try_start_a5b
    sget-object v9, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$SideTouchArea:[I

    sget-object v10, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->TOP:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->ordinal()I

    move-result v10

    aput v0, v9, v10
    :try_end_a65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a5b .. :try_end_a65} :catch_a65

    :catch_a65
    :try_start_a65
    sget-object v9, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$SideTouchArea:[I

    sget-object v10, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->BOTTOM:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->ordinal()I

    move-result v10

    aput v1, v9, v10
    :try_end_a6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a65 .. :try_end_a6f} :catch_a6f

    :catch_a6f
    :try_start_a6f
    sget-object v9, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$SideTouchArea:[I

    sget-object v10, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->LEFT:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->ordinal()I

    move-result v10

    aput v2, v9, v10
    :try_end_a79
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a6f .. :try_end_a79} :catch_a79

    :catch_a79
    :try_start_a79
    sget-object v9, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$SideTouchArea:[I

    sget-object v10, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->RIGHT:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->ordinal()I

    move-result v10

    aput v3, v9, v10
    :try_end_a83
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a79 .. :try_end_a83} :catch_a83

    .line 1113
    :catch_a83
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    :try_start_a8c
    sget-object v9, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v10

    aput v0, v9, v10
    :try_end_a96
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8c .. :try_end_a96} :catch_a96

    :catch_a96
    :try_start_a96
    sget-object v9, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v10

    aput v1, v9, v10
    :try_end_aa0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a96 .. :try_end_aa0} :catch_aa0

    :catch_aa0
    :try_start_aa0
    sget-object v9, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v10

    aput v2, v9, v10
    :try_end_aaa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa0 .. :try_end_aaa} :catch_aaa

    :catch_aaa
    :try_start_aaa
    sget-object v9, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v10

    aput v3, v9, v10
    :try_end_ab4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aaa .. :try_end_ab4} :catch_ab4

    :catch_ab4
    :try_start_ab4
    sget-object v3, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v9

    aput v4, v3, v9
    :try_end_abe
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ab4 .. :try_end_abe} :catch_abe

    :catch_abe
    :try_start_abe
    sget-object v3, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v4

    aput v5, v3, v4
    :try_end_ac8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_abe .. :try_end_ac8} :catch_ac8

    :catch_ac8
    :try_start_ac8
    sget-object v3, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v4

    aput v6, v3, v4
    :try_end_ad2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ac8 .. :try_end_ad2} :catch_ad2

    :catch_ad2
    :try_start_ad2
    sget-object v3, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v4

    aput v7, v3, v4
    :try_end_adc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ad2 .. :try_end_adc} :catch_adc

    :catch_adc
    :try_start_adc
    sget-object v3, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v4

    aput v8, v3, v4
    :try_end_ae6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_adc .. :try_end_ae6} :catch_ae6

    .line 742
    :catch_ae6
    invoke-static {}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->values()[Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

    :try_start_aef
    sget-object v3, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

    sget-object v4, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->PORTRAIT_SELFIE:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_af9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aef .. :try_end_af9} :catch_af9

    :catch_af9
    :try_start_af9
    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

    sget-object v3, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->DUAL_BACKGROUND_DEFOCUS:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_b03
    .catch Ljava/lang/NoSuchFieldError; {:try_start_af9 .. :try_end_b03} :catch_b03

    :catch_b03
    :try_start_b03
    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->DUAL_MONOCHROME:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_b0d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b03 .. :try_end_b0d} :catch_b0d

    :catch_b0d
    return-void
.end method
