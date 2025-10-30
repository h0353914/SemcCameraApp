.class Lcom/sonyericsson/android/camera/device/CameraController;
.super Ljava/lang/Object;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/device/CameraController$ImageSourceLifeCycleAdapterImpl;,
        Lcom/sonyericsson/android/camera/device/CameraController$RequestSnapshotReadyAfterAfParametersReflected;,
        Lcom/sonyericsson/android/camera/device/CameraController$OnCropRegionCallback;,
        Lcom/sonyericsson/android/camera/device/CameraController$CropRegionCallback;,
        Lcom/sonyericsson/android/camera/device/CameraController$OnPreviewResultCallback;,
        Lcom/sonyericsson/android/camera/device/CameraController$OnAutoFlashResultChangedCallback;,
        Lcom/sonyericsson/android/camera/device/CameraController$OnBokehResultChangedCallback;,
        Lcom/sonyericsson/android/camera/device/CameraController$OnFusionResultChangedCallback;,
        Lcom/sonyericsson/android/camera/device/CameraController$OnFaceDetectionCallback;,
        Lcom/sonyericsson/android/camera/device/CameraController$OnSceneModeChangedCallback;,
        Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameProviderImpl;,
        Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;,
        Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;,
        Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;,
        Lcom/sonyericsson/android/camera/device/CameraController$OneShotCaptureTask;,
        Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;,
        Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;,
        Lcom/sonyericsson/android/camera/device/CameraController$SetRecordingRequestTask;,
        Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;,
        Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;,
        Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;,
        Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;,
        Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;,
        Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;,
        Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;,
        Lcom/sonyericsson/android/camera/device/CameraController$OpenAndCloseCameraTask;,
        Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;,
        Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;,
        Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;,
        Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;,
        Lcom/sonyericsson/android/camera/device/CameraController$YuvCaptureImageAvailableListener;,
        Lcom/sonyericsson/android/camera/device/CameraController$JpegCaptureImageAvailableListener;
    }
.end annotation


# static fields
.field private static final CAPTURE_REQUEST_DUMP_TYPE:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;


# instance fields
.field private final mApplicationContext:Landroid/content/Context;

.field private mAutoFlashResultChecker:Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;

.field private mBokehResultChecker:Lcom/sonyericsson/android/camera/device/BokehResultChecker;

.field private final mCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private final mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

.field private mCameraDeviceStatusThreadHandler:Landroid/os/Handler;

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mCaptureImageReader:Landroid/media/ImageReader;

.field private mCaptureRequestDumper:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;

.field private mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

.field private final mCaptureResultCheckerLock:Ljava/lang/Object;

.field private final mCaptureResultCheckerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;",
            ">;"
        }
    .end annotation
.end field

.field private mCaptureResultHolder:Lcom/sonyericsson/android/camera/device/CaptureResultHolder;

.field private mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mCaptureSessionCallbackExecutor:Ljava/util/concurrent/ExecutorService;

.field private mConfigStateCallback:Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

.field private mCropRegionChecker:Lcom/sonyericsson/android/camera/device/CropRegionChecker;

.field private mCurrentDeviceStatus:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

.field private final mCurrentDeviceStatusLock:Ljava/lang/Object;

.field private mFaceDetectionResultChecker:Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;

.field private mFramedropProfiler:Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;

.field private mFusionResultChecker:Lcom/sonyericsson/android/camera/device/FusionResultChecker;

.field private final mImageReaderHandler:Landroid/os/Handler;

.field private mIntelligentActiveFlushRequested:Z

.field private mIsCameraParametersReady:Z

.field private mIsCaptureSessionNormalConfiguring:Z

.field private mIsPendingRepeatingRequest:Z

.field private mObjectTrackingResultChecker:Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;

.field private mOldCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private final mOnAutoFlashChangedCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnAutoFlashResultChangedCallback;

.field private final mOnBokehConditionChangedCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnBokehResultChangedCallback;

.field private final mOnFaceDetectionCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnFaceDetectionCallback;

.field private final mOnFusionConditionChangedCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnFusionResultChangedCallback;

.field private final mOnPreviewResultCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnPreviewResultCallback;

.field private final mOnPreviewStartedListenerLock:Ljava/lang/Object;

.field private final mOnPreviewStartedListenerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreviewStartedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnSceneModeChangedCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnSceneModeChangedCallback;

.field private final mOneShotCaptureTaskPendingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/device/CameraController$OneShotCaptureTask;",
            ">;"
        }
    .end annotation
.end field

.field private mOutputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;

.field private mPrevPreviewSessionRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

.field private mPreviewFrameProvider:Lcom/sonyericsson/android/camera/device/PreviewFrameProvider;

.field private final mPreviewFrameReceiver:Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;

.field private mPreviewRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

.field private mPreviewResultChecker:Lcom/sonyericsson/android/camera/device/PreviewResultChecker;

.field private mPreviewSurface:Landroid/view/Surface;

.field private mPreviousLogicalCameraMode:I

.field private mProfile:Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

.field private mRecordingSurface:Landroid/view/Surface;

.field private mRepeatingRequestState:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

.field private final mRepeatingRequestStateLock:Ljava/lang/Object;

.field private mSceneConditionRecognitionResultChecker:Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;

.field private mStateCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;

.field private mStreamingImageReader:Landroid/media/ImageReader;

.field private mVideoThumbnailImageReader:Landroid/media/ImageReader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 144
    sget-object v0, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;->DIFF:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraController;->CAPTURE_REQUEST_DUMP_TYPE:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V
    .registers 8

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 148
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 151
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOldCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 154
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 155
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    .line 156
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultHolder:Lcom/sonyericsson/android/camera/device/CaptureResultHolder;

    .line 159
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceStatusThreadHandler:Landroid/os/Handler;

    .line 160
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSessionCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    .line 170
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;

    .line 171
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mRecordingSurface:Landroid/view/Surface;

    .line 178
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mObjectTrackingResultChecker:Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;

    .line 179
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mSceneConditionRecognitionResultChecker:Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;

    .line 181
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFaceDetectionResultChecker:Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;

    .line 182
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFusionResultChecker:Lcom/sonyericsson/android/camera/device/FusionResultChecker;

    .line 183
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mBokehResultChecker:Lcom/sonyericsson/android/camera/device/BokehResultChecker;

    .line 184
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mAutoFlashResultChecker:Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;

    .line 185
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewResultChecker:Lcom/sonyericsson/android/camera/device/PreviewResultChecker;

    .line 186
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCropRegionChecker:Lcom/sonyericsson/android/camera/device/CropRegionChecker;

    .line 192
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_RELEASED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentDeviceStatus:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    const/4 v1, 0x0

    .line 196
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mIsCameraParametersReady:Z

    .line 203
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnPreviewStartedListenerLock:Ljava/lang/Object;

    .line 209
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;->NONE:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    iput-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mRepeatingRequestState:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    .line 210
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mRepeatingRequestStateLock:Ljava/lang/Object;

    .line 215
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mIsPendingRepeatingRequest:Z

    .line 220
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mIsCaptureSessionNormalConfiguring:Z

    .line 367
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOneShotCaptureTaskPendingList:Ljava/util/List;

    .line 2984
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFramedropProfiler:Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;

    .line 2985
    iput v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviousLogicalCameraMode:I

    .line 3506
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mIntelligentActiveFlushRequested:Z

    .line 420
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mApplicationContext:Landroid/content/Context;

    .line 423
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "StatusCallback"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 425
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 426
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceStatusThreadHandler:Landroid/os/Handler;

    const-string v1, "CameraCaptureSessionCallback"

    .line 427
    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSessionCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    .line 431
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$OnSceneModeChangedCallback;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController$OnSceneModeChangedCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnSceneModeChangedCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnSceneModeChangedCallback;

    .line 432
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$OnFaceDetectionCallback;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController$OnFaceDetectionCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnFaceDetectionCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnFaceDetectionCallback;

    .line 433
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$OnFusionResultChangedCallback;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController$OnFusionResultChangedCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnFusionConditionChangedCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnFusionResultChangedCallback;

    .line 434
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$OnBokehResultChangedCallback;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController$OnBokehResultChangedCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnBokehConditionChangedCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnBokehResultChangedCallback;

    .line 435
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$OnAutoFlashResultChangedCallback;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController$OnAutoFlashResultChangedCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnAutoFlashChangedCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnAutoFlashResultChangedCallback;

    .line 436
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$OnPreviewResultCallback;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController$OnPreviewResultCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnPreviewResultCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnPreviewResultCallback;

    .line 438
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentDeviceStatusLock:Ljava/lang/Object;

    .line 439
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    .line 441
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;

    invoke-direct {v1, v0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;-><init>(Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewFrameReceiver:Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;

    .line 442
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    .line 443
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnPreviewStartedListenerSet:Ljava/util/Set;

    .line 445
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    .line 446
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    const-string p2, "camera"

    .line 449
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 450
    new-instance p1, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    .line 451
    new-instance p1, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultHolder:Lcom/sonyericsson/android/camera/device/CaptureResultHolder;

    .line 453
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "CameraImageReader"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 455
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mImageReaderHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOldCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method static synthetic access$002(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOldCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method static synthetic access$102(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mStateCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;)Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mStateCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/os/Handler;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceStatusThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraManager;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V
    .registers 4

    .line 117
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/CameraController;->onCameraOtherErrorDetected(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/List;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOneShotCaptureTaskPendingList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/content/Context;
    .registers 1

    .line 117
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2600(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureResultHolder;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultHolder:Lcom/sonyericsson/android/camera/device/CaptureResultHolder;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestDumper:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;

    return-object p0
.end method

.method static synthetic access$2702(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;)Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestDumper:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/params/OutputConfiguration;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOutputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;

    return-object p0
.end method

.method static synthetic access$2802(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/params/OutputConfiguration;)Landroid/hardware/camera2/params/OutputConfiguration;
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOutputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$2902(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/view/Surface;)Landroid/view/Surface;
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mRecordingSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$3002(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/view/Surface;)Landroid/view/Surface;
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mRecordingSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/PreviewFrameProvider;)Lcom/sonyericsson/android/camera/device/PreviewFrameProvider;
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewFrameProvider:Lcom/sonyericsson/android/camera/device/PreviewFrameProvider;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/sonyericsson/android/camera/device/CameraController;)V
    .registers 1

    .line 117
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->releaseStreamingImageReader()V

    return-void
.end method

.method static synthetic access$3300(Lcom/sonyericsson/android/camera/device/CameraController;)V
    .registers 1

    .line 117
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->releaseVideoThumbnailImageReader()V

    return-void
.end method

.method static synthetic access$3400(Lcom/sonyericsson/android/camera/device/CameraController;)V
    .registers 1

    .line 117
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->releaseCaptureImageReader()V

    return-void
.end method

.method static synthetic access$4100(Lcom/sonyericsson/android/camera/device/CameraController;II)V
    .registers 3

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->prepareCaptureImageReader(II)V

    return-void
.end method

.method static synthetic access$4200(Lcom/sonyericsson/android/camera/device/CameraController;II)V
    .registers 3

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->prepareVideoThumbnailImageReader(II)V

    return-void
.end method

.method static synthetic access$4400(Lcom/sonyericsson/android/camera/device/CameraController;II)V
    .registers 3

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->prepareStreamingImageReader(II)V

    return-void
.end method

.method static synthetic access$4500(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mConfigStateCallback:Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

    return-object p0
.end method

.method static synthetic access$4502(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;)Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mConfigStateCallback:Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mStreamingImageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mVideoThumbnailImageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureImageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/recorder/RecordingProfile;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mProfile:Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSessionCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/sonyericsson/android/camera/device/CameraController;)Z
    .registers 1

    .line 117
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mIsCaptureSessionNormalConfiguring:Z

    return p0
.end method

.method static synthetic access$5202(Lcom/sonyericsson/android/camera/device/CameraController;Z)Z
    .registers 2

    .line 117
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mIsCaptureSessionNormalConfiguring:Z

    return p1
.end method

.method static synthetic access$5400(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/lang/Object;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CropRegionChecker;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCropRegionChecker:Lcom/sonyericsson/android/camera/device/CropRegionChecker;

    return-object p0
.end method

.method static synthetic access$5502(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CropRegionChecker;)Lcom/sonyericsson/android/camera/device/CropRegionChecker;
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCropRegionChecker:Lcom/sonyericsson/android/camera/device/CropRegionChecker;

    return-object p1
.end method

.method static synthetic access$5600(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/Set;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$5800()Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;
    .registers 1

    .line 117
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraController;->CAPTURE_REQUEST_DUMP_TYPE:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/lang/Object;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mRepeatingRequestStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$6000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mRepeatingRequestState:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    return-object p0
.end method

.method static synthetic access$6002(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;)Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mRepeatingRequestState:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    return-object p1
.end method

.method static synthetic access$6600(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFramedropProfiler:Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;

    return-object p0
.end method

.method static synthetic access$6602(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;)Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFramedropProfiler:Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;

    return-object p1
.end method

.method static synthetic access$7400(Lcom/sonyericsson/android/camera/device/CameraController;)Z
    .registers 1

    .line 117
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mIsPendingRepeatingRequest:Z

    return p0
.end method

.method static synthetic access$7402(Lcom/sonyericsson/android/camera/device/CameraController;Z)Z
    .registers 2

    .line 117
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mIsPendingRepeatingRequest:Z

    return p1
.end method

.method static synthetic access$7500(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .registers 2

    .line 117
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->notifyOnPreviewStarted(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method static synthetic access$7600(Lcom/sonyericsson/android/camera/device/CameraController;)I
    .registers 1

    .line 117
    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviousLogicalCameraMode:I

    return p0
.end method

.method static synthetic access$7602(Lcom/sonyericsson/android/camera/device/CameraController;I)I
    .registers 2

    .line 117
    iput p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviousLogicalCameraMode:I

    return p1
.end method

.method static synthetic access$7700(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewFrameReceiver:Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;

    return-object p0
.end method

.method static synthetic access$8100(Lcom/sonyericsson/android/camera/device/CameraController;)Z
    .registers 1

    .line 117
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isSceneRecognitionRunning()Z

    move-result p0

    return p0
.end method

.method static synthetic access$8200(Lcom/sonyericsson/android/camera/device/CameraController;)Z
    .registers 1

    .line 117
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isFaceDetectionRunning()Z

    move-result p0

    return p0
.end method

.method static acquireYuvByteBuffer(Landroid/media/Image;[B)Landroid/util/Pair;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/Image;",
            "[B)",
            "Landroid/util/Pair<",
            "Ljava/nio/ByteBuffer;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 4474
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8d

    .line 4475
    array-length v2, v0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_d

    goto/16 :goto_8d

    .line 4480
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getWidth()I

    move-result v2

    .line 4481
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getHeight()I

    move-result v3

    .line 4482
    rem-int/lit8 v4, v2, 0x2

    const/4 v5, 0x1

    const/4 v15, 0x0

    if-nez v4, :cond_66

    rem-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_20

    goto :goto_66

    .line 4489
    :cond_20
    aget-object v1, v0, v15

    .line 4490
    aget-object v4, v0, v5

    const/4 v5, 0x2

    .line 4491
    aget-object v0, v0, v5

    .line 4496
    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v8

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v9

    .line 4497
    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v11

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v12

    .line 4498
    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v14

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v0

    move-object/from16 v4, p1

    move v5, v2

    move v6, v3

    move v1, v15

    move v15, v0

    .line 4494
    invoke-static/range {v4 .. v15}, Lcom/sonyericsson/android/camera/device/ImageConverter;->convertFromYuv420_888ToNv21([BIILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)V

    .line 4500
    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 4501
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 4503
    new-instance v4, Landroid/util/Pair;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v4, v0, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4

    :cond_66
    :goto_66
    move v0, v15

    .line 4483
    new-array v4, v5, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "YUV_420_888 image is invalid. Width("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") or/are Height("

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") is/are invalid."

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return-object v1

    :cond_8d
    :goto_8d
    const-string v0, "YUV_420_888 image is invalid. Planes are invalid."

    .line 4476
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return-object v1
.end method

.method private applyAmberBlueColor(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .registers 6

    .line 3986
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3987
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 3988
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 3989
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3988
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3990
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_AWB_COLOR_COMPENSATION_AB:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 3992
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getAwbColorCompensationAb()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 3990
    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_32
    return-void
.end method

.method private applyBokehMode(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .registers 4

    .line 4308
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getBokehMode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 4312
    :cond_7
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isBokehSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-nez v1, :cond_12

    return-void

    .line 4317
    :cond_12
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$BokehMode;->getApi2Value(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 4319
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_LOGICAL_MULTI_CAMERA_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_23
    return-void
.end method

.method private applyBokehStrength(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .registers 4

    if-nez p1, :cond_10

    .line 4326
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_f

    const-string p1, "Camera is not available."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_f
    return-void

    .line 4330
    :cond_10
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isBokehSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    if-nez v0, :cond_1b

    return-void

    .line 4335
    :cond_1b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_LOGICAL_MULTI_CAMERA_BOKEH_STRENGTH:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 4337
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getBokehStrength()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 4335
    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private applyDistortionCorrection(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .registers 4

    .line 4343
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getDistortionCorrection()Ljava/lang/String;

    move-result-object p1

    .line 4342
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$DistortionCorrection;->getApi2Value(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 4345
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_DISTORTION_CORRECTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method private applyEv(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .registers 4

    .line 4061
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 4062
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getExposureCompensation()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 4061
    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private applyExposureTimeLimit(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .registers 6

    .line 4066
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_EXPOSURE_TIME_LIMIT:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 4068
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getExposureTimeLimit()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 4066
    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private applyFlashMode(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .registers 7

    .line 3997
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FlashMode;->getApi2Value(Ljava/lang/String;)I

    move-result v0

    .line 3998
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getAeMode()Ljava/lang/String;

    move-result-object v1

    .line 3999
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFlashMode()Ljava/lang/String;

    move-result-object p1

    .line 3998
    invoke-static {v1, p1}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AeMode;->getApi2Value(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 4001
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    .line 4002
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 4001
    invoke-virtual {v1, v2, v4}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4003
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 4004
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4003
    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4005
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v2, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 4006
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 4005
    invoke-virtual {v1, v2, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4007
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private applyFocusMode(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .registers 16

    .line 4074
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;->getApi2Value(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4078
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFocusArea()Ljava/lang/String;

    move-result-object v1

    .line 4077
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;->getApi2Value(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 4081
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFocusRectangles()Ljava/util/List;

    move-result-object v2

    .line 4082
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 4083
    new-array v4, v3, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 4084
    sget-boolean v5, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_40

    new-array v5, v7, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setFocusRectangles() : rectangles = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    :cond_40
    move v5, v6

    :goto_41
    if-ge v5, v3, :cond_d7

    .line 4087
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    .line 4088
    sget-boolean v9, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v9, :cond_65

    new-array v9, v7, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setFocusRectangles() : area.rect = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v9}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    .line 4090
    :cond_65
    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7b

    .line 4091
    new-instance v8, Landroid/hardware/camera2/params/MeteringRectangle;

    .line 4092
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v9

    invoke-static {v9}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getActiveArraySize(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    aput-object v8, v4, v5

    goto :goto_b1

    .line 4095
    :cond_7b
    new-instance v8, Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v9, Landroid/graphics/Rect;

    .line 4097
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    .line 4098
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v11

    .line 4099
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->centerX()I

    move-result v12

    add-int/2addr v12, v7

    .line 4100
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->centerY()I

    move-result v13

    add-int/2addr v13, v7

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v8, v9, v7}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    aput-object v8, v4, v5

    .line 4105
    :goto_b1
    sget-boolean v8, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v8, :cond_d3

    new-array v8, v7, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setFocusRectangles() : rectangle = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v4, v5

    .line 4106
    invoke-virtual {v10}, Landroid/hardware/camera2/params/MeteringRectangle;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    .line 4105
    invoke-static {v8}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    :cond_d3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_41

    .line 4109
    :cond_d7
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4110
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3, v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4111
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFocusRange()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4112
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_AF_REGION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4114
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0, v4}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private applyFpsRange(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .registers 4

    .line 4244
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 4245
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFpsRange()Landroid/util/Range;

    move-result-object p1

    .line 4244
    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private applyFusionMode(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .registers 4

    .line 4300
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFusionMode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FusionMode;->getApi2Value(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 4302
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_FUSION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method private applyHdr(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .registers 4

    .line 4118
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isSceneRecognitionRunning()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 4122
    :cond_7
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getStillHdr()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$StillHdr;->getApi2Value(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 4124
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_STILL_HDR_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4126
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_STATISTICS_SCENE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    .line 4128
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 4126
    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_24
    return-void
.end method

.method private applyHighQualitySnapshotMode(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .registers 4

    .line 4365
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isHighQualitySnapshotModeAvailable(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 4368
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getHighQualitySnapshotMode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$HighQualitySnapshotMode;->getApi2Value(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 4370
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_HIGH_QUALITY_SNAPSHOT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1b
    return-void
.end method

.method private applyIso(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .registers 4

    .line 4134
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getIso()I

    move-result v0

    if-gtz v0, :cond_2e

    .line 4137
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedIsoRange(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/util/Range;

    move-result-object v0

    .line 4139
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedFusionIsoRange(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/util/Range;

    move-result-object p1

    .line 4140
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4142
    :cond_2e
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_SENSOR_SENSITIVITY_HINT:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 4143
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private applyMeteringArea(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .registers 9

    .line 4149
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getMeteringMode()Ljava/lang/String;

    move-result-object v0

    .line 4148
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;->getApi2Value(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4152
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getMeteringArea()Landroid/graphics/Rect;

    move-result-object v1

    .line 4153
    new-instance v2, Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    .line 4156
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v4, 0x0

    if-eqz v1, :cond_48

    new-array v1, v3, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "applyMeteringArea() : aeRegion = ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4157
    invoke-virtual {v2}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/hardware/camera2/params/MeteringRectangle;->getMeteringWeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 4156
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    .line 4159
    :cond_48
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 4160
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 4159
    invoke-virtual {v1, v5, v6}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4161
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v5, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_AE_REGION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v5, v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4163
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6d

    .line 4165
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    new-array v1, v3, [Landroid/hardware/camera2/params/MeteringRectangle;

    aput-object v2, v1, v4

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_8a

    .line 4168
    :cond_6d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    new-array v2, v3, [Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v3, Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v5, Landroid/graphics/Rect;

    .line 4170
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getActiveArraySize(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {v5, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {v3, v5, v4}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    aput-object v3, v2, v4

    .line 4168
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_8a
    return-void
.end method

.method private applyMultiFrameNrMode(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .registers 4

    .line 4422
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isMultiFameNrModesSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 4427
    :cond_b
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getMultiFrameNrMode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MultiFrameNrMode;->getApi2Value(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 4429
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_MULTI_FRAME_NR_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1c
    return-void
.end method

.method private applyOpticalStabilization(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .registers 4

    .line 4407
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isOpticalStabilizationSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 4408
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getBokehMode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c

    const/4 p1, 0x1

    .line 4409
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_21

    :cond_1c
    const/4 p1, 0x0

    .line 4411
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_21
    if-eqz p1, :cond_2a

    .line 4415
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_2a
    return-void
.end method

.method private applyParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Z
    .registers 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1126
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_6e

    .line 1127
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isCloseBypassCameraTaskRequested()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_6e

    .line 1132
    :cond_e
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getParameters()Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p1

    if-nez p1, :cond_1e

    const-string p1, "Parameters not ready."

    .line 1134
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return v0

    .line 1138
    :cond_1e
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyFocusMode(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 1139
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyIso(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 1140
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyShutterSpeed(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 1141
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyFlashMode(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 1142
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyExposureTimeLimit(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 1143
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyEv(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 1144
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyWhiteBalance(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 1145
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyAmberBlueColor(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 1146
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applySoftSkin(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 1147
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyHdr(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 1148
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyMeteringArea(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 1149
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyFpsRange(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 1150
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyFusionMode(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 1151
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyBokehMode(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 1152
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyBokehStrength(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 1153
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyDistortionCorrection(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 1154
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyOpticalStabilization(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 1156
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyPowerSaveMode(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 1158
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyZoom(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 1159
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applySavingRequest(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 1160
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyMultiFrameNrMode(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 1162
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyVagueControlMode(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 1163
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyHighQualitySnapshotMode(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 1164
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyVideoStabilizationMode(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 1165
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applySlowMotion(Lcom/sonyericsson/android/camera/device/CameraParameters;)V

    .line 1167
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->needCreatePreviewSession()Z

    move-result p1

    return p1

    :cond_6e
    :goto_6e
    return v0
.end method

.method private applyPowerSaveMode(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .registers 5

    .line 4043
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPowerMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;->getApi2Value(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4044
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v2, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_POWER_SAVE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4047
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3c

    .line 4049
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFaceDetectionAvailable(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 4050
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isFaceDetectionRunning()Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 4051
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 4052
    :try_start_2d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFaceDetectionResultChecker:Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4053
    monitor-exit p1
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_39

    const/4 p1, 0x0

    .line 4054
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFaceDetectionResultChecker:Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;

    goto :goto_3c

    :catchall_39
    move-exception v0

    .line 4053
    :try_start_3a
    monitor-exit p1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v0

    :cond_3c
    :goto_3c
    return-void
.end method

.method private applySavingRequest(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .registers 5

    .line 4278
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getRotation()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4279
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getGpsData()Landroid/location/Location;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private applyShutterSpeed(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .registers 6

    .line 4283
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getShutterSpeed()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_3e

    .line 4286
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMinShutterSpeed(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_1f

    .line 4287
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMinShutterSpeed(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)J

    move-result-wide v0

    goto :goto_33

    .line 4289
    :cond_1f
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v2

    .line 4288
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxShutterSpeed(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_33

    .line 4290
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxShutterSpeed(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)J

    move-result-wide v0

    .line 4293
    :cond_33
    :goto_33
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v2, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_SENSOR_EXPOSURE_TIME_HINT:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 4294
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 4293
    invoke-virtual {p1, v2, v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_3e
    return-void
.end method

.method private applySlowMotion(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .registers 4

    .line 4396
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSuperSlowMotionApi2Supported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 4398
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getSlowMotion()Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SlowMotionMode;->getApi2Value(Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 4399
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_SUPER_SLOW_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 4401
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 4399
    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_21
    return-void
.end method

.method private applySoftSkin(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .registers 4

    .line 4202
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_STILL_SKIN_SMOOTH_LEVEL:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 4204
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getSoftSkin()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 4202
    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private applyVagueControlMode(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .registers 4

    .line 4352
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isVagueControlModeAvailable(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 4355
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVagueControlMode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$VagueControlMode;->getApi2Value(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 4357
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_VAGUE_CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1b
    return-void
.end method

.method private applyVideoStabilizationMode(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .registers 5

    .line 4377
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isVideoStabilizationModeAvailable(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 4380
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoStabilizationMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$VideoStabilizationMode;->getVanillaValue(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 4382
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4387
    :cond_1b
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoStabilizationMode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$VideoStabilizationMode;->getVendorValue(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_2c

    .line 4389
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_2c
    return-void
.end method

.method private applyWhiteBalance(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .registers 5

    .line 4249
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    .line 4250
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4249
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4251
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getAwbColorCompensationAb()I

    move-result v0

    if-nez v0, :cond_25

    .line 4252
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 4253
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;->getApi2Value(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 4252
    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_25
    return-void
.end method

.method private applyZoom(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .registers 10

    .line 4011
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxZoomRatio(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    .line 4012
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getZoom()F

    move-result v2

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    .line 4013
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getActiveArraySize(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object p1

    .line 4014
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 4015
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_3c

    new-array v3, v5, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyZoom() : ActiveArraySize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    .line 4018
    :cond_3c
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr p1, v3

    div-float v0, v1, v0

    sub-float/2addr v1, v0

    mul-float/2addr p1, v1

    .line 4019
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    mul-float/2addr v0, v1

    float-to-double v6, p1

    .line 4020
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int p1, v6

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {v2, p1, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 4021
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_7a

    new-array p1, v5, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyZoom() : CropSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v4

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    .line 4022
    :cond_7a
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private createPreviewSession(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Z
    .registers 9

    .line 1200
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v0

    .line 1201
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_28

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_READY:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    if-ne v0, v1, :cond_f

    goto :goto_28

    .line 1225
    :cond_f
    new-array p1, v3, [Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot create preview session due to status: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return v2

    :cond_28
    :goto_28
    const/4 v0, 0x0

    if-nez p2, :cond_54

    .line 1205
    new-instance p2, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    invoke-direct {p2, p1, v0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    .line 1206
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v1

    if-eqz v1, :cond_54

    .line 1208
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne v4, v5, :cond_42

    move v4, v3

    goto :goto_43

    :cond_42
    move v4, v2

    :goto_43
    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->needVideoHdr(Z)V
    invoke-static {p2, v4}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->access$3700(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Z)V

    .line 1209
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getShutterTrigger()Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    move-result-object v1

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;->GESTURE_SHUTTER:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    if-ne v1, v4, :cond_50

    move v1, v3

    goto :goto_51

    :cond_50
    move v1, v2

    :goto_51
    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->needCapturedFrame(Z)V
    invoke-static {p2, v1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->access$3800(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Z)V

    .line 1214
    :cond_54
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPrevPreviewSessionRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    if-eqz v1, :cond_77

    invoke-virtual {p2, v1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 1215
    new-array p1, v3, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reject create preview session request due to same request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return v3

    .line 1220
    :cond_77
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPrevPreviewSessionRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    .line 1221
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v2, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/sonyericsson/android/camera/device/CameraController$CreateCaptureSessionTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    return v3
.end method

.method private get1x1RectOnActiveArrayCoordinate(Lcom/sonyericsson/android/camera/device/CameraParameters;II)Landroid/graphics/Rect;
    .registers 7

    .line 4515
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getActiveArraySize(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object p1

    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v1, p3, 0x1

    .line 4516
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 4517
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p2, p3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    .line 4518
    :cond_18
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 4519
    new-instance p1, Landroid/graphics/Rect;

    add-int/lit8 v0, p2, -0x1

    add-int/lit8 v1, p3, -0x1

    invoke-direct {p1, v0, v1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    .line 4521
    :cond_28
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    .line 4522
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    .line 4523
    new-instance p3, Landroid/graphics/Rect;

    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p3, p2, p1, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p3
.end method

.method private getApplicationContext()Landroid/content/Context;
    .registers 2

    .line 372
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method private isAutoFlashMonitoringRunning()Z
    .registers 2

    .line 3771
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mAutoFlashResultChecker:Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private isBokehMonitoringRunning()Z
    .registers 2

    .line 3756
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mBokehResultChecker:Lcom/sonyericsson/android/camera/device/BokehResultChecker;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private isFaceDetectionRunning()Z
    .registers 2

    .line 3738
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFaceDetectionResultChecker:Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private isFusionMonitoringRunning()Z
    .registers 2

    .line 3747
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFusionResultChecker:Lcom/sonyericsson/android/camera/device/FusionResultChecker;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private isSceneRecognitionRunning()Z
    .registers 2

    .line 3729
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mSceneConditionRecognitionResultChecker:Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private needToUpdateSurface(Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Z
    .registers 4

    .line 4656
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mProfile:Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    const/4 v1, 0x1

    if-nez v0, :cond_f

    const-string p1, "RecordingProfile is initialized"

    .line 4657
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v1

    .line 4661
    :cond_f
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->compare(Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Z

    move-result p1

    if-eqz p1, :cond_17

    const/4 p1, 0x0

    return p1

    :cond_17
    const-string p1, "RecordingProfile is updated"

    .line 4665
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return v1
.end method

.method private notifyOnPreviewStarted(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .registers 5

    .line 245
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnPreviewStartedListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 246
    :try_start_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnPreviewStartedListenerSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreviewStartedListener;

    .line 247
    invoke-interface {v2, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreviewStartedListener;->onPreviewStarted(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    goto :goto_9

    .line 249
    :cond_19
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnPreviewStartedListenerSet:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 250
    monitor-exit v0

    return-void

    :catchall_20
    move-exception p1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p1
.end method

.method private onCameraOtherErrorDetected(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V
    .registers 5

    .line 3934
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_ERROR:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->setCameraDeviceStatus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;)V

    .line 3935
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->setOtherError()V

    .line 3936
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    invoke-interface {p2, p1, p3}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onDeviceError(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V

    return-void
.end method

.method private prepareCaptureImageReader(II)V
    .registers 5

    .line 3247
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_1f

    .line 3248
    invoke-virtual {v0}, Landroid/media/ImageReader;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_1c

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureImageReader:Landroid/media/ImageReader;

    .line 3249
    invoke-virtual {v0}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_1c

    const-string p1, "mCaptureImageReader has bean already created"

    .line 3250
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void

    .line 3253
    :cond_1c
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->releaseCaptureImageReader()V

    :cond_1f
    const/16 v0, 0x100

    const/4 v1, 0x1

    .line 3256
    invoke-static {p1, p2, v0, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureImageReader:Landroid/media/ImageReader;

    .line 3258
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureImageReader:Landroid/media/ImageReader;

    new-instance p2, Lcom/sonyericsson/android/camera/device/CameraController$JpegCaptureImageAvailableListener;

    invoke-direct {p2, p0}, Lcom/sonyericsson/android/camera/device/CameraController$JpegCaptureImageAvailableListener;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;)V

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mImageReaderHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, v0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method private prepareStreamingImageReader(II)V
    .registers 5

    .line 3162
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->PREPARE_IMAGE_READER_STREAMING:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 3164
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mStreamingImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_24

    .line 3165
    invoke-virtual {v0}, Landroid/media/ImageReader;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_21

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mStreamingImageReader:Landroid/media/ImageReader;

    .line 3166
    invoke-virtual {v0}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_21

    const-string p1, "mStreamingImageReader has bean already created"

    .line 3167
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void

    .line 3170
    :cond_21
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->releaseStreamingImageReader()V

    :cond_24
    const/16 v0, 0x23

    const/4 v1, 0x2

    .line 3173
    invoke-static {p1, p2, v0, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mStreamingImageReader:Landroid/media/ImageReader;

    .line 3176
    sget-object p1, Lcom/sonyericsson/android/camera/util/PerfLog;->PREPARE_IMAGE_READER_STREAMING:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    return-void
.end method

.method private prepareVideoThumbnailImageReader(II)V
    .registers 5

    .line 3203
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->PREPARE_IMAGE_READER_VIDEO_THUMBNAIL:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 3205
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mVideoThumbnailImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_24

    .line 3206
    invoke-virtual {v0}, Landroid/media/ImageReader;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_21

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mVideoThumbnailImageReader:Landroid/media/ImageReader;

    .line 3207
    invoke-virtual {v0}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_21

    const-string p1, "mVideoThumbnailImageReader has bean already created"

    .line 3208
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void

    .line 3211
    :cond_21
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->releaseVideoThumbnailImageReader()V

    :cond_24
    const/16 v0, 0x23

    const/4 v1, 0x1

    .line 3214
    invoke-static {p1, p2, v0, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mVideoThumbnailImageReader:Landroid/media/ImageReader;

    .line 3217
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mVideoThumbnailImageReader:Landroid/media/ImageReader;

    new-instance p2, Lcom/sonyericsson/android/camera/device/CameraController$YuvCaptureImageAvailableListener;

    invoke-direct {p2, p0}, Lcom/sonyericsson/android/camera/device/CameraController$YuvCaptureImageAvailableListener;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;)V

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mImageReaderHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, v0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 3220
    sget-object p1, Lcom/sonyericsson/android/camera/util/PerfLog;->PREPARE_IMAGE_READER_VIDEO_THUMBNAIL:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    return-void
.end method

.method private releaseCaptureImageReader()V
    .registers 3

    .line 3269
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    .line 3270
    invoke-virtual {v0, v1, v1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 3271
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 3272
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureImageReader:Landroid/media/ImageReader;

    :cond_f
    return-void
.end method

.method private releaseStreamingImageReader()V
    .registers 3

    .line 3186
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mStreamingImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    .line 3187
    invoke-virtual {v0, v1, v1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 3188
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mStreamingImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 3189
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mStreamingImageReader:Landroid/media/ImageReader;

    :cond_f
    return-void
.end method

.method private releaseVideoThumbnailImageReader()V
    .registers 3

    .line 3230
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mVideoThumbnailImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    .line 3231
    invoke-virtual {v0, v1, v1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 3232
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mVideoThumbnailImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 3233
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mVideoThumbnailImageReader:Landroid/media/ImageReader;

    :cond_f
    return-void
.end method

.method private setIntelligentActiveTrigger(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;IZZ)V
    .registers 7

    .line 3550
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->copy()Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object v0

    .line 3551
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_INTELLIGENT_ACTIVE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 3552
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 3551
    invoke-virtual {v0, v1, p2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    if-eqz p3, :cond_15

    .line 3554
    invoke-direct {p0, p1, v0, p4}, Lcom/sonyericsson/android/camera/device/CameraController;->setOneTimeRequestSync(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Z)V

    goto :goto_1a

    :cond_15
    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 3556
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/sonyericsson/android/camera/device/CameraController;->setOneTimeRequestAsync(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Ljava/lang/Object;Z)V

    :goto_1a
    return-void
.end method

.method private setOneTimeRequestAsync(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Ljava/lang/Object;Z)V
    .registers 14

    .line 2399
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 2402
    :try_start_8
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->canValidation()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 2405
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->getCameraDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 2404
    invoke-static {v0, p2}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->validate(Ljava/lang/String;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;)V
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_19} :catch_1a

    goto :goto_3f

    :catch_1a
    move-exception v0

    .line 2409
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-nez v1, :cond_3e

    const/4 v1, 0x1

    .line 2412
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to valid camera parameter. : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_3f

    .line 2410
    :cond_3e
    throw v0

    .line 2417
    :cond_3f
    :goto_3f
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/android/camera/device/CameraController$SetOneTimeRequestTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Ljava/lang/Object;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    if-eqz p4, :cond_52

    .line 2420
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThreadSync(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    goto :goto_57

    .line 2422
    :cond_52
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    :goto_57
    return-void
.end method

.method private setOneTimeRequestAsync(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Z)V
    .registers 5

    const/4 v0, 0x0

    .line 2384
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/sonyericsson/android/camera/device/CameraController;->setOneTimeRequestAsync(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Ljava/lang/Object;Z)V

    return-void
.end method

.method private setOneTimeRequestSync(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Z)V
    .registers 11
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 2239
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    .line 2240
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2243
    :try_start_c
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v3, :cond_3b

    .line 2245
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 2246
    invoke-virtual {v3}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v3

    .line 2245
    invoke-static {v3, p2}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->validate(Ljava/lang/String;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;)V
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_19} :catch_1a

    goto :goto_3b

    :catch_1a
    move-exception v3

    .line 2250
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-nez v4, :cond_128

    .line 2253
    new-array v4, v2, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail to valid camera parameter. : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v1

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 2257
    :cond_3b
    :goto_3b
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_READY:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    if-ne v3, v4, :cond_10d

    .line 2264
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isVideo()Z

    move-result v3

    if-nez v3, :cond_58

    .line 2265
    iget-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    new-array v3, v2, [Landroid/view/Surface;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;

    aput-object v4, v3, v1

    invoke-virtual {p2, p3, v2, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequest(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object p2

    goto :goto_8f

    :cond_58
    const/4 v3, 0x3

    if-eqz p3, :cond_71

    const-string p3, "Video surface only."

    .line 2271
    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2272
    iget-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    new-array v2, v2, [Landroid/view/Surface;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mRecordingSurface:Landroid/view/Surface;

    aput-object v4, v2, v1

    invoke-virtual {p2, p3, v3, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequest(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object p2

    goto :goto_8f

    :cond_71
    const/4 p3, 0x2

    .line 2277
    new-array p3, p3, [Landroid/view/Surface;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;

    aput-object v4, p3, v1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mRecordingSurface:Landroid/view/Surface;

    aput-object v1, p3, v2

    .line 2278
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_89

    const-string v1, "Preview surface is valid."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2279
    :cond_89
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {p2, v1, v3, p3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequest(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object p2

    :goto_8f
    if-nez p2, :cond_9b

    const-string p1, "SetOneTimeRequestTask : CaptureRequest cannot be created."

    .line 2286
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void

    .line 2292
    :cond_9b
    :try_start_9b
    sget-boolean p3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p3, :cond_a8

    const-string p3, "capture()"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2293
    :cond_a8
    iget-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSessionCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p3, p2, v1, v0}, Landroid/hardware/camera2/CameraCaptureSession;->captureSingleRequest(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I

    .line 2296
    sget-boolean p3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p3, :cond_10c

    .line 2297
    iget-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestDumper:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;

    invoke-virtual {p3, p2}, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;->update(Landroid/hardware/camera2/CaptureRequest;)V

    .line 2298
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestDumper:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;->dump()V
    :try_end_bd
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_9b .. :try_end_bd} :catch_c5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9b .. :try_end_bd} :catch_be

    goto :goto_10c

    :catch_be
    move-exception p1

    const-string p2, "Failed in SetOneTimeRequestTask."

    .line 2321
    invoke-static {p2, p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10c

    :catch_c5
    move-exception p2

    .line 2302
    iget-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isIgnoreCameraError()Z

    move-result p3

    if-eqz p3, :cond_107

    .line 2303
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isErrorCaused()Z

    move-result p1

    if-eqz p1, :cond_d5

    goto :goto_107

    .line 2305
    :cond_d5
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result p1

    if-nez p1, :cond_ec

    .line 2306
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->setCameraDeviceStatus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;)V

    const-string p1, "SetOneTimeRequestTask : mPreviewSurface is invalid.(after performing capture)"

    .line 2307
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    goto :goto_10c

    .line 2310
    :cond_ec
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed in SetOneTimeRequestTask by CameraAccessException. Reason:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2313
    invoke-virtual {p2}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_107
    :goto_107
    const-string p1, "Failed in SetOneTimeRequestTask"

    .line 2304
    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_10c
    :goto_10c
    return-void

    .line 2258
    :cond_10d
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed due to wrong status in SetOneTimeRequestTask. status: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2260
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2251
    :cond_128
    throw v3
.end method

.method private setRepeatingRequestVideoOnly(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .registers 10

    .line 2333
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1e

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoke sessionId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2334
    :cond_1e
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v3}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    .line 2335
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2336
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    new-array v6, v2, [Landroid/view/Surface;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mRecordingSurface:Landroid/view/Surface;

    aput-object v7, v6, v1

    const/4 v7, 0x3

    invoke-virtual {v4, v5, v7, v6}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequest(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    .line 2340
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2342
    :try_start_3b
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v4, :cond_48

    const-string v4, "setRepeatingBurstRequests for iAct: ([V])"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2343
    :cond_48
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSessionCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v4, v3, v5, v0}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingBurstRequests(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    :try_end_4f
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3b .. :try_end_4f} :catch_6e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3b .. :try_end_4f} :catch_50

    goto :goto_b1

    :catch_50
    move-exception p1

    .line 2364
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mRecordingSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_63

    const-string p1, "setRepeatingRequest : mRecordingSurface is invalid.(after performing set repeating request)"

    .line 2365
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_68

    :cond_63
    const-string v0, "Failed in setRepeatingRequest."

    .line 2368
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2370
    :goto_68
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onStartRecordingFailed()V

    goto :goto_b1

    :catch_6e
    move-exception v0

    .line 2351
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mRecordingSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-nez v3, :cond_81

    const-string p1, "setRepeatingRequest : mRecordingSurface is invalid.(after performing set repeating request)"

    .line 2352
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_ac

    .line 2354
    :cond_81
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v3

    if-ne v3, v7, :cond_ac

    .line 2355
    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed in setRepeatingRequest  by CameraAccessException. Reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2356
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 2355
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2359
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;->ERROR_ON_CAMERA_ERROR:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    .line 2357
    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->onCameraOtherErrorDetected(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V

    .line 2362
    :cond_ac
    :goto_ac
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onStartRecordingFailed()V

    :goto_b1
    return-void
.end method


# virtual methods
.method changeProviderDeviceStatusToRecording(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .registers 5

    .line 4027
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p1

    if-nez p1, :cond_16

    .line 4029
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_15

    const-string p1, "Camera is not available."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15
    return-void

    .line 4033
    :cond_16
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 4035
    new-instance v1, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    .line 4036
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isVideo()Z

    move-result v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->putFromParameter(Lcom/sonyericsson/android/camera/device/CameraParameters;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Z)Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    move-result-object p1

    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->VIDEO_RECORDING:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;)V

    .line 4037
    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object p1

    .line 4038
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    :cond_41
    return-void
.end method

.method closeCamera(ZLcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V
    .registers 7

    .line 478
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->stopSceneRecognition(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 479
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->stopFaceDetection(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 480
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->stopObjectTracking(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 481
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraController;->stopAutoFlashMonitoring(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    const/4 v0, 0x0

    .line 482
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mIsCameraParametersReady:Z

    .line 483
    iput v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviousLogicalCameraMode:I

    .line 487
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 488
    :try_start_14
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    const/4 v1, 0x0

    .line 489
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mSceneConditionRecognitionResultChecker:Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;

    .line 490
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCropRegionChecker:Lcom/sonyericsson/android/camera/device/CropRegionChecker;

    .line 491
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_3e

    .line 493
    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    if-nez v0, :cond_26

    return-void

    .line 503
    :cond_26
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;->CAMERA_CLOSING:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->setRequested(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;)V

    .line 504
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;

    invoke-direct {v0, p0, p2, p3, v1}, Lcom/sonyericsson/android/camera/device/CameraController$CloseCameraTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ZLcom/sonyericsson/android/camera/device/CameraController$1;)V

    if-eqz p1, :cond_38

    .line 506
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThreadSync(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    goto :goto_3d

    .line 508
    :cond_38
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    :goto_3d
    return-void

    :catchall_3e
    move-exception p1

    .line 491
    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw p1
.end method

.method commit(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .registers 3

    const/4 v0, 0x1

    .line 3940
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mIsCameraParametersReady:Z

    .line 3941
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    if-eqz v0, :cond_24

    .line 3942
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    .line 3943
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPrevPreviewSessionRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    const/4 v0, 0x0

    .line 3944
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->triggerRestartPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    .line 3945
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->createPreviewSession(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Z

    move-result p1

    if-eqz p1, :cond_27

    const-string p1, "commit: preview trigger was fired."

    .line 3946
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_27

    .line 3950
    :cond_24
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    :cond_27
    :goto_27
    return-void
.end method

.method declared-synchronized commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .registers 8

    monitor-enter p0

    .line 1075
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_14

    const-string p1, "Cannot get Parameters."

    .line 1077
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_7f

    .line 1078
    monitor-exit p0

    return-void

    .line 1081
    :cond_14
    :try_start_14
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->needApply()Z

    move-result v1

    if-nez v1, :cond_25

    const-string p1, "Parameters already applied."

    .line 1082
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_7f

    .line 1083
    monitor-exit p0

    return-void

    .line 1086
    :cond_25
    :try_start_25
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->applyParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Z
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_7f

    const/4 v1, 0x0

    .line 1089
    :try_start_29
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->canValidation()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 1092
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->getCameraDeviceId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    .line 1091
    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->validate(Ljava/lang/String;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;)V
    :try_end_3c
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_3c} :catch_3d
    .catchall {:try_start_29 .. :try_end_3c} :catchall_7f

    goto :goto_5f

    :catch_3d
    move-exception v2

    .line 1096
    :try_start_3e
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-nez v3, :cond_7e

    const/4 v3, 0x1

    .line 1099
    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to valid camera parameter. : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_5f
    .catchall {:try_start_3e .. :try_end_5f} :catchall_7f

    .line 1104
    :cond_5f
    :goto_5f
    :try_start_5f
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;

    if-eqz v2, :cond_74

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v2, :cond_74

    .line 1105
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->isBypassCameraUsedForRecording(Lcom/sonyericsson/android/camera/device/CameraParameters;)Z

    move-result v2

    if-nez v2, :cond_71

    .line 1106
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->updateRepeatingRequest(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    goto :goto_74

    .line 1110
    :cond_71
    invoke-virtual {p0, p1, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->setRepeatingRequestForPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V
    :try_end_74
    .catchall {:try_start_5f .. :try_end_74} :catchall_79

    .line 1114
    :cond_74
    :goto_74
    :try_start_74
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->applied()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_7f

    .line 1116
    monitor-exit p0

    return-void

    :catchall_79
    move-exception p1

    .line 1114
    :try_start_7a
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->applied()V

    .line 1115
    throw p1

    .line 1097
    :cond_7e
    throw v2
    :try_end_7f
    .catchall {:try_start_7a .. :try_end_7f} :catchall_7f

    :catchall_7f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method createAfParametersResultChecker(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/os/Handler;)Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;
    .registers 6

    .line 4529
    new-instance v0, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$RequestSnapshotReadyAfterAfParametersReflected;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sonyericsson/android/camera/device/CameraController$RequestSnapshotReadyAfterAfParametersReflected;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    .line 4532
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->copy()Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object p1

    invoke-direct {v0, p2, v1, p1}, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;-><init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraParameters$AfParametersCallback;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;)V

    return-object v0
.end method

.method createPreviewSession(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Z
    .registers 3

    .line 1177
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    if-eqz v0, :cond_23

    .line 1178
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->createPreviewSession(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "preview was requested."

    .line 1179
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1180
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    .line 1181
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 1183
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->createPreviewSessionRequestDone()V

    :cond_21
    const/4 p1, 0x1

    return p1

    :cond_23
    const/4 p1, 0x0

    return p1
.end method

.method dump(Ljava/lang/StringBuilder;)V
    .registers 4

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCameraDevice:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCaptureSession:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOutputConfiguration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOutputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mStreamingImageReader:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mStreamingImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mVideoThumbnailImageReader:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mVideoThumbnailImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPreviewSurface:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentDeviceStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentDeviceStatus:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method forceFlushRecording(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .registers 2

    .line 3568
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->setIntelligentActiveTriggerToFlush(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 3569
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->setRepeatingRequestVideoOnly(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;
    .registers 3

    .line 3760
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentDeviceStatusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3761
    :try_start_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentDeviceStatus:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 3762
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getLatestFusionResult()Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;
    .registers 2

    .line 3643
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isFusionMonitoringRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3644
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFusionResultChecker:Lcom/sonyericsson/android/camera/device/FusionResultChecker;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/FusionResultChecker;->getLatestFusionResult()Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;

    move-result-object v0

    return-object v0

    .line 3647
    :cond_d
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;-><init>()V

    return-object v0
.end method

.method public getMultiAutoFocusArea()Landroid/graphics/Rect;
    .registers 7

    .line 4545
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultHolder:Lcom/sonyericsson/android/camera/device/CaptureResultHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatest()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 4552
    :cond_a
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4553
    :try_start_d
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFaceDetectionResultChecker:Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;

    const/4 v4, 0x1

    if-eqz v3, :cond_19

    .line 4554
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFaceDetectionResultChecker:Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultHolder:Lcom/sonyericsson/android/camera/device/CaptureResultHolder;

    invoke-virtual {v3, v5, v4}, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->checkSync(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;Z)V

    .line 4556
    :cond_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_49

    .line 4558
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v3, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_AF_REGION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 4559
    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4560
    sget-object v3, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_CONTROL_AF_REGION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v4, :cond_48

    if-ne v3, v4, :cond_48

    .line 4564
    sget-object v1, Landroid/hardware/camera2/TotalCaptureResult;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v1, 0x0

    .line 4565
    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    :cond_48
    return-object v1

    :catchall_49
    move-exception v0

    .line 4556
    :try_start_4a
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v0
.end method

.method getPhotoPreviewSize(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 8

    .line 4183
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_26

    .line 4184
    new-array p1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sony-preferred-preview-size-for-still:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4185
    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getPreferredPreviewSizeForStill(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0

    .line 4184
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4187
    :cond_26
    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getPreferredPreviewSizeForStill(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object p1

    .line 4189
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-eqz v2, :cond_36

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-nez v2, :cond_52

    .line 4191
    :cond_36
    invoke-static {p3}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getPreferredPreviewSizeFromCaptureSize(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 4192
    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preferredPreviewSize is invalid. Get preferredPreviewSize from captureSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 4198
    :cond_52
    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedPreviewSizes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object p2

    .line 4195
    invoke-static {p3, p1, p2}, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver;->getOptimalStillPreviewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method getPreviewFrameProvider()Lcom/sonyericsson/android/camera/device/PreviewFrameProvider;
    .registers 3

    .line 3145
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewFrameProvider:Lcom/sonyericsson/android/camera/device/PreviewFrameProvider;

    if-nez v0, :cond_c

    .line 3146
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameProviderImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameProviderImpl;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewFrameProvider:Lcom/sonyericsson/android/camera/device/PreviewFrameProvider;

    .line 3149
    :cond_c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewFrameProvider:Lcom/sonyericsson/android/camera/device/PreviewFrameProvider;

    return-object v0
.end method

.method getRecordingSurface()Landroid/view/Surface;
    .registers 2

    .line 4670
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mRecordingSurface:Landroid/view/Surface;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "mRecordingSurface is not created"

    .line 4671
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 4672
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method getVideoPreviewSize(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Landroid/graphics/Rect;
    .registers 9

    .line 4216
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_26

    .line 4217
    new-array p1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preferred-preview-size-for-video:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4218
    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getPreferredPreviewSizeForVideo(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0

    .line 4217
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4221
    :cond_26
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne p4, p1, :cond_2f

    .line 4226
    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getPreferredPreviewSizeForHdrVideo(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object p1

    goto :goto_33

    .line 4229
    :cond_2f
    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getPreferredPreviewSizeForVideo(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object p1

    .line 4231
    :goto_33
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p4

    if-eqz p4, :cond_3f

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p4

    if-nez p4, :cond_5b

    .line 4233
    :cond_3f
    invoke-static {p3}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getPreferredPreviewSizeFromCaptureSize(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 4234
    new-array p4, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preferredPreviewSize is invalid. Get preferredPreviewSize from videoSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p4, v0

    invoke-static {p4}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 4240
    :cond_5b
    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedPreviewSizes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object p2

    .line 4237
    invoke-static {p3, p1, p2}, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver;->getOptimalVideoPreviewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method initializeCaptureRequest(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 3

    .line 464
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->setDefault(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    return-void
.end method

.method isAfParametersReflectedToDevice(Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;)Z
    .registers 3

    .line 4537
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultHolder:Lcom/sonyericsson/android/camera/device/CaptureResultHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatest()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 4538
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->checkSync(Landroid/hardware/camera2/CaptureResult;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method isObjectTrackingRunning()Z
    .registers 2

    .line 3720
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mObjectTrackingResultChecker:Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method openAndCloseCamera(Ljava/lang/String;)V
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 513
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$OpenAndCloseCameraTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, v2}, Lcom/sonyericsson/android/camera/device/CameraController$OpenAndCloseCameraTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Ljava/lang/String;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    .line 514
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    return-void
.end method

.method openCamera(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Z)V
    .registers 12

    .line 468
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;->CAMERA_OPENING:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->setRequested(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;)V

    .line 471
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;->NONE:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mRepeatingRequestState:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    .line 472
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v7, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;ZLcom/sonyericsson/android/camera/device/CameraController$1;)V

    .line 473
    invoke-virtual {v0, v7}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    return-void
.end method

.method removeOnPreviewStartedListener()V
    .registers 3

    .line 236
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnPreviewStartedListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnPreviewStartedListenerSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 238
    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method requestAbortCapturesWhenCreateSession()V
    .registers 3

    .line 263
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/device/CameraController$1;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    return-void
.end method

.method requestCapture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/media/ImageReader;I)V
    .registers 13

    .line 4452
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_33

    .line 4454
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 4455
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    .line 4454
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->validate(Ljava/lang/String;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_33

    :catch_10
    move-exception v0

    .line 4459
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-nez v1, :cond_46

    const/4 v1, 0x1

    .line 4462
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to valid camera parameter. : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 4466
    :cond_33
    :goto_33
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v8, Lcom/sonyericsson/android/camera/device/CameraController$OneShotCaptureTask;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/device/CameraController$OneShotCaptureTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Landroid/media/ImageReader;ILcom/sonyericsson/android/camera/device/CameraController$1;)V

    invoke-virtual {v0, v8}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    return-void

    .line 4460
    :cond_46
    throw v0
.end method

.method requestCaptureWhileRecording(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .registers 4

    .line 4447
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureImageReader:Landroid/media/ImageReader;

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->requestCapture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/media/ImageReader;I)V

    return-void
.end method

.method requestOnePreviewFrame(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .registers 4

    .line 4440
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    .line 4441
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getSlowMotion()Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-ne v0, v1, :cond_22

    .line 4442
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mVideoThumbnailImageReader:Landroid/media/ImageReader;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->requestCapture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/media/ImageReader;I)V

    :cond_22
    return-void
.end method

.method requestSnapshotReadyAfterAfParametersReflected(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;)Ljava/lang/Runnable;
    .registers 5

    .line 4578
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4579
    :try_start_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4580
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_f

    .line 4582
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/sonyericsson/android/camera/device/CameraController$2;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-object v0

    :catchall_f
    move-exception p1

    .line 4580
    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public setCameraAudioRestriction(Z)V
    .registers 3

    .line 3784
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_15

    .line 3785
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz p1, :cond_a

    const/4 p1, 0x3

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraDevice;->setCameraAudioRestriction(I)V
    :try_end_e
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_15

    :catch_f
    move-exception p1

    const-string v0, "Failed in setCameraAudioRestriction."

    .line 3790
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    :goto_15
    return-void
.end method

.method setCameraDeviceStatus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;)V
    .registers 7

    .line 3775
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentDeviceStatusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3776
    :try_start_3
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_2b

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrentDeviceState change to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentDeviceStatus:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3778
    :cond_2b
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentDeviceStatus:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    .line 3779
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method public setGpsLocation(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .registers 4

    .line 4274
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getGpsData()Landroid/location/Location;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method setIntelligentActiveTriggerToCancel(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .registers 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 3541
    invoke-direct {p0, p1, v1, v0, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->setIntelligentActiveTrigger(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;IZZ)V

    return-void
.end method

.method declared-synchronized setIntelligentActiveTriggerToFlush(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .registers 4

    monitor-enter p0

    .line 3524
    :try_start_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mIntelligentActiveFlushRequested:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-eqz v0, :cond_7

    .line 3525
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 3527
    :try_start_9
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->setIntelligentActiveTrigger(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;IZZ)V

    .line 3532
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mIntelligentActiveFlushRequested:Z
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_10

    .line 3533
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setIntelligentActiveTriggerToStart(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 3512
    :try_start_2
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mIntelligentActiveFlushRequested:Z

    const/4 v1, 0x1

    .line 3513
    invoke-direct {p0, p1, v1, v1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->setIntelligentActiveTrigger(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;IZZ)V
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_a

    .line 3518
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method setLogicalMultiCameraMode(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V
    .registers 7

    .line 4614
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isOpticalZoomSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p1

    .line 4618
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_29

    const/4 v0, 0x1

    .line 4619
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LogicalCameraMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p1, v0, :cond_1b

    const-string v0, "OpticalZoom"

    goto :goto_1d

    :cond_1b
    const-string v0, "OFF"

    :goto_1d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4622
    :cond_29
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_LOGICAL_MULTI_CAMERA_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 4623
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method setOnPreviewStartedListener(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreviewStartedListener;)V
    .registers 4

    .line 227
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnPreviewStartedListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 228
    :try_start_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnPreviewStartedListenerSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 229
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public setOrientation(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .registers 4

    .line 4264
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getRotation()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method setRepeatingRequestForPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V
    .registers 7

    .line 1638
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mIsCameraParametersReady:Z

    if-nez v0, :cond_5

    return-void

    .line 1643
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFramedropProfiler:Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 1645
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFramedropProfiler:Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;

    .line 1646
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;->dump()V

    .line 1650
    :cond_f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mStreamingImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_26

    .line 1651
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewFrameReceiver:Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    .line 1652
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getDeviceThreadHandler()Landroid/os/Handler;

    move-result-object v3

    .line 1651
    invoke-virtual {v0, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 1653
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mStreamingImageReader:Landroid/media/ImageReader;

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/media/ImageReader;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    goto :goto_2b

    .line 1655
    :cond_26
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/media/ImageReader;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    :goto_2b
    if-eqz p2, :cond_33

    .line 1658
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThreadSync(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    goto :goto_38

    .line 1660
    :cond_33
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    :goto_38
    return-void
.end method

.method setRepeatingRequestForStartRecording(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .registers 10

    .line 2051
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mIsCameraParametersReady:Z

    if-nez v0, :cond_5

    return-void

    .line 2055
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mRepeatingRequestStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2056
    :try_start_8
    new-instance v7, Lcom/sonyericsson/android/camera/device/CameraController$SetRecordingRequestTask;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/device/CameraController$SetRecordingRequestTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ZZLcom/sonyericsson/android/camera/device/CameraController$1;)V

    .line 2057
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p1, v7}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    .line 2059
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_42

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked current:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mRepeatingRequestState:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " next:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;->REQUEST_RECORDING:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2061
    :cond_42
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;->REQUEST_RECORDING:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mRepeatingRequestState:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    .line 2062
    monitor-exit v0

    return-void

    :catchall_48
    move-exception p1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_8 .. :try_end_4a} :catchall_48

    throw p1
.end method

.method setRepeatingRequestForStopRecording(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .registers 6

    .line 2071
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mRepeatingRequestStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2072
    :try_start_4
    invoke-virtual {p0, p1, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->setRepeatingRequestForPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    .line 2073
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_30

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked current:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mRepeatingRequestState:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " next:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;->PREVIEW:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2075
    :cond_30
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;->PREVIEW:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mRepeatingRequestState:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    .line 2076
    monitor-exit v0

    return-void

    :catchall_36
    move-exception p1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_4 .. :try_end_38} :catchall_36

    throw p1
.end method

.method setSelectedFacePosition(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;II)V
    .registers 9

    .line 3912
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_16

    .line 3914
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_15

    const-string p1, "Camera is not available."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15
    return-void

    .line 3918
    :cond_16
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->copy()Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object v1

    .line 3919
    invoke-direct {p0, v0, p2, p3}, Lcom/sonyericsson/android/camera/device/CameraController;->get1x1RectOnActiveArrayCoordinate(Lcom/sonyericsson/android/camera/device/CameraParameters;II)Landroid/graphics/Rect;

    move-result-object p2

    const/4 p3, 0x4

    .line 3920
    new-array p3, p3, [I

    iget v0, p2, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x0

    aput v0, p3, v2

    iget v0, p2, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x1

    aput v0, p3, v3

    const/4 v0, 0x2

    iget v4, p2, Landroid/graphics/Rect;->right:I

    aput v4, p3, v0

    const/4 v0, 0x3

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    aput p2, p3, v0

    .line 3922
    sget-object p2, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_STATISTICS_FACE_SELECT_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 3923
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3922
    invoke-virtual {v1, p2, v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3924
    sget-object p2, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_STATISTICS_FACE_SELECT_TRIGGER_AREA:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, p2, p3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3926
    invoke-direct {p0, p1, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->setOneTimeRequestAsync(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Z)V

    return-void
.end method

.method setSurface(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ZLandroid/view/Surface;)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p2, :cond_e

    .line 1579
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;

    invoke-direct {v1, p0, p1, p3, v0}, Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/view/Surface;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    invoke-virtual {p2, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThreadSync(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    goto :goto_18

    .line 1582
    :cond_e
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;

    invoke-direct {v1, p0, p1, p3, v0}, Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/view/Surface;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    invoke-virtual {p2, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    :goto_18
    return-void
.end method

.method startAutoFlashMonitoring(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .registers 4

    .line 3688
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p2, :cond_d

    const-string p2, "startAutoFlashMonitoring"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3689
    :cond_d
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isAutoFlashMonitoringRunning()Z

    move-result p2

    if-nez p2, :cond_38

    .line 3690
    new-instance p2, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnAutoFlashChangedCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnAutoFlashResultChangedCallback;

    invoke-direct {p2, p1, v0}, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;-><init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraParameters$AutoFlashResultCallback;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mAutoFlashResultChecker:Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;

    .line 3693
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 3694
    :try_start_1f
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mAutoFlashResultChecker:Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3695
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p2, :cond_33

    const-string p2, "add auto flash status checker."

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3696
    :cond_33
    monitor-exit p1

    goto :goto_38

    :catchall_35
    move-exception p2

    monitor-exit p1
    :try_end_37
    .catchall {:try_start_1f .. :try_end_37} :catchall_35

    throw p2

    :cond_38
    :goto_38
    return-void
.end method

.method startBokehMonitoring(Landroid/os/Handler;)V
    .registers 4

    .line 3657
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isBokehMonitoringRunning()Z

    move-result v0

    if-nez v0, :cond_27

    .line 3661
    new-instance v0, Lcom/sonyericsson/android/camera/device/BokehResultChecker;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnBokehConditionChangedCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnBokehResultChangedCallback;

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/android/camera/device/BokehResultChecker;-><init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraParameters$BokehResultCallback;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mBokehResultChecker:Lcom/sonyericsson/android/camera/device/BokehResultChecker;

    .line 3664
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 3665
    :try_start_12
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mBokehResultChecker:Lcom/sonyericsson/android/camera/device/BokehResultChecker;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "add bokeh status checker."

    .line 3666
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3667
    monitor-exit p1

    return-void

    :catchall_24
    move-exception v0

    monitor-exit p1
    :try_end_26
    .catchall {:try_start_12 .. :try_end_26} :catchall_24

    throw v0

    .line 3658
    :cond_27
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Bokeh monitoring has already been started."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method startFaceDetection(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/os/Handler;)V
    .registers 7

    .line 3281
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_16

    .line 3283
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_15

    const-string p1, "Camera is not available."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15
    return-void

    .line 3287
    :cond_16
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isFaceDetectionRunning()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 3288
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_29

    const-string p1, "Face detection is already running."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_29
    return-void

    .line 3293
    :cond_2a
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFaceDetectionAvailable(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 3294
    new-instance v1, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnFaceDetectionCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnFaceDetectionCallback;

    invoke-direct {v1, p2, v2}, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;-><init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionCallback;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFaceDetectionResultChecker:Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;

    .line 3297
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter p2

    .line 3298
    :try_start_40
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFaceDetectionResultChecker:Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3299
    monitor-exit p2
    :try_end_48
    .catchall {:try_start_40 .. :try_end_48} :catchall_bf

    .line 3301
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->requestApply()V

    .line 3302
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    .line 3303
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3302
    invoke-virtual {p2, v1, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3304
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_STATISTICS_FACE_SMILE_SCORES_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 3306
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3304
    invoke-virtual {p2, v1, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3307
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isVideo()Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_77

    .line 3308
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_STATISTICS_EYE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 3310
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3308
    invoke-virtual {p2, v0, v1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_bb

    .line 3313
    :cond_77
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getAvailableEyeDetectModes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object p2

    const-string v0, "all"

    .line 3314
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 3315
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_STATISTICS_EYE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 3317
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3315
    invoke-virtual {p2, v0, v1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_bb

    :cond_93
    const-string v0, "human"

    .line 3318
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 3319
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_STATISTICS_EYE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x2

    .line 3321
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3319
    invoke-virtual {p2, v0, v1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_bb

    :cond_a8
    const-string v0, "off"

    .line 3322
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_bb

    .line 3323
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_STATISTICS_EYE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 3325
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3323
    invoke-virtual {p2, v0, v1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3328
    :cond_bb
    :goto_bb
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->updateRepeatingRequest(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    goto :goto_c2

    :catchall_bf
    move-exception p1

    .line 3299
    :try_start_c0
    monitor-exit p2
    :try_end_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_bf

    throw p1

    :cond_c2
    :goto_c2
    return-void
.end method

.method startFusionMonitoring(Landroid/os/Handler;)V
    .registers 4

    .line 3611
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isFusionMonitoringRunning()Z

    move-result v0

    if-nez v0, :cond_27

    .line 3615
    new-instance v0, Lcom/sonyericsson/android/camera/device/FusionResultChecker;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnFusionConditionChangedCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnFusionResultChangedCallback;

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/android/camera/device/FusionResultChecker;-><init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResultCallback;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFusionResultChecker:Lcom/sonyericsson/android/camera/device/FusionResultChecker;

    .line 3618
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 3619
    :try_start_12
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFusionResultChecker:Lcom/sonyericsson/android/camera/device/FusionResultChecker;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "add fusion status checker."

    .line 3620
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3621
    monitor-exit p1

    return-void

    :catchall_24
    move-exception v0

    monitor-exit p1
    :try_end_26
    .catchall {:try_start_12 .. :try_end_26} :catchall_24

    throw v0

    .line 3612
    :cond_27
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fusion monitoring has already been started."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method startObjectTracking(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/os/Handler;Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingCallback;)V
    .registers 10

    .line 3462
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_16

    .line 3464
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_15

    const-string p1, "Camera is not available."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15
    return-void

    .line 3468
    :cond_16
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isObjectTrackingSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 3469
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isObjectTrackingRunning()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 3470
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_33

    const-string v1, "Object tracking is already running."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3471
    :cond_33
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3472
    :try_start_36
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mObjectTrackingResultChecker:Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3473
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_36 .. :try_end_3e} :catchall_42

    const/4 v1, 0x0

    .line 3474
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mObjectTrackingResultChecker:Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;

    goto :goto_45

    :catchall_42
    move-exception p1

    .line 3473
    :try_start_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw p1

    .line 3477
    :cond_45
    :goto_45
    new-instance v1, Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;

    invoke-direct {v1, p2, p4}, Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;-><init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingCallback;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mObjectTrackingResultChecker:Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;

    .line 3480
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter p2

    .line 3481
    :try_start_4f
    iget-object p4, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mObjectTrackingResultChecker:Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;

    invoke-interface {p4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3482
    monitor-exit p2
    :try_end_57
    .catchall {:try_start_4f .. :try_end_57} :catchall_9b

    .line 3484
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->copy()Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object p2

    .line 3485
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result p4

    .line 3486
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result p3

    .line 3485
    invoke-direct {p0, v0, p4, p3}, Lcom/sonyericsson/android/camera/device/CameraController;->get1x1RectOnActiveArrayCoordinate(Lcom/sonyericsson/android/camera/device/CameraParameters;II)Landroid/graphics/Rect;

    move-result-object p3

    .line 3487
    sget-object p4, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_STATISTICS_OBJECT_SELECT_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x1

    .line 3489
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3487
    invoke-virtual {p2, p4, v1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3490
    sget-object p4, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_STATISTICS_OBJECT_SELECT_TRIGGER_AREA:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x4

    new-array v1, v1, [I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p3, Landroid/graphics/Rect;->top:I

    aput v2, v1, v0

    const/4 v2, 0x2

    iget v4, p3, Landroid/graphics/Rect;->right:I

    aput v4, v1, v2

    const/4 v2, 0x3

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    aput p3, v1, v2

    invoke-virtual {p2, p4, v1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3497
    sget-object p3, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_STATISTICS_OBJECT_SELECT_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, p1, p2, p3, v3}, Lcom/sonyericsson/android/camera/device/CameraController;->setOneTimeRequestAsync(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Ljava/lang/Object;Z)V

    .line 3501
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setObjectTrackingTarget(Z)V

    goto :goto_9e

    :catchall_9b
    move-exception p1

    .line 3482
    :try_start_9c
    monitor-exit p2
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9b

    throw p1

    :cond_9e
    :goto_9e
    return-void
.end method

.method startPreview(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V
    .registers 5

    .line 518
    new-instance v0, Lcom/sonyericsson/android/camera/device/PreviewResultChecker;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnPreviewResultCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnPreviewResultCallback;

    invoke-direct {v0, p1, v1, p2}, Lcom/sonyericsson/android/camera/device/PreviewResultChecker;-><init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraParameters$PreviewResultCallback;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewResultChecker:Lcom/sonyericsson/android/camera/device/PreviewResultChecker;

    .line 521
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 522
    :try_start_c
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewResultChecker:Lcom/sonyericsson/android/camera/device/PreviewResultChecker;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 523
    monitor-exit p1

    return-void

    :catchall_15
    move-exception p2

    monitor-exit p1
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_15

    throw p2
.end method

.method startSceneRecognition(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/os/Handler;)V
    .registers 7

    .line 3370
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_16

    .line 3372
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_15

    const-string p1, "Camera is not available."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15
    return-void

    .line 3376
    :cond_16
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isSceneRecognitionRunning()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 3377
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_29

    const-string p1, "Scene recognition is already running."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_29
    return-void

    .line 3382
    :cond_2a
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v1

    if-eqz v1, :cond_44

    .line 3383
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isCloseCameraTaskRequested()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 3384
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_43

    const-string p1, "Camera is closing or closed."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_43
    return-void

    .line 3388
    :cond_44
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSceneRecognitionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 3389
    new-instance v1, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mOnSceneModeChangedCallback:Lcom/sonyericsson/android/camera/device/CameraController$OnSceneModeChangedCallback;

    .line 3392
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v3

    invoke-direct {v1, p2, v2, v3}, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;-><init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionCallback;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    .line 3394
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter p2

    .line 3395
    :try_start_5c
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mSceneConditionRecognitionResultChecker:Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;

    .line 3396
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mSceneConditionRecognitionResultChecker:Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3397
    monitor-exit p2
    :try_end_66
    .catchall {:try_start_5c .. :try_end_66} :catchall_9b

    .line 3399
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->requestApply()V

    .line 3401
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    .line 3402
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3401
    invoke-virtual {p2, v0, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3403
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_STATISTICS_SCENE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 3405
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3403
    invoke-virtual {p2, v0, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3406
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_STILL_HDR_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x2

    .line 3407
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3406
    invoke-virtual {p2, v0, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3409
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_STATISTICS_CONDITION_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 3411
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3409
    invoke-virtual {p2, v0, v1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3413
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->updateRepeatingRequest(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    goto :goto_9e

    :catchall_9b
    move-exception p1

    .line 3397
    :try_start_9c
    monitor-exit p2
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9b

    throw p1

    :cond_9e
    :goto_9e
    return-void
.end method

.method stopAutoFlashMonitoring(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .registers 4

    .line 3704
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_d

    const-string p1, "stopAutoFlashMonitoring"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3705
    :cond_d
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isAutoFlashMonitoringRunning()Z

    move-result p1

    if-eqz p1, :cond_32

    .line 3706
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 3707
    :try_start_16
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mAutoFlashResultChecker:Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3708
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2a

    const-string v0, "remove auto flash status checker."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3709
    :cond_2a
    monitor-exit p1
    :try_end_2b
    .catchall {:try_start_16 .. :try_end_2b} :catchall_2f

    const/4 p1, 0x0

    .line 3710
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mAutoFlashResultChecker:Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;

    goto :goto_32

    :catchall_2f
    move-exception v0

    .line 3709
    :try_start_30
    monitor-exit p1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v0

    :cond_32
    :goto_32
    return-void
.end method

.method stopBokehMonitoring()V
    .registers 4

    .line 3674
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isBokehMonitoringRunning()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3675
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3676
    :try_start_9
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mBokehResultChecker:Lcom/sonyericsson/android/camera/device/BokehResultChecker;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string v1, "remove bokeh status checker."

    .line 3677
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3678
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_1e

    const/4 v0, 0x0

    .line 3679
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mBokehResultChecker:Lcom/sonyericsson/android/camera/device/BokehResultChecker;

    goto :goto_21

    :catchall_1e
    move-exception v1

    .line 3678
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1

    :cond_21
    :goto_21
    return-void
.end method

.method stopFaceDetection(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .registers 6

    .line 3336
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p1

    if-nez p1, :cond_16

    .line 3338
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_15

    const-string p1, "Camera is not available."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15
    return-void

    .line 3341
    :cond_16
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isFaceDetectionRunning()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 3342
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_29

    const-string p1, "Face detection is not running."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_29
    return-void

    .line 3347
    :cond_2a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3348
    :try_start_2d
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFaceDetectionResultChecker:Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3349
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_6e

    const/4 v0, 0x0

    .line 3350
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFaceDetectionResultChecker:Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;

    .line 3352
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->requestApply()V

    .line 3353
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    .line 3354
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3353
    invoke-virtual {v0, v1, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3355
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_STATISTICS_FACE_SMILE_SCORES_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 3357
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3355
    invoke-virtual {v0, v1, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3358
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getAvailableEyeDetectModes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object p1

    const-string v0, "off"

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6d

    .line 3360
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_STATISTICS_EYE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 3362
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3360
    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_6d
    return-void

    :catchall_6e
    move-exception p1

    .line 3349
    :try_start_6f
    monitor-exit v0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw p1
.end method

.method stopFusionMonitoring()V
    .registers 4

    .line 3628
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isFusionMonitoringRunning()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3629
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3630
    :try_start_9
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFusionResultChecker:Lcom/sonyericsson/android/camera/device/FusionResultChecker;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string v1, "remove fusion status checker."

    .line 3631
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3632
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_1e

    const/4 v0, 0x0

    .line 3633
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mFusionResultChecker:Lcom/sonyericsson/android/camera/device/FusionResultChecker;

    goto :goto_21

    :catchall_1e
    move-exception v1

    .line 3632
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1

    :cond_21
    :goto_21
    return-void
.end method

.method stopObjectTracking(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .registers 5

    .line 3576
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_16

    .line 3578
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_15

    const-string p1, "Camera is not available."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15
    return-void

    .line 3584
    :cond_16
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isObjectTrackingRunning()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 3585
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_29

    const-string p1, "Object tracking is not running."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_29
    return-void

    .line 3590
    :cond_2a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3591
    :try_start_2d
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mObjectTrackingResultChecker:Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3592
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_56

    const/4 v0, 0x0

    .line 3593
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mObjectTrackingResultChecker:Lcom/sonyericsson/android/camera/device/ObjectTrackingResultChecker;

    .line 3595
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->copy()Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object v0

    .line 3596
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_STATISTICS_OBJECT_SELECT_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x2

    .line 3598
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3596
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3599
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_STATISTICS_OBJECT_SELECT_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->setOneTimeRequestAsync(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Ljava/lang/Object;Z)V

    .line 3602
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setObjectTrackingTarget(Z)V

    return-void

    :catchall_56
    move-exception p1

    .line 3592
    :try_start_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw p1
.end method

.method stopPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .registers 5

    .line 527
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    .line 529
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 530
    :try_start_e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewResultChecker:Lcom/sonyericsson/android/camera/device/PreviewResultChecker;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 531
    monitor-exit p1
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_19

    .line 532
    iput-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewResultChecker:Lcom/sonyericsson/android/camera/device/PreviewResultChecker;

    return-void

    :catchall_19
    move-exception v0

    .line 531
    :try_start_1a
    monitor-exit p1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method stopPreviewTaskSynchronized(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .registers 5

    .line 536
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sonyericsson/android/camera/device/CameraController$StopPreviewTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThreadSync(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    const/4 v0, 0x0

    .line 537
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/CameraController;->triggerRestartPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    return-void
.end method

.method stopSceneRecognition(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .registers 6

    .line 3421
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p1

    if-nez p1, :cond_16

    .line 3423
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_15

    const-string p1, "Camera is not available."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15
    return-void

    .line 3426
    :cond_16
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->isSceneRecognitionRunning()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 3427
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_29

    const-string p1, "Scene recognition is not running."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_29
    return-void

    .line 3432
    :cond_2a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3433
    :try_start_2d
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mSceneConditionRecognitionResultChecker:Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 3434
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mSceneConditionRecognitionResultChecker:Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;

    .line 3435
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_6b

    .line 3438
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getStillHdr()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$StillHdr;->getApi2Value(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 3441
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    .line 3442
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3441
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3443
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_STATISTICS_SCENE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    .line 3445
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3443
    invoke-virtual {v0, v1, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3446
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_STILL_HDR_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3449
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_STATISTICS_CONDITION_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 3451
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3449
    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void

    :catchall_6b
    move-exception p1

    .line 3435
    :try_start_6c
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw p1
.end method

.method triggerRestartPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V
    .registers 7

    const-string v0, "triggerRestartPreview()"

    .line 3964
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3966
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_12

    return-void

    :cond_12
    const/4 v1, 0x0

    if-eqz p2, :cond_1a

    .line 3972
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPrevPreviewSessionRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    .line 3973
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->forceRequestCreatePreviewSession()V

    .line 3976
    :cond_1a
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    if-nez p2, :cond_25

    .line 3977
    new-instance p2, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    invoke-direct {p2, p1, v1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    .line 3980
    :cond_25
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object p2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p2, v1, :cond_33

    move p2, v2

    goto :goto_34

    :cond_33
    move p2, v3

    :goto_34
    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->needVideoHdr(Z)V
    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->access$3700(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Z)V

    .line 3981
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    .line 3982
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getShutterTrigger()Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    move-result-object p2

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;->GESTURE_SHUTTER:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    if-ne p2, v0, :cond_42

    goto :goto_43

    :cond_42
    move v2, v3

    :goto_43
    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->needCapturedFrame(Z)V
    invoke-static {p1, v2}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->access$3800(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Z)V

    return-void
.end method

.method updateRecordingProfile(Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)V
    .registers 3

    .line 4650
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->needToUpdateSurface(Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4651
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mProfile:Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    :cond_8
    return-void
.end method

.method updateRepeatingRequest(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .registers 7

    .line 2014
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mIsCameraParametersReady:Z

    if-nez v0, :cond_5

    return-void

    .line 2018
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mRepeatingRequestStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2019
    :try_start_8
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraController$3;->$SwitchMap$com$sonyericsson$android$camera$device$CameraController$RepeatingRequestState:[I

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mRepeatingRequestState:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_4e

    goto :goto_49

    .line 2035
    :pswitch_17
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$SetRecordingRequestTask;

    invoke-direct {v1, p0, p1, v2}, Lcom/sonyericsson/android/camera/device/CameraController$SetRecordingRequestTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    .line 2036
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    goto :goto_49

    :pswitch_22
    const/4 p1, 0x1

    .line 2032
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mIsPendingRepeatingRequest:Z

    goto :goto_49

    .line 2022
    :pswitch_26
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mStreamingImageReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_3f

    .line 2023
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mStreamingImageReader:Landroid/media/ImageReader;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewFrameReceiver:Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    .line 2024
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getDeviceThreadHandler()Landroid/os/Handler;

    move-result-object v4

    .line 2023
    invoke-virtual {v1, v3, v4}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 2025
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mStreamingImageReader:Landroid/media/ImageReader;

    invoke-direct {v1, p0, p1, v3, v2}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/media/ImageReader;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    goto :goto_44

    .line 2027
    :cond_3f
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;

    invoke-direct {v1, p0, p1, v2, v2}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/media/ImageReader;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    .line 2029
    :goto_44
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    .line 2042
    :goto_49
    monitor-exit v0

    return-void

    :catchall_4b
    move-exception p1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_8 .. :try_end_4d} :catchall_4b

    throw p1

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_26
        :pswitch_22
        :pswitch_17
    .end packed-switch
.end method
