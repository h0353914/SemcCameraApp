.class public Lcom/sonymobile/cameracommon/research/ResearchUtil;
.super Ljava/lang/Object;
.source "ResearchUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/research/ResearchUtil$sendCapabilityErrorEventTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$sendFaultDetectionEventTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$sendThumbnailTransitionEvent;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$sendCheckFaultPhotoEvent;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$setAssistSelfTimerTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$setFlashIndicatorTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$setFocusEyeTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$sendFeatureContentEvent;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$sendShowFeatureListEvent;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$sendWizardEventTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAddonModeChangeTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventInternalModeChangeTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetFramedropProfilerTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetBlurTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventChangedSettingTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAllSettingsTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendPerformanceDataTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetTimeTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetContinuousCaptureTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$ClearAutoShutterSpeedTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetAutoShutterSpeedTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetEyeDetectedTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetRecordBySideSenseTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetSideSensePositionTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetCaptureTriggerTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetManualBurstCountTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetPredictiveCaptureNumTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$ClearFaceNumTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetRecordingMaxFaceNumTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetFaceNumTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetOrientationTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendZoomDialLongTapEventTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendZoomDialTapEventTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomRatioTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$ClearTemporarySettingValuesTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetUserOperationTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$IncrementCountSnapshotInRecordingTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$IncrementCountRecordResumeTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetViewerLaunchedTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendSettingsCommonKeyTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendSettingsCommonValueTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendCameraNotAvailableEventTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$OnDestroyTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$OnPauseTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$OnResumeTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$OnCreateTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;
    }
.end annotation


# static fields
.field private static final DUAL_CAMERA_EFFECT_USAGE_DATA_CONTENT_URI:Ljava/lang/String; = "content://com.sonymobile.addoncamera.dualcameraeffect.provider/UsageData"

.field private static final PORTRAIT_SELFIE_USAGE_DATA_CONTENT_URI:Ljava/lang/String; = "content://com.sonymobile.addoncamera.beautyportrait.provider/UsageData"

.field public static final TAG:Ljava/lang/String; = "ResearchUtil"

.field private static final sInstance:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# instance fields
.field private isDeleteMediaFile:Z

.field private mAfDoneKeepingTimeHolder:Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;

.field private mBackWorker:Ljava/util/concurrent/ExecutorService;

.field private mContext:Landroid/content/Context;

.field private mCountRecordResume:I

.field private mCountRecordSnapshot:I

.field private mFaultDetectionType:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

.field private mIsFailedToOpenCamera:Z

.field private mIsTempThumbnailTransition:Z

.field private mIsUpdateFlashIndicator:Z

.field private mIsViewEventSent:Z

.field private mPanoramaInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;

.field private mTempThumbnailClickNum:I

.field private mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

.field private mThumbnailTransitionEndTime:J

.field private mThumbnailTransitionStartTime:J

.field private mUserOperationInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 208
    new-instance v0, Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;-><init>()V

    sput-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sInstance:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mUserOperationInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;

    .line 206
    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mPanoramaInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;

    .line 210
    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 212
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mIsViewEventSent:Z

    .line 217
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mIsFailedToOpenCamera:Z

    .line 219
    iput v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordResume:I

    .line 221
    iput v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordSnapshot:I

    .line 224
    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    .line 1154
    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    .line 1637
    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mAfDoneKeepingTimeHolder:Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;

    .line 228
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_26

    const-string v0, "R-Thread"

    const/4 v1, 0x1

    .line 229
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    :cond_26
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    return-object p0
.end method

.method static synthetic access$002(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/util/Map;Ljava/util/Map;)V
    .registers 4

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEventAllSettings(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mUserOperationInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;)Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mUserOperationInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mPanoramaInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;)Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mPanoramaInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Z
    .registers 1

    .line 62
    iget-boolean p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mIsViewEventSent:Z

    return p0
.end method

.method static synthetic access$1902(Lcom/sonymobile/cameracommon/research/ResearchUtil;Z)Z
    .registers 2

    .line 62
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mIsViewEventSent:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Landroid/content/Context;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/sonymobile/cameracommon/research/ResearchUtil;)I
    .registers 1

    .line 62
    iget p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordResume:I

    return p0
.end method

.method static synthetic access$3202(Lcom/sonymobile/cameracommon/research/ResearchUtil;I)I
    .registers 2

    .line 62
    iput p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordResume:I

    return p1
.end method

.method static synthetic access$3208(Lcom/sonymobile/cameracommon/research/ResearchUtil;)I
    .registers 3

    .line 62
    iget v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordResume:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordResume:I

    return v0
.end method

.method static synthetic access$3300(Lcom/sonymobile/cameracommon/research/ResearchUtil;)I
    .registers 1

    .line 62
    iget p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordSnapshot:I

    return p0
.end method

.method static synthetic access$3302(Lcom/sonymobile/cameracommon/research/ResearchUtil;I)I
    .registers 2

    .line 62
    iput p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordSnapshot:I

    return p1
.end method

.method static synthetic access$3308(Lcom/sonymobile/cameracommon/research/ResearchUtil;)I
    .registers 3

    .line 62
    iget v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordSnapshot:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordSnapshot:I

    return v0
.end method

.method static synthetic access$3400(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 62
    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getVideoSizeEventLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5600(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Z
    .registers 1

    .line 62
    iget-boolean p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mIsUpdateFlashIndicator:Z

    return p0
.end method

.method static synthetic access$5602(Lcom/sonymobile/cameracommon/research/ResearchUtil;Z)Z
    .registers 2

    .line 62
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mIsUpdateFlashIndicator:Z

    return p1
.end method

.method static synthetic access$5900(Lcom/sonymobile/cameracommon/research/ResearchUtil;)I
    .registers 1

    .line 62
    iget p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTempThumbnailClickNum:I

    return p0
.end method

.method static synthetic access$900(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mAfDoneKeepingTimeHolder:Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;

    return-object p0
.end method

.method static synthetic access$902(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;)Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mAfDoneKeepingTimeHolder:Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;

    return-object p1
.end method

.method public static getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;
    .registers 1

    .line 237
    sget-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sInstance:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    return-object v0
.end method

.method private static getVideoSizeEventLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 777
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    const-string v0, "Other"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_3c

    .line 783
    :cond_f
    sget-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$1;->$SwitchMap$com$sonymobile$cameracommon$research$ResearchUtil$VideoSize:[I

    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->getVideoSize(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_40

    const-string p0, "_V0"

    goto :goto_3b

    :pswitch_21
    const-string p0, "_V10"

    goto :goto_3b

    :pswitch_24
    const-string p0, "_V9"

    goto :goto_3b

    :pswitch_27
    const-string p0, "_V8"

    goto :goto_3b

    :pswitch_2a
    const-string p0, "_V7"

    goto :goto_3b

    :pswitch_2d
    const-string p0, "_V6"

    goto :goto_3b

    :pswitch_30
    const-string p0, "_V5"

    goto :goto_3b

    :pswitch_33
    const-string p0, "_V4"

    goto :goto_3b

    :pswitch_36
    const-string p0, "_V3"

    goto :goto_3b

    :pswitch_39
    const-string p0, "_V2"

    :goto_3b
    return-object p0

    :cond_3c
    :goto_3c
    const-string p0, "_V0"

    return-object p0

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
    .end packed-switch
.end method

.method private sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 15

    .line 937
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventTask;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventTask;-><init>(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;JLcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendEventAllSettings(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/util/Map;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/cameracommon/research/parameters/Event$Category;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1845
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAllSettingsTask;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAllSettingsTask;-><init>(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/util/Map;Ljava/util/Map;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setTime(ZJ)V
    .registers 6

    .line 1675
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetTimeTask;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetTimeTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;ZJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public clearAutoShutterSpeed()V
    .registers 4

    .line 1584
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$ClearAutoShutterSpeedTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$ClearAutoShutterSpeedTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearFaceNum()V
    .registers 4

    .line 1348
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$ClearFaceNumTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$ClearFaceNumTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearTempThumbnailClickNum()V
    .registers 2

    const/4 v0, 0x0

    .line 2454
    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTempThumbnailClickNum:I

    return-void
.end method

.method public clearTemporarySettingValues()V
    .registers 4

    .line 1161
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$ClearTemporarySettingValuesTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$ClearTemporarySettingValuesTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deleteMediaFile(Z)V
    .registers 2

    .line 2376
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->isDeleteMediaFile:Z

    return-void
.end method

.method public getThumbnailStatus()Z
    .registers 2

    .line 2424
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mIsTempThumbnailTransition:Z

    return v0
.end method

.method public incrementCountRecordResume()V
    .registers 4

    .line 823
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$IncrementCountRecordResumeTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$IncrementCountRecordResumeTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public incrementCountSnapshotInRecording()V
    .registers 4

    .line 838
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$IncrementCountSnapshotInRecordingTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$IncrementCountSnapshotInRecordingTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCreate(Landroid/content/Context;)V
    .registers 4

    .line 246
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "onCreate()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 249
    :cond_d
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mContext:Landroid/content/Context;

    .line 252
    iget-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnCreateTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnCreateTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDestroy()V
    .registers 5

    .line 345
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnDestroyTask;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnDestroyTask;-><init>(Landroid/content/Context;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    .line 348
    :try_start_10
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_15} :catch_24
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_10 .. :try_end_15} :catch_1d
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_10 .. :try_end_15} :catch_16

    goto :goto_2a

    :catch_16
    move-exception v0

    const-string v1, "OnDestroyTask is Timeout."

    .line 354
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2a

    :catch_1d
    move-exception v0

    const-string v1, "OnDestroyTask failed."

    .line 352
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2a

    :catch_24
    move-exception v0

    const-string v1, "OnDestroyTask has been interrupted."

    .line 350
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 356
    :goto_2a
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_37

    const-string v0, "onDestroy()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_37
    return-void
.end method

.method public onPause(Z)V
    .registers 5

    .line 306
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnPauseTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnPauseTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;ZLcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 308
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_18

    const-string p1, "onPause()"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_18
    return-void
.end method

.method public onResume(Z)V
    .registers 5

    .line 267
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "onResume()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 270
    :cond_d
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnResumeTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnResumeTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;ZLcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendAutoPowerOffEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;)V
    .registers 4

    .line 1778
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->AUTO_POWEROFF:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Lcom/sonymobile/cameracommon/research/parameters/Event$Action;Lcom/sonymobile/cameracommon/research/parameters/Event$Label;)V

    return-void
.end method

.method public sendCameraNotAvailableEvent(Ljava/lang/String;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;)V
    .registers 6

    .line 500
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendCameraNotAvailableEventTask;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendCameraNotAvailableEventTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Ljava/lang/String;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendCapabilityErrorEvent()V
    .registers 4

    .line 2525
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendCapabilityErrorEventTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendCapabilityErrorEventTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendCheckFaultPhotoEvent()V
    .registers 5

    .line 2385
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->isDeleteMediaFile:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 2386
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendCheckFaultPhotoEvent;

    const-string v3, "DELETE"

    invoke-direct {v2, v3, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendCheckFaultPhotoEvent;-><init>(Ljava/lang/String;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1e

    .line 2388
    :cond_12
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendCheckFaultPhotoEvent;

    const-string v3, "CANCEL"

    invoke-direct {v2, v3, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendCheckFaultPhotoEvent;-><init>(Ljava/lang/String;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_1e
    const/4 v0, 0x0

    .line 2390
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->deleteMediaFile(Z)V

    return-void
.end method

.method public sendCoolModeEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;Z)V
    .registers 4

    .line 462
    invoke-static {p2}, Lcom/sonymobile/cameracommon/research/parameters/Event$ForceQuit;->getType(Z)Lcom/sonymobile/cameracommon/research/parameters/Event$ForceQuit;

    move-result-object p2

    .line 464
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->THERMAL_MITIGATION:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-virtual {p0, v0, p1, p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Lcom/sonymobile/cameracommon/research/parameters/Event$Action;Lcom/sonymobile/cameracommon/research/parameters/Event$Label;)V

    return-void
.end method

.method public sendDualCameraEffectEvent(Landroid/content/Context;)V
    .registers 6

    .line 2200
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask;

    const-string v2, "content://com.sonymobile.addoncamera.dualcameraeffect.provider/UsageData"

    .line 2201
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3, v3}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    .line 2200
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Lcom/sonymobile/cameracommon/research/parameters/Event$Action;Lcom/sonymobile/cameracommon/research/parameters/Event$Label;)V
    .registers 10

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 905
    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Lcom/sonymobile/cameracommon/research/parameters/Event$Action;Lcom/sonymobile/cameracommon/research/parameters/Event$Label;J)V

    return-void
.end method

.method public sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Lcom/sonymobile/cameracommon/research/parameters/Event$Action;Lcom/sonymobile/cameracommon/research/parameters/Event$Label;J)V
    .registers 13

    const/4 v0, 0x0

    if-nez p2, :cond_5

    move-object v3, v0

    goto :goto_a

    .line 917
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v3, p2

    :goto_a
    if-nez p3, :cond_d

    goto :goto_11

    .line 918
    :cond_d
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_11
    move-object v4, v0

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p4

    .line 920
    invoke-direct/range {v1 .. v6}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 931
    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public sendEventAddonModeChange(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    .line 2058
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAddonModeChangeTask;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAddonModeChangeTask;-><init>(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendEventChangedSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1883
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventChangedSettingTask;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventChangedSettingTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendEventInternalModeChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 2020
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventInternalModeChangeTask;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventInternalModeChangeTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendFaultDetectionEvent(Ljava/lang/String;)V
    .registers 5

    .line 2497
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendFaultDetectionEventTask;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mFaultDetectionType:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    invoke-direct {v1, p0, p1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendFaultDetectionEventTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Ljava/lang/String;Lcom/sonyericsson/android/camera/faultdetection/DetectionType;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendFeatureContentEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;J)V
    .registers 7

    .line 2169
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendFeatureContentEvent;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendFeatureContentEvent;-><init>(Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;JLcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendLowBatteryEvent(ZZ)V
    .registers 4

    .line 475
    invoke-static {p1}, Lcom/sonymobile/cameracommon/research/parameters/Event$LowBatteryMitigation;->getType(Z)Lcom/sonymobile/cameracommon/research/parameters/Event$LowBatteryMitigation;

    move-result-object p1

    .line 476
    invoke-static {p2}, Lcom/sonymobile/cameracommon/research/parameters/Event$ForceQuit;->getType(Z)Lcom/sonymobile/cameracommon/research/parameters/Event$ForceQuit;

    move-result-object p2

    .line 478
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->LOWBATTERY_MITIGATION:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-virtual {p0, v0, p1, p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Lcom/sonymobile/cameracommon/research/parameters/Event$Action;Lcom/sonymobile/cameracommon/research/parameters/Event$Label;)V

    return-void
.end method

.method public sendPerformanceData(Ljava/lang/String;JZ)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    .line 1789
    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendPerformanceData(Ljava/lang/String;JZLjava/lang/String;)V

    return-void
.end method

.method public sendPerformanceData(Ljava/lang/String;JZLjava/lang/String;)V
    .registers 15

    .line 1803
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendPerformanceDataTask;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendPerformanceDataTask;-><init>(Ljava/lang/String;JZLjava/lang/String;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendPortraitSelfieEvent(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    .line 2208
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask;

    const-string v2, "content://com.sonymobile.addoncamera.beautyportrait.provider/UsageData"

    .line 2209
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, p2, v3}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    .line 2208
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendPredictiveLaunchEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;)V
    .registers 4

    .line 1770
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->PREDICTIVE_LAUNCH:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Lcom/sonymobile/cameracommon/research/parameters/Event$Action;Lcom/sonymobile/cameracommon/research/parameters/Event$Label;)V

    return-void
.end method

.method public sendRecordingEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;IZ)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 640
    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendRecordingEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;IZLjava/util/Map;)V

    return-void
.end method

.method public sendRecordingEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;IZLjava/util/Map;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;",
            "Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;",
            "IZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 662
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;IZLjava/util/Map;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendSelfTimerCancelledEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;)V
    .registers 4

    .line 1761
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SELFTIMER_CANCELLED:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Lcom/sonymobile/cameracommon/research/parameters/Event$Action;Lcom/sonymobile/cameracommon/research/parameters/Event$Label;)V

    return-void
.end method

.method public sendSettingsCommon(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .registers 5

    .line 540
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendSettingsCommonValueTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendSettingsCommonValueTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendSettingsCommon(Ljava/lang/String;)V
    .registers 5

    .line 587
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendSettingsCommonKeyTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendSettingsCommonKeyTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Ljava/lang/String;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendSetupWizardEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;JZ)V
    .registers 15

    .line 2100
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendWizardEventTask;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendWizardEventTask;-><init>(Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;JZLcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendShowFeatureListEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$LaunchFeatureListWay;)V
    .registers 5

    .line 2140
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendShowFeatureListEvent;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendShowFeatureListEvent;-><init>(Lcom/sonymobile/cameracommon/research/parameters/Event$LaunchFeatureListWay;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendSlowMotionEvent(Ljava/lang/String;I)V
    .registers 4

    .line 491
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SLOW_MOTION:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendThermalEvent(ZZ)V
    .registers 4

    .line 448
    invoke-static {p1}, Lcom/sonymobile/cameracommon/research/parameters/Event$ThermalMitigation;->getType(Z)Lcom/sonymobile/cameracommon/research/parameters/Event$ThermalMitigation;

    move-result-object p1

    .line 449
    invoke-static {p2}, Lcom/sonymobile/cameracommon/research/parameters/Event$ForceQuit;->getType(Z)Lcom/sonymobile/cameracommon/research/parameters/Event$ForceQuit;

    move-result-object p2

    .line 451
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->THERMAL_MITIGATION:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-virtual {p0, v0, p1, p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Lcom/sonymobile/cameracommon/research/parameters/Event$Action;Lcom/sonymobile/cameracommon/research/parameters/Event$Label;)V

    return-void
.end method

.method public sendThumbnailTransitionEvent()V
    .registers 6

    .line 2463
    iget-wide v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mThumbnailTransitionEndTime:J

    iget-wide v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mThumbnailTransitionStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_16

    .line 2465
    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendThumbnailTransitionEvent;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v0, v1, v4}, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendThumbnailTransitionEvent;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;JLcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_16
    return-void
.end method

.method public sendView(Lcom/sonyericsson/android/camera/LaunchTrigger;Lcom/sonymobile/cameracommon/research/parameters/Screen;)V
    .registers 6

    .line 387
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonyericsson/android/camera/LaunchTrigger;Lcom/sonymobile/cameracommon/research/parameters/Screen;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendZoomDialLongTapEvent()V
    .registers 4

    .line 1239
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendZoomDialLongTapEventTask;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendZoomDialLongTapEventTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendZoomDialTapEvent(Ljava/util/List;F)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;F)V"
        }
    .end annotation

    .line 1204
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendZoomDialTapEventTask;

    invoke-direct {v1, p1, p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendZoomDialTapEventTask;-><init>(Ljava/util/List;F)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAssistSelfTimer(I)V
    .registers 4

    .line 2344
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$setAssistSelfTimerTask;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$setAssistSelfTimerTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAutoShutterSpeed(I)V
    .registers 4

    .line 1555
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetAutoShutterSpeedTask;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetAutoShutterSpeedTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setBlur(Ljava/lang/String;)V
    .registers 5

    .line 1913
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetBlurTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetBlurTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Ljava/lang/String;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCaptureTrigger(Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;)V
    .registers 4

    .line 1425
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetCaptureTriggerTask;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetCaptureTriggerTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setContinuousCapture()V
    .registers 4

    .line 1644
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetContinuousCaptureTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetContinuousCaptureTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setEyeDetected(Z)V
    .registers 4

    .line 1524
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetEyeDetectedTask;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetEyeDetectedTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setFaceNum(I)V
    .registers 4

    .line 1288
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetFaceNumTask;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetFaceNumTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setFlashIndicator(Z)V
    .registers 4

    .line 2310
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$setFlashIndicatorTask;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$setFlashIndicatorTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setFocusEye(Z)V
    .registers 4

    .line 2273
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$setFocusEyeTask;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$setFocusEyeTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setFramedropProfiler([JLjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    .line 1939
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetFramedropProfilerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetFramedropProfilerTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;[JLjava/util/List;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setLaunchBy(Lcom/sonyericsson/android/camera/LaunchTrigger;)V
    .registers 2

    .line 428
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchTrigger;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->setLaunchedBy(Ljava/lang/String;)V

    return-void
.end method

.method public setManualBurstCount(I)V
    .registers 4

    .line 1394
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetManualBurstCountTask;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetManualBurstCountTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setOrientation(I)V
    .registers 4

    .line 1257
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetOrientationTask;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetOrientationTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPredictiveCaptureNum(I)V
    .registers 4

    .line 1368
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetPredictiveCaptureNumTask;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetPredictiveCaptureNumTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setRecordBySideSense(Z)V
    .registers 4

    .line 1492
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetRecordBySideSenseTask;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetRecordBySideSenseTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setRecordingMaxFaceNum(I)V
    .registers 4

    .line 1319
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetRecordingMaxFaceNumTask;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetRecordingMaxFaceNumTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSideSensePosition(II)V
    .registers 5

    .line 1457
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetSideSensePositionTask;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetSideSensePositionTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setThumbnailStatus(Z)V
    .registers 2

    .line 2420
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mIsTempThumbnailTransition:Z

    return-void
.end method

.method public setThumbnailTransitionEnd()V
    .registers 3

    .line 2440
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mThumbnailTransitionEndTime:J

    return-void
.end method

.method public setThumbnailTransitionStart()V
    .registers 3

    .line 2434
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mThumbnailTransitionStartTime:J

    return-void
.end method

.method public setTimeAfDone()V
    .registers 4

    .line 1661
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 1662
    invoke-direct {p0, v2, v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setTime(ZJ)V

    return-void
.end method

.method public setTimeCaptureStart()V
    .registers 4

    .line 1669
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 1670
    invoke-direct {p0, v2, v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setTime(ZJ)V

    return-void
.end method

.method public setUserOperation(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;)V
    .registers 3

    const/4 v0, 0x0

    .line 854
    invoke-virtual {p0, p1, v0, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setUserOperation(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method public setUserOperation(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Ljava/util/List;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;",
            "Ljava/util/List<",
            "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 867
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetUserOperationTask;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetUserOperationTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Ljava/util/List;Ljava/util/Map;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setView(Lcom/sonymobile/cameracommon/research/parameters/Screen;)V
    .registers 2

    .line 437
    invoke-static {p1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->setView(Lcom/sonymobile/cameracommon/research/parameters/Screen;)V

    return-void
.end method

.method public setViewerLaunched()V
    .registers 4

    .line 613
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetViewerLaunchedTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetViewerLaunchedTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setZoomRatio(F)V
    .registers 4

    .line 1178
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomRatioTask;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomRatioTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;F)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateFaultDetection(Lcom/sonyericsson/android/camera/faultdetection/DetectionType;)V
    .registers 2

    .line 2493
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mFaultDetectionType:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    return-void
.end method

.method public updateFlashIndicator(Z)V
    .registers 2

    .line 2305
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mIsUpdateFlashIndicator:Z

    return-void
.end method

.method public updateTempThumbnailClickNum()V
    .registers 2

    .line 2451
    iget v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTempThumbnailClickNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTempThumbnailClickNum:I

    return-void
.end method
