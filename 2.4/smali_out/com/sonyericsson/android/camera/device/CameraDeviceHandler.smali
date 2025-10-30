.class public Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraAvailableTimeoutTask;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$TemporaryThumbnailResultCallback;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ResumeRecorderTask;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PauseRecorderTask;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ReleaseRecorderTask;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StopRecorderTask;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StartRecorderTask;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PrepareRecorderTask;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$SetRecorderTask;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CloseBypassCameraTimeoutTask;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraServiceMonitor;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StartCameraServiceMonitorTask;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadNativeLibraryTask;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$InitControllerTask;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreviewStartedListener;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CaptureStartPoint;,
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;
    }
.end annotation


# static fields
.field static final CLOSE_BYPASS_CAMERA_TIMEOUT_MILLIS:J = 0x186a0L

.field private static final DELAY_STATUS_PROVIDER_UPDATE_UNTIL_RECORDING_STARTED_MILLIS:J = 0xbb8L

.field private static final LONG_CAPTURE_DURATION_THRESHOLD_MILLIS:I = 0x7d0

.field private static final TIMEOUT_WAIT_FOR_ALL_SNAPSHOT_DONE_MILLIS:J = 0x7530L

.field private static final TIMEOUT_WAIT_FOR_ALL_SNAPSHOT_DONE_MILLIS_REC:J = 0xbb8L

.field private static final TIMEOUT_WAIT_FOR_CAMERA_AVAILABLE_MILLIS:J = 0x1b58L

.field private static final TIMEOUT_WAIT_FOR_EACH_SNAPSHOT_DONE_MILLIS:J = 0x3a98L

.field private static final TIMEOUT_WAIT_FOR_PARAMETERS_TO_BE_REFLECTED_MILLIS:J = 0x1388L

.field private static final sCameraSessionInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;",
            "Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSendPauseEventAndReleaseCameraTaskToken:Ljava/lang/Object;


# instance fields
.field private mActivityIsInForeground:Z

.field private mApplicationContext:Landroid/content/Context;

.field private mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

.field private mCameraActionSound:Lcom/sonyericsson/android/camera/device/CameraActionSound;

.field private mCameraAvailableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraAvailableTimeoutTask:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraAvailableTimeoutTask;

.field private mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

.field private final mCameraDeviceThreadHandler:Landroid/os/Handler;

.field private mCameraMonitorThreadHandler:Landroid/os/Handler;

.field private mCameraServiceMonitor:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraServiceMonitor;

.field private mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

.field private mCaptureDuration:I

.field private mCaptureStartPoint:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CaptureStartPoint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mCapturingSchemeQueue:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;

.field private final mChangeProviderDeviceStatusToRecordingTask:Ljava/lang/Runnable;

.field private mCloseBypassCameraTimeoutTask:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CloseBypassCameraTimeoutTask;

.field private mDelayRunnable:Ljava/lang/Runnable;

.field private mFastCaptureOrientation:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;

.field private mFastCaptureSetting:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

.field private mFaultDetectionCameraCallback:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectionCameraCallback;

.field private mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

.field private final mInitControllerTask:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;

.field private mIsCameraAvailable:Z

.field private mIsCameraDisabled:Z

.field private mIsFpsLimitationEnabled:Z

.field private mIsInShutdownNow:Z

.field private mIsRecording:Ljava/lang/Boolean;

.field private mIsVideo:Z

.field private mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

.field private mLoadSettingsThread:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

.field private mPreProcessState:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private final mRecorderListener:Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;

.field private mShutterFeedback:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

.field private mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

.field private mStateMachineForSavingRequest:Lcom/sonyericsson/android/camera/controller/StateMachine;

.field private mSurfaceCropper:Lcom/sonyericsson/android/camera/device/SurfaceCropper;

.field private mTemporaryThumbnailCapture:Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;

.field private mTimeOnSnapshotReadyDone:J

.field private mUiThreadHandler:Landroid/os/Handler;

.field private mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

.field private final mVideoRecorderLock:Ljava/lang/Object;

.field private mWaitUntilVideoStopCompleted:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 204
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->sSendPauseEventAndReleaseCameraTaskToken:Ljava/lang/Object;

    .line 645
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->sCameraSessionInfoMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLoadSettingsThread:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

    .line 168
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    .line 173
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mApplicationContext:Landroid/content/Context;

    .line 185
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreferences:Landroid/content/SharedPreferences;

    .line 188
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    .line 189
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mFastCaptureOrientation:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;

    .line 192
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mFastCaptureSetting:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    const/4 v1, 0x0

    .line 195
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsRecording:Ljava/lang/Boolean;

    .line 197
    new-instance v2, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;

    invoke-direct {v2}, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mTemporaryThumbnailCapture:Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;

    .line 239
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->NOT_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    iput-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    .line 255
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsCameraDisabled:Z

    .line 270
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsFpsLimitationEnabled:Z

    const/4 v2, 0x1

    .line 279
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mActivityIsInForeground:Z

    .line 281
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsInShutdownNow:Z

    .line 287
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CaptureStartPoint;->INVALID:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CaptureStartPoint;

    iput-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCaptureStartPoint:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CaptureStartPoint;

    .line 292
    invoke-static {}, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;->createDefault()Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mShutterFeedback:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    .line 295
    new-instance v2, Lcom/sonyericsson/android/camera/device/SurfaceCropper;

    invoke-direct {v2}, Lcom/sonyericsson/android/camera/device/SurfaceCropper;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mSurfaceCropper:Lcom/sonyericsson/android/camera/device/SurfaceCropper;

    .line 392
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mDelayRunnable:Ljava/lang/Runnable;

    .line 397
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraMonitorThreadHandler:Landroid/os/Handler;

    .line 426
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 776
    new-instance v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraServiceMonitor;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraServiceMonitor;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraServiceMonitor:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraServiceMonitor;

    .line 777
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsCameraAvailable:Z

    .line 778
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraAvailableMap:Ljava/util/Map;

    .line 1286
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCloseBypassCameraTimeoutTask:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CloseBypassCameraTimeoutTask;

    .line 2777
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$7;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$7;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mChangeProviderDeviceStatusToRecordingTask:Ljava/lang/Runnable;

    .line 5035
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCapturingSchemeQueue:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;

    .line 5355
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mRecorderListener:Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;

    .line 687
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mApplicationContext:Landroid/content/Context;

    .line 690
    new-instance p1, Landroid/os/HandlerThread;

    const-string v1, "CameraAccess"

    const/16 v2, 0xa

    invoke-direct {p1, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 692
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 693
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraDeviceThreadHandler:Landroid/os/Handler;

    .line 695
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorderLock:Ljava/lang/Object;

    .line 697
    new-instance p1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$InitControllerTask;

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$InitControllerTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mInitControllerTask:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;

    .line 698
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mInitControllerTask:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->runOnCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    .line 699
    new-instance p1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadNativeLibraryTask;

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadNativeLibraryTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;)V

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->runOnCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    .line 700
    new-instance p1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StartCameraServiceMonitorTask;

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StartCameraServiceMonitorTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;)V

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->runOnCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .registers 1

    .line 153
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->sCameraSessionInfoMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Landroid/os/Handler;)V
    .registers 2

    .line 153
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->startCameraServiceAvailability(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Ljava/lang/String;Z)V
    .registers 3

    .line 153
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setCameraAvailable(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/os/Handler;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V
    .registers 1

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->cancelCameraAvailableTimeoutTask()V

    return-void
.end method

.method static synthetic access$2000(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mWaitUntilVideoStopCompleted:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .registers 2

    .line 153
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mWaitUntilVideoStopCompleted:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Z
    .registers 1

    .line 153
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mActivityIsInForeground:Z

    return p0
.end method

.method static synthetic access$2200(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/os/Handler;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraDeviceThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Ljava/lang/StringBuilder;)V
    .registers 2

    .line 153
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->dumpStatus(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraActionSound;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraActionSound:Lcom/sonyericsson/android/camera/device/CameraActionSound;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraActionSound;)Lcom/sonyericsson/android/camera/device/CameraActionSound;
    .registers 2

    .line 153
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraActionSound:Lcom/sonyericsson/android/camera/device/CameraActionSound;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mFastCaptureSetting:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/content/Context;
    .registers 1

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2800(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    return-object p0
.end method

.method static synthetic access$2802(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;)Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
    .registers 2

    .line 153
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V
    .registers 2

    .line 153
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->runOnCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mFastCaptureOrientation:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;

    return-object p0
.end method

.method static synthetic access$3002(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;
    .registers 2

    .line 153
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mFastCaptureOrientation:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Ljava/lang/Object;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorderLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/recorder/RecorderController;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    return-object p0
.end method

.method static synthetic access$3302(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/recorder/RecorderController;)Lcom/sonyericsson/android/camera/recorder/RecorderController;
    .registers 2

    .line 153
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;
    .registers 2

    .line 153
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3702(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2

    .line 153
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsRecording:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V
    .registers 1

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->changeProviderDeviceStatusToRecording()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/BypassCameraController;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    return-object p0
.end method

.method static synthetic access$402(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/BypassCameraController;
    .registers 2

    .line 153
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/content/Context;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mApplicationContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V
    .registers 2

    .line 153
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->changePreProcessStateTo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Z
    .registers 1

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isNeedCreatePreviewSession()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5500(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCapturingSchemeQueue:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/faultdetection/FaultDetectionCameraCallback;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mFaultDetectionCameraCallback:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectionCameraCallback;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachineForSavingRequest:Lcom/sonyericsson/android/camera/controller/StateMachine;

    return-object p0
.end method

.method static synthetic access$5900(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/controller/StateMachine;)Z
    .registers 2

    .line 153
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->shouldPlayShutterSound(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$6000(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mShutterFeedback:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    return-object p0
.end method

.method static synthetic access$6100(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;Z)V
    .registers 3

    .line 153
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->playCameraActionSound(Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;Z)V

    return-void
.end method

.method static synthetic access$6300(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Z
    .registers 1

    .line 153
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    return p0
.end method

.method static synthetic access$6402(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;J)J
    .registers 3

    .line 153
    iput-wide p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mTimeOnSnapshotReadyDone:J

    return-wide p1
.end method

.method static synthetic access$6502(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CaptureStartPoint;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CaptureStartPoint;
    .registers 2

    .line 153
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCaptureStartPoint:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CaptureStartPoint;

    return-object p1
.end method

.method static synthetic access$6600(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)I
    .registers 1

    .line 153
    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCaptureDuration:I

    return p0
.end method

.method static synthetic access$6602(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;I)I
    .registers 2

    .line 153
    iput p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCaptureDuration:I

    return p1
.end method

.method static synthetic access$6700(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    .registers 2

    .line 153
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->doLaunchAndCapture(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraController;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    return-object p0
.end method

.method static synthetic access$7000(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/SurfaceCropper;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mSurfaceCropper:Lcom/sonyericsson/android/camera/device/SurfaceCropper;

    return-object p0
.end method

.method static synthetic access$702(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController;
    .registers 2

    .line 153
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    return-object p1
.end method

.method static synthetic access$7200(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V
    .registers 1

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->startRecording()V

    return-void
.end method

.method static synthetic access$7400(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Ljava/lang/Runnable;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mDelayRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$7500(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraServiceMonitor;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraServiceMonitor:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraServiceMonitor;

    return-object p0
.end method

.method static synthetic access$7600(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraAvailableTimeoutTask;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraAvailableTimeoutTask:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraAvailableTimeoutTask;

    return-object p0
.end method

.method static synthetic access$7900(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V
    .registers 1

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->releaseRecorderOnCameraClosed()V

    return-void
.end method

.method static synthetic access$8000(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V
    .registers 2

    .line 153
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->runOnCameraDeviceThreadSync(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    return-void
.end method

.method static synthetic access$8100(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;Z)Ljava/lang/String;
    .registers 6

    .line 153
    invoke-direct/range {p0 .. p5}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getVideoStabilizerDeviceValue(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$8200(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Z
    .registers 1

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isLongCaptureDuration()Z

    move-result p0

    return p0
.end method

.method static synthetic access$8300(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V
    .registers 1

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->notifyRecordingStopCompleted()V

    return-void
.end method

.method static synthetic access$900(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/os/Handler;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraMonitorThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$902(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Landroid/os/Handler;)Landroid/os/Handler;
    .registers 2

    .line 153
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraMonitorThreadHandler:Landroid/os/Handler;

    return-object p1
.end method

.method private cancelCameraAvailableTimeoutTask()V
    .registers 3

    .line 5480
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraMonitorThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_c

    .line 5481
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraAvailableTimeoutTask:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraAvailableTimeoutTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 5482
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraAvailableTimeoutTask:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraAvailableTimeoutTask;

    :cond_c
    return-void
.end method

.method private cancelChangeProviderDeviceStatusToRecording()V
    .registers 3

    .line 2799
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraDeviceThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mChangeProviderDeviceStatusToRecordingTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private cancelCloseBypassCameraTimeoutTask()V
    .registers 3

    .line 1333
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCloseBypassCameraTimeoutTask:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CloseBypassCameraTimeoutTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 1334
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCloseBypassCameraTimeoutTask:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CloseBypassCameraTimeoutTask;

    return-void
.end method

.method private changePreProcessStateTo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V
    .registers 6

    .line 241
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked current:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " next:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 242
    :cond_28
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    return-void
.end method

.method private changeProviderDeviceStatusToRecording()V
    .registers 5

    .line 2791
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraDeviceThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mChangeProviderDeviceStatusToRecordingTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private createCameraActionSound()V
    .registers 3

    .line 1349
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraDeviceThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$2;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private createPreCaptureSavingRequest(Lcom/sonyericsson/android/camera/device/CameraParameters;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;
    .registers 19

    move-object/from16 v0, p0

    .line 2154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2159
    iget-object v1, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mFastCaptureOrientation:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;

    if-eqz v1, :cond_10

    .line 2160
    # invokes: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;->getOrientation()I
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;->access$4000(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;)I

    move-result v1

    move v4, v1

    goto :goto_12

    :cond_10
    const/4 v1, 0x0

    move v4, v1

    :goto_12
    const/4 v1, 0x0

    .line 2166
    iget-object v5, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    if-eqz v5, :cond_1d

    .line 2167
    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v1

    move-object v5, v1

    goto :goto_1e

    :cond_1d
    move-object v5, v1

    .line 2171
    :goto_1e
    new-instance v15, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    new-instance v14, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    .line 2176
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPictureSize()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 2177
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPictureSize()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    const-string v8, "image/jpeg"

    const-string v9, ".JPG"

    sget-object v10, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    const/4 v11, 0x0

    const-string v12, ""

    const/4 v13, 0x0

    const/16 v16, 0x1

    move-object v1, v14

    move-object v0, v14

    move/from16 v14, v16

    invoke-direct/range {v1 .. v14}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;-><init>(JILandroid/location/Location;IILjava/lang/String;Ljava/lang/String;Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    invoke-direct {v1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v15, v0, v1, v2}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;Z)V

    return-object v15
.end method

.method private doLaunchAndCapture(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    .registers 3

    .line 4889
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "doLaunchAndCapture"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    if-eqz p1, :cond_15

    .line 4894
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->applySavingRequest(Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;)V

    .line 4897
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->takePicture(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    :cond_15
    return-void
.end method

.method private dumpStatus(Ljava/lang/StringBuilder;)V
    .registers 4

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mStateMachine:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPreProcessState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mActivityIsInForeground:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mActivityIsInForeground:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsCameraDisabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsCameraDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->dump(Ljava/lang/StringBuilder;)V

    .line 216
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->dump(Ljava/lang/StringBuilder;)V

    .line 217
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->dump(Ljava/lang/StringBuilder;)V

    .line 218
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCapturingSchemeQueue:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->dump(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method private getApplicationContext()Landroid/content/Context;
    .registers 2

    .line 176
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method private getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;
    .registers 2

    .line 1095
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 1097
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getParameters()Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method private getRemainingCaptureDuration()I
    .registers 7

    .line 2291
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$10;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CaptureStartPoint:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCaptureStartPoint:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CaptureStartPoint;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CaptureStartPoint;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_2c

    return v1

    .line 2304
    :pswitch_f
    iget v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCaptureDuration:I

    return v0

    .line 2295
    :pswitch_12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mTimeOnSnapshotReadyDone:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x7fffffff

    cmp-long v0, v2, v4

    if-gez v0, :cond_28

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_27

    goto :goto_28

    :cond_27
    long-to-int v1, v2

    .line 2301
    :cond_28
    :goto_28
    iget v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCaptureDuration:I

    sub-int/2addr v0, v1

    return v0

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_12
        :pswitch_f
    .end packed-switch
.end method

.method private declared-synchronized getUnavailableCameraId()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    .line 843
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraAvailableMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 844
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_b

    .line 845
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2e

    monitor-exit p0

    return-object v0

    :cond_2b
    const/4 v0, 0x0

    .line 848
    monitor-exit p0

    return-object v0

    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getVideoStabilizerDeviceValue(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;Z)Ljava/lang/String;
    .registers 7

    .line 5006
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    if-ne p2, v0, :cond_26

    if-eqz p5, :cond_1b

    .line 5008
    invoke-static {p1, p3, p4}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isIntelligentActiveSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 5010
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->INTELLIGENT_ACTIVE:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    goto :goto_26

    .line 5011
    :cond_f
    invoke-static {p1, p3, p4}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSteadyShotSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 5013
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->STEADY_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    goto :goto_26

    .line 5015
    :cond_18
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    goto :goto_26

    .line 5021
    :cond_1b
    invoke-static {p1, p3, p4}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSteadyShotSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 5023
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->STEADY_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    goto :goto_26

    .line 5025
    :cond_24
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    .line 5030
    :cond_26
    :goto_26
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_50

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 p3, 0x0

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "getVideoStabilizerDeviceValue() videoStabilizer: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p5, " videoStabilizer.getValue(): "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5031
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->getValue()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p1, p3

    .line 5030
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 5032
    :cond_50
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isBurst(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Z
    .registers 3

    .line 2324
    iget-object p1, p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object p1, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->savedFileType:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    sget-object v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->BURST:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    if-ne p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method private isBypassCameraAvailable()Z
    .registers 3

    .line 649
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 650
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 651
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isCloseCameraTaskRequested()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x1

    return v0

    :cond_14
    :goto_14
    return v1

    :cond_15
    return v1
.end method

.method private isBypassCameraSupported()Z
    .registers 2

    .line 378
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isBypassCameraSupported()Z

    move-result v0

    return v0
.end method

.method private isLongCaptureDuration()Z
    .registers 3

    .line 1111
    iget v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCaptureDuration:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private isMultiAutoFocusSupported()Z
    .registers 2

    .line 3197
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isMultiAutoFocusSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private isNeedCreatePreviewSession()Z
    .registers 5

    .line 303
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isLaunchAndCapture()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1b

    .line 304
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v0

    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    if-ne v0, v3, :cond_19

    goto :goto_1a

    :cond_19
    move v1, v2

    :goto_1a
    return v1

    .line 306
    :cond_1b
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getPreProcessState()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v0

    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_SHUTTER_DONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-ne v0, v3, :cond_2e

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 307
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v0

    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    if-ne v0, v3, :cond_2e

    goto :goto_2f

    :cond_2e
    move v1, v2

    :goto_2f
    return v1
.end method

.method private isRecorderReady()Z
    .registers 3

    .line 2454
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2455
    :try_start_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isReady()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    monitor-exit v0

    return v1

    :catchall_14
    move-exception v1

    .line 2456
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private notifyRecordingStopCompleted()V
    .registers 5

    .line 1119
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mWaitUntilVideoStopCompleted:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_13

    .line 1120
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    .line 1121
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mWaitUntilVideoStopCompleted:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1124
    :cond_13
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setRepeatingRequestForStopRecording()V

    return-void
.end method

.method private playCameraActionSound(Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;Z)V
    .registers 4

    .line 360
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraActionSound:Lcom/sonyericsson/android/camera/device/CameraActionSound;

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    .line 361
    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraActionSound;->play(Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;Z)V

    :cond_9
    return-void
.end method

.method public static final preload()V
    .registers 0

    return-void
.end method

.method private releaseCameraActionSound()V
    .registers 3

    .line 1365
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraDeviceThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$3;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$3;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private releaseRecorder(Z)V
    .registers 3

    if-eqz p1, :cond_13

    .line 2682
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorderLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2683
    :try_start_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    if-eqz v0, :cond_e

    .line 2684
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->release()Z

    .line 2686
    :cond_e
    monitor-exit p1

    goto :goto_1e

    :catchall_10
    move-exception v0

    monitor-exit p1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_10

    throw v0

    .line 2688
    :cond_13
    new-instance p1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ReleaseRecorderTask;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ReleaseRecorderTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;)V

    .line 2689
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraDeviceThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1e
    return-void
.end method

.method private releaseRecorderOnCameraClosed()V
    .registers 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x1

    .line 2674
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->releaseRecorder(Z)V

    return-void
.end method

.method private requestCameraAvailableTimeoutTask()V
    .registers 5

    .line 5470
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraAvailableTimeoutTask:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraAvailableTimeoutTask;

    if-nez v0, :cond_c

    .line 5471
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraAvailableTimeoutTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraAvailableTimeoutTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraAvailableTimeoutTask:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraAvailableTimeoutTask;

    .line 5473
    :cond_c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraMonitorThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_17

    .line 5474
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraAvailableTimeoutTask:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraAvailableTimeoutTask;

    const-wide/16 v2, 0x1b58

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_17
    return-void
.end method

.method private requestCloseBypassCameraTimeoutTask(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .registers 5

    .line 1343
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CloseBypassCameraTimeoutTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CloseBypassCameraTimeoutTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCloseBypassCameraTimeoutTask:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CloseBypassCameraTimeoutTask;

    .line 1344
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCloseBypassCameraTimeoutTask:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CloseBypassCameraTimeoutTask;

    const-wide/32 v1, 0x186a0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private resetCaptureDuration()V
    .registers 2

    .line 2312
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CaptureStartPoint;->INVALID:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CaptureStartPoint;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCaptureStartPoint:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CaptureStartPoint;

    const/4 v0, 0x0

    .line 2313
    iput v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCaptureDuration:I

    .line 2314
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->clearAutoShutterSpeed()V

    return-void
.end method

.method private runOnCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V
    .registers 3

    .line 4066
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraDeviceThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private runOnCameraDeviceThreadSync(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V
    .registers 3

    .line 4070
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraDeviceThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4073
    :try_start_5
    # invokes: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;->getLatch()Ljava/util/concurrent/CountDownLatch;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;->access$1700(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_c} :catch_d

    goto :goto_13

    :catch_d
    move-exception p1

    const-string v0, "runOnCameraDeviceThreadSync() : Failed to await by InterruptedException"

    .line 4075
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_13
    return-void
.end method

.method private declared-synchronized setCameraAvailable(Ljava/lang/String;Z)V
    .registers 4

    monitor-enter p0

    .line 832
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraAvailableMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraAvailableMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_14

    const/4 p1, 0x0

    .line 835
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsCameraAvailable:Z
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_30

    .line 836
    monitor-exit p0

    return-void

    :cond_2b
    const/4 p1, 0x1

    .line 839
    :try_start_2c
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsCameraAvailable:Z
    :try_end_2e
    .catchall {:try_start_2c .. :try_end_2e} :catchall_30

    .line 840
    monitor-exit p0

    return-void

    :catchall_30
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setFocusRect(Landroid/graphics/Rect;)V
    .registers 7

    .line 3217
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_16

    .line 3219
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_15

    const-string p1, "This session has been closed, so this request was refused."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15
    return-void

    .line 3223
    :cond_16
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxNumFocusAreas(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2f

    .line 3224
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_2e

    const-string p1, "Focus area change is not supported, so this request was refused."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2e
    return-void

    .line 3229
    :cond_2f
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_4c

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked rect:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3231
    :cond_4c
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 3232
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFocusArea()Ljava/lang/String;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 3233
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getActiveArraySize(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object v1

    .line 3234
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    .line 3235
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v1, 0x1

    .line 3236
    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_81

    .line 3238
    :cond_76
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    goto :goto_81

    :cond_7c
    const-string v1, "user"

    .line 3241
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusArea(Ljava/lang/String;)V

    .line 3244
    :goto_81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3245
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3246
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusRectangles(Ljava/util/List;)V

    return-void
.end method

.method private setFpsRange([I)V
    .registers 8

    .line 3472
    array-length v0, p1

    if-lez v0, :cond_4b

    .line 3473
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_19

    .line 3475
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_18

    const-string p1, "This session has been closed, so this request was refused."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_18
    return-void

    .line 3479
    :cond_19
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_43

    new-array v1, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invoked min:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, p1, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " max:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, p1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3483
    :cond_43
    aget v1, p1, v3

    aget p1, p1, v2

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setPreviewFpsRange(II)V

    goto :goto_54

    :cond_4b
    const-string p1, "Ilegal fps range is specified."

    .line 3487
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :goto_54
    return-void
.end method

.method private setMeteringArea(Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/configuration/parameters/Metering;)V
    .registers 8

    .line 3337
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_16

    .line 3339
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_15

    const-string p1, "This session has been closed, so this request was refused."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15
    return-void

    .line 3342
    :cond_16
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_3c

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked area:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " metering:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3c
    const/4 v1, 0x0

    if-eqz p1, :cond_4d

    .line 3346
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3347
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "user"

    .line 3349
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setMeteringMode(Ljava/lang/String;)V

    goto :goto_54

    .line 3352
    :cond_4d
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setMeteringMode(Ljava/lang/String;)V

    .line 3355
    :goto_54
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setMeteringArea(Ljava/util/List;)V

    return-void
.end method

.method private setPreviewSize(Landroid/graphics/Rect;)V
    .registers 7

    .line 3392
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_16

    .line 3394
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_15

    const-string p1, "This session has been closed, so this request was refused."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15
    return-void

    .line 3397
    :cond_16
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_34

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3399
    :cond_34
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v1, v3, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->triggerRestartPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    .line 3400
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setPreviewSize(Landroid/graphics/Rect;)V

    .line 3401
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v0

    .line 3402
    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getRectAccordingToLayoutOrientation(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 3403
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->setPreviewSize(II)V

    return-void
.end method

.method private setRepeatingRequestForStopRecording()V
    .registers 3

    .line 1129
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1130
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    .line 1131
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isCloseCameraTaskOrBypassCameraTaskRequested()Z

    move-result v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 1134
    :goto_14
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v1

    if-eqz v1, :cond_39

    if-nez v0, :cond_39

    .line 1135
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getSlowMotion()Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-eq v0, v1, :cond_39

    .line 1137
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 1138
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->isBypassCameraUsedForRecording(Lcom/sonyericsson/android/camera/device/CameraParameters;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 1139
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->setRepeatingRequestForStopRecording(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    :cond_39
    return-void
.end method

.method private shouldPlayShutterSound(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z
    .registers 4

    .line 366
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    .line 367
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p1

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, p1, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    .line 369
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    if-eq p1, v0, :cond_1c

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isRecording()Z

    move-result p1

    if-nez p1, :cond_1c

    const/4 p1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    return p1
.end method

.method private startCameraServiceAvailability(Landroid/os/Handler;)V
    .registers 4

    .line 918
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mApplicationContext:Landroid/content/Context;

    const-string v1, "camera"

    .line 919
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    if-eqz v0, :cond_11

    .line 921
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraServiceMonitor:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraServiceMonitor;

    invoke-virtual {v0, v1, p1}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    :cond_11
    return-void
.end method

.method private startRecording()V
    .registers 3

    .line 2712
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2714
    :cond_d
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1a

    const-string v0, "post StartRecorderTask"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2715
    :cond_1a
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StartRecorderTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StartRecorderTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;)V

    .line 2716
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraDeviceThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private stopCameraServiceAvailability()V
    .registers 3

    .line 907
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mApplicationContext:Landroid/content/Context;

    const-string v1, "camera"

    .line 908
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    if-eqz v0, :cond_11

    .line 910
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraServiceMonitor:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraServiceMonitor;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    :cond_11
    return-void
.end method

.method private waitUntilStopCompleted()V
    .registers 3

    .line 1234
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1235
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraDeviceThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public applySavingRequest(Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;)V
    .registers 9

    .line 2191
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_16

    .line 2193
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_15

    const-string p1, "This session has been closed, so this request was refused."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15
    return-void

    .line 2197
    :cond_16
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setRotation(I)V

    .line 2199
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->removeGpsData()V

    .line 2201
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    if-eqz v1, :cond_4d

    .line 2202
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 2203
    iget-object v3, p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v1, v1, v5

    if-nez v1, :cond_43

    cmpl-double v1, v3, v5

    if-eqz v1, :cond_41

    goto :goto_43

    :cond_41
    const/4 v1, 0x0

    goto :goto_44

    :cond_43
    :goto_43
    const/4 v1, 0x1

    :goto_44
    if-eqz v1, :cond_4d

    .line 2213
    iget-object p1, p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object p1, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setGpsData(Landroid/location/Location;)V

    .line 2217
    :cond_4d
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_5a

    const-string p1, "invoked"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2219
    :cond_5a
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public autoFocus()V
    .registers 5

    .line 2019
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2021
    :cond_d
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBypassCameraSupported()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 2023
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->resetCaptureDuration()V

    .line 2024
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    .line 2025
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->createAfParametersResultChecker(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/os/Handler;)Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;

    move-result-object v0

    .line 2027
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->isAfParametersReflectedToDevice(Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 2028
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->requestSnapshotReady(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    goto :goto_3f

    .line 2032
    :cond_30
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 2033
    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->requestSnapshotReadyAfterAfParametersReflected(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;)Ljava/lang/Runnable;

    move-result-object v0

    .line 2036
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3f
    :goto_3f
    return-void
.end method

.method public awaitLoadSettingsThread()Z
    .registers 6

    .line 1648
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLoadSettingsThread:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

    const/4 v1, 0x1

    if-nez v0, :cond_f

    const-string v0, "awaitSettingLoadThread thread is unnecessary"

    .line 1649
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return v1

    :cond_f
    const-wide/16 v2, 0xfa0

    const/4 v4, 0x0

    .line 1655
    :try_start_12
    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->join(J)V

    .line 1657
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLoadSettingsThread:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1658
    new-array v0, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLoadSettingsThread:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is Timed out."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/util/concurrent/CancellationException; {:try_start_12 .. :try_end_40} :catch_65
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_40} :catch_44

    move v0, v4

    goto :goto_86

    :cond_42
    move v0, v1

    goto :goto_86

    :catch_44
    move-exception v0

    .line 1666
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLoadSettingsThread:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is Interrupted."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_85

    :catch_65
    move-exception v0

    .line 1664
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLoadSettingsThread:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is Cancelled."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_85
    move v0, v4

    .line 1669
    :goto_86
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v2, :cond_a2

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked success:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_a2
    return v0
.end method

.method public calculateExtendedFaceRect(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;
    .registers 4

    .line 5339
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mSurfaceCropper:Lcom/sonyericsson/android/camera/device/SurfaceCropper;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->calculateExtendedFaceRect(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public canRecorderTakeSnapshot()Z
    .registers 5

    .line 3006
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3007
    :try_start_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isStarting()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1f

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    .line 3008
    invoke-interface {v1}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isRecording()Z

    move-result v1

    if-nez v1, :cond_1d

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_1f

    :cond_1d
    move v1, v2

    goto :goto_20

    :cond_1f
    move v1, v3

    .line 3009
    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_2c

    .line 3010
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBypassCameraNextShotAvailable()Z

    move-result v0

    if-eqz v0, :cond_2a

    if-eqz v1, :cond_2a

    goto :goto_2b

    :cond_2a
    move v2, v3

    :goto_2b
    return v2

    :catchall_2c
    move-exception v1

    .line 3009
    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public cancelAutoFocus()V
    .registers 3

    .line 2080
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2082
    :cond_d
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBypassCameraSupported()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2083
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->requestSnapshotFree(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    :cond_1a
    return-void
.end method

.method public cancelDelayedRunnable()V
    .registers 2

    .line 899
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->cancelCameraAvailableTimeoutTask()V

    .line 900
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraServiceMonitor:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraServiceMonitor;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraServiceMonitor;->cancelRunAfterCameraAvailable()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraServiceMonitor;->access$1600(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraServiceMonitor;)V

    return-void
.end method

.method public cancelPreProcessState()V
    .registers 2

    .line 248
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->NOT_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->changePreProcessStateTo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V

    return-void
.end method

.method public cancelRecording()V
    .registers 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 2762
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    .line 2763
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoStabilizer()Ljava/lang/String;

    move-result-object v0

    .line 2764
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->INTELLIGENT_ACTIVE:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2765
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->setIntelligentActiveTriggerToCancel(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    :cond_1d
    return-void
.end method

.method public captureWhileRecording(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    .registers 3

    .line 2878
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCapturingSchemeQueue:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->enqueueCaptureRequest(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    .line 2879
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->requestCaptureWhileRecording(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public closeCamera()V
    .registers 2

    const/4 v0, 0x0

    .line 1262
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->closeCamera(Z)V

    return-void
.end method

.method public closeCamera(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .registers 6

    .line 1272
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked requested-session:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " current-session:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1274
    :cond_28
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    if-eqz v0, :cond_31

    if-ne p1, v0, :cond_31

    .line 1275
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->closeCamera()V

    :cond_31
    return-void
.end method

.method public closeCamera(Z)V
    .registers 6

    .line 1149
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    if-nez v0, :cond_16

    .line 1151
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_15

    const-string p1, "This session has been closed, so this request was refused."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15
    return-void

    .line 1157
    :cond_16
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->NOT_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-eq v0, v1, :cond_29

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_DONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-ne v0, v1, :cond_23

    goto :goto_29

    .line 1161
    :cond_23
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_RELEASED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->changePreProcessStateTo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V

    goto :goto_2e

    .line 1159
    :cond_29
    :goto_29
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->NOT_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->changePreProcessStateTo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V

    .line 1169
    :goto_2e
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsInShutdownNow:Z

    or-int/2addr p1, v0

    const/4 v0, 0x1

    if-nez p1, :cond_4c

    .line 1171
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isRecorderWorking()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 1172
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mApplicationContext:Landroid/content/Context;

    const-string v2, "batterymanager"

    .line 1173
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryManager;

    const/4 v2, 0x4

    .line 1174
    invoke-virtual {v1, v2}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v1

    if-nez v1, :cond_4c

    move p1, v0

    .line 1179
    :cond_4c
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_69

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked sync:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1182
    :cond_69
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_78

    .line 1183
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->releaseResource()V

    .line 1184
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->release()V

    .line 1185
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    .line 1187
    :cond_78
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mFastCaptureOrientation:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;

    if-eqz v0, :cond_81

    .line 1188
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;->disable()V

    .line 1189
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mFastCaptureOrientation:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;

    .line 1194
    :cond_81
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isRecorderWorking()Z

    move-result v0

    if-eqz v0, :cond_95

    const-string v0, "Camera is waiting for completion of capturing in recording video."

    .line 1195
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    .line 1199
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCapturingSchemeQueue:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;

    invoke-virtual {v0, v2, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->awaitAllSnapshot(ZZ)V

    .line 1202
    :cond_95
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->cancelChangeProviderDeviceStatusToRecording()V

    .line 1204
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_a5

    const-string v0, "post StopRecorderTask"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1205
    :cond_a5
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StopRecorderTask;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StopRecorderTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;)V

    .line 1206
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraDeviceThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1208
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isRecorderWorking()Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 1210
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->waitUntilStopCompleted()V

    .line 1213
    :cond_b8
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isLongCaptureDuration()Z

    move-result v3

    invoke-virtual {v0, p1, v2, v3}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->closeBypassCamera(ZLcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    .line 1215
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mTemporaryThumbnailCapture:Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;->terminate()V

    .line 1217
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isLongCaptureDuration()Z

    move-result v3

    invoke-virtual {v0, p1, v2, v3}, Lcom/sonyericsson/android/camera/device/CameraController;->closeCamera(ZLcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    .line 1219
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->resetCaptureDuration()V

    .line 1223
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mFastCaptureSetting:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    .line 1227
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCapturingSchemeQueue:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->clearPreCaptureRequest()V

    .line 1229
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->requestCloseBypassCameraTimeoutTask(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 1230
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->releaseCameraActionSound()V

    return-void
.end method

.method public commit()V
    .registers 5

    .line 3576
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked pre-process:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " remain-saving-photo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3577
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCapturingSchemeCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 3576
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3579
    :cond_2c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->commit(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 3580
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->commit(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 3581
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->NOT_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-eq v0, v1, :cond_46

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_DONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-ne v0, v1, :cond_55

    .line 3588
    :cond_46
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCapturingSchemeCount()I

    move-result v0

    if-eqz v0, :cond_4d

    return-void

    .line 3592
    :cond_4d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->prepareCaptureImageReader(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;)V

    :cond_55
    return-void
.end method

.method public convertActiveArrayRectToTargetSize(Landroid/util/Size;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 4

    .line 5327
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mSurfaceCropper:Lcom/sonyericsson/android/camera/device/SurfaceCropper;

    .line 5328
    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->convertActiveArrayRectToTargetSize(Landroid/util/Size;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public disableBokehModeAndCommit()V
    .registers 4

    .line 3761
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_16

    .line 3763
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_15

    const-string v0, "This session has been closed, so this request was refused."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15
    return-void

    .line 3766
    :cond_16
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->requestAbortCapturesWhenCreateSession()V

    const-string v1, "off"

    .line 3767
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setBokehMode(Ljava/lang/String;)V

    .line 3768
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->triggerRestartPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    .line 3769
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->commit(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public disableFpsLimitation()V
    .registers 2

    .line 1704
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    const/4 v0, 0x0

    .line 1705
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsFpsLimitationEnabled:Z

    return-void
.end method

.method public enableBokehModeAndCommit(F)V
    .registers 4

    .line 3748
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_16

    .line 3750
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_15

    const-string p1, "This session has been closed, so this request was refused."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15
    return-void

    .line 3753
    :cond_16
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->requestAbortCapturesWhenCreateSession()V

    .line 3754
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setBokehStrength(F)V

    const-string p1, "on"

    .line 3755
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setBokehMode(Ljava/lang/String;)V

    .line 3756
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->triggerRestartPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    .line 3757
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->commit(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public enableFpsLimitation()V
    .registers 3

    .line 1683
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1684
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_23

    .line 1686
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_22

    const-string v0, "Camera is not available."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_22
    return-void

    .line 1690
    :cond_23
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsFpsLimitationEnabled:Z

    if-nez v1, :cond_42

    const/4 v1, 0x1

    .line 1691
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsFpsLimitationEnabled:Z

    .line 1694
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedPreviewFpsRange(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 1696
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/FpsProvider;->getFpsRangeForStillPreview(Ljava/util/List;)[I

    move-result-object v0

    .line 1697
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setFpsRange([I)V

    .line 1698
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    :cond_42
    return-void
.end method

.method public finalizeRecording()V
    .registers 4

    .line 2852
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2853
    :try_start_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    if-eqz v1, :cond_20

    .line 2854
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_14

    const-string v1, "post StopRecorderTask"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2855
    :cond_14
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StopRecorderTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StopRecorderTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;)V

    .line 2856
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraDeviceThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2d

    .line 2858
    :cond_20
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_2d

    const-string v1, "Recorder doesn\'t exists, so this request is refused."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2860
    :cond_2d
    :goto_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public finishBurst()V
    .registers 3

    .line 2334
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2335
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->requestFinishBurstShot(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public flushRecording(Z)V
    .registers 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 2721
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    .line 2722
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoStabilizer()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_1f

    .line 2723
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->INTELLIGENT_ACTIVE:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 2724
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->setIntelligentActiveTriggerToFlush(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    :cond_1f
    return-void
.end method

.method public forceFlushRecordingRequest(Z)Ljava/util/Optional;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2739
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    .line 2740
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoStabilizer()Ljava/lang/String;

    move-result-object v0

    .line 2741
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->INTELLIGENT_ACTIVE:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    if-eqz p1, :cond_20

    .line 2743
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->forceFlushRecording(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    goto :goto_2a

    .line 2745
    :cond_20
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraDeviceThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$6;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$6;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2754
    :cond_2a
    :goto_2a
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorderLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2755
    :try_start_2d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->getRecordingTimeMillis()J

    move-result-wide v0

    .line 2756
    monitor-exit p1
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3d

    .line 2757
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    return-object p1

    :catchall_3d
    move-exception v0

    .line 2756
    :try_start_3e
    monitor-exit p1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method public getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;
    .registers 2

    .line 1911
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1913
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCameraInfo()Lcom/sonyericsson/android/camera/device/CameraInfo;
    .registers 2

    .line 1103
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 1107
    :cond_a
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getCameraInfo()Lcom/sonyericsson/android/camera/device/CameraInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCapturingSchemeCount()I
    .registers 2

    const/4 v0, 0x0

    .line 332
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCapturingSchemeCount(Z)I

    move-result v0

    return v0
.end method

.method public getCapturingSchemeCount(Z)I
    .registers 3

    .line 336
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCapturingSchemeQueue:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->getCount(Z)I

    move-result p1

    return p1
.end method

.method public getLatestFusionResult()Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;
    .registers 2

    .line 2963
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->getLatestFusionResult()Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;

    move-result-object v0

    return-object v0
.end method

.method public getMultiAutoFocusArea()Landroid/graphics/Rect;
    .registers 4

    .line 3201
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    .line 3202
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->createAfParametersResultChecker(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/os/Handler;)Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;

    move-result-object v0

    .line 3204
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->isAfParametersReflectedToDevice(Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x0

    return-object v0

    .line 3207
    :cond_14
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->getMultiAutoFocusArea()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getPreProcessState()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;
    .registers 2

    .line 1745
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    return-object v0
.end method

.method public getPreviewFrameProvider()Lcom/sonyericsson/android/camera/device/PreviewFrameProvider;
    .registers 2

    .line 4096
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->getPreviewFrameProvider()Lcom/sonyericsson/android/camera/device/PreviewFrameProvider;

    move-result-object v0

    return-object v0
.end method

.method public getSendPauseEventAndReleaseCameraTaskToken()Ljava/lang/Object;
    .registers 2

    .line 316
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->sSendPauseEventAndReleaseCameraTaskToken:Ljava/lang/Object;

    return-object v0
.end method

.method public getZoom()Ljava/lang/Float;
    .registers 2

    .line 1083
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1085
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getZoom()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public isBypassCameraNextShotAvailable()Z
    .registers 2

    .line 3896
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->isBypassCameraNextShotAvailable()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isCameraAvailable()Z
    .registers 3

    monitor-enter p0

    .line 859
    :try_start_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsCameraAvailable:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 860
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    if-eq v0, v1, :cond_1c

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 861
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_READY:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1f

    if-ne v0, v1, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v0, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 v0, 0x1

    .line 859
    :goto_1d
    monitor-exit p0

    return v0

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isCameraDeviceStatusReady()Z
    .registers 3

    .line 2477
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_READY:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isCameraDisabled()Z
    .registers 2

    .line 1679
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsCameraDisabled:Z

    return v0
.end method

.method public isCameraFront()Z
    .registers 3

    .line 1920
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public isObjectTrackingRunning()Z
    .registers 2

    .line 2967
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->isObjectTrackingRunning()Z

    move-result v0

    return v0
.end method

.method public isPreCaptureOnGoing()Z
    .registers 3

    .line 1740
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_SHUTTER_DONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public isPreScanOnGoing()Z
    .registers 3

    .line 1736
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_SCAN_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isRecorderWorking()Z
    .registers 7

    .line 2988
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2989
    :try_start_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 2990
    monitor-exit v0

    return v2

    .line 2991
    :cond_a
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isRecording()Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    .line 2992
    invoke-interface {v1}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isPaused()Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    .line 2993
    invoke-interface {v1}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isStopping()Z

    move-result v1

    if-nez v1, :cond_24

    .line 2994
    monitor-exit v0

    return v2

    :cond_24
    const/4 v1, 0x1

    .line 2996
    new-array v3, v1, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invoked isRecorderWorking() isRecording:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    .line 2997
    invoke-interface {v5}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isRecording()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isPaused:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    .line 2998
    invoke-interface {v5}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isPaused()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isStopping:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    .line 2999
    invoke-interface {v5}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isStopping()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 2996
    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3000
    monitor-exit v0

    return v1

    :catchall_61
    move-exception v1

    .line 3001
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_3 .. :try_end_63} :catchall_61

    throw v1
.end method

.method public isRecording()Z
    .registers 2

    .line 2980
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsRecording:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized openCamera(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;
    .registers 9

    monitor-enter p0

    .line 1056
    :try_start_1
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_19

    .line 1057
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p3, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    .line 1058
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-eq v0, v3, :cond_17

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-ne v0, v3, :cond_19

    :cond_17
    move v0, v1

    goto :goto_1a

    :cond_19
    move v0, v2

    .line 1063
    :goto_1a
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v3, v4, p1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->openCamera(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Z)V

    .line 1064
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mTemporaryThumbnailCapture:Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;->initialize()V

    .line 1067
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->clearAllSettings()V

    .line 1069
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-ne p1, v0, :cond_58

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLoadSettingsThread:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLoadSettingsThread:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

    .line 1070
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_58

    .line 1071
    :cond_3d
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p2, p3, v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLoadSettingsThread:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

    .line 1072
    iget-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLoadSettingsThread:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

    const-string v0, "LoadSettingsThread"

    invoke-virtual {p3, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->setName(Ljava/lang/String;)V

    .line 1073
    iget-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLoadSettingsThread:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

    const/16 v0, 0xa

    invoke-virtual {p3, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->setPriority(I)V

    .line 1074
    iget-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLoadSettingsThread:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->start()V

    .line 1077
    :cond_58
    sget-boolean p3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p3, :cond_7c

    new-array p3, v1, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invoked mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " quick-launch:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v2

    invoke-static {p3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1079
    :cond_7c
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;
    :try_end_7e
    .catchall {:try_start_1 .. :try_end_7e} :catchall_80

    monitor-exit p0

    return-object p1

    :catchall_80
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public pauseRecording()V
    .registers 3

    .line 2864
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2866
    :cond_d
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PauseRecorderTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PauseRecorderTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;)V

    .line 2867
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraDeviceThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public playOnShutterDoneSound()V
    .registers 3

    .line 356
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mShutterFeedback:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;->getSoundOnShutterDone()Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->playCameraActionSound(Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;Z)V

    return-void
.end method

.method public playSound(I)V
    .registers 7

    .line 344
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1e

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1e
    packed-switch p1, :pswitch_data_2e

    goto :goto_2d

    .line 350
    :pswitch_22
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->START_VIDEO_RECORDING:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->playCameraActionSound(Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;Z)V

    goto :goto_2d

    .line 347
    :pswitch_28
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->SHUTTER_CLICK:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->playCameraActionSound(Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;Z)V

    :goto_2d
    return-void

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_28
        :pswitch_22
    .end packed-switch
.end method

.method public pollPreCaptureRequest()Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;
    .registers 2

    .line 340
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCapturingSchemeQueue:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->pollPreCaptureRequest()Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public preCapture()Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;
    .registers 5

    .line 1709
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1711
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 1713
    invoke-static {}, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;->createDefault()Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    move-result-object v0

    return-object v0

    .line 1717
    :cond_1a
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->createPreCaptureSavingRequest(Lcom/sonyericsson/android/camera/device/CameraParameters;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object v0

    .line 1720
    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->FAST_PRE_CAPTURE:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/PerfLog;->transit()V

    .line 1721
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->changePreProcessStateTo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V

    .line 1724
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->requestSnapshot(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;I)V

    .line 1726
    invoke-static {}, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;->createDefault()Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mShutterFeedback:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    .line 1728
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->shouldPlayShutterSound(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1729
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mShutterFeedback:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;->getSoundOnCaptureRequest()Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->playCameraActionSound(Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;Z)V

    .line 1732
    :cond_48
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mShutterFeedback:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    return-object v0
.end method

.method public declared-synchronized preloadCamera(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;
    .registers 12

    monitor-enter p0

    .line 953
    :try_start_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBypassCameraAvailable()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 954
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_14

    const-string p1, "Camera is already preloaded."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 955
    :cond_14
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_8a

    monitor-exit p0

    return-object p1

    :cond_18
    const/4 v0, 0x0

    if-nez p2, :cond_23

    :try_start_1b
    const-string v1, "com.sonyericsson.android.camera.shared_preferences"

    .line 960
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreferences:Landroid/content/SharedPreferences;
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_8a

    .line 966
    :cond_23
    :try_start_23
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mInitControllerTask:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;->getLatch()Ljava/util/concurrent/CountDownLatch;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;->access$1700(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_2c} :catch_81
    .catchall {:try_start_23 .. :try_end_2c} :catchall_8a

    .line 972
    :try_start_2c
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_RELEASED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-eq p1, v1, :cond_37

    .line 973
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->NOT_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->changePreProcessStateTo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V

    :cond_37
    if-eqz p4, :cond_3f

    .line 978
    sget-object p3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 979
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    move-object v4, p1

    goto :goto_42

    .line 981
    :cond_3f
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    move-object v4, p1

    .line 983
    :goto_42
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    .line 985
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v6, 0x1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->openBypassCamera(Landroid/content/SharedPreferences;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 988
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_7a

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invoked mode:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " fast-capture:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 990
    :cond_7a
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->cancelCloseBypassCameraTimeoutTask()V

    .line 991
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;
    :try_end_7f
    .catchall {:try_start_2c .. :try_end_7f} :catchall_8a

    monitor-exit p0

    return-object p1

    :catch_81
    move-exception p1

    :try_start_82
    const-string p2, "InitControllerTask is interrupted."

    .line 968
    invoke-static {p2, p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_87
    .catchall {:try_start_82 .. :try_end_87} :catchall_8a

    const/4 p1, 0x0

    .line 969
    monitor-exit p0

    return-object p1

    :catchall_8a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public prepareBurst()V
    .registers 3

    .line 2329
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2330
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->requestPrepareBurstShot(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public declared-synchronized prepareCamera(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;Z)Z
    .registers 13

    monitor-enter p0

    .line 1004
    :try_start_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->loadCheckList(Landroid/content/Context;)V

    .line 1007
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    .line 1009
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_37

    const-string p1, "Use of camera is prohibited by device policy."

    .line 1010
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    .line 1011
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_33

    const-string p1, "Camera is disabled, so this request was refused."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1012
    :cond_33
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsCameraDisabled:Z
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_8a

    .line 1013
    monitor-exit p0

    return v2

    .line 1015
    :cond_37
    :try_start_37
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsCameraDisabled:Z

    .line 1017
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    .line 1018
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mFastCaptureSetting:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    .line 1020
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->createCameraActionSound()V

    .line 1022
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBypassCameraAvailable()Z

    move-result p1

    if-nez p1, :cond_72

    .line 1023
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isBypassCameraImageReaderSupported()Z

    move-result p1

    if-nez p1, :cond_60

    .line 1026
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreferences:Landroid/content/SharedPreferences;

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    const/4 v7, 0x0

    move-object v4, p3

    move-object v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->openBypassCamera(Landroid/content/SharedPreferences;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    goto :goto_6f

    .line 1029
    :cond_60
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mFastCaptureSetting:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    const/4 v7, 0x0

    move-object v4, p3

    move-object v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->openBypassCamera(Landroid/content/SharedPreferences;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 1032
    :goto_6f
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->cancelCloseBypassCameraTimeoutTask()V

    .line 1035
    :cond_72
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p1

    if-eqz p1, :cond_83

    .line 1036
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->setIsLaunchAndCapture(Z)V

    .line 1040
    :cond_83
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->initializeCaptureRequest(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    :try_end_88
    .catchall {:try_start_37 .. :try_end_88} :catchall_8a

    .line 1042
    monitor-exit p0

    return v1

    :catchall_8a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public prepareCaptureImageReader(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;)V
    .registers 4

    .line 3885
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3886
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->prepareCaptureImageReader(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;)V

    return-void
.end method

.method public prepareRecorder(Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;ZLcom/sonyericsson/android/camera/recorder/RecordingProfile;Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;)V
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p4

    .line 2536
    iget-object v3, v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorderLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2537
    :try_start_9
    iget-object v4, v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    if-eqz v4, :cond_24

    iget-object v4, v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    invoke-interface {v4}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isStopping()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 2538
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_22

    const-string v0, "Recorder is stopping, so this request is refused."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2539
    :cond_22
    monitor-exit v3

    return-void

    .line 2541
    :cond_24
    monitor-exit v3
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_182

    .line 2543
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isRecorderReady()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 2544
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_38

    const-string v0, "Recorder is already ready, so this request is refused."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_38
    return-void

    .line 2549
    :cond_39
    iput-object v0, v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    .line 2551
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->getExtraOutput()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_4e

    .line 2553
    new-instance v3, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 2556
    :cond_4e
    iget-object v4, v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {v1, v4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v4

    if-nez v4, :cond_57

    return-void

    .line 2560
    :cond_57
    new-instance v13, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;

    iget-object v6, v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mRecorderListener:Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;

    .line 2564
    invoke-virtual/range {p4 .. p4}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getProgressInterval()I

    move-result v8

    .line 2566
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object v5

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-ne v5, v7, :cond_6b

    move v10, v14

    goto :goto_6c

    :cond_6b
    move v10, v15

    .line 2567
    :goto_6c
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoStabilizer()Ljava/lang/String;

    move-result-object v11

    .line 2568
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getSlowMotion()Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    move-result-object v12

    move-object v5, v13

    move-object/from16 v7, p2

    move/from16 v9, p3

    invoke-direct/range {v5 .. v12}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;-><init>(Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;IZZLjava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;)V

    .line 2570
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->releaseRecorder()V

    .line 2572
    new-instance v7, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$4;

    invoke-direct {v7, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$4;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    .line 2577
    new-instance v6, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$5;

    invoke-direct {v6, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$5;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    .line 2583
    iget-object v5, v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {v1, v5}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v5

    .line 2588
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    .line 2594
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v10

    .line 2593
    invoke-static {v10, v5}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSuperSlowFrameRate(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)J

    move-result-wide v10

    long-to-int v10, v10

    .line 2596
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v11

    .line 2595
    invoke-static {v11, v5}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSuperSlowFrameNum(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)J

    move-result-wide v11

    long-to-int v11, v11

    move-object v5, v8

    move-object v8, v9

    move-object v9, v13

    .line 2587
    invoke-static/range {v5 .. v11}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory;->create(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Landroid/os/Handler;Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;II)Lcom/sonyericsson/android/camera/recorder/RecorderController;

    move-result-object v5

    move-object/from16 v6, p5

    .line 2599
    invoke-interface {v5, v6}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->setStorageWriteNotifier(Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;)V

    .line 2601
    new-instance v6, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$SetRecorderTask;

    invoke-direct {v6, v1, v5}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$SetRecorderTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/recorder/RecorderController;)V

    .line 2602
    iget-object v5, v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraDeviceThreadHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz v2, :cond_171

    .line 2611
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getSlowMotion()Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    move-result-object v5

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-eq v5, v6, :cond_d7

    .line 2613
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sonyericsson/cameracommon/utility/RecordingUtil;->isAudioPolicyActive(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_d7

    move v5, v14

    goto :goto_d8

    :cond_d7
    move v5, v15

    .line 2615
    :goto_d8
    sget-boolean v6, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v6, :cond_fc

    new-array v6, v14, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invoked uri:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " audio-record-enabled:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v15

    invoke-static {v6}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2618
    :cond_fc
    new-instance v6, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;

    iget-object v7, v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    invoke-direct {v6, v3, v2, v7}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;-><init>(Landroid/net/Uri;Lcom/sonyericsson/android/camera/recorder/RecordingProfile;Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;)V

    iget-object v3, v0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    .line 2620
    invoke-virtual {v6, v3}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;->setLocation(Landroid/location/Location;)Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;

    move-result-object v3

    iget-object v6, v0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->mVideoStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    iget-wide v6, v6, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->maxDurationMills:J

    long-to-int v6, v6

    .line 2621
    invoke-virtual {v3, v6}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;->setMaxDuration(I)Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;

    move-result-object v3

    iget-object v6, v0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->mVideoStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    iget-wide v6, v6, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->maxFileSizeBytes:J

    .line 2622
    invoke-virtual {v3, v6, v7}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;->setMaxFileSize(J)Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;

    move-result-object v3

    .line 2623
    invoke-virtual {v3, v5}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;->setMicrophoneEnabled(Z)Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;

    move-result-object v3

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    .line 2624
    invoke-virtual {v3, v0}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;->setOrientationHint(I)Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;

    move-result-object v0

    .line 2625
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne v3, v4, :cond_131

    goto :goto_132

    :cond_131
    move v14, v15

    :goto_132
    invoke-virtual {v0, v14}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;->setHdr(Z)Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;

    move-result-object v0

    .line 2626
    invoke-virtual/range {p4 .. p4}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getDataSpace()Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;->setDataSpace(Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;)Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;

    move-result-object v0

    .line 2627
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;->build()Lcom/sonyericsson/android/camera/recorder/RecorderParameters;

    move-result-object v0

    .line 2629
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v2, :cond_14f

    const-string v2, "post PrepareRecorderTask"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2630
    :cond_14f
    new-instance v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PrepareRecorderTask;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PrepareRecorderTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/recorder/RecorderParameters;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;)V

    .line 2632
    iget-object v0, v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraDeviceThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2634
    iget-object v0, v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v2, v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->setGpsLocation(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 2635
    iget-object v0, v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v2, v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->setOrientation(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    return-void

    :cond_171
    const-string v0, "prepareRecorder() : VideoProfile is null."

    .line 2605
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 2606
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "VideoProfile is null."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_182
    move-exception v0

    .line 2541
    :try_start_183
    monitor-exit v3
    :try_end_184
    .catchall {:try_start_183 .. :try_end_184} :catchall_182

    throw v0
.end method

.method public release()V
    .registers 2

    .line 930
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraServiceMonitor:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraServiceMonitor;

    if-eqz v0, :cond_a

    .line 931
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopCameraServiceAvailability()V

    const/4 v0, 0x0

    .line 932
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraServiceMonitor:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraServiceMonitor;

    :cond_a
    return-void
.end method

.method public releaseRecorder()V
    .registers 2

    .line 2649
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    const/4 v0, 0x0

    .line 2650
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->releaseRecorder(Z)V

    return-void
.end method

.method public releaseRecorderOnError()V
    .registers 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 2658
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    const/4 v0, 0x0

    .line 2660
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->releaseRecorder(Z)V

    .line 2662
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 2663
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    .line 2662
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->isBypassCameraUsedForRecording(Lcom/sonyericsson/android/camera/device/CameraParameters;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 2664
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->setRepeatingRequestForStopRecording(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    :cond_24
    return-void
.end method

.method public removeOnPreviewStartedListener()V
    .registers 2

    .line 679
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->removeOnPreviewStartedListener()V

    return-void
.end method

.method public requestCrop(Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;ILcom/sonyericsson/android/camera/device/SurfaceCropper$OnCropListener;Landroid/os/Handler;)V
    .registers 6

    .line 5352
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mSurfaceCropper:Lcom/sonyericsson/android/camera/device/SurfaceCropper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->request(Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;ILcom/sonyericsson/android/camera/device/SurfaceCropper$OnCropListener;Landroid/os/Handler;)V

    return-void
.end method

.method public requestOnePreviewFrame()V
    .registers 3

    .line 2886
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2887
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->requestOnePreviewFrame(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public requestStartRecording()V
    .registers 3

    .line 2698
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    .line 2699
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->isBypassCameraUsedForRecording(Lcom/sonyericsson/android/camera/device/CameraParameters;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 2700
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->setRepeatingRequestForStartRecording(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    goto :goto_1d

    .line 2702
    :cond_14
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->startRecording()V

    .line 2703
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onRecordingStarted(Z)V

    .line 2708
    :goto_1d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mRecorderListener:Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;->setSavingRequestBuilder(Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;)V

    return-void
.end method

.method public requestTemporaryThumbnail(II)V
    .registers 6

    .line 2318
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mTemporaryThumbnailCapture:Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$TemporaryThumbnailResultCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$TemporaryThumbnailResultCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;ILcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;->createThumbnail(ILcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture$ResultCallback;)V

    return-void
.end method

.method public resetFocusAreaAndRect(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V
    .registers 7

    .line 3183
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_16

    .line 3185
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_15

    const-string p1, "This session has been closed, so this request was refused."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15
    return-void

    .line 3188
    :cond_16
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_34

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_34
    if-eqz p1, :cond_46

    .line 3190
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isMultiAutoFocusSupported()Z

    move-result v1

    if-eqz v1, :cond_3f

    const-string p1, "multi"

    goto :goto_43

    .line 3191
    :cond_3f
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->getFocusArea()Ljava/lang/String;

    move-result-object p1

    .line 3190
    :goto_43
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusArea(Ljava/lang/String;)V

    .line 3193
    :cond_46
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setFocusRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public resetFocusModeAndCommit()V
    .registers 6

    .line 2424
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_16

    .line 2426
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_15

    const-string v0, "This session has been closed, so this request was refused."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15
    return-void

    .line 2431
    :cond_16
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxNumFocusAreas(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2f

    .line 2433
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2e

    const-string v0, "Focus position change is not supported, so this request is refused."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2e
    return-void

    .line 2437
    :cond_2f
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_50

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked current-focus-mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFocusMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_50
    const-string v1, "manual"

    .line 2439
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_67

    .line 2443
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    .line 2442
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getDefaultFocusModeForFastCapturePhoto(Lcom/sonyericsson/android/camera/device/CameraParameters;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/lang/String;

    move-result-object v1

    .line 2441
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusMode(Ljava/lang/String;)V

    .line 2447
    :cond_67
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isMultiAutoFocusSupported()Z

    move-result v1

    if-eqz v1, :cond_70

    const-string v1, "multi"

    goto :goto_72

    :cond_70
    const-string v1, "center"

    :goto_72
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusArea(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2449
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusRectangles(Ljava/util/List;)V

    .line 2450
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public resumeRecording()V
    .registers 3

    .line 2871
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2873
    :cond_d
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ResumeRecorderTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ResumeRecorderTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;)V

    .line 2874
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraDeviceThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public savePreloadSettings(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/setting/LastSettings;Z)V
    .registers 10

    .line 3850
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_16

    .line 3852
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_15

    const-string p1, "This session has been closed, so this request was refused."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15
    return-void

    .line 3855
    :cond_16
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_48

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " onde-shot:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " preview-size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3857
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 3855
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3859
    :cond_48
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_67

    if-eqz p4, :cond_51

    goto :goto_67

    .line 3862
    :cond_51
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {p3, p4, p1}, Lcom/sonyericsson/android/camera/setting/LastSettings;->setPreviewSize(Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 3863
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FAST_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, p1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-virtual {p3, p1}, Lcom/sonyericsson/android/camera/setting/LastSettings;->setFastCapture(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;)V

    .line 3864
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/setting/LastSettings;->save()V

    return-void

    :cond_67
    :goto_67
    return-void
.end method

.method public setActivityForeground(Z)V
    .registers 2

    .line 3811
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mActivityIsInForeground:Z

    return-void
.end method

.method public setAmberBlueColorAndCommit(I)V
    .registers 6

    .line 1754
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_16

    .line 1756
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_15

    const-string p1, "This session has been closed, so this request was refused."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15
    return-void

    .line 1760
    :cond_16
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setAwbColorCompensationAb(I)V

    .line 1762
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_37

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1764
    :cond_37
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public setBokehStrengthAndCommit(F)V
    .registers 3

    .line 3773
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_16

    .line 3775
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_15

    const-string p1, "This session has been closed, so this request was refused."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15
    return-void

    .line 3778
    :cond_16
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setBokehStrength(F)V

    .line 3779
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public setBrightnessAndCommit(I)V
    .registers 6

    .line 1776
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_16

    .line 1778
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_15

    const-string p1, "This session has been closed, so this request was refused."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15
    return-void

    .line 1781
    :cond_16
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setExposureCompensation(I)V

    .line 1783
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_37

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1785
    :cond_37
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 7

    .line 3597
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_28

    new-array v0, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " video:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3599
    :cond_28
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_3e

    .line 3601
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_3d

    const-string p1, "Camera is not available."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3d
    return-void

    .line 3605
    :cond_3e
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v3

    if-eq v2, v3, :cond_51

    .line 3606
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    .line 3607
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->requestApplyBypassCameraMode()V

    .line 3610
    :cond_51
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p1, v2, :cond_62

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-eq v2, v3, :cond_62

    .line 3612
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setVideoHdr(Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)V

    :cond_62
    const/4 v2, 0x0

    .line 3615
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setZoom(F)V

    .line 3617
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mSurfaceCropper:Lcom/sonyericsson/android/camera/device/SurfaceCropper;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->setIsFront(Z)V

    .line 3618
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mSurfaceCropper:Lcom/sonyericsson/android/camera/device/SurfaceCropper;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->setCameraId(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    .line 3620
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    if-nez p1, :cond_8b

    .line 3623
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedPreviewFpsRange(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object p1

    .line 3622
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/FpsProvider;->getFpsRangeForStillPreview(Ljava/util/List;)[I

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setFpsRange([I)V

    .line 3625
    :cond_8b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->setLogicalMultiCameraMode(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    .line 3630
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->triggerRestartPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    return-void
.end method

.method public setDelayedRunnable(Ljava/lang/Runnable;)V
    .registers 3

    .line 874
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mDelayRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_d

    .line 876
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraServiceMonitor:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraServiceMonitor;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraServiceMonitor;->runAfterCameraAvailable(Ljava/lang/Runnable;)V
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraServiceMonitor;->access$1500(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraServiceMonitor;Ljava/lang/Runnable;)V

    .line 877
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->cancelCameraAvailableTimeoutTask()V

    goto :goto_2e

    .line 879
    :cond_d
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getUnavailableCameraId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_26

    .line 881
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_20

    const-string v0, "Unavailable camera is nothing."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 882
    :cond_20
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2e

    .line 884
    :cond_26
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->openAndCloseCamera(Ljava/lang/String;)V

    .line 885
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->requestCameraAvailableTimeoutTask()V

    :goto_2e
    return-void
.end method

.method public setDisplayFlashMode(Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;)V
    .registers 7

    .line 1822
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 1827
    :cond_9
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isDisplayFlashModeSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 1829
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_20

    const-string p1, "Display flash is not supported, so this request was refused."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_20
    return-void

    .line 1833
    :cond_21
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isPreCaptureOnGoing()Z

    move-result v1

    if-nez v1, :cond_68

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isPreScanOnGoing()Z

    move-result v1

    if-eqz v1, :cond_2e

    goto :goto_68

    .line 1840
    :cond_2e
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedFlashModes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object v1

    .line 1841
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 1842
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->DISPLAY_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    .line 1844
    :cond_42
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_60

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1845
    :cond_60
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFlashMode(Ljava/lang/String;)V

    return-void

    .line 1835
    :cond_68
    :goto_68
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_75

    const-string p1, "Capturing for quick launch is on going, so this request was refused."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_75
    return-void
.end method

.method public setDisplayFlashModeAndCommit(Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;)V
    .registers 6

    .line 1868
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isPreCaptureOnGoing()Z

    move-result v0

    if-nez v0, :cond_36

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isPreScanOnGoing()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_36

    .line 1873
    :cond_d
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1874
    :cond_2b
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setDisplayFlashMode(Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;)V

    .line 1875
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void

    :cond_36
    :goto_36
    return-void
.end method

.method public setDistortionCorrection(Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;)V
    .registers 7

    .line 3731
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_16

    .line 3733
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_15

    const-string p1, "This session has been closed, so this request was refused."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15
    return-void

    .line 3736
    :cond_16
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_34

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3739
    :cond_34
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isDistortionCorrectionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 3741
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;

    .line 3744
    :cond_40
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setDistortionCorrection(Ljava/lang/String;)V

    return-void
.end method

.method public setEv(Lcom/sonyericsson/android/camera/configuration/parameters/Ev;)V
    .registers 7

    .line 3138
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_16

    .line 3140
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_15

    const-string p1, "This session has been closed, so this request was refused."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15
    return-void

    .line 3143
    :cond_16
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_34

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3144
    :cond_34
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->getIntValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setExposureCompensation(I)V

    return-void
.end method

.method public setFaultDetectionCameraCallback(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectionCameraCallback;)V
    .registers 2

    .line 5316
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mFaultDetectionCameraCallback:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectionCameraCallback;

    return-void
.end method

.method public setFlashMode(Lcom/sonyericsson/android/camera/configuration/parameters/Flash;)V
    .registers 7

    .line 1793
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_16

    .line 1795
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_15

    const-string p1, "This session has been closed, so this request was refused."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15
    return-void

    .line 1799
    :cond_16
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isLaunchAndCapture()Z

    move-result v1

    if-eqz v1, :cond_23

    return-void

    .line 1802
    :cond_23
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isDisplayFlashModeSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1804
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_3a

    const-string p1, "Display flash is supported, so this request was refused."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3a
    return-void

    .line 1808
    :cond_3b
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedFlashModes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object v1

    .line 1809
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 1810
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .line 1813
    :cond_4f
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_6d

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1814
    :cond_6d
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFlashMode(Ljava/lang/String;)V

    return-void
.end method

.method public setFlashModeAndCommit(Lcom/sonyericsson/android/camera/configuration/parameters/Flash;)V
    .registers 3

    .line 1853
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isPreCaptureOnGoing()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isPreScanOnGoing()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_18

    .line 1859
    :cond_d
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setFlashMode(Lcom/sonyericsson/android/camera/configuration/parameters/Flash;)V

    .line 1860
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void

    .line 1855
    :cond_18
    :goto_18
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_25

    const-string p1, "Capturing for quick launch is on going, so this request was refused."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_25
    return-void
.end method

.method public setFocusMode(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V
    .registers 7

    .line 3155
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_16

    .line 3157
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_15

    const-string p1, "This session has been closed, so this request was refused."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15
    return-void

    .line 3160
    :cond_16
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_3e

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "video:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3162
    :cond_3e
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    if-eqz v1, :cond_4a

    .line 3163
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->getValueForVideo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_51

    .line 3165
    :cond_4a
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusMode(Ljava/lang/String;)V

    .line 3169
    :goto_51
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFocusSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    if-nez v0, :cond_65

    const-string v0, "Camera focus isn\'t supported. FocusArea is not set."

    .line 3170
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_68

    .line 3173
    :cond_65
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->resetFocusAreaAndRect(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    .line 3177
    :goto_68
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_73

    .line 3178
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopObjectTracking()V

    :cond_73
    return-void
.end method

.method public setFocusPositionAndCommit(Landroid/graphics/Rect;)V
    .registers 8

    .line 2396
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_16

    .line 2398
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_15

    const-string p1, "This session has been closed, so this request was refused."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15
    return-void

    .line 2403
    :cond_16
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxNumFocusAreas(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2f

    .line 2405
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_2e

    const-string p1, "Focus position change is not supported, so this request is refused."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2e
    return-void

    .line 2410
    :cond_2f
    new-instance v1, Landroid/graphics/Rect;

    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convertFromViewToActiveArray(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const-string v3, "user"

    .line 2413
    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusArea(Ljava/lang/String;)V

    .line 2414
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v3, :cond_5e

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invoked rect:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2416
    :cond_5e
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2417
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2418
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusRectangles(Ljava/util/List;)V

    .line 2420
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public setFocusRange(Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;I)V
    .registers 8

    .line 3669
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_16

    .line 3671
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_15

    const-string p1, "This session has been closed, so this request was refused."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15
    return-void

    .line 3674
    :cond_16
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_4a

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " video:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " focus-mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3675
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFocusMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 3674
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3678
    :cond_4a
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    if-eqz v1, :cond_4f

    return-void

    .line 3682
    :cond_4f
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->AF:Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    if-ne p1, v1, :cond_69

    .line 3683
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFocusSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p1

    if-eqz p1, :cond_63

    const-string p1, "continuous-picture"

    .line 3684
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_68

    :cond_63
    const-string p1, "fixed"

    .line 3686
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusMode(Ljava/lang/String;)V

    :goto_68
    return-void

    :cond_69
    const-string v1, "manual"

    .line 3692
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    .line 3693
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopObjectTracking()V

    :cond_78
    const-string v1, "manual"

    .line 3696
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusMode(Ljava/lang/String;)V

    .line 3697
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isMultiAutoFocusSupported()Z

    move-result v1

    if-eqz v1, :cond_86

    const-string v1, "multi"

    goto :goto_88

    :cond_86
    const-string v1, "center"

    :goto_88
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusArea(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3699
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusRectangles(Ljava/util/List;)V

    .line 3700
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->DEFAULT:Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    if-ne v1, p1, :cond_9d

    .line 3702
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraParameters;->MANUAL_FOCUS_1M:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusRange(F)V

    goto :goto_a8

    .line 3704
    :cond_9d
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->calculateFocusRange(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;I)F

    move-result p1

    .line 3705
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFocusRange(F)V

    :goto_a8
    return-void
.end method

.method public setFusionMode(Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;)V
    .registers 7

    .line 3715
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_16

    .line 3717
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_15

    const-string p1, "This session has been closed, so this request was refused."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15
    return-void

    .line 3720
    :cond_16
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_34

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3722
    :cond_34
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setFusionMode(Ljava/lang/String;)V

    return-void
.end method

.method public setGpsLocation(Landroid/location/Location;)V
    .registers 3

    .line 3046
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_16

    .line 3048
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_15

    const-string p1, "This session has been closed, so this request was refused."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15
    return-void

    .line 3052
    :cond_16
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setGpsData(Landroid/location/Location;)V

    .line 3053
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->setGpsLocation(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    return-void
.end method

.method public setHdr(Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;)V
    .registers 7

    .line 3250
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_16

    .line 3252
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_15

    const-string p1, "This session has been closed, so this request was refused."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15
    return-void

    .line 3255
    :cond_16
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_34

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3257
    :cond_34
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setStillHdr(Ljava/lang/String;)V

    return-void
.end method

.method public setIsInShutdownNow(Z)V
    .registers 2

    .line 3815
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsInShutdownNow:Z

    return-void
.end method

.method public setIso(Lcom/sonyericsson/android/camera/configuration/parameters/Iso;)V
    .registers 8

    .line 3261
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_16

    .line 3263
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_15

    const-string p1, "This session has been closed, so this request was refused."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15
    return-void

    .line 3267
    :cond_16
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_40

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " shutter-speed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3268
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getShutterSpeed()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 3267
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3269
    :cond_40
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getIsoValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setIso(I)V

    .line 3272
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    if-ne p1, v1, :cond_65

    .line 3273
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->getShutterSpeedInNanos()J

    move-result-wide v1

    .line 3274
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getShutterSpeed()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_5f

    const-string p1, "auto"

    .line 3275
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setAeMode(Ljava/lang/String;)V

    goto :goto_94

    :cond_5f
    const-string p1, "shutter-prio"

    .line 3277
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setAeMode(Ljava/lang/String;)V

    goto :goto_94

    .line 3280
    :cond_65
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->getShutterSpeedInNanos()J

    move-result-wide v1

    .line 3281
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getShutterSpeed()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_79

    const-string p1, "iso-prio"

    .line 3282
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setAeMode(Ljava/lang/String;)V

    goto :goto_94

    .line 3286
    :cond_79
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedAeModes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object p1

    const-string v1, "semi-auto"

    .line 3287
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8f

    const-string p1, "semi-auto"

    .line 3288
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setAeMode(Ljava/lang/String;)V

    goto :goto_94

    .line 3290
    :cond_8f
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setShutterSpeed(Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;)V

    :goto_94
    return-void
.end method

.method public setLowPower()V
    .registers 3

    .line 3073
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_16

    .line 3075
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_15

    const-string v0, "This session has been closed, so this request was refused."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15
    return-void

    .line 3078
    :cond_16
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_23

    const-string v1, "invoked"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_23
    const-string v1, "low"

    .line 3079
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setPowerMode(Ljava/lang/String;)V

    .line 3080
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public setMetering(Lcom/sonyericsson/android/camera/configuration/parameters/Metering;)V
    .registers 7

    .line 3297
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_16

    .line 3299
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_15

    const-string p1, "This session has been closed, so this request was refused."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15
    return-void

    .line 3303
    :cond_16
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_34

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3304
    :cond_34
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setMeteringMode(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3307
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setMeteringArea(Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/configuration/parameters/Metering;)V

    return-void
.end method

.method public setMeteringAreaAndCommit(Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/configuration/parameters/Metering;)V
    .registers 7

    .line 3319
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1e
    const/4 v0, 0x0

    if-eqz p1, :cond_2e

    .line 3323
    new-instance v0, Landroid/graphics/Rect;

    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convertFromViewToActiveArray(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 3326
    :cond_2e
    invoke-direct {p0, v0, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setMeteringArea(Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/configuration/parameters/Metering;)V

    .line 3327
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public setMultiFrameNrMode(Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;)V
    .registers 7

    .line 3788
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_16

    .line 3790
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_15

    const-string p1, "This session has been closed, so this request was refused."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15
    return-void

    .line 3796
    :cond_16
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isMultiFameNrModesSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-nez v1, :cond_21

    return-void

    .line 3800
    :cond_21
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_3f

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3802
    :cond_3f
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/MultiFrameNrMode;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setMultiFrameNrMode(Ljava/lang/String;)V

    return-void
.end method

.method public setOnPreviewStartedListener(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreviewStartedListener;)V
    .registers 3

    .line 672
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->setOnPreviewStartedListener(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreviewStartedListener;)V

    return-void
.end method

.method public setOrientation(I)V
    .registers 4

    .line 3019
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_16

    .line 3021
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_15

    const-string p1, "This session has been closed, so this request was refused."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15
    return-void

    .line 3025
    :cond_16
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBypassCameraAvailable()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 3026
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_29

    const-string p1, "Camera is not ready yet, so this request was refused."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_29
    return-void

    .line 3029
    :cond_2a
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setRotation(I)V

    .line 3030
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->setOrientation(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 3031
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->isBypassCameraUsedForRecording(Lcom/sonyericsson/android/camera/device/CameraParameters;)Z

    move-result p1

    if-nez p1, :cond_40

    .line 3032
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->updateRepeatingRequest(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    goto :goto_48

    .line 3036
    :cond_40
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->setRepeatingRequestForPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    :goto_48
    return-void
.end method

.method public setPredictiveCapture(Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;)V
    .registers 5

    .line 3095
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_16

    .line 3097
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_15

    const-string p1, "This session has been closed, so this request was refused."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15
    return-void

    .line 3102
    :cond_16
    sget-object v1, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isAlwaysPredictiveCaptureEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string p1, "PredictiveCapture setting has been overwritten by DebugParameterUtils."

    .line 3103
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    .line 3104
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    .line 3106
    :cond_2d
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setPredictiveCapture(Ljava/lang/String;)V

    .line 3107
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->getCaptureNum()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setPredictiveCaptureNum(I)V

    return-void
.end method

.method public setPredictiveCaptureAndCommit(Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;)V
    .registers 7

    .line 3111
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_40

    .line 3112
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 3114
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPredictiveCapture()Ljava/lang/String;

    move-result-object v0

    .line 3115
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    const/4 v1, 0x1

    .line 3116
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PredictiveCapture setting was changed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3118
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 3116
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3122
    :cond_40
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setPredictiveCapture(Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;)V

    .line 3123
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Ljava/lang/String;)V

    return-void
.end method

.method public setPreviewSizeAndFpsRangeForVideo(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)V
    .registers 8

    .line 3457
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked cameraId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " video-size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3458
    :cond_26
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 3459
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2, p3}, Lcom/sonyericsson/android/camera/device/CameraController;->getVideoPreviewSize(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 3462
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setPreviewSize(Landroid/graphics/Rect;)V

    .line 3465
    invoke-static {p2, p3}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameRate(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)I

    move-result p2

    .line 3464
    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera/device/FpsProvider;->getFpsRangeForVideoPreview(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;I)[I

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setFpsRange([I)V

    return-void

    .line 3467
    :cond_43
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setPreviewSurface(Landroid/view/Surface;Landroid/util/Size;)V
    .registers 7

    .line 1955
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked surface:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1956
    :cond_1e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, v2, v1, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->setSurface(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ZLandroid/view/Surface;)V

    .line 1958
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mTemporaryThumbnailCapture:Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;

    .line 1960
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 1961
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v2

    .line 1962
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isCameraFront()Z

    move-result v3

    .line 1958
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;->setSurface(Landroid/view/Surface;IIZ)V

    .line 1965
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mSurfaceCropper:Lcom/sonyericsson/android/camera/device/SurfaceCropper;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->setPreviewSurface(Landroid/view/Surface;Landroid/util/Size;)V

    return-void
.end method

.method public setResolution(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)V
    .registers 8

    .line 3359
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_16

    .line 3361
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_15

    const-string p1, "This session has been closed, so this request was refused."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15
    return-void

    .line 3364
    :cond_16
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_52

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked cameraId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " resolution:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " prev-resolution:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3365
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPictureSize()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " video:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 3364
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3368
    :cond_52
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPictureSize()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v2

    if-eq v1, v2, :cond_65

    .line 3371
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    if-nez v1, :cond_65

    .line 3372
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->requestApplyBypassCameraMode()V

    .line 3376
    :cond_65
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 3377
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 3376
    invoke-virtual {v1, v2, p1, v3}, Lcom/sonyericsson/android/camera/device/CameraController;->getPhotoPreviewSize(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_82

    .line 3378
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    if-nez v1, :cond_82

    .line 3379
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setPictureSize(Landroid/graphics/Rect;)V

    .line 3380
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setPreviewSize(Landroid/graphics/Rect;)V

    return-void

    .line 3382
    :cond_82
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setSelectedFacePosition(II)V
    .registers 7

    .line 2345
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked x:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " y:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2346
    :cond_26
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_3c

    .line 2348
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_3b

    const-string p1, "Camera is not available."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3b
    return-void

    .line 2352
    :cond_3c
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFaceDetectionAvailable(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 2353
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->resetFocusModeAndCommit()V

    .line 2354
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, v1, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->setSelectedFacePosition(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;II)V

    goto :goto_5a

    :cond_51
    const-string p1, "Face detection is not available."

    .line 2357
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    :goto_5a
    return-void
.end method

.method public setShutterSpeed(Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;)V
    .registers 7

    .line 3635
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->resetCaptureDuration()V

    .line 3636
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_19

    .line 3638
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_18

    const-string p1, "This session has been closed, so this request was refused."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_18
    return-void

    .line 3641
    :cond_19
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_43

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "iso:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getIso()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3643
    :cond_43
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->getShutterSpeedInNanos()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setShutterSpeed(J)V

    .line 3646
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    if-ne p1, v1, :cond_66

    .line 3647
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getIsoValue()I

    move-result p1

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getIso()I

    move-result v1

    if-ne p1, v1, :cond_60

    const-string p1, "auto"

    .line 3648
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setAeMode(Ljava/lang/String;)V

    goto :goto_93

    :cond_60
    const-string p1, "iso-prio"

    .line 3650
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setAeMode(Ljava/lang/String;)V

    goto :goto_93

    .line 3653
    :cond_66
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getIsoValue()I

    move-result p1

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getIso()I

    move-result v1

    if-ne p1, v1, :cond_78

    const-string p1, "shutter-prio"

    .line 3654
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setAeMode(Ljava/lang/String;)V

    goto :goto_93

    .line 3658
    :cond_78
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedAeModes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object p1

    const-string v1, "semi-auto"

    .line 3659
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8e

    const-string p1, "semi-auto"

    .line 3660
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setAeMode(Ljava/lang/String;)V

    goto :goto_93

    .line 3662
    :cond_8e
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setIso(Lcom/sonyericsson/android/camera/configuration/parameters/Iso;)V

    :goto_93
    return-void
.end method

.method public setShutterTrigger(Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;)V
    .registers 6

    .line 1932
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1933
    :cond_1e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 1934
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getShutterTrigger()Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    move-result-object v2

    if-eq v2, p1, :cond_36

    .line 1935
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setShutterTrigger(Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;)V

    .line 1936
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->triggerRestartPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    :cond_36
    return-void
.end method

.method public setSlowMotion(Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;)V
    .registers 7

    .line 3539
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_16

    .line 3541
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_15

    const-string p1, "This session has been closed, so this request was refused."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15
    return-void

    .line 3544
    :cond_16
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_3e

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " video:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3546
    :cond_3e
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getSlowMotion()Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    move-result-object v1

    if-ne v1, p1, :cond_45

    return-void

    .line 3550
    :cond_45
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    if-eqz v1, :cond_4e

    .line 3551
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->requestApplyBypassCameraMode()V

    .line 3554
    :cond_4e
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setSlowMotion(Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;)V

    .line 3555
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$10;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_84

    .line 3566
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMinExposureTimeLimit(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)J

    move-result-wide v1

    .line 3565
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setExposureTimeLimit(J)V

    goto :goto_83

    :pswitch_68
    const-wide v1, 0x41cdcd6500000000L    # 1.0E9

    .line 3559
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    .line 3560
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v3

    .line 3559
    invoke-static {p1, v3}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSuperSlowFrameRate(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v1, v3

    .line 3558
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setExposureTimeLimit(J)V

    :goto_83
    return-void

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_68
        :pswitch_68
    .end packed-switch
.end method

.method public setSoftSkin(Ljava/lang/Boolean;)V
    .registers 6

    .line 3407
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_31

    .line 3408
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_30

    new-array p1, v2, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This request was refused. video:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " cameraId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3410
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    .line 3408
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_30
    return-void

    .line 3414
    :cond_31
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_47

    .line 3416
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_46

    const-string p1, "This session has been closed, so this request was refused."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_46
    return-void

    .line 3420
    :cond_47
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7d

    .line 3421
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_6b

    new-array p1, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3422
    :cond_6b
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    .line 3423
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxSoftSkinLevel(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->getLevel(I)I

    move-result p1

    .line 3422
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setSoftSkin(I)V

    goto :goto_ac

    .line 3425
    :cond_7d
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_9b

    new-array p1, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3426
    :cond_9b
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    .line 3427
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxSoftSkinLevel(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->getLevel(I)I

    move-result p1

    .line 3426
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setSoftSkin(I)V

    :goto_ac
    return-void
.end method

.method public setStateMachine(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 6

    .line 1941
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked prev:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " new:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1942
    :cond_28
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 1943
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    if-eqz p1, :cond_30

    .line 1944
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachineForSavingRequest:Lcom/sonyericsson/android/camera/controller/StateMachine;

    :cond_30
    return-void
.end method

.method public setTorchAndCommit(Z)V
    .registers 6

    .line 3061
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isPreCaptureOnGoing()Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isPreScanOnGoing()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_3d

    .line 3067
    :cond_d
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked on:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2b
    if-eqz p1, :cond_30

    .line 3068
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->LED_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    goto :goto_32

    :cond_30
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->LED_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    :goto_32
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setFlashMode(Lcom/sonyericsson/android/camera/configuration/parameters/Flash;)V

    .line 3069
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void

    .line 3063
    :cond_3d
    :goto_3d
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_4a

    const-string p1, "Capturing for quick launch is on going, so this request was refused."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4a
    return-void
.end method

.method public setUltraLowPower()V
    .registers 3

    .line 3084
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_16

    .line 3086
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_15

    const-string v0, "This session has been closed, so this request was refused."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15
    return-void

    .line 3089
    :cond_16
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_23

    const-string v1, "invoked"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_23
    const-string v1, "ultra-low"

    .line 3090
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setPowerMode(Ljava/lang/String;)V

    .line 3091
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public setVideoHdr(Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)V
    .registers 7

    .line 3819
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_16

    .line 3821
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_15

    const-string p1, "This session has been closed, so this request was refused."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15
    return-void

    .line 3824
    :cond_16
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_40

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " prev:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3826
    :cond_40
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object v1

    if-eq v1, p1, :cond_55

    .line 3827
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->requestApplyBypassCameraMode()V

    .line 3828
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setVideoHdr(Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)V

    .line 3829
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, v0, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->triggerRestartPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    :cond_55
    return-void
.end method

.method public setVideoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V
    .registers 7

    if-nez p1, :cond_c

    const-string p1, "Ilegal video size is specified."

    .line 3498
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void

    .line 3502
    :cond_c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_22

    .line 3504
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_21

    const-string p1, "This session has been closed, so this request was refused."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_21
    return-void

    .line 3507
    :cond_22
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_56

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " prev:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " video:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3510
    :cond_56
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v1

    if-eq v1, p1, :cond_65

    .line 3511
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    if-eqz v1, :cond_65

    .line 3512
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->requestApplyBypassCameraMode()V

    .line 3518
    :cond_65
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setVideoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    .line 3519
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    if-eqz v1, :cond_77

    .line 3520
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object v0

    invoke-virtual {p0, v1, p1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setPreviewSizeAndFpsRangeForVideo(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)V

    :cond_77
    return-void
.end method

.method public setVideoStabilizer(Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;Z)V
    .registers 10

    .line 3432
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_16

    .line 3434
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_15

    const-string p1, "This session has been closed, so this request was refused."

    .line 3435
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15
    return-void

    .line 3439
    :cond_16
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v2

    .line 3440
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object v5

    move-object v1, p0

    move-object v3, p1

    move v6, p2

    .line 3439
    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getVideoStabilizerDeviceValue(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;Z)Ljava/lang/String;

    move-result-object p2

    .line 3442
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_59

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " video:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " deviceValue:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3445
    :cond_59
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoStabilizationMode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_66

    .line 3446
    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setVideoStabilizationMode(Ljava/lang/String;)V

    .line 3451
    :cond_66
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->triggerRestartPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    .line 3452
    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setVideoStabilizer(Ljava/lang/String;)V

    return-void
.end method

.method public setWhiteBalance(Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;)V
    .registers 7

    .line 3525
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_16

    .line 3527
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_15

    const-string p1, "This session has been closed, so this request was refused."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15
    return-void

    .line 3530
    :cond_16
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_34

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3532
    :cond_34
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setWhiteBalance(Ljava/lang/String;)V

    return-void
.end method

.method public setZoom(F)V
    .registers 3

    .line 2370
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 2374
    :cond_9
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setZoom(F)V

    return-void
.end method

.method public setZoomAndCommit(F)V
    .registers 3

    .line 2386
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setZoom(F)V

    .line 2387
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public startAutoFlashMonitoring()V
    .registers 4

    .line 2945
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2946
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->startAutoFlashMonitoring(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public startBokehMonitoring()V
    .registers 3

    .line 2929
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2930
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->startBokehMonitoring(Landroid/os/Handler;)V

    return-void
.end method

.method public startFaceDetection()V
    .registers 4

    .line 1882
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1883
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->startFaceDetection(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/os/Handler;)V

    return-void
.end method

.method public startFusionMonitoring()V
    .registers 3

    .line 2913
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2914
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->startFusionMonitoring(Landroid/os/Handler;)V

    return-void
.end method

.method public startObjectTracking(Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingCallback;)V
    .registers 7

    .line 2897
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2898
    :cond_1e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->startObjectTracking(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/os/Handler;Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingCallback;)V

    return-void
.end method

.method public startPreview()V
    .registers 4

    .line 1973
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1974
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->setRepeatingRequestForPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    .line 1975
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->startPreview(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    return-void
.end method

.method public startSceneRecognition()V
    .registers 4

    .line 1898
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1899
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->startSceneRecognition(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/os/Handler;)V

    return-void
.end method

.method public startSuperSlowMotion()V
    .registers 6

    .line 2806
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2807
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    instance-of v1, v0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;

    if-eqz v1, :cond_39

    .line 2812
    :try_start_13
    check-cast v0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->startSuperSlow()Z
    :try_end_18
    .catch Lcom/sonyericsson/android/camera/recorder/RecorderException; {:try_start_13 .. :try_end_18} :catch_19

    goto :goto_38

    :catch_19
    move-exception v0

    const/4 v1, 0x1

    .line 2814
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startSuperSlowMotion() failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :goto_38
    return-void

    .line 2808
    :cond_39
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Current recorder doesn\'t support slow motion"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopAudioRecording()V
    .registers 3

    .line 324
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 325
    :try_start_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    if-eqz v1, :cond_c

    .line 326
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->stopAudioRecording()V

    .line 328
    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public stopAutoFlashMonitoring()V
    .registers 3

    .line 2953
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2954
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->stopAutoFlashMonitoring(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public stopBokehMonitoring()V
    .registers 2

    .line 2937
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2938
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->stopBokehMonitoring()V

    return-void
.end method

.method public stopFaceDetection()V
    .registers 3

    .line 1890
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1891
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->stopFaceDetection(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public stopFusionMonitoring()V
    .registers 2

    .line 2921
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2922
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->stopFusionMonitoring()V

    return-void
.end method

.method public stopObjectTracking()V
    .registers 3

    .line 2905
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2906
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->stopObjectTracking(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public stopPreview()V
    .registers 5

    .line 1984
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked recording:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isRecorderWorking()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1986
    :cond_22
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopFaceDetection()V

    .line 1987
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopSceneRecognition()V

    .line 1989
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isRecorderWorking()Z

    move-result v0

    if-nez v0, :cond_35

    .line 1990
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->stopPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 1993
    :cond_35
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->CLOSE_INITIAL_RESPONSE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 1995
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->CLOSE_INITIAL_RESPONSE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->stopMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    return-void
.end method

.method public stopPreviewSynchronized()V
    .registers 5

    .line 2004
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked recording:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isRecorderWorking()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2005
    :cond_22
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isRecorderWorking()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 2006
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->stopPreviewTaskSynchronized(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    :cond_2f
    return-void
.end method

.method public stopRecording(Z)Ljava/util/Optional;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 2824
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCapturingSchemeQueue:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->awaitAllSnapshot(ZZ)V

    .line 2826
    :cond_8
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->cancelChangeProviderDeviceStatusToRecording()V

    .line 2827
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraDeviceThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$8;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$8;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2836
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_22

    const-string p1, "post StopRecorderTask"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2837
    :cond_22
    new-instance p1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StopRecorderTask;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StopRecorderTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;)V

    .line 2838
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraDeviceThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2841
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorderLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2842
    :try_start_30
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->getRecordingTimeMillis()J

    move-result-wide v0

    .line 2843
    monitor-exit p1
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    .line 2844
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    return-object p1

    :catchall_40
    move-exception v0

    .line 2843
    :try_start_41
    monitor-exit p1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v0
.end method

.method public stopSceneRecognition()V
    .registers 3

    .line 1906
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1907
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->stopSceneRecognition(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public takePicture(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;
    .registers 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2224
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_22

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked datetaken:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->getDateTaken()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2226
    :cond_22
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->updateFlashIndicator(Z)V

    .line 2227
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_36

    .line 2229
    invoke-static {}, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;->createDefault()Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    move-result-object p1

    return-object p1

    .line 2231
    :cond_36
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBypassCameraSupported()Z

    move-result v2

    if-eqz v2, :cond_92

    .line 2232
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 2233
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPredictiveCaptureNum()I

    move-result v0

    .line 2232
    invoke-virtual {v2, v3, p1, v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->requestSnapshot(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;I)V

    .line 2235
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBurst(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Z

    move-result p1

    if-nez p1, :cond_65

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isCameraFront()Z

    move-result p1

    if-nez p1, :cond_65

    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCaptureStartPoint:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CaptureStartPoint;

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CaptureStartPoint;->INVALID:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CaptureStartPoint;

    if-ne p1, v0, :cond_5a

    goto :goto_65

    .line 2239
    :cond_5a
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getRemainingCaptureDuration()I

    move-result p1

    .line 2240
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;->create(I)Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mShutterFeedback:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    goto :goto_6b

    .line 2237
    :cond_65
    :goto_65
    invoke-static {}, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;->createDefault()Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mShutterFeedback:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    .line 2243
    :goto_6b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p1

    .line 2244
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isLaunchAndCapture()Z

    move-result p1

    .line 2245
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->shouldPlayShutterSound(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result v0

    if-eqz v0, :cond_88

    if-nez p1, :cond_88

    .line 2246
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mShutterFeedback:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;->getSoundOnCaptureRequest()Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->playCameraActionSound(Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;Z)V

    .line 2249
    :cond_88
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mFaultDetectionCameraCallback:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectionCameraCallback;

    if-eqz p1, :cond_8f

    .line 2250
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectionCameraCallback;->onSnapshotRequested()V

    .line 2253
    :cond_8f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mShutterFeedback:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    return-object p1

    .line 2287
    :cond_92
    invoke-static {}, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;->createDefault()Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    move-result-object p1

    return-object p1
.end method

.method public updateRecorder(Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;Z)V
    .registers 7

    .line 2497
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked recorder-is-ready:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isRecorderReady()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "shutter-sound-requested:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2499
    :cond_2a
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isRecorderReady()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 2500
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    .line 2501
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->setLocation(Landroid/location/Location;)V

    .line 2502
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->setOrientationHint(I)V

    .line 2503
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->mVideoStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    iget-wide v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->maxDurationMills:J

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->setMaxDurationMillis(J)V

    .line 2504
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->mVideoStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    iget-wide v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->maxFileSizeBytes:J

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->setMaxFileSizeBytes(J)V

    .line 2505
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->setOutputFilePath(Ljava/lang/String;)V

    .line 2506
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->setVideoSavingRequest(Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;)V

    .line 2507
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;

    invoke-interface {p1, p2}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->setUserSoundSetting(Z)V

    :cond_69
    return-void
.end method

.method public updateRecordingProfile(Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)V
    .registers 3

    .line 2642
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->updateRecordingProfile(Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)V

    return-void
.end method
