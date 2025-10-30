.class Lcom/sonyericsson/android/camera/device/BypassCameraController;
.super Ljava/lang/Object;
.source "BypassCameraController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/device/BypassCameraController$SetConfigTask;,
        Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestSnapshotFreeTask;,
        Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestSnapshotReadyTask;,
        Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;,
        Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareCaptureImageReaderTask;,
        Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;,
        Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;,
        Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;,
        Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotCallbackImpl;,
        Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotFreeCallbackImpl;,
        Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotReadyCallbackImpl;,
        Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestFinishBurstShotTask;,
        Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareBurstShotTask;,
        Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestSnapshotTask;,
        Lcom/sonyericsson/android/camera/device/BypassCameraController$OnImageReaderDetachedListenerImpl;,
        Lcom/sonyericsson/android/camera/device/BypassCameraController$FinishBurstCallbackImpl;,
        Lcom/sonyericsson/android/camera/device/BypassCameraController$PrepareBurstCallbackImpl;,
        Lcom/sonyericsson/android/camera/device/BypassCameraController$BypassCameraControllerCallback;
    }
.end annotation


# static fields
.field private static final BYPASSCAMERA_IMAGE_READER_BUFFER_NUM:I = 0x1

.field private static final BYPASSCAMERA_MIN_CAPTURE_BUFFER_NUM:I = 0x2

.field private static final BYPASS_CAMERA_CALLBACK_TIMEOUT_MILLIS:I = 0x7d0

.field private static final CLOSE_BYPASS_CAMERA_TASK_WAKE_LOCK_TAG:Ljava/lang/String; = "CameraApp"

.field private static final IMAGE_READER_PREPARED_WAIT_TIME_MILLIS:J = 0x3e8L

.field private static final THREAD_NAME:Ljava/lang/String; = "BypassCamera"

.field private static final TIMEOUT_WAIT_FOR_ALL_SNAPSHOT_DONE_MILLIS_REC:J = 0xbb8L


# instance fields
.field private final mApplicationContext:Landroid/content/Context;

.field private volatile mBypassCamera:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

.field private mBypassCameraParameters:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;

.field private mBypassCameraRequestExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mCallback:Lcom/sonyericsson/android/camera/device/BypassCameraController$BypassCameraControllerCallback;

.field private final mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

.field private volatile mCaptureImageReader:Landroid/media/ImageReader;

.field private mCapturingBufferNum:I

.field private mCloseBypassCameraWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mImageFpsMonitor:Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;

.field private mImageReaderHandler:Landroid/os/Handler;

.field private volatile mImageReaderPreparedLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mImageReaderPreparedLockObject:Ljava/lang/Object;

.field private mImageReaderReadyLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mImageReaderReadyLockObject:Ljava/lang/Object;

.field private mIsApplyBypassCameraModeRequired:Z

.field private mIsSnapshotReady:Z

.field private mIsSnapshotReadyWaiting:Z

.field private mPreCaptureResult:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

.field private volatile mPrevCaptureImageReaderRequest:Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;

.field private final mRemainRequestQueue:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;",
            ">;"
        }
    .end annotation
.end field

.field private final mSavingPhotoRequestQueue:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final mShutterFpsMonitor:Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;

.field private mSnapshotCallback:Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotCallbackImpl;

.field private mWaitForAllSnapshotLock:Ljava/util/concurrent/CountDownLatch;

.field private mWaitForSnapshotReadyLock:Ljava/util/concurrent/CountDownLatch;

.field private final mWaitForSnapshotReadyLockObject:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/BypassCameraController$BypassCameraControllerCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V
    .registers 7

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mBypassCamera:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    .line 122
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mBypassCameraParameters:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;

    .line 123
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSnapshotCallback:Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotCallbackImpl;

    .line 124
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mBypassCameraRequestExecutor:Ljava/util/concurrent/ExecutorService;

    .line 125
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mPreCaptureResult:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    const/4 v1, 0x0

    .line 126
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mIsApplyBypassCameraModeRequired:Z

    const/4 v2, -0x1

    .line 164
    iput v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCapturingBufferNum:I

    .line 166
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCaptureImageReader:Landroid/media/ImageReader;

    .line 209
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mIsSnapshotReadyWaiting:Z

    .line 221
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mIsSnapshotReady:Z

    .line 245
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mApplicationContext:Landroid/content/Context;

    .line 247
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mRemainRequestQueue:Ljava/util/Deque;

    .line 248
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    .line 250
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "ImageReader"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 252
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderHandler:Landroid/os/Handler;

    .line 254
    new-instance p1, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->getCaptureNum()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;-><init>(I)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mShutterFpsMonitor:Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;

    .line 255
    new-instance p1, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->getCaptureNum()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;-><init>(I)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageFpsMonitor:Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;

    .line 257
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderReadyLockObject:Ljava/lang/Object;

    .line 258
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderPreparedLockObject:Ljava/lang/Object;

    .line 259
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForSnapshotReadyLockObject:Ljava/lang/Object;

    .line 261
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    .line 262
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCallback:Lcom/sonyericsson/android/camera/device/BypassCameraController$BypassCameraControllerCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/BypassCameraController$BypassCameraControllerCallback;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCallback:Lcom/sonyericsson/android/camera/device/BypassCameraController$BypassCameraControllerCallback;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mShutterFpsMonitor:Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageFpsMonitor:Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mBypassCamera:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mBypassCamera:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Landroid/content/Context;
    .registers 1

    .line 89
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/android/camera/device/BypassCameraController;Z)V
    .registers 2

    .line 89
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->setSnapshotReadyWaiting(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V
    .registers 1

    .line 89
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->awaitImageReaderReady()V

    return-void
.end method

.method static synthetic access$1700(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mBypassCameraRequestExecutor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/sonyericsson/android/camera/device/BypassCameraController;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mBypassCameraRequestExecutor:Ljava/util/concurrent/ExecutorService;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/sonyericsson/android/camera/device/BypassCameraController;Landroid/media/ImageReader;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;
    .registers 2

    .line 89
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->dequeueSavingPhotoRequestAndAttachImageReader(Landroid/media/ImageReader;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/sonyericsson/android/camera/device/BypassCameraController;Landroid/content/SharedPreferences;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/device/CameraParameters;)Z
    .registers 5

    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->preloadSettings(Landroid/content/SharedPreferences;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/device/CameraParameters;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2000(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mBypassCameraParameters:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mBypassCameraParameters:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotCallbackImpl;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSnapshotCallback:Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotCallbackImpl;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotCallbackImpl;)Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotCallbackImpl;
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSnapshotCallback:Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotCallbackImpl;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Ljava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;
    .registers 4

    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->getVideoMode(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Ljava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2800(Lcom/sonyericsson/android/camera/device/BypassCameraController;Landroid/graphics/Rect;)Landroid/util/Size;
    .registers 2

    .line 89
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->toAndroidUtilSize(Landroid/graphics/Rect;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2900(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .registers 2

    .line 89
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->handleTimeout(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V
    .registers 1

    .line 89
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->createSnapshotReadyCountDownLatch()V

    return-void
.end method

.method static synthetic access$3200(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForSnapshotReadyLock:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic access$3202(Lcom/sonyericsson/android/camera/device/BypassCameraController;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForSnapshotReadyLock:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V
    .registers 1

    .line 89
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->finalizeCaptureImageReader()V

    return-void
.end method

.method static synthetic access$3400(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mPrevCaptureImageReaderRequest:Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;

    return-object p0
.end method

.method static synthetic access$3402(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;)Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mPrevCaptureImageReaderRequest:Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Z
    .registers 1

    .line 89
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mIsSnapshotReady:Z

    return p0
.end method

.method static synthetic access$3502(Lcom/sonyericsson/android/camera/device/BypassCameraController;Z)Z
    .registers 2

    .line 89
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mIsSnapshotReady:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V
    .registers 1

    .line 89
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->releaseCloseBypassCameraWakeLock()V

    return-void
.end method

.method static synthetic access$3702(Lcom/sonyericsson/android/camera/device/BypassCameraController;I)I
    .registers 2

    .line 89
    iput p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCapturingBufferNum:I

    return p1
.end method

.method static synthetic access$4400(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/lang/Object;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderReadyLockObject:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderReadyLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic access$4502(Lcom/sonyericsson/android/camera/device/BypassCameraController;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderReadyLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;Ljava/util/concurrent/CountDownLatch;)V
    .registers 4

    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->prepareCaptureImageReader(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V
    .registers 1

    .line 89
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->awaitImageReaderPrepared()V

    return-void
.end method

.method static synthetic access$4900(Lcom/sonyericsson/android/camera/device/BypassCameraController;Ljava/util/concurrent/CountDownLatch;)V
    .registers 2

    .line 89
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->unlockImageReaderReadyLatch(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/Deque;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/lang/Object;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderPreparedLockObject:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderPreparedLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic access$5102(Lcom/sonyericsson/android/camera/device/BypassCameraController;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderPreparedLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method static synthetic access$5200(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V
    .registers 1

    .line 89
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->finalizeCaptureImageReaderInternal()V

    return-void
.end method

.method static synthetic access$5300(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Landroid/os/Handler;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/sonyericsson/android/camera/device/BypassCameraController;I)V
    .registers 2

    .line 89
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->requestPrepareSnapshot(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Landroid/media/ImageReader;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCaptureImageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method static synthetic access$602(Lcom/sonyericsson/android/camera/device/BypassCameraController;Landroid/media/ImageReader;)Landroid/media/ImageReader;
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCaptureImageReader:Landroid/media/ImageReader;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/Deque;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mRemainRequestQueue:Ljava/util/Deque;

    return-object p0
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/lang/String;
    .registers 1

    .line 89
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->dumpRequestQueueStatus()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForAllSnapshotLock:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic access$902(Lcom/sonyericsson/android/camera/device/BypassCameraController;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForAllSnapshotLock:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method private acquireCloseBypassCameraWakeLock()V
    .registers 4

    .line 753
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_10

    const-string p0, "Application context is not set. So wake lock could not be acquired for closing camera."

    .line 754
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void

    .line 759
    :cond_10
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCloseBypassCameraWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_29

    .line 760
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "CameraApp"

    .line 761
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCloseBypassCameraWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 764
    :cond_29
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCloseBypassCameraWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v0, 0x186a0

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void
.end method

.method private awaitAllSnapshot()V
    .registers 6

    .line 1449
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForAllSnapshotLock:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_4d

    const/4 v0, 0x1

    .line 1450
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "awaitAllSnapshot() Waiting to complete all snapshots. count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForAllSnapshotLock:Ljava/util/concurrent/CountDownLatch;

    .line 1451
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1450
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1453
    :try_start_24
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForAllSnapshotLock:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v0, 0xbb8

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-eqz p0, :cond_3a

    const-string p0, "awaitAllSnapshot() snapshots done are completed"

    .line 1456
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_4d

    :cond_3a
    const-string p0, "awaitAllSnapshot: Timeout of waiting all snapshots done."

    .line 1458
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_43} :catch_44

    goto :goto_4d

    :catch_44
    const-string p0, "awaitAllSnapshot Intercept waiting request done."

    .line 1462
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_4d
    :goto_4d
    return-void
.end method

.method private awaitImageReaderPrepared()V
    .registers 4

    .line 1712
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderPreparedLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1713
    :try_start_3
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderPreparedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1714
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_17

    if-eqz p0, :cond_16

    const-wide/16 v0, 0x3e8

    .line 1718
    :try_start_a
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_16

    :catch_10
    move-exception p0

    const-string v0, "Waiting ImageReader Prepared is interrupted."

    .line 1720
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_16
    :goto_16
    return-void

    :catchall_17
    move-exception p0

    .line 1714
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p0
.end method

.method private awaitImageReaderReady()V
    .registers 5

    .line 1740
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderReadyLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1741
    :try_start_3
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderReadyLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1742
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_28

    if-eqz p0, :cond_27

    .line 1746
    :try_start_8
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_27

    :catch_c
    move-exception p0

    const/4 v0, 0x1

    .line 1748
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waiting ImageReader ready is interrupted. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_27
    :goto_27
    return-void

    :catchall_28
    move-exception p0

    .line 1742
    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method private changeBypassCameraModeAccordingToCurrentSetting(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .registers 7

    .line 1287
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 1291
    :cond_9
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_71

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked required:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mIsApplyBypassCameraModeRequired:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " cameraId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1292
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " video:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    .line 1293
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isVideo()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " sessionId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " preProcessState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    .line 1295
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getPreProcessState()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " preview:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1296
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " picture:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1297
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPictureSize()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1291
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1299
    :cond_71
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_78

    return-void

    .line 1303
    :cond_78
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isVideo()Z

    move-result v1

    if-nez v1, :cond_87

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPictureSize()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_87

    return-void

    .line 1307
    :cond_87
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getPreProcessState()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->NOT_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-eq v0, v1, :cond_a6

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    .line 1308
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getPreProcessState()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_RELEASED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-eq v0, v1, :cond_a6

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    .line 1310
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getPreProcessState()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_DONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-eq v0, v1, :cond_a6

    return-void

    .line 1317
    :cond_a6
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mIsApplyBypassCameraModeRequired:Z

    if-nez v0, :cond_ab

    return-void

    .line 1321
    :cond_ab
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v1, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v3}, Lcom/sonyericsson/android/camera/device/BypassCameraController$ChangeBypassCameraModeTask;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/BypassCameraController$1;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    .line 1323
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mIsApplyBypassCameraModeRequired:Z

    return-void
.end method

.method private createSavingPhotoRemainCountDownLatch()Ljava/util/concurrent/CountDownLatch;
    .registers 6

    .line 519
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    monitor-enter v0

    .line 520
    :try_start_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForAllSnapshotLock:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForAllSnapshotLock:Ljava/util/concurrent/CountDownLatch;

    .line 521
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_17

    .line 522
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForAllSnapshotLock:Ljava/util/concurrent/CountDownLatch;

    monitor-exit v0

    return-object p0

    .line 525
    :cond_17
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_28

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->dumpRequestQueueStatus()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 527
    :cond_28
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    if-nez v1, :cond_3b

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mRemainRequestQueue:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    if-nez v1, :cond_3b

    const/4 p0, 0x0

    .line 528
    monitor-exit v0

    return-object p0

    .line 530
    :cond_3b
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    .line 531
    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mRemainRequestQueue:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Deque;->size()I

    move-result p0

    add-int/2addr v2, p0

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    monitor-exit v0

    return-object v1

    :catchall_4f
    move-exception p0

    .line 532
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_4f

    throw p0
.end method

.method private createSnapshotReadyCountDownLatch()V
    .registers 4

    .line 713
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForSnapshotReadyLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 714
    :try_start_3
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mIsSnapshotReadyWaiting:Z

    if-eqz v1, :cond_f

    .line 715
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForSnapshotReadyLock:Ljava/util/concurrent/CountDownLatch;

    .line 717
    :cond_f
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method private dequeueSavingPhotoRequestAndAttachImageReader(Landroid/media/ImageReader;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;
    .registers 6

    .line 613
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    monitor-enter v0

    .line 614
    :try_start_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    if-eqz v1, :cond_1d

    .line 617
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mRemainRequestQueue:Ljava/util/Deque;

    iget-object v3, v1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    invoke-interface {v2, v3}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 618
    new-instance v2, Lcom/sonyericsson/android/camera/device/BypassCameraController$OnImageReaderDetachedListenerImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sonyericsson/android/camera/device/BypassCameraController$OnImageReaderDetachedListenerImpl;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/BypassCameraController$1;)V

    invoke-virtual {v1, p1, v2}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->attachImageReader(Landroid/media/ImageReader;Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$OnImageReaderDetachedListener;)V

    .line 621
    :cond_1d
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_2e

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->dumpRequestQueueStatus()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v2

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 623
    :cond_2e
    monitor-exit v0

    return-object v1

    :catchall_30
    move-exception p0

    .line 624
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw p0
.end method

.method private dumpRequestQueueStatus()Ljava/lang/String;
    .registers 3

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requests ["

    .line 506
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    .line 508
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 509
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mRemainRequestQueue:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Deque;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    .line 510
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 511
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private finalizeCaptureImageReader()V
    .registers 3

    .line 1694
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/device/BypassCameraController$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$2;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private declared-synchronized finalizeCaptureImageReaderInternal()V
    .registers 3

    monitor-enter p0

    .line 1703
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCaptureImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_12

    .line 1704
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCaptureImageReader:Landroid/media/ImageReader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 1705
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCaptureImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 1706
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCaptureImageReader:Landroid/media/ImageReader;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 1708
    :cond_12
    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    .line 1702
    monitor-exit p0

    throw v0
.end method

.method private getApplicationContext()Landroid/content/Context;
    .registers 1

    .line 216
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mApplicationContext:Landroid/content/Context;

    return-object p0
.end method

.method private getVideoMode(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Ljava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;
    .registers 5

    .line 779
    sget-object p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;->NORMAL:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    if-eqz p2, :cond_24

    const-string v0, "on"

    .line 783
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 784
    sget-object p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;->STEADYSHOT:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    goto :goto_24

    :cond_f
    const-string v0, "on"

    .line 785
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 786
    sget-object p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;->STEADYSHOT:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    goto :goto_24

    :cond_1a
    const-string v0, "intelligent_active"

    .line 787
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_24

    .line 788
    sget-object p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;->INTELLIGENTACTIVE:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    .line 792
    :cond_24
    :goto_24
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isVideoHdrSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p1

    if-eqz p1, :cond_39

    if-eqz p3, :cond_39

    .line 794
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne p3, p1, :cond_39

    .line 795
    sget-object p1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;->STEADYSHOT:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    if-ne p0, p1, :cond_37

    .line 796
    sget-object p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;->HDR_STEADYSHOT:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    goto :goto_39

    .line 798
    :cond_37
    sget-object p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;->HDR:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    :cond_39
    :goto_39
    return-object p0
.end method

.method private handleTimeout(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .registers 2

    .line 1500
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p0

    .line 1501
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;->NONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->setRequested(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;)V

    .line 1502
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;->NONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->setPerformed(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;)V

    .line 1503
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->setOtherError()V

    return-void
.end method

.method private isModified(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 5

    const/4 p0, 0x1

    if-eqz p1, :cond_1d

    if-nez p2, :cond_6

    goto :goto_1d

    .line 500
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_1c

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    if-eq p1, p2, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :cond_1c
    :goto_1c
    return p0

    :cond_1d
    :goto_1d
    return p0
.end method

.method private isModified(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Z
    .registers 3

    const/4 p0, 0x1

    if-eqz p1, :cond_b

    if-nez p2, :cond_6

    goto :goto_b

    :cond_6
    if-eq p1, p2, :cond_9

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0

    :cond_b
    :goto_b
    return p0
.end method

.method private static makeCountDownLatchInfo(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_14

    .line 132
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": null"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 134
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private preloadSettings(Landroid/content/SharedPreferences;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/device/CameraParameters;)Z
    .registers 13

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_f2

    .line 283
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result p0

    if-eqz p0, :cond_6b

    .line 284
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, p0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-nez p0, :cond_1d

    .line 286
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getDefaultVideoSize(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p0

    .line 289
    :cond_1d
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, p1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    .line 291
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 293
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 295
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne p2, v3, :cond_3e

    .line 297
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v3

    .line 296
    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getPreferredPreviewSizeForHdrVideo(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object v3

    goto :goto_91

    .line 300
    :cond_3e
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v3

    .line 299
    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getPreferredPreviewSizeForVideo(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object v3

    .line 301
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-eqz v4, :cond_52

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-nez v4, :cond_5a

    .line 303
    :cond_52
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getPreferredPreviewSizeFromCaptureSize(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 306
    :cond_5a
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 308
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v5

    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedPreviewSizes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object v5

    .line 305
    invoke-static {v4, v3, v5}, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver;->getOptimalVideoPreviewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object v3

    goto :goto_91

    .line 317
    :cond_6b
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, p0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    if-nez p0, :cond_79

    .line 319
    invoke-static {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object p0

    .line 323
    :cond_79
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result p2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 322
    invoke-static {p1, p2, v3}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getOptimalPreviewSize(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 325
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object p0

    move-object p1, v2

    move-object p2, p1

    move-object v2, p0

    move-object p0, p2

    .line 328
    :goto_91
    invoke-virtual {p4, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setVideoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    .line 329
    invoke-virtual {p4, v3}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setPreviewSize(Landroid/graphics/Rect;)V

    .line 330
    invoke-virtual {p4, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setVideoStabilizer(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p4, v2}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setPictureSize(Landroid/graphics/Rect;)V

    .line 332
    invoke-virtual {p4, p2}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setVideoHdr(Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)V

    .line 334
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_f1

    new-array p0, v1, [Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Load settings from user settings. mode:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " video:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {p4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " preview:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {p4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " vs:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {p4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoStabilizer()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " picture:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {p4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPictureSize()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " modified:true"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v0

    .line 334
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_f1
    return v1

    :cond_f2
    if-eqz p1, :cond_2ae

    .line 346
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result p2

    if-eqz p2, :cond_1e5

    .line 347
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 349
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->getCategory()Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    move-result-object v3

    const-string v4, ""

    .line 348
    invoke-static {v3, p3, v4}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->createPrefix(Lcom/sonyericsson/android/camera/configuration/ParameterCategory;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 351
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-direct {v4, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 353
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_123

    .line 355
    invoke-virtual {v4, p2}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->parseValueString(Ljava/lang/String;)V

    .line 358
    :cond_123
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 360
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 362
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->getCategory()Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    move-result-object v4

    const-string v5, ""

    .line 361
    invoke-static {v4, p3, v5}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->createPrefix(Lcom/sonyericsson/android/camera/configuration/ParameterCategory;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 364
    new-instance v5, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-direct {v5, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 366
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_152

    .line 369
    invoke-virtual {v5, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->parseValueString(Ljava/lang/String;)V

    .line 371
    :cond_152
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    .line 373
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 374
    new-instance v6, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-direct {v6, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 376
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_177

    .line 378
    invoke-virtual {v6, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->parseValueString(Ljava/lang/String;)V

    .line 380
    :cond_177
    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-nez p2, :cond_187

    .line 386
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p2

    .line 385
    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getDefaultVideoSize(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p2

    :cond_187
    if-nez v3, :cond_191

    .line 395
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 394
    invoke-static {v3, p3, p2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->getRecommendedVideoStabilizerValue(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    move-result-object v3

    .line 399
    :cond_191
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne p1, v4, :cond_19e

    .line 401
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getPreferredPreviewSizeForHdrVideo(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object v4

    goto :goto_1ae

    .line 404
    :cond_19e
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v4

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v5

    .line 405
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v6

    .line 404
    invoke-static {v4, v5, v6}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getOptimalPreviewSize(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    .line 408
    :goto_1ae
    invoke-virtual {p4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v5

    invoke-direct {p0, v5, p2}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->isModified(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Z

    move-result v5

    if-nez v5, :cond_1d0

    .line 409
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoStabilizer()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d0

    .line 410
    invoke-virtual {p4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->isModified(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_243

    .line 411
    :cond_1d0
    invoke-virtual {p4, p2}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setVideoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    .line 412
    invoke-virtual {p4, v4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setPreviewSize(Landroid/graphics/Rect;)V

    .line 413
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setVideoStabilizer(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p4, v2}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setPictureSize(Landroid/graphics/Rect;)V

    .line 415
    invoke-virtual {p4, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setVideoHdr(Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)V

    goto/16 :goto_258

    .line 420
    :cond_1e5
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 421
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->getCategory()Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, p3, v4}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->createPrefix(Lcom/sonyericsson/android/camera/configuration/ParameterCategory;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 424
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-direct {v4, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 426
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_20e

    .line 428
    invoke-virtual {v4, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->parseValueString(Ljava/lang/String;)V

    .line 431
    :cond_20e
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    if-nez p1, :cond_21a

    .line 433
    invoke-static {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object p1

    .line 436
    :cond_21a
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p2

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v3

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 435
    invoke-static {p2, v3, v4}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getOptimalPreviewSize(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p2

    .line 438
    invoke-virtual {p4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPictureSize()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->isModified(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_245

    .line 439
    invoke-virtual {p4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->isModified(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_243

    goto :goto_245

    :cond_243
    move p0, v0

    goto :goto_259

    .line 440
    :cond_245
    :goto_245
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p4, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setPictureSize(Landroid/graphics/Rect;)V

    .line 441
    invoke-virtual {p4, p2}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setPreviewSize(Landroid/graphics/Rect;)V

    .line 442
    invoke-virtual {p4, v2}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setVideoStabilizer(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p4, v2}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setVideoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    .line 444
    invoke-virtual {p4, v2}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setVideoHdr(Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)V

    :goto_258
    move p0, v1

    .line 449
    :goto_259
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_2ad

    new-array p1, v1, [Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Load settings from shared-preference. mode:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " video:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {p4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " preview:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    invoke-virtual {p4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " vs:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    invoke-virtual {p4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoStabilizer()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " picture:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    invoke-virtual {p4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPictureSize()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " modified:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    .line 449
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2ad
    return p0

    .line 459
    :cond_2ae
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isVideo()Z

    move-result p1

    if-eqz p1, :cond_2e7

    .line 461
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    .line 460
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getDefaultVideoSize(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p1

    .line 462
    invoke-virtual {p4, p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setVideoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    .line 464
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 463
    invoke-static {p0, p3, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->getRecommendedVideoStabilizerValue(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    move-result-object p0

    .line 465
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 463
    invoke-virtual {p4, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setVideoStabilizer(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result p2

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object p1

    .line 466
    invoke-static {p0, p2, p1}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getOptimalPreviewSize(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p4, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setPreviewSize(Landroid/graphics/Rect;)V

    .line 468
    invoke-virtual {p4, v2}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setPictureSize(Landroid/graphics/Rect;)V

    goto :goto_30b

    .line 470
    :cond_2e7
    invoke-static {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p4, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setPictureSize(Landroid/graphics/Rect;)V

    .line 472
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result p1

    invoke-virtual {p4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPictureSize()Landroid/graphics/Rect;

    move-result-object p2

    .line 471
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getOptimalPreviewSize(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p4, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setPreviewSize(Landroid/graphics/Rect;)V

    .line 473
    invoke-virtual {p4, v2}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setVideoStabilizer(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p4, v2}, Lcom/sonyericsson/android/camera/device/CameraParameters;->setVideoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    .line 477
    :goto_30b
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_35c

    new-array p0, v1, [Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Load settings from camera device. mode:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " video:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    invoke-virtual {p4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " preview:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    invoke-virtual {p4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " vs:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    invoke-virtual {p4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoStabilizer()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " picture:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-virtual {p4}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPictureSize()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " modified:true"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v0

    .line 477
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_35c
    return v1
.end method

.method private prepareCaptureImageReader(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;Ljava/util/concurrent/CountDownLatch;)V
    .registers 13

    .line 1587
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCaptureImageReader:Landroid/media/ImageReader;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7a

    .line 1589
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mPrevCaptureImageReaderRequest:Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;

    # invokes: Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->isSameRequest(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;)Z
    invoke-static {p2, v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->access$4700(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1590
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1b

    const-string p0, "Same ImageReader has bean already requested"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1b
    if-eqz p3, :cond_20

    .line 1592
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1594
    :cond_20
    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->mCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;
    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->access$4300(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;

    move-result-object p0

    if-eqz p0, :cond_2d

    .line 1595
    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->mCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;
    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->access$4300(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;->onInitialized()V

    :cond_2d
    return-void

    .line 1600
    :cond_2e
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_7a

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImageReader may be changed to: buffNum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1601
    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->mImageReaderBufferNum:I
    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->access$4000(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->mCapturingBufferNum:I
    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->access$4100(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1602
    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->mCaptureSize:Landroid/graphics/Rect;
    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->access$4200(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->mCaptureSize:Landroid/graphics/Rect;
    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->access$4200(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 1600
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1605
    :cond_7a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCaptureImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_80

    move v8, v2

    goto :goto_81

    :cond_80
    move v8, v1

    .line 1607
    :goto_81
    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->mCapturingBufferNum:I
    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->access$4100(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCapturingBufferNum:I

    .line 1608
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/device/BypassCameraController$1;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p3

    move-object v7, p2

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/android/camera/device/BypassCameraController$1;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Ljava/util/concurrent/CountDownLatch;Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private releaseCloseBypassCameraWakeLock()V
    .registers 2

    .line 768
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCloseBypassCameraWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_e

    const-string p0, "Wake lock is not created correctly."

    .line 769
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void

    .line 773
    :cond_e
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCloseBypassCameraWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method private requestPrepareSnapshot(I)V
    .registers 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-wide/16 v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1674
    :try_start_4
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mBypassCamera:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_8f

    if-nez v4, :cond_38

    .line 1683
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderPreparedLockObject:Ljava/lang/Object;

    monitor-enter v4

    .line 1684
    :try_start_b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderPreparedLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_33

    .line 1685
    new-array p1, v3, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "countDown ImageReaderPreparedLatch to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderPreparedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1686
    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    .line 1685
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1687
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderPreparedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1689
    :cond_33
    monitor-exit v4

    return-void

    :catchall_35
    move-exception p0

    monitor-exit v4
    :try_end_37
    .catchall {:try_start_b .. :try_end_37} :catchall_35

    throw p0

    .line 1677
    :cond_38
    :try_start_38
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v4, :cond_54

    new-array v4, v3, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestPrepareSnapshot() totalBufNumber:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1679
    :cond_54
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mBypassCamera:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCaptureImageReader:Landroid/media/ImageReader;

    .line 1680
    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    .line 1679
    invoke-virtual {v4, v5, p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->requestPrepareSnapshot(Landroid/view/Surface;I)V
    :try_end_5f
    .catchall {:try_start_38 .. :try_end_5f} :catchall_8f

    .line 1683
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderPreparedLockObject:Ljava/lang/Object;

    monitor-enter p1

    .line 1684
    :try_start_62
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderPreparedLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v4, :cond_8a

    .line 1685
    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "countDown ImageReaderPreparedLatch to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderPreparedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1686
    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    .line 1685
    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1687
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderPreparedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1689
    :cond_8a
    monitor-exit p1

    return-void

    :catchall_8c
    move-exception p0

    monitor-exit p1
    :try_end_8e
    .catchall {:try_start_62 .. :try_end_8e} :catchall_8c

    throw p0

    :catchall_8f
    move-exception p1

    .line 1683
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderPreparedLockObject:Ljava/lang/Object;

    monitor-enter v4

    .line 1684
    :try_start_93
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderPreparedLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v5, :cond_bb

    .line 1685
    new-array v3, v3, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "countDown ImageReaderPreparedLatch to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderPreparedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1686
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    .line 1685
    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1687
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderPreparedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1689
    :cond_bb
    monitor-exit v4
    :try_end_bc
    .catchall {:try_start_93 .. :try_end_bc} :catchall_bd

    .line 1690
    throw p1

    :catchall_bd
    move-exception p0

    .line 1689
    :try_start_be
    monitor-exit v4
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_bd

    throw p0
.end method

.method private setSnapshotReadyWaiting(Z)V
    .registers 3

    .line 721
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForSnapshotReadyLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 722
    :try_start_3
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mIsSnapshotReadyWaiting:Z

    .line 723
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mIsSnapshotReadyWaiting:Z

    if-nez p1, :cond_12

    .line 724
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForSnapshotReadyLock:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_12

    .line 725
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForSnapshotReadyLock:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 728
    :cond_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method private toAndroidUtilSize(Landroid/graphics/Rect;)Landroid/util/Size;
    .registers 3

    .line 1949
    new-instance p0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method

.method private unlockImageReaderReadyLatch(Ljava/util/concurrent/CountDownLatch;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 1757
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderReadyLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1758
    :try_start_6
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1759
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderReadyLatch:Ljava/util/concurrent/CountDownLatch;

    if-ne v1, p1, :cond_10

    const/4 p1, 0x0

    .line 1760
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderReadyLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1762
    :cond_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw p0
.end method


# virtual methods
.method awaitAllSnapshotDone()V
    .registers 2

    .line 1442
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->createSavingPhotoRemainCountDownLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForAllSnapshotLock:Ljava/util/concurrent/CountDownLatch;

    .line 1443
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->awaitAllSnapshot()V

    return-void
.end method

.method closeBypassCamera(ZLcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .registers 6

    .line 1803
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mPreCaptureResult:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 1804
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mPreCaptureResult:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->close()V

    .line 1805
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mPreCaptureResult:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    .line 1808
    :cond_c
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->createSavingPhotoRemainCountDownLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForAllSnapshotLock:Ljava/util/concurrent/CountDownLatch;

    .line 1809
    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    if-nez v0, :cond_19

    return-void

    .line 1815
    :cond_19
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;->BYPASS_CAMERA_CLOSING:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->setRequested(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;)V

    .line 1818
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForAllSnapshotLock:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_2a

    .line 1819
    new-instance v0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForAllSnapshotLock:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, p0, v2, p2, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Ljava/util/concurrent/CountDownLatch;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/BypassCameraController$1;)V

    goto :goto_2f

    .line 1821
    :cond_2a
    new-instance v0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;

    invoke-direct {v0, p0, p2, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CloseBypassCameraTask;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/BypassCameraController$1;)V

    .line 1825
    :goto_2f
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->acquireCloseBypassCameraWakeLock()V

    if-eqz p1, :cond_3a

    .line 1828
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThreadSync(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    goto :goto_3f

    .line 1830
    :cond_3a
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    :goto_3f
    return-void
.end method

.method commit(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .registers 2

    .line 1908
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->awaitImageReaderReady()V

    .line 1909
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->changeBypassCameraModeAccordingToCurrentSetting(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method commitParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .registers 5

    .line 1913
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v1, Lcom/sonyericsson/android/camera/device/BypassCameraController$SetConfigTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController$SetConfigTask;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/BypassCameraController$1;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    return-void
.end method

.method dump(Ljava/lang/StringBuilder;)V
    .registers 5

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBypassCamera:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mBypassCamera:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWaitForAllSnapshotLock"

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mWaitForAllSnapshotLock:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->makeCountDownLatchInfo(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mImageReaderReadyLatch"

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mImageReaderReadyLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->makeCountDownLatchInfo(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRemainRequestQueue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mRemainRequestQueue:Ljava/util/Deque;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSavingPhotoRequestQueue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsSnapshotReadyWaiting:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mIsSnapshotReadyWaiting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCapturingBufferNum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCapturingBufferNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPreCaptureResult:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mPreCaptureResult:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method enqueueSavingPhotoRequest(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    .registers 4

    .line 536
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    monitor-enter v0

    .line 537
    :try_start_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    invoke-interface {v1, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 539
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_19

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->dumpRequestQueueStatus()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 540
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method getAndClearPreCaptureResult()Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;
    .registers 3

    .line 736
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mPreCaptureResult:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    const/4 v1, 0x0

    .line 737
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mPreCaptureResult:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    return-object v0
.end method

.method getBypassCameraInstance()Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;
    .registers 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 1836
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mBypassCamera:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    return-object p0
.end method

.method getRemainPrevSavingRequestCount()I
    .registers 5

    .line 684
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    monitor-enter v0

    .line 685
    :try_start_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mRemainRequestQueue:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 687
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    if-eqz v3, :cond_16

    .line 689
    iget-object v3, v3, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-boolean v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->takenByFastCapture:Z

    if-eqz v3, :cond_16

    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    .line 696
    :cond_2d
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mRemainRequestQueue:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_33
    :goto_33
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    if-eqz v2, :cond_33

    .line 698
    iget-boolean v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->takenByFastCapture:Z

    if-eqz v2, :cond_33

    add-int/lit8 v1, v1, -0x1

    goto :goto_33

    .line 704
    :cond_48
    monitor-exit v0

    return v1

    :catchall_4a
    move-exception p0

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4a

    throw p0
.end method

.method getRemainSavingPhotoRequestCount()I
    .registers 5

    .line 674
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    monitor-enter v0

    .line 675
    :try_start_3
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->dumpRequestQueueStatus()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 676
    :cond_14
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mRemainRequestQueue:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Deque;->size()I

    move-result p0

    add-int/2addr v1, p0

    monitor-exit v0

    return v1

    :catchall_23
    move-exception p0

    .line 677
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method

.method isBypassCameraNextShotAvailable()Z
    .registers 2

    .line 1732
    iget v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCapturingBufferNum:I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->getRemainSavingPhotoRequestCount()I

    move-result p0

    sub-int/2addr v0, p0

    if-lez v0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method isSnapshotRunning()Z
    .registers 6

    .line 667
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    monitor-enter v0

    .line 668
    :try_start_3
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_14

    new-array v1, v3, [Ljava/lang/String;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->dumpRequestQueueStatus()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 669
    :cond_14
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Deque;->size()I

    move-result p0

    if-lez p0, :cond_1d

    move v2, v3

    :cond_1d
    monitor-exit v0

    return v2

    :catchall_1f
    move-exception p0

    .line 670
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method openBypassCamera(Landroid/content/SharedPreferences;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;
    .registers 16

    .line 1768
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->hasDeviceError()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_41

    .line 1783
    :cond_d
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;-><init>()V

    .line 1785
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    invoke-virtual {p4}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;-><init>(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    .line 1786
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;->BYPASS_CAMERA_OPENING:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->setRequested(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;)V

    .line 1787
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->addOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;)V

    .line 1792
    invoke-virtual {p4}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getCameraInfo()Lcom/sonyericsson/android/camera/device/CameraInfo;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraInfo(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/device/CameraInfo;)V

    .line 1794
    iget-object v9, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v10, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;

    const/4 v8, 0x0

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/device/BypassCameraController$OpenBypassCameraTask;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Landroid/content/SharedPreferences;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/device/BypassCameraController$1;)V

    invoke-virtual {v9, v10}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    return-object v0

    :cond_41
    :goto_41
    const-string p0, "BypassCameraController.openBypassCamera() is rejected because PlatformCapability is not ready."

    .line 1772
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method peekLastSavingPhotoRequest()Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;
    .registers 5

    .line 659
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    monitor-enter v0

    .line 660
    :try_start_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    .line 661
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v2, :cond_1c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->dumpRequestQueueStatus()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 662
    :cond_1c
    monitor-exit v0

    return-object v1

    :catchall_1e
    move-exception p0

    .line 663
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method prepareCaptureImageReader(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;)V
    .registers 13

    .line 1476
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_27

    .line 1478
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_26

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    const/4 p2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This session has been closed, so this request was refused. sessionId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, p2

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_26
    return-void

    .line 1484
    :cond_27
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1485
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v0

    :goto_37
    move-object v6, v0

    goto :goto_3e

    .line 1487
    :cond_39
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPictureSize()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_37

    .line 1490
    :goto_3e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v9, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareCaptureImageReaderTask;

    const/4 v4, 0x1

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    .line 1494
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->getCaptureNum()I

    move-result v1

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    .line 1493
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareCaptureImageReaderTask;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;IILandroid/graphics/Rect;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;Lcom/sonyericsson/android/camera/device/BypassCameraController$1;)V

    .line 1490
    invoke-virtual {v0, v9}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    return-void
.end method

.method requestApplyBypassCameraMode()V
    .registers 2

    const/4 v0, 0x1

    .line 1953
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mIsApplyBypassCameraModeRequired:Z

    return-void
.end method

.method requestFinishBurstShot(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .registers 5

    .line 608
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v1, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestFinishBurstShotTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestFinishBurstShotTask;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/BypassCameraController$1;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    return-void
.end method

.method requestPrepareBurstShot(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .registers 5

    .line 600
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v1, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareBurstShotTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestPrepareBurstShotTask;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/BypassCameraController$1;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    return-void
.end method

.method requestSnapshot(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;I)V
    .registers 13

    .line 565
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    if-nez v0, :cond_16

    .line 567
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_15

    const-string p0, "Camera is not available."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15
    return-void

    .line 571
    :cond_16
    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->create(Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;)Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->startSnapshot:J

    .line 573
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mSavingPhotoRequestQueue:Ljava/util/Deque;

    monitor-enter v1

    .line 574
    :try_start_23
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mBypassCamera:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    if-eqz v2, :cond_4a

    .line 575
    iget v2, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCapturingBufferNum:I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->getRemainSavingPhotoRequestCount()I

    move-result v3

    sub-int/2addr v2, v3

    .line 576
    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 577
    sget-object p3, Lcom/sonyericsson/android/camera/util/PerfLog;->BYPASSCAMERA_REQUEST_SNAPSHOT:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/util/PerfLog;->transit()V

    .line 578
    iget-object p3, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v2, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestSnapshotTask;

    const/4 v8, 0x0

    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestSnapshotTask;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;ILcom/sonyericsson/android/camera/device/BypassCameraController$1;)V

    invoke-virtual {p3, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    .line 580
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->enqueueSavingPhotoRequest(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V

    goto :goto_53

    :cond_4a
    const-string p1, "requestSnapshot() mBypassCamera == null"

    .line 583
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 585
    :goto_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_23 .. :try_end_54} :catchall_7b

    .line 587
    new-instance p1, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p3

    invoke-direct {p1, p0, p3}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    new-instance p0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;

    iget-object p2, p2, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object p2, p2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->savedFileType:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    sget-object p3, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO_DURING_REC:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    if-ne p2, p3, :cond_6e

    sget-object p2, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->PICTURE_TAKING_DURING_VIDEO_RECORDING:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    goto :goto_70

    :cond_6e
    sget-object p2, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->PICTURE_TAKING:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    :goto_70
    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;)V

    .line 588
    invoke-virtual {p1, p0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object p0

    .line 592
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    return-void

    :catchall_7b
    move-exception p0

    .line 585
    :try_start_7c
    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    throw p0
.end method

.method requestSnapshotFree(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .registers 5

    .line 1875
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v1, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestSnapshotFreeTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestSnapshotFreeTask;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/BypassCameraController$1;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    return-void
.end method

.method requestSnapshotReady(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .registers 5

    .line 1840
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    new-instance v1, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestSnapshotReadyTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sonyericsson/android/camera/device/BypassCameraController$RequestSnapshotReadyTask;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/BypassCameraController$1;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    return-void
.end method

.method setPreCaptureResult(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)V
    .registers 2

    .line 732
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController;->mPreCaptureResult:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    return-void
.end method
