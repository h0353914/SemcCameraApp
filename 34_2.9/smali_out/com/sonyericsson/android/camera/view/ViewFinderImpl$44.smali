.class synthetic Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;
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
    .registers 25

    .line 11568
    invoke-static {}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->values()[Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinderImpl$PredictiveLaunchHideTrigger:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinderImpl$PredictiveLaunchHideTrigger:[I

    sget-object v3, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->SIDE_SENSING:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    const/4 v2, 0x3

    :try_start_1e
    sget-object v3, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinderImpl$PredictiveLaunchHideTrigger:[I

    sget-object v4, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->VOLUME_KEY_SHUTTER:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    :catch_28
    const/4 v3, 0x4

    :try_start_29
    sget-object v4, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinderImpl$PredictiveLaunchHideTrigger:[I

    sget-object v5, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->TOUCH_UP_CAPTURE:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_33} :catch_33

    .line 11310
    :catch_33
    invoke-static {}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;->values()[Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$overlaycontrol$SimpleIqControl$Type:[I

    :try_start_3c
    sget-object v5, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;->SEMI_AUTO:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_44} :catch_44

    :catch_44
    :try_start_44
    sget-object v4, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$overlaycontrol$SimpleIqControl$Type:[I

    sget-object v5, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;->BOKEH:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4e} :catch_4e

    .line 11118
    :catch_4e
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->values()[Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

    :try_start_57
    sget-object v5, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->BURST:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_5f} :catch_5f

    :catch_5f
    :try_start_5f
    sget-object v4, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

    sget-object v5, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO_DURING_REC:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_69
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_69} :catch_69

    :catch_69
    :try_start_69
    sget-object v4, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

    sget-object v5, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_73
    .catch Ljava/lang/NoSuchFieldError; {:try_start_69 .. :try_end_73} :catch_73

    :catch_73
    :try_start_73
    sget-object v4, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

    sget-object v5, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->VIDEO:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_7d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_73 .. :try_end_7d} :catch_7d

    :catch_7d
    const/4 v4, 0x5

    :try_start_7e
    sget-object v5, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

    sget-object v6, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->TIME_SHIFT:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_88
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_88} :catch_88

    :catch_88
    const/4 v5, 0x6

    :try_start_89
    sget-object v6, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

    sget-object v7, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO_BOKEN:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_93
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_93} :catch_93

    .line 10592
    :catch_93
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->values()[Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageState:[I

    :try_start_9c
    sget-object v7, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->ordinal()I

    move-result v7

    aput v1, v6, v7
    :try_end_a4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_a4} :catch_a4

    :catch_a4
    :try_start_a4
    sget-object v6, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageState:[I

    sget-object v7, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->AVAILABLE_NEAR_FULL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->ordinal()I

    move-result v7

    aput v0, v6, v7
    :try_end_ae
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a4 .. :try_end_ae} :catch_ae

    :catch_ae
    :try_start_ae
    sget-object v6, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageState:[I

    sget-object v7, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->FULL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->ordinal()I

    move-result v7

    aput v2, v6, v7
    :try_end_b8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ae .. :try_end_b8} :catch_b8

    :catch_b8
    :try_start_b8
    sget-object v6, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageState:[I

    sget-object v7, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->UNAVAILABLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->ordinal()I

    move-result v7

    aput v3, v6, v7
    :try_end_c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b8 .. :try_end_c2} :catch_c2

    :catch_c2
    :try_start_c2
    sget-object v6, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageState:[I

    sget-object v7, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->REMOVED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->ordinal()I

    move-result v7

    aput v4, v6, v7
    :try_end_cc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c2 .. :try_end_cc} :catch_cc

    :catch_cc
    :try_start_cc
    sget-object v6, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageState:[I

    sget-object v7, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->READ_ONLY:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_d6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cc .. :try_end_d6} :catch_d6

    :catch_d6
    const/4 v6, 0x7

    :try_start_d7
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageState:[I

    sget-object v8, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->CORRUPT:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_e1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d7 .. :try_end_e1} :catch_e1

    .line 10604
    :catch_e1
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->values()[Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v7

    array-length v7, v7

    new-array v7, v7, [I

    sput-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageType:[I

    :try_start_ea
    sget-object v8, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->ordinal()I

    move-result v8

    aput v1, v7, v8
    :try_end_f2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ea .. :try_end_f2} :catch_f2

    :catch_f2
    :try_start_f2
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageType:[I

    sget-object v8, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->ordinal()I

    move-result v8

    aput v0, v7, v8
    :try_end_fc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f2 .. :try_end_fc} :catch_fc

    .line 10462
    :catch_fc
    invoke-static {}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->values()[Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    move-result-object v7

    array-length v7, v7

    new-array v7, v7, [I

    sput-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    :try_start_105
    sget-object v8, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->VIDEO_FUSION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v8

    aput v1, v7, v8
    :try_end_10d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_105 .. :try_end_10d} :catch_10d

    :catch_10d
    :try_start_10d
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    sget-object v8, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->MANUAL_FUSION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v8

    aput v0, v7, v8
    :try_end_117
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10d .. :try_end_117} :catch_117

    .line 9700
    :catch_117
    invoke-static {}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->values()[Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    move-result-object v7

    array-length v7, v7

    new-array v7, v7, [I

    sput-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    :try_start_120
    sget-object v8, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MEMORY_FULL_PROPOSE_CHANGE_TO_INTERNAL:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v8

    aput v1, v7, v8
    :try_end_128
    .catch Ljava/lang/NoSuchFieldError; {:try_start_120 .. :try_end_128} :catch_128

    :catch_128
    :try_start_128
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v8, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MEMORY_UNAVAILABLE_PROPOSE_CHANGE_TO_INTERNAL:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v8

    aput v0, v7, v8
    :try_end_132
    .catch Ljava/lang/NoSuchFieldError; {:try_start_128 .. :try_end_132} :catch_132

    :catch_132
    :try_start_132
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v8, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MEMORY_FULL_PROPOSE_CHANGE_TO_SD:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v8

    aput v2, v7, v8
    :try_end_13c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_132 .. :try_end_13c} :catch_13c

    :catch_13c
    :try_start_13c
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v8, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MEMORY_UNAVAILABLE_PROPOSE_CHANGE_TO_SD:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v8

    aput v3, v7, v8
    :try_end_146
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13c .. :try_end_146} :catch_146

    :catch_146
    :try_start_146
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v8, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->THERMAL_NOTE:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v8

    aput v4, v7, v8
    :try_end_150
    .catch Ljava/lang/NoSuchFieldError; {:try_start_146 .. :try_end_150} :catch_150

    :catch_150
    :try_start_150
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v8, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->LOCATION_SERVICE_DISABLE_ON_LAUNCH:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v8

    aput v5, v7, v8
    :try_end_15a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_150 .. :try_end_15a} :catch_15a

    :catch_15a
    :try_start_15a
    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v8, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->HIGH_SPEED_SD_RECOMMENDATION_ON_MODE_CHANGE:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_164
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15a .. :try_end_164} :catch_164

    :catch_164
    const/16 v7, 0x8

    :try_start_166
    sget-object v8, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v9, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->UNLOCK_REQUEST_FOR_OPENING_ADD_ON_APP:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_170
    .catch Ljava/lang/NoSuchFieldError; {:try_start_166 .. :try_end_170} :catch_170

    :catch_170
    const/16 v8, 0x9

    :try_start_172
    sget-object v9, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v10, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->UNLOCK_REQUEST_FOR_FAST_CAPTURING_REVIEW_PHOTOS_BURST:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_17c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_172 .. :try_end_17c} :catch_17c

    :catch_17c
    const/16 v9, 0xa

    :try_start_17e
    sget-object v10, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v11, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->APPLICATION_NOTIFICATION_NETWORK:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v11

    aput v9, v10, v11
    :try_end_188
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17e .. :try_end_188} :catch_188

    :catch_188
    const/16 v10, 0xb

    :try_start_18a
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v12, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->CONNECT_WIFI_SETTING:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v12

    aput v10, v11, v12
    :try_end_194
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18a .. :try_end_194} :catch_194

    :catch_194
    const/16 v11, 0xc

    :try_start_196
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v13, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ERROR_IN_USE_BY_ANOTHER_APPLICATION:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v13

    aput v11, v12, v13
    :try_end_1a0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_196 .. :try_end_1a0} :catch_1a0

    :catch_1a0
    const/16 v12, 0xd

    :try_start_1a2
    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v14, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ERROR_UNKNOWN:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v14}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v14

    aput v12, v13, v14
    :try_end_1ac
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a2 .. :try_end_1ac} :catch_1ac

    :catch_1ac
    const/16 v13, 0xe

    :try_start_1ae
    sget-object v14, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v15, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ERROR_USE_OF_CAMERA_RESTRICTED:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v15

    aput v13, v14, v15
    :try_end_1b8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ae .. :try_end_1b8} :catch_1b8

    :catch_1b8
    const/16 v14, 0xf

    :try_start_1ba
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v16, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MEMORY_SHORTAGE_ON_ONE_SHOT_VIDEO:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v16

    aput v14, v15, v16
    :try_end_1c4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ba .. :try_end_1c4} :catch_1c4

    :catch_1c4
    const/16 v15, 0x10

    :try_start_1c6
    sget-object v16, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v17, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->COULD_NOT_SAVE_PHOTO:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual/range {v17 .. v17}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v17

    aput v15, v16, v17
    :try_end_1d0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c6 .. :try_end_1d0} :catch_1d0

    :catch_1d0
    const/16 v16, 0x11

    :try_start_1d2
    sget-object v17, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v18, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->COULD_NOT_START_RECORDING:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual/range {v18 .. v18}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v18

    aput v16, v17, v18
    :try_end_1dc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d2 .. :try_end_1dc} :catch_1dc

    :catch_1dc
    const/16 v17, 0x12

    :try_start_1de
    sget-object v18, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v19, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->THERMAL_CRITICAL:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual/range {v19 .. v19}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v19

    aput v17, v18, v19
    :try_end_1e8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1de .. :try_end_1e8} :catch_1e8

    :catch_1e8
    const/16 v18, 0x13

    :try_start_1ea
    sget-object v19, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v20, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->LOW_BATTERY_CRITICAL_ON_RECORDING:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual/range {v20 .. v20}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v20

    aput v18, v19, v20
    :try_end_1f4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ea .. :try_end_1f4} :catch_1f4

    :catch_1f4
    const/16 v19, 0x14

    :try_start_1f6
    sget-object v20, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v21, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->LOW_BATTERY_CRITICAL_ON_PHOTO:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual/range {v21 .. v21}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v21

    aput v19, v20, v21
    :try_end_200
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f6 .. :try_end_200} :catch_200

    :catch_200
    const/16 v20, 0x15

    :try_start_202
    sget-object v21, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v22, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MEMORY_SD_UNAVAILABLE_FOR_CORRUPT:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual/range {v22 .. v22}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v22

    aput v20, v21, v22
    :try_end_20c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_202 .. :try_end_20c} :catch_20c

    :catch_20c
    const/16 v21, 0x16

    :try_start_20e
    sget-object v22, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MEMORY_FULL:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v23

    aput v21, v22, v23
    :try_end_218
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20e .. :try_end_218} :catch_218

    :catch_218
    :try_start_218
    sget-object v22, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MEMORY_SD_UNAVAILABLE:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v23

    const/16 v24, 0x17

    aput v24, v22, v23
    :try_end_224
    .catch Ljava/lang/NoSuchFieldError; {:try_start_218 .. :try_end_224} :catch_224

    :catch_224
    :try_start_224
    sget-object v22, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MEMORY_INTERNAL_UNAVAILABLE:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v23

    const/16 v24, 0x18

    aput v24, v22, v23
    :try_end_230
    .catch Ljava/lang/NoSuchFieldError; {:try_start_224 .. :try_end_230} :catch_230

    :catch_230
    :try_start_230
    sget-object v22, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MAX_FILESIZE_REACHED:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v23

    const/16 v24, 0x19

    aput v24, v22, v23
    :try_end_23c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_230 .. :try_end_23c} :catch_23c

    :catch_23c
    :try_start_23c
    sget-object v22, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MAX_DURATION_REACHED:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v23

    const/16 v24, 0x1a

    aput v24, v22, v23
    :try_end_248
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23c .. :try_end_248} :catch_248

    :catch_248
    :try_start_248
    sget-object v22, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->PREDICTIVE_LAUNCH_DESCRIPTION:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v23

    const/16 v24, 0x1b

    aput v24, v22, v23
    :try_end_254
    .catch Ljava/lang/NoSuchFieldError; {:try_start_248 .. :try_end_254} :catch_254

    :catch_254
    :try_start_254
    sget-object v22, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->RESET_CONFIRMATION:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v23

    const/16 v24, 0x1c

    aput v24, v22, v23
    :try_end_260
    .catch Ljava/lang/NoSuchFieldError; {:try_start_254 .. :try_end_260} :catch_260

    .line 8768
    :catch_260
    invoke-static {}, Lcom/sonyericsson/android/camera/NavigatorContents;->values()[Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$NavigatorContents:[I

    :try_start_269
    sget-object v23, Lcom/sonyericsson/android/camera/NavigatorContents;->SUPERIOR_AUTO:Lcom/sonyericsson/android/camera/NavigatorContents;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/NavigatorContents;->ordinal()I

    move-result v23

    aput v1, v15, v23
    :try_end_271
    .catch Ljava/lang/NoSuchFieldError; {:try_start_269 .. :try_end_271} :catch_271

    :catch_271
    :try_start_271
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$NavigatorContents:[I

    sget-object v23, Lcom/sonyericsson/android/camera/NavigatorContents;->VIDEO:Lcom/sonyericsson/android/camera/NavigatorContents;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/NavigatorContents;->ordinal()I

    move-result v23

    aput v0, v15, v23
    :try_end_27b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_271 .. :try_end_27b} :catch_27b

    .line 8290
    :catch_27b
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$AutoReview:[I

    :try_start_284
    sget-object v23, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->ALWAYS:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->ordinal()I

    move-result v23

    aput v1, v15, v23
    :try_end_28c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_284 .. :try_end_28c} :catch_28c

    :catch_28c
    :try_start_28c
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$AutoReview:[I

    sget-object v23, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->FRONT_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->ordinal()I

    move-result v23

    aput v0, v15, v23
    :try_end_296
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28c .. :try_end_296} :catch_296

    :catch_296
    :try_start_296
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$AutoReview:[I

    sget-object v23, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->ordinal()I

    move-result v23

    aput v2, v15, v23
    :try_end_2a0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_296 .. :try_end_2a0} :catch_2a0

    .line 8110
    :catch_2a0
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->values()[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    :try_start_2a9
    sget-object v23, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->WHITE_BALANCE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v23

    aput v1, v15, v23
    :try_end_2b1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a9 .. :try_end_2b1} :catch_2b1

    :catch_2b1
    :try_start_2b1
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v23, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->EV:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v23

    aput v0, v15, v23
    :try_end_2bb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b1 .. :try_end_2bb} :catch_2bb

    :catch_2bb
    :try_start_2bb
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v23, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v23

    aput v2, v15, v23
    :try_end_2c5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2bb .. :try_end_2c5} :catch_2c5

    :catch_2c5
    :try_start_2c5
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v23, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v23

    aput v3, v15, v23
    :try_end_2cf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c5 .. :try_end_2cf} :catch_2cf

    :catch_2cf
    :try_start_2cf
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v23, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GEO_TAG:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v23

    aput v4, v15, v23
    :try_end_2d9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2cf .. :try_end_2d9} :catch_2d9

    .line 5754
    :catch_2d9
    invoke-static {}, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->values()[Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$BurstRejectedReason:[I

    :try_start_2e2
    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->CANNOT_BURST_IN_DARK_CONDITION:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->ordinal()I

    move-result v23

    aput v1, v15, v23
    :try_end_2ea
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e2 .. :try_end_2ea} :catch_2ea

    :catch_2ea
    :try_start_2ea
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$BurstRejectedReason:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->CANNOT_BURST_USING_FRONT_CAMERA:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->ordinal()I

    move-result v23

    aput v0, v15, v23
    :try_end_2f4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2ea .. :try_end_2f4} :catch_2f4

    :catch_2f4
    :try_start_2f4
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$BurstRejectedReason:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->CANNOT_BURST_DUE_TO_FUSION_MODE:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->ordinal()I

    move-result v23

    aput v2, v15, v23
    :try_end_2fe
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f4 .. :try_end_2fe} :catch_2fe

    :catch_2fe
    :try_start_2fe
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$BurstRejectedReason:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->BURST_IS_DISABLED_BY_CAMERA_KEY_ASSIGN_SETTING:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->ordinal()I

    move-result v23

    aput v3, v15, v23
    :try_end_308
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2fe .. :try_end_308} :catch_308

    :catch_308
    :try_start_308
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$BurstRejectedReason:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->CANNOT_BURST_DUE_TO_BOKEH_MODE:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->ordinal()I

    move-result v23

    aput v4, v15, v23
    :try_end_312
    .catch Ljava/lang/NoSuchFieldError; {:try_start_308 .. :try_end_312} :catch_312

    :catch_312
    :try_start_312
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$BurstRejectedReason:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->CANNOT_BURST_DUE_TO_NIGHT_MODE:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->ordinal()I

    move-result v23

    aput v5, v15, v23
    :try_end_31c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_312 .. :try_end_31c} :catch_31c

    .line 4956
    :catch_31c
    invoke-static {}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->values()[Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    :try_start_325
    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    aput v1, v15, v23
    :try_end_32d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_325 .. :try_end_32d} :catch_32d

    :catch_32d
    :try_start_32d
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_RESIZE_EVF_SCOPE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    aput v0, v15, v23
    :try_end_337
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32d .. :try_end_337} :catch_337

    :catch_337
    :try_start_337
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_PREPARE_RECORDING_INDICATOR:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    aput v2, v15, v23
    :try_end_341
    .catch Ljava/lang/NoSuchFieldError; {:try_start_337 .. :try_end_341} :catch_341

    :catch_341
    :try_start_341
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_CAPTURING_MODE_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    aput v3, v15, v23
    :try_end_34b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_341 .. :try_end_34b} :catch_34b

    :catch_34b
    :try_start_34b
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_DETECTED_SCENE_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    aput v4, v15, v23
    :try_end_355
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34b .. :try_end_355} :catch_355

    :catch_355
    :try_start_355
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_AUTO_FLASH_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    aput v5, v15, v23
    :try_end_35f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_355 .. :try_end_35f} :catch_35f

    :catch_35f
    :try_start_35f
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_AUTO_HDR_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    aput v6, v15, v23
    :try_end_369
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35f .. :try_end_369} :catch_369

    :catch_369
    :try_start_369
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_AUTO_NIGHT_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    aput v7, v15, v23
    :try_end_373
    .catch Ljava/lang/NoSuchFieldError; {:try_start_369 .. :try_end_373} :catch_373

    :catch_373
    :try_start_373
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FACE_DETECTION_STARTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    aput v8, v15, v23
    :try_end_37d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_373 .. :try_end_37d} :catch_37d

    :catch_37d
    :try_start_37d
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FACE_DETECTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    aput v9, v15, v23
    :try_end_387
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37d .. :try_end_387} :catch_387

    :catch_387
    :try_start_387
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_OBJECT_TRACKING_STARTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    aput v10, v15, v23
    :try_end_391
    .catch Ljava/lang/NoSuchFieldError; {:try_start_387 .. :try_end_391} :catch_391

    :catch_391
    :try_start_391
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_OBJECT_TRACKING_TIMEOUT:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    aput v11, v15, v23
    :try_end_39b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_391 .. :try_end_39b} :catch_39b

    :catch_39b
    :try_start_39b
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_OBJECT_TRACKING_STOP:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    aput v12, v15, v23
    :try_end_3a5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39b .. :try_end_3a5} :catch_3a5

    :catch_3a5
    :try_start_3a5
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_TRACKED_OBJECT_STATE_UPDATED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    aput v13, v15, v23
    :try_end_3af
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a5 .. :try_end_3af} :catch_3af

    :catch_3af
    :try_start_3af
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ZOOM_START:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    aput v14, v15, v23
    :try_end_3b9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3af .. :try_end_3b9} :catch_3b9

    :catch_3b9
    :try_start_3b9
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ZOOM_STOP:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v22, 0x10

    aput v22, v15, v23
    :try_end_3c5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b9 .. :try_end_3c5} :catch_3c5

    :catch_3c5
    :try_start_3c5
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ZOOM_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    aput v16, v15, v23
    :try_end_3cf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c5 .. :try_end_3cf} :catch_3cf

    :catch_3cf
    :try_start_3cf
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NIGHT_PORTRAIT_FLASH_SELECTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    aput v17, v15, v23
    :try_end_3d9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3cf .. :try_end_3d9} :catch_3d9

    :catch_3d9
    :try_start_3d9
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_SELFTIMER_FINISHED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    aput v18, v15, v23
    :try_end_3e3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d9 .. :try_end_3e3} :catch_3e3

    :catch_3e3
    :try_start_3e3
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_SELECTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    aput v19, v15, v23
    :try_end_3ed
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e3 .. :try_end_3ed} :catch_3ed

    :catch_3ed
    :try_start_3ed
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    aput v20, v15, v23
    :try_end_3f7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3ed .. :try_end_3f7} :catch_3f7

    :catch_3f7
    :try_start_3f7
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED_EXCEPT_FACE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    aput v21, v15, v23
    :try_end_401
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f7 .. :try_end_401} :catch_401

    :catch_401
    :try_start_401
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED_TOUCH_FOCUS:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x17

    aput v24, v15, v23
    :try_end_40d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_401 .. :try_end_40d} :catch_40d

    :catch_40d
    :try_start_40d
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED_BY_SELECT_FACE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x18

    aput v24, v15, v23
    :try_end_419
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40d .. :try_end_419} :catch_419

    :catch_419
    :try_start_419
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_RECORDING_PROGRESS:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x19

    aput v24, v15, v23
    :try_end_425
    .catch Ljava/lang/NoSuchFieldError; {:try_start_419 .. :try_end_425} :catch_425

    :catch_425
    :try_start_425
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ORIENTATION_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x1a

    aput v24, v15, v23
    :try_end_431
    .catch Ljava/lang/NoSuchFieldError; {:try_start_425 .. :try_end_431} :catch_431

    :catch_431
    :try_start_431
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_UPDATE_DIALOGS:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x1b

    aput v24, v15, v23
    :try_end_43d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_431 .. :try_end_43d} :catch_43d

    :catch_43d
    :try_start_43d
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_CLOSE_ALL_DIALOGS:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x1c

    aput v24, v15, v23
    :try_end_449
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43d .. :try_end_449} :catch_449

    :catch_449
    :try_start_449
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHOW_INSTANT_VIEWER:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x1d

    aput v24, v15, v23
    :try_end_455
    .catch Ljava/lang/NoSuchFieldError; {:try_start_449 .. :try_end_455} :catch_455

    :catch_455
    :try_start_455
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_STORE_COMPLETED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x1e

    aput v24, v15, v23
    :try_end_461
    .catch Ljava/lang/NoSuchFieldError; {:try_start_455 .. :try_end_461} :catch_461

    :catch_461
    :try_start_461
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_CAPTURE_FEEDBACK_PROGRESS:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x1f

    aput v24, v15, v23
    :try_end_46d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_461 .. :try_end_46d} :catch_46d

    :catch_46d
    :try_start_46d
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_CAPTURE_FEEDBACK_PROGRESS_LONG:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x20

    aput v24, v15, v23
    :try_end_479
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46d .. :try_end_479} :catch_479

    :catch_479
    :try_start_479
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_CAPTURE_FEEDBACK_ANIMATION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x21

    aput v24, v15, v23
    :try_end_485
    .catch Ljava/lang/NoSuchFieldError; {:try_start_479 .. :try_end_485} :catch_485

    :catch_485
    :try_start_485
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_LAZY_INITIALIZATION_TASK_RUN:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x22

    aput v24, v15, v23
    :try_end_491
    .catch Ljava/lang/NoSuchFieldError; {:try_start_485 .. :try_end_491} :catch_491

    :catch_491
    :try_start_491
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ADD_VIDEO_CHAPTER:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x23

    aput v24, v15, v23
    :try_end_49d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_491 .. :try_end_49d} :catch_49d

    :catch_49d
    :try_start_49d
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_THERMAL_NORMAL:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x24

    aput v24, v15, v23
    :try_end_4a9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49d .. :try_end_4a9} :catch_4a9

    :catch_4a9
    :try_start_4a9
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_THERMAL_WARNING:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x25

    aput v24, v15, v23
    :try_end_4b5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a9 .. :try_end_4b5} :catch_4b5

    :catch_4b5
    :try_start_4b5
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_THERMAL_CRITICAL:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x26

    aput v24, v15, v23
    :try_end_4c1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b5 .. :try_end_4c1} :catch_4c1

    :catch_4c1
    :try_start_4c1
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_GEO_TAG:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x27

    aput v24, v15, v23
    :try_end_4cd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c1 .. :try_end_4cd} :catch_4cd

    :catch_4cd
    :try_start_4cd
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_GRID_LINE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x28

    aput v24, v15, v23
    :try_end_4d9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4cd .. :try_end_4d9} :catch_4d9

    :catch_4d9
    :try_start_4d9
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ANGLE_CHANGE_START:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x29

    aput v24, v15, v23
    :try_end_4e5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d9 .. :try_end_4e5} :catch_4e5

    :catch_4e5
    :try_start_4e5
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ANGLE_CHANGE_COMPLETED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x2a

    aput v24, v15, v23
    :try_end_4f1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e5 .. :try_end_4f1} :catch_4f1

    :catch_4f1
    :try_start_4f1
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_BURST_REJECTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x2b

    aput v24, v15, v23
    :try_end_4fd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f1 .. :try_end_4fd} :catch_4fd

    :catch_4fd
    :try_start_4fd
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_BURST_SHUTTER_DONE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x2c

    aput v24, v15, v23
    :try_end_509
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4fd .. :try_end_509} :catch_509

    :catch_509
    :try_start_509
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_BURST_FINISH:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x2d

    aput v24, v15, v23
    :try_end_515
    .catch Ljava/lang/NoSuchFieldError; {:try_start_509 .. :try_end_515} :catch_515

    :catch_515
    :try_start_515
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_CAPTURE_FINISH:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x2e

    aput v24, v15, v23
    :try_end_521
    .catch Ljava/lang/NoSuchFieldError; {:try_start_515 .. :try_end_521} :catch_521

    :catch_521
    :try_start_521
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_CAPTURE_CANCEL:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x2f

    aput v24, v15, v23
    :try_end_52d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_521 .. :try_end_52d} :catch_52d

    :catch_52d
    :try_start_52d
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_MAX_DURATION_REACHED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x30

    aput v24, v15, v23
    :try_end_539
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52d .. :try_end_539} :catch_539

    :catch_539
    :try_start_539
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_MAX_FILESIZE_REACHED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x31

    aput v24, v15, v23
    :try_end_545
    .catch Ljava/lang/NoSuchFieldError; {:try_start_539 .. :try_end_545} :catch_545

    :catch_545
    :try_start_545
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_BATTERY_CRITICAL:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x32

    aput v24, v15, v23
    :try_end_551
    .catch Ljava/lang/NoSuchFieldError; {:try_start_545 .. :try_end_551} :catch_551

    :catch_551
    :try_start_551
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_UPDATE_FUSION_MODE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x33

    aput v24, v15, v23
    :try_end_55d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_551 .. :try_end_55d} :catch_55d

    :catch_55d
    :try_start_55d
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ISO_CHANGED_BY_FUSION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x34

    aput v24, v15, v23
    :try_end_569
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55d .. :try_end_569} :catch_569

    :catch_569
    :try_start_569
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_SHOW_BLACK_SCREEN:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x35

    aput v24, v15, v23
    :try_end_575
    .catch Ljava/lang/NoSuchFieldError; {:try_start_569 .. :try_end_575} :catch_575

    :catch_575
    :try_start_575
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_HIDE_BLACK_SCREEN:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x36

    aput v24, v15, v23
    :try_end_581
    .catch Ljava/lang/NoSuchFieldError; {:try_start_575 .. :try_end_581} :catch_581

    :catch_581
    :try_start_581
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_FUSION_CONDITION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x37

    aput v24, v15, v23
    :try_end_58d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_581 .. :try_end_58d} :catch_58d

    :catch_58d
    :try_start_58d
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_VIDEO_HDR_CONDITION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x38

    aput v24, v15, v23
    :try_end_599
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58d .. :try_end_599} :catch_599

    :catch_599
    :try_start_599
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_CAPTURING_MODE_CHANGING:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x39

    aput v24, v15, v23
    :try_end_5a5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_599 .. :try_end_5a5} :catch_5a5

    :catch_5a5
    :try_start_5a5
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_SETTING_CHANGE_ACCEPTABILITY:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x3a

    aput v24, v15, v23
    :try_end_5b1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a5 .. :try_end_5b1} :catch_5b1

    :catch_5b1
    :try_start_5b1
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_VIEWFINDER_DEBUGINFO_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x3b

    aput v24, v15, v23
    :try_end_5bd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b1 .. :try_end_5bd} :catch_5bd

    :catch_5bd
    :try_start_5bd
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_MRU_SHORTCUT:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x3c

    aput v24, v15, v23
    :try_end_5c9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5bd .. :try_end_5c9} :catch_5c9

    :catch_5c9
    :try_start_5c9
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_APPS_UI_MODE_FINISH:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x3d

    aput v24, v15, v23
    :try_end_5d5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5c9 .. :try_end_5d5} :catch_5d5

    :catch_5d5
    :try_start_5d5
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_TOUCHFOCUS_REJECT:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x3e

    aput v24, v15, v23
    :try_end_5e1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d5 .. :try_end_5e1} :catch_5e1

    :catch_5e1
    :try_start_5e1
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_BOKEH_MODE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x3f

    aput v24, v15, v23
    :try_end_5ed
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5e1 .. :try_end_5ed} :catch_5ed

    :catch_5ed
    :try_start_5ed
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_BOKEH_CONDITION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x40

    aput v24, v15, v23
    :try_end_5f9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5ed .. :try_end_5f9} :catch_5f9

    :catch_5f9
    :try_start_5f9
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_QR_WIFI_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x41

    aput v24, v15, v23
    :try_end_605
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f9 .. :try_end_605} :catch_605

    :catch_605
    :try_start_605
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHOW_UNLOCK_SCREEN_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x42

    aput v24, v15, v23
    :try_end_611
    .catch Ljava/lang/NoSuchFieldError; {:try_start_605 .. :try_end_611} :catch_611

    :catch_611
    :try_start_611
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_THERMAL_FLASH_OFF_AND_WARN_HINT:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x43

    aput v24, v15, v23
    :try_end_61d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_611 .. :try_end_61d} :catch_61d

    :catch_61d
    :try_start_61d
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_THERMAL_FLASH_OFF_AND_WARN_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x44

    aput v24, v15, v23
    :try_end_629
    .catch Ljava/lang/NoSuchFieldError; {:try_start_61d .. :try_end_629} :catch_629

    :catch_629
    :try_start_629
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_CANCEL_THERMAL_HINT_AND_ENABLE_FLASH_MODE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x45

    aput v24, v15, v23
    :try_end_635
    .catch Ljava/lang/NoSuchFieldError; {:try_start_629 .. :try_end_635} :catch_635

    :catch_635
    :try_start_635
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_SHOW_QR_DETECTION_RESULT:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x46

    aput v24, v15, v23
    :try_end_641
    .catch Ljava/lang/NoSuchFieldError; {:try_start_635 .. :try_end_641} :catch_641

    :catch_641
    :try_start_641
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHOW_FORCED_CHANGE_NIGHT_HINT:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x47

    aput v24, v15, v23
    :try_end_64d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_641 .. :try_end_64d} :catch_64d

    :catch_64d
    :try_start_64d
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHOW_FORCED_CHANGE_FLASH_HINT:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v23

    const/16 v24, 0x48

    aput v24, v15, v23
    :try_end_659
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64d .. :try_end_659} :catch_659

    .line 4761
    :catch_659
    invoke-static {}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->values()[Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    :try_start_662
    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->NOTICE_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v23

    aput v1, v15, v23
    :try_end_66a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_662 .. :try_end_66a} :catch_66a

    :catch_66a
    :try_start_66a
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->FLASH_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v23

    aput v0, v15, v23
    :try_end_674
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66a .. :try_end_674} :catch_674

    :catch_674
    :try_start_674
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->SELF_TIMER_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v23

    aput v2, v15, v23
    :try_end_67e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_674 .. :try_end_67e} :catch_67e

    :catch_67e
    :try_start_67e
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ASPECT_RATIO_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v23

    aput v3, v15, v23
    :try_end_688
    .catch Ljava/lang/NoSuchFieldError; {:try_start_67e .. :try_end_688} :catch_688

    :catch_688
    :try_start_688
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->FUSION_MODE_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v23

    aput v4, v15, v23
    :try_end_692
    .catch Ljava/lang/NoSuchFieldError; {:try_start_688 .. :try_end_692} :catch_692

    :catch_692
    :try_start_692
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->VIDEO_HDR_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v23

    aput v5, v15, v23
    :try_end_69c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_692 .. :try_end_69c} :catch_69c

    :catch_69c
    :try_start_69c
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->HDR_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v23

    aput v6, v15, v23
    :try_end_6a6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_69c .. :try_end_6a6} :catch_6a6

    :catch_6a6
    :try_start_6a6
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->NIGHT_MODE_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v23

    aput v7, v15, v23
    :try_end_6b0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a6 .. :try_end_6b0} :catch_6b0

    :catch_6b0
    :try_start_6b0
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->SETTING_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v23

    aput v8, v15, v23
    :try_end_6ba
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b0 .. :try_end_6ba} :catch_6ba

    :catch_6ba
    :try_start_6ba
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->MODE_SELECTOR:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v23

    aput v9, v15, v23
    :try_end_6c4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6ba .. :try_end_6c4} :catch_6c4

    :catch_6c4
    :try_start_6c4
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->REVIEW_WINDOW:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v23

    aput v10, v15, v23
    :try_end_6ce
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c4 .. :try_end_6ce} :catch_6ce

    :catch_6ce
    :try_start_6ce
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->OVERLAY_CONTROL_SEEKING:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v23

    aput v11, v15, v23
    :try_end_6d8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6ce .. :try_end_6d8} :catch_6d8

    :catch_6d8
    :try_start_6d8
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->TUTORIAL:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ordinal()I

    move-result v23

    aput v12, v15, v23
    :try_end_6e2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6d8 .. :try_end_6e2} :catch_6e2

    .line 4705
    :catch_6e2
    invoke-static {}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->values()[Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern:[I

    :try_start_6eb
    sget-object v23, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ordinal()I

    move-result v23

    aput v1, v15, v23
    :try_end_6f3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6eb .. :try_end_6f3} :catch_6f3

    :catch_6f3
    :try_start_6f3
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING_IN_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ordinal()I

    move-result v23

    aput v0, v15, v23
    :try_end_6fd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6f3 .. :try_end_6fd} :catch_6fd

    :catch_6fd
    :try_start_6fd
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->PAUSE_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ordinal()I

    move-result v23

    aput v2, v15, v23
    :try_end_707
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6fd .. :try_end_707} :catch_707

    :catch_707
    :try_start_707
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING_IN_PAUSE_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ordinal()I

    move-result v23

    aput v3, v15, v23
    :try_end_711
    .catch Ljava/lang/NoSuchFieldError; {:try_start_707 .. :try_end_711} :catch_711

    :catch_711
    :try_start_711
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ordinal()I

    move-result v23

    aput v4, v15, v23
    :try_end_71b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_711 .. :try_end_71b} :catch_71b

    :catch_71b
    :try_start_71b
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->FOCUS_SEARCHING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ordinal()I

    move-result v23

    aput v5, v15, v23
    :try_end_725
    .catch Ljava/lang/NoSuchFieldError; {:try_start_71b .. :try_end_725} :catch_725

    :catch_725
    :try_start_725
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->FOCUS_DONE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ordinal()I

    move-result v23

    aput v6, v15, v23
    :try_end_72f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_725 .. :try_end_72f} :catch_72f

    :catch_72f
    :try_start_72f
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->VIDEO_FOCUS_DONE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ordinal()I

    move-result v23

    aput v7, v15, v23
    :try_end_739
    .catch Ljava/lang/NoSuchFieldError; {:try_start_72f .. :try_end_739} :catch_739

    :catch_739
    :try_start_739
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->CAPTURE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ordinal()I

    move-result v23

    aput v8, v15, v23
    :try_end_743
    .catch Ljava/lang/NoSuchFieldError; {:try_start_739 .. :try_end_743} :catch_743

    :catch_743
    :try_start_743
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->SELFTIMER:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ordinal()I

    move-result v23

    aput v9, v15, v23
    :try_end_74d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_743 .. :try_end_74d} :catch_74d

    :catch_74d
    :try_start_74d
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->BURST_SHOOTING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ordinal()I

    move-result v23

    aput v10, v15, v23
    :try_end_757
    .catch Ljava/lang/NoSuchFieldError; {:try_start_74d .. :try_end_757} :catch_757

    .line 4067
    :catch_757
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$TouchCapture:[I

    :try_start_760
    sget-object v23, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->ordinal()I

    move-result v23

    aput v1, v15, v23
    :try_end_768
    .catch Ljava/lang/NoSuchFieldError; {:try_start_760 .. :try_end_768} :catch_768

    :catch_768
    :try_start_768
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$TouchCapture:[I

    sget-object v23, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->FRONT_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->ordinal()I

    move-result v23

    aput v0, v15, v23
    :try_end_772
    .catch Ljava/lang/NoSuchFieldError; {:try_start_768 .. :try_end_772} :catch_772

    .line 3386
    :catch_772
    invoke-static {}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->values()[Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree:[I

    :try_start_77b
    sget-object v23, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->START:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->ordinal()I

    move-result v23

    aput v1, v15, v23
    :try_end_783
    .catch Ljava/lang/NoSuchFieldError; {:try_start_77b .. :try_end_783} :catch_783

    :catch_783
    :try_start_783
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->EXEC:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->ordinal()I

    move-result v23

    aput v0, v15, v23
    :try_end_78d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_783 .. :try_end_78d} :catch_78d

    :catch_78d
    :try_start_78d
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->CANCEL:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->ordinal()I

    move-result v23

    aput v2, v15, v23
    :try_end_797
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78d .. :try_end_797} :catch_797

    :catch_797
    :try_start_797
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->FINISH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->ordinal()I

    move-result v23

    aput v3, v15, v23
    :try_end_7a1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_797 .. :try_end_7a1} :catch_7a1

    .line 3369
    :catch_7a1
    invoke-static {}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->values()[Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationType:[I

    :try_start_7aa
    sget-object v23, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->MODE_TOUCH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->ordinal()I

    move-result v23

    aput v1, v15, v23
    :try_end_7b2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7aa .. :try_end_7b2} :catch_7b2

    :catch_7b2
    :try_start_7b2
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationType:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->MODE_ICON:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->ordinal()I

    move-result v23

    aput v0, v15, v23
    :try_end_7bc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7b2 .. :try_end_7bc} :catch_7bc

    :catch_7bc
    :try_start_7bc
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationType:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->MODE_SELECTOR:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->ordinal()I

    move-result v23

    aput v2, v15, v23
    :try_end_7c6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7bc .. :try_end_7c6} :catch_7c6

    :catch_7c6
    :try_start_7c6
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationType:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->MRU_SHORTCUT:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->ordinal()I

    move-result v23

    aput v3, v15, v23
    :try_end_7d0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7c6 .. :try_end_7d0} :catch_7d0

    :catch_7d0
    :try_start_7d0
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationType:[I

    sget-object v23, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->SWITCH_TOUCH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->ordinal()I

    move-result v23

    aput v4, v15, v23
    :try_end_7da
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7d0 .. :try_end_7da} :catch_7da

    .line 3130
    :catch_7da
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->values()[Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    :try_start_7e3
    sget-object v23, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_NONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v23

    aput v1, v15, v23
    :try_end_7eb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e3 .. :try_end_7eb} :catch_7eb

    :catch_7eb
    :try_start_7eb
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v23, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_INITIALIZE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v23

    aput v0, v15, v23
    :try_end_7f5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7eb .. :try_end_7f5} :catch_7f5

    :catch_7f5
    :try_start_7f5
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v23, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_RESUME:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v23

    aput v2, v15, v23
    :try_end_7ff
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7f5 .. :try_end_7ff} :catch_7ff

    :catch_7ff
    :try_start_7ff
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v23, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_RESUME_AND_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v23

    aput v3, v15, v23
    :try_end_809
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7ff .. :try_end_809} :catch_809

    :catch_809
    :try_start_809
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v23, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v23

    aput v4, v15, v23
    :try_end_813
    .catch Ljava/lang/NoSuchFieldError; {:try_start_809 .. :try_end_813} :catch_813

    :catch_813
    :try_start_813
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v23, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v23

    aput v5, v15, v23
    :try_end_81d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_813 .. :try_end_81d} :catch_81d

    :catch_81d
    :try_start_81d
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v23, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_CAPTURE_COUNTDOWN:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v23

    aput v6, v15, v23
    :try_end_827
    .catch Ljava/lang/NoSuchFieldError; {:try_start_81d .. :try_end_827} :catch_827

    :catch_827
    :try_start_827
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v23, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_OPERATION_RESTRICTED:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v23

    aput v7, v15, v23
    :try_end_831
    .catch Ljava/lang/NoSuchFieldError; {:try_start_827 .. :try_end_831} :catch_831

    :catch_831
    :try_start_831
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v23, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_AF_SEARCH:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v23

    aput v8, v15, v23
    :try_end_83b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_831 .. :try_end_83b} :catch_83b

    :catch_83b
    :try_start_83b
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v23, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_AF_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v23

    aput v9, v15, v23
    :try_end_845
    .catch Ljava/lang/NoSuchFieldError; {:try_start_83b .. :try_end_845} :catch_845

    :catch_845
    :try_start_845
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v23, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE_WAIT_FOR_AF_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v23

    aput v10, v15, v23
    :try_end_84f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_845 .. :try_end_84f} :catch_84f

    :catch_84f
    :try_start_84f
    sget-object v15, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v23, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_BURST_CAPTURE_WAIT_FOR_AF_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v23

    aput v11, v15, v23
    :try_end_859
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84f .. :try_end_859} :catch_859

    :catch_859
    :try_start_859
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v15

    aput v12, v11, v15
    :try_end_863
    .catch Ljava/lang/NoSuchFieldError; {:try_start_859 .. :try_end_863} :catch_863

    :catch_863
    :try_start_863
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_BURST_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    aput v13, v11, v12
    :try_end_86d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_863 .. :try_end_86d} :catch_86d

    :catch_86d
    :try_start_86d
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    aput v14, v11, v12
    :try_end_877
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86d .. :try_end_877} :catch_877

    :catch_877
    :try_start_877
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_CAPTURE_WHILE_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    const/16 v13, 0x10

    aput v13, v11, v12
    :try_end_883
    .catch Ljava/lang/NoSuchFieldError; {:try_start_877 .. :try_end_883} :catch_883

    :catch_883
    :try_start_883
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_STORE_PHOTO_WHILE_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    aput v16, v11, v12
    :try_end_88d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_883 .. :try_end_88d} :catch_88d

    :catch_88d
    :try_start_88d
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_STORE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    aput v17, v11, v12
    :try_end_897
    .catch Ljava/lang/NoSuchFieldError; {:try_start_88d .. :try_end_897} :catch_897

    :catch_897
    :try_start_897
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_FATAL:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    aput v18, v11, v12
    :try_end_8a1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_897 .. :try_end_8a1} :catch_8a1

    :catch_8a1
    :try_start_8a1
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PAUSE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    aput v19, v11, v12
    :try_end_8ab
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8a1 .. :try_end_8ab} :catch_8ab

    :catch_8ab
    :try_start_8ab
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_WARNING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    aput v20, v11, v12
    :try_end_8b5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8ab .. :try_end_8b5} :catch_8b5

    :catch_8b5
    :try_start_8b5
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_FINALIZE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    aput v21, v11, v12
    :try_end_8bf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8b5 .. :try_end_8bf} :catch_8bf

    :catch_8bf
    :try_start_8bf
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_RECORDING_PAUSING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    const/16 v13, 0x17

    aput v13, v11, v12
    :try_end_8cb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8bf .. :try_end_8cb} :catch_8cb

    :catch_8cb
    :try_start_8cb
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_CAMERA_SWITCHING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    const/16 v13, 0x18

    aput v13, v11, v12
    :try_end_8d7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8cb .. :try_end_8d7} :catch_8d7

    :catch_8d7
    :try_start_8d7
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_FRONT_CAMERA_SWITCHING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    const/16 v13, 0x19

    aput v13, v11, v12
    :try_end_8e3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8d7 .. :try_end_8e3} :catch_8e3

    :catch_8e3
    :try_start_8e3
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_READY_FOR_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    const/16 v13, 0x1a

    aput v13, v11, v12
    :try_end_8ef
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8e3 .. :try_end_8ef} :catch_8ef

    :catch_8ef
    :try_start_8ef
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_MODE_CHANGING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    const/16 v13, 0x1b

    aput v13, v11, v12
    :try_end_8fb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8ef .. :try_end_8fb} :catch_8fb

    :catch_8fb
    :try_start_8fb
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_WAITING_EVF_PREPARED_IN_MODE_CHANGE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    const/16 v13, 0x1c

    aput v13, v11, v12
    :try_end_907
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8fb .. :try_end_907} :catch_907

    :catch_907
    :try_start_907
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_HIGH_FRAME_RATE_VIDEO_RECORDING_IN_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    const/16 v13, 0x1d

    aput v13, v11, v12
    :try_end_913
    .catch Ljava/lang/NoSuchFieldError; {:try_start_907 .. :try_end_913} :catch_913

    :catch_913
    :try_start_913
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_LOW_FRAME_RATE_VIDEO_RECORDING_IN_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    const/16 v13, 0x1e

    aput v13, v11, v12
    :try_end_91f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_913 .. :try_end_91f} :catch_91f

    :catch_91f
    :try_start_91f
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_WAIT_FOR_HIGH_FRAME_RATE_VIDEO_RECORDING_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->ordinal()I

    move-result v12

    const/16 v13, 0x1f

    aput v13, v11, v12
    :try_end_92b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_91f .. :try_end_92b} :catch_92b

    .line 2920
    :catch_92b
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    move-result-object v11

    array-length v11, v11

    new-array v11, v11, [I

    sput-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    :try_start_934
    sget-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result v12

    aput v1, v11, v12
    :try_end_93c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_934 .. :try_end_93c} :catch_93c

    :catch_93c
    :try_start_93c
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result v12

    aput v0, v11, v12
    :try_end_946
    .catch Ljava/lang/NoSuchFieldError; {:try_start_93c .. :try_end_946} :catch_946

    :catch_946
    :try_start_946
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result v12

    aput v2, v11, v12
    :try_end_950
    .catch Ljava/lang/NoSuchFieldError; {:try_start_946 .. :try_end_950} :catch_950

    .line 2472
    :catch_950
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    move-result-object v11

    array-length v11, v11

    new-array v11, v11, [I

    sput-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer:[I

    :try_start_959
    sget-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->LONG:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->ordinal()I

    move-result v12

    aput v1, v11, v12
    :try_end_961
    .catch Ljava/lang/NoSuchFieldError; {:try_start_959 .. :try_end_961} :catch_961

    :catch_961
    :try_start_961
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer:[I

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->GESTURE_SHUTTER_COUNT_DOWN:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->ordinal()I

    move-result v12

    aput v0, v11, v12
    :try_end_96b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_961 .. :try_end_96b} :catch_96b

    :catch_96b
    :try_start_96b
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer:[I

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->SHORT:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->ordinal()I

    move-result v12

    aput v2, v11, v12
    :try_end_975
    .catch Ljava/lang/NoSuchFieldError; {:try_start_96b .. :try_end_975} :catch_975

    :catch_975
    :try_start_975
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer:[I

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->LAUNCH_AND_CAPTURE_COUNT_DOWN:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->ordinal()I

    move-result v12

    aput v3, v11, v12
    :try_end_97f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_975 .. :try_end_97f} :catch_97f

    :catch_97f
    :try_start_97f
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer:[I

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->ordinal()I

    move-result v12

    aput v4, v11, v12
    :try_end_989
    .catch Ljava/lang/NoSuchFieldError; {:try_start_97f .. :try_end_989} :catch_989

    .line 2367
    :catch_989
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->values()[Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    move-result-object v11

    array-length v11, v11

    new-array v11, v11, [I

    sput-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$AbstractDraggingEventHandler$Direction:[I

    :try_start_992
    sget-object v12, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->UP:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->ordinal()I

    move-result v12

    aput v1, v11, v12
    :try_end_99a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_992 .. :try_end_99a} :catch_99a

    :catch_99a
    :try_start_99a
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$AbstractDraggingEventHandler$Direction:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->DOWN:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->ordinal()I

    move-result v12

    aput v0, v11, v12
    :try_end_9a4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_99a .. :try_end_9a4} :catch_9a4

    :catch_9a4
    :try_start_9a4
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$AbstractDraggingEventHandler$Direction:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->LEFT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->ordinal()I

    move-result v12

    aput v2, v11, v12
    :try_end_9ae
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9a4 .. :try_end_9ae} :catch_9ae

    :catch_9ae
    :try_start_9ae
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$controller$AbstractDraggingEventHandler$Direction:[I

    sget-object v12, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->RIGHT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->ordinal()I

    move-result v12

    aput v3, v11, v12
    :try_end_9b8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9ae .. :try_end_9b8} :catch_9b8

    .line 1917
    :catch_9b8
    invoke-static {}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->values()[Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    move-result-object v11

    array-length v11, v11

    new-array v11, v11, [I

    sput-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    :try_start_9c1
    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->PHOTO_READY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v12

    aput v1, v11, v12
    :try_end_9c9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c1 .. :try_end_9c9} :catch_9c9

    :catch_9c9
    :try_start_9c9
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->PHOTO_CAPTURE:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v12

    aput v0, v11, v12
    :try_end_9d3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c9 .. :try_end_9d3} :catch_9d3

    :catch_9d3
    :try_start_9d3
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->PHOTO_BURST_CAPTURE:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v12

    aput v2, v11, v12
    :try_end_9dd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9d3 .. :try_end_9dd} :catch_9dd

    :catch_9dd
    :try_start_9dd
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->VIDEO_READY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v12

    aput v3, v11, v12
    :try_end_9e7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9dd .. :try_end_9e7} :catch_9e7

    :catch_9e7
    :try_start_9e7
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->VIDEO_RECORDING:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v12

    aput v4, v11, v12
    :try_end_9f1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e7 .. :try_end_9f1} :catch_9f1

    :catch_9f1
    :try_start_9f1
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->SUPER_SLOW_MOTION_STANDBY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v12

    aput v5, v11, v12
    :try_end_9fb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9f1 .. :try_end_9fb} :catch_9fb

    :catch_9fb
    :try_start_9fb
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->SUPER_SLOW_MOTION_RECORDING:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v12

    aput v6, v11, v12
    :try_end_a05
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9fb .. :try_end_a05} :catch_a05

    :catch_a05
    :try_start_a05
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->STANDARD_SLOW_MOTION_STANDBY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v12

    aput v7, v11, v12
    :try_end_a0f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a05 .. :try_end_a0f} :catch_a0f

    :catch_a0f
    :try_start_a0f
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->STANDARD_SLOW_MOTION_RECORDING:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v12

    aput v8, v11, v12
    :try_end_a19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a0f .. :try_end_a19} :catch_a19

    :catch_a19
    :try_start_a19
    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->SUPER_SLOW_SHOT_STANDBY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v12

    aput v9, v11, v12
    :try_end_a23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a19 .. :try_end_a23} :catch_a23

    :catch_a23
    :try_start_a23
    sget-object v9, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState:[I

    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->VIDEO_PAUSING:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v11

    aput v10, v9, v11
    :try_end_a2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a23 .. :try_end_a2d} :catch_a2d

    .line 1155
    :catch_a2d
    invoke-static {}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->values()[Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$SideTouchArea:[I

    :try_start_a36
    sget-object v10, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->TOP:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->ordinal()I

    move-result v10

    aput v1, v9, v10
    :try_end_a3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a36 .. :try_end_a3e} :catch_a3e

    :catch_a3e
    :try_start_a3e
    sget-object v9, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$SideTouchArea:[I

    sget-object v10, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->BOTTOM:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->ordinal()I

    move-result v10

    aput v0, v9, v10
    :try_end_a48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a3e .. :try_end_a48} :catch_a48

    :catch_a48
    :try_start_a48
    sget-object v9, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$SideTouchArea:[I

    sget-object v10, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->LEFT:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->ordinal()I

    move-result v10

    aput v2, v9, v10
    :try_end_a52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a48 .. :try_end_a52} :catch_a52

    :catch_a52
    :try_start_a52
    sget-object v9, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$SideTouchArea:[I

    sget-object v10, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->RIGHT:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->ordinal()I

    move-result v10

    aput v3, v9, v10
    :try_end_a5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a52 .. :try_end_a5c} :catch_a5c

    .line 1117
    :catch_a5c
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    :try_start_a65
    sget-object v10, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v10

    aput v1, v9, v10
    :try_end_a6d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a65 .. :try_end_a6d} :catch_a6d

    :catch_a6d
    :try_start_a6d
    sget-object v9, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v10

    aput v0, v9, v10
    :try_end_a77
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a6d .. :try_end_a77} :catch_a77

    :catch_a77
    :try_start_a77
    sget-object v9, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v10

    aput v2, v9, v10
    :try_end_a81
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a77 .. :try_end_a81} :catch_a81

    :catch_a81
    :try_start_a81
    sget-object v9, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v10

    aput v3, v9, v10
    :try_end_a8b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a81 .. :try_end_a8b} :catch_a8b

    :catch_a8b
    :try_start_a8b
    sget-object v9, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v10

    aput v4, v9, v10
    :try_end_a95
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8b .. :try_end_a95} :catch_a95

    :catch_a95
    :try_start_a95
    sget-object v9, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v10

    aput v5, v9, v10
    :try_end_a9f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a95 .. :try_end_a9f} :catch_a9f

    :catch_a9f
    :try_start_a9f
    sget-object v5, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v9

    aput v6, v5, v9
    :try_end_aa9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a9f .. :try_end_aa9} :catch_aa9

    :catch_aa9
    :try_start_aa9
    sget-object v5, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v6

    aput v7, v5, v6
    :try_end_ab3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa9 .. :try_end_ab3} :catch_ab3

    :catch_ab3
    :try_start_ab3
    sget-object v5, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v6

    aput v8, v5, v6
    :try_end_abd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ab3 .. :try_end_abd} :catch_abd

    .line 725
    :catch_abd
    invoke-static {}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->values()[Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

    :try_start_ac6
    sget-object v6, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->PORTRAIT_SELFIE:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_ace
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ac6 .. :try_end_ace} :catch_ace

    :catch_ace
    :try_start_ace
    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

    sget-object v5, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->BOKEH_EFFECT:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->ordinal()I

    move-result v5

    aput v0, v1, v5
    :try_end_ad8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ace .. :try_end_ad8} :catch_ad8

    :catch_ad8
    :try_start_ad8
    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->EVERYONE_MODE:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_ae2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ad8 .. :try_end_ae2} :catch_ae2

    :catch_ae2
    :try_start_ae2
    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->DUAL_BACKGROUND_DEFOCUS:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_aec
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ae2 .. :try_end_aec} :catch_aec

    :catch_aec
    :try_start_aec
    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->DUAL_MONOCHROME:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_af6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aec .. :try_end_af6} :catch_af6

    :catch_af6
    return-void
.end method
