.class public Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;
.super Ljava/lang/Object;
.source "FaultDetectorImpl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$Callback;
.implements Lcom/sonyericsson/android/camera/faultdetection/FaultDetector;
.implements Lcom/sonyericsson/android/camera/faultdetection/FaultDetectionCameraCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectorOrientationListener;,
        Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;,
        Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;,
        Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;
    }
.end annotation


# static fields
.field private static final CROP_START_DELAY_MILLIS:I = 0xc8

.field private static final IF_THREAD_NAME:Ljava/lang/String; = "FaultDIF"

.field private static final IF_THREAD_TERMINATION_TIMEOUT_SECONDS:J = 0x3L

.field private static final MSG_REQUEST_CROP_FACES:I = 0x1

.field private static final MSG_REQUEST_CROP_PREVIEW:I = 0x0

.field private static final MSG_RESET_CROP_FACES:I = 0x5

.field private static final MSG_SHUTTER_DONE:I = 0x2

.field private static final MSG_SNAPSHOT_DONE:I = 0x3

.field private static final MSG_SNAPSHOT_REQUESTED:I = 0x4

.field private static final NO_REQUEST_ID:I = -0x1

.field private static final WORKER_THREAD_NAME:Ljava/lang/String; = "FaultDW"

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

.field private mCameraInfoOrientation:I

.field private mCropFaceTimer:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;

.field private mCropPreviewTimer:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;

.field private mDetectorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceOrientation:I

.field private mEyeBlinkDetector:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

.field private mFaceComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFaceStore:Lcom/sonyericsson/android/camera/faultdetection/FaceStore;

.field private mFaultDetectionHandler:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;

.field private mFaultPhotoDetectionListener:Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$FaultPhotoDetectionListener;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIfExecutor:Ljava/util/concurrent/ExecutorService;

.field private mInHouseDetector:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;

.field private mIsFront:Z

.field private mIsInitialized:Z

.field private mIsOneShot:Z

.field private mOrientationListener:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectorOrientationListener;

.field private mSnapshotDetectionTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/faultdetection/DetectionType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Z)V
    .registers 4
    .param p1    # Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lcom/sonyericsson/android/camera/faultdetection/FaceStore;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/faultdetection/FaceStore;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mFaceStore:Lcom/sonyericsson/android/camera/faultdetection/FaceStore;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mSnapshotDetectionTypeList:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mDetectorList:Ljava/util/List;

    .line 90
    new-instance v0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$1;-><init>(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mFaceComparator:Ljava/util/Comparator;

    .line 99
    iput-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    .line 100
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mIsOneShot:Z

    .line 102
    new-instance p1, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;

    .line 103
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Application;

    invoke-direct {p1, p2}, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;-><init>(Landroid/app/Application;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mInHouseDetector:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;

    .line 104
    iget-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mDetectorList:Ljava/util/List;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mInHouseDetector:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance p1, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectorOrientationListener;

    .line 106
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectorOrientationListener;-><init>(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mOrientationListener:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectorOrientationListener;

    .line 108
    new-instance p1, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;-><init>(I)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mCropPreviewTimer:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;

    .line 110
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mIsOneShot:Z

    if-nez p1, :cond_6f

    .line 111
    new-instance p1, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Application;

    invoke-direct {p1, p2}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;-><init>(Landroid/app/Application;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mEyeBlinkDetector:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    .line 112
    iget-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mDetectorList:Ljava/util/List;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mEyeBlinkDetector:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance p1, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mEyeBlinkDetector:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->getDetectionFps()I

    move-result p2

    invoke-direct {p1, p2}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;-><init>(I)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mCropFaceTimer:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;

    :cond_6f
    const-string p1, "FaultDIF"

    .line 116
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mIfExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)V
    .registers 1

    .line 52
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->initialize()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)I
    .registers 1

    .line 52
    iget p0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mDeviceOrientation:I

    return p0
.end method

.method static synthetic access$1002(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;I)I
    .registers 2

    .line 52
    iput p1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mDeviceOrientation:I

    return p1
.end method

.method static synthetic access$1100(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)Z
    .registers 1

    .line 52
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mIsFront:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)V
    .registers 1

    .line 52
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->stopCropFaceTimer()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)Lcom/sonyericsson/android/camera/faultdetection/FaceStore;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mFaceStore:Lcom/sonyericsson/android/camera/faultdetection/FaceStore;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)V
    .registers 1

    .line 52
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->restartCropFaceTimer()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)Ljava/util/List;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mSnapshotDetectionTypeList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Z)Landroid/graphics/Bitmap;
    .registers 4

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->cropFaceWithMargin(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)V
    .registers 1

    .line 52
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->shutdown()V

    return-void
.end method

.method static synthetic access$2100(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 52
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->createFaceSet(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mInHouseDetector:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mEyeBlinkDetector:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)Z
    .registers 1

    .line 52
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mIsInitialized:Z

    return p0
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mFaultDetectionHandler:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;

    return-object p0
.end method

.method private createFaceSet(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/faultdetection/Face;",
            ">;"
        }
    .end annotation

    .line 498
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 499
    iget-object v1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mEyeBlinkDetector:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    if-nez v1, :cond_a

    return-object v0

    .line 503
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    return-object v0

    .line 507
    :cond_11
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 508
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x2

    if-le p1, v2, :cond_2b

    .line 509
    invoke-virtual {v1}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;

    .line 510
    iget-object v2, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mFaceComparator:Ljava/util/Comparator;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->sort(Ljava/util/Comparator;)V

    .line 511
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->offerFirst(Ljava/lang/Object;)Z

    .line 514
    :cond_2b
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;

    .line 515
    new-instance v2, Lcom/sonyericsson/android/camera/faultdetection/Face;

    invoke-direct {v2}, Lcom/sonyericsson/android/camera/faultdetection/Face;-><init>()V

    .line 517
    iget v3, v1, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;->faceId:I

    iput v3, v2, Lcom/sonyericsson/android/camera/faultdetection/Face;->id:I

    .line 518
    iget-object v1, v1, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;->faceRect:Landroid/graphics/Rect;

    iput-object v1, v2, Lcom/sonyericsson/android/camera/faultdetection/Face;->rect:Landroid/graphics/Rect;

    .line 519
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->getRotationForSnapshot()I

    move-result v1

    iput v1, v2, Lcom/sonyericsson/android/camera/faultdetection/Face;->rotation:I

    .line 521
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mEyeBlinkDetector:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->getMaxFaceNumPerFrame()I

    move-result v2

    if-lt v1, v2, :cond_2f

    :cond_5d
    return-object v0
.end method

.method private cropFaceWithMargin(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Z)Landroid/graphics/Bitmap;
    .registers 23

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 549
    iget-object v2, v0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mEyeBlinkDetector:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    const/4 v3, 0x0

    if-nez v2, :cond_a

    return-object v3

    .line 553
    :cond_a
    iget-object v2, v0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    new-instance v4, Landroid/util/Size;

    .line 554
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/util/Size;-><init>(II)V

    move-object/from16 v5, p2

    .line 553
    invoke-virtual {v2, v4, v5}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->convertActiveArrayRectToTargetSize(Landroid/util/Size;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    if-nez v2, :cond_2b

    const-string v1, "Unexpected: Face rect is not in snapshot."

    .line 556
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return-object v3

    .line 559
    :cond_2b
    iget-object v4, v0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    .line 560
    invoke-virtual {v4, v2, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->calculateExtendedFaceRect(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v2

    .line 561
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 562
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 564
    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_fe

    .line 568
    iget-object v4, v0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mEyeBlinkDetector:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->getInputSize()Landroid/util/Size;

    move-result-object v4

    .line 569
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    .line 570
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    .line 573
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v9

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 574
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v11, -0x1000000

    .line 576
    invoke-virtual {v10, v11}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 583
    iget v11, v5, Landroid/graphics/Rect;->left:I

    iget v12, v2, Landroid/graphics/Rect;->left:I

    if-ge v11, v12, :cond_8d

    .line 584
    iget v11, v2, Landroid/graphics/Rect;->left:I

    iget v12, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    mul-float/2addr v11, v6

    float-to-int v11, v11

    goto :goto_8e

    :cond_8d
    move v11, v7

    .line 588
    :goto_8e
    iget v12, v5, Landroid/graphics/Rect;->top:I

    iget v13, v2, Landroid/graphics/Rect;->top:I

    if-ge v12, v13, :cond_9d

    .line 589
    iget v12, v2, Landroid/graphics/Rect;->top:I

    iget v13, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    mul-float/2addr v12, v8

    float-to-int v12, v12

    goto :goto_9e

    :cond_9d
    move v12, v7

    .line 593
    :goto_9e
    iget v13, v5, Landroid/graphics/Rect;->right:I

    iget v14, v2, Landroid/graphics/Rect;->right:I

    if-le v13, v14, :cond_ad

    .line 594
    iget v13, v5, Landroid/graphics/Rect;->right:I

    iget v14, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v14

    int-to-float v13, v13

    mul-float/2addr v13, v6

    float-to-int v6, v13

    goto :goto_ae

    :cond_ad
    move v6, v7

    .line 598
    :goto_ae
    iget v13, v5, Landroid/graphics/Rect;->bottom:I

    iget v14, v2, Landroid/graphics/Rect;->bottom:I

    if-le v13, v14, :cond_bc

    .line 599
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    mul-float/2addr v5, v8

    float-to-int v7, v5

    .line 603
    :cond_bc
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v8

    sub-int/2addr v8, v6

    .line 604
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-direct {v5, v11, v12, v8, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v4, p1

    .line 605
    invoke-virtual {v10, v4, v2, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 607
    iget-boolean v2, v0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mIsFront:Z

    if-eqz v2, :cond_fd

    .line 608
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    if-eqz v1, :cond_e3

    .line 610
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_e6

    .line 612
    :cond_e3
    invoke-virtual {v2, v4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    :goto_e6
    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 615
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    .line 616
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    const/16 v18, 0x0

    move-object v12, v9

    move-object/from16 v17, v2

    .line 615
    invoke-static/range {v12 .. v18}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 617
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    return-object v1

    :cond_fd
    return-object v9

    .line 565
    :cond_fe
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected: Face rect do not intersects snapshot,"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getRotationForSnapshot()I
    .registers 3

    .line 532
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mIsFront:Z

    if-eqz v0, :cond_c

    .line 533
    iget v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mCameraInfoOrientation:I

    iget v1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mDeviceOrientation:I

    sub-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    return v0

    .line 535
    :cond_c
    iget v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mCameraInfoOrientation:I

    iget v1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mDeviceOrientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method private initialize()V
    .registers 4

    .line 411
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mIsInitialized:Z

    if-eqz v0, :cond_5

    return-void

    .line 414
    :cond_5
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_12

    const-string v0, "E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 416
    :cond_12
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FaultDW"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 417
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 418
    new-instance v0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;-><init>(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mFaultDetectionHandler:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;

    .line 420
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mInHouseDetector:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mFaultDetectionHandler:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;->initialize(Landroid/os/Handler;)Z

    move-result v0

    if-nez v0, :cond_44

    const-string v0, "Failed to initialize InHouseDetector."

    .line 421
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 422
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->releaseFaultDetectionHandler()V

    return-void

    .line 425
    :cond_44
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mInHouseDetector:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;->setCallback(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$Callback;)V

    .line 426
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mEyeBlinkDetector:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    if-eqz v0, :cond_67

    .line 427
    iget-object v1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mFaultDetectionHandler:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->initialize(Landroid/os/Handler;)Z

    move-result v0

    if-nez v0, :cond_62

    const-string v0, "Failed to initialize EyeBlinkDetector."

    .line 428
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 429
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->releaseFaultDetectionHandler()V

    return-void

    .line 432
    :cond_62
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mEyeBlinkDetector:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->setCallback(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$Callback;)V

    .line 434
    :cond_67
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mOrientationListener:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectorOrientationListener;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectorOrientationListener;->enable()V

    const/4 v0, 0x1

    .line 435
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mIsInitialized:Z

    .line 436
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->startCropFaceTimer()V

    .line 437
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->startCropPreviewTimer()V

    .line 439
    sget-object v1, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

    .line 440
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 439
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isSaveInHouseEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_8d

    sget-object v1, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

    .line 441
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isSaveEyeBlinkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 442
    :cond_8d
    invoke-static {}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->getInstance()Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->clear()V

    .line 445
    :cond_94
    iget-object v1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mInHouseDetector:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;->canDetectInPreview()Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 446
    iget-object v1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mInHouseDetector:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->onRunningStateChanged(ZLcom/sonyericsson/android/camera/faultdetection/DetectorBase;)V

    .line 452
    :cond_a1
    invoke-static {}, Lcom/sonyericsson/android/camera/faultdetection/DetectorUtil;->update()V

    .line 454
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_b1

    const-string v0, "X"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_b1
    return-void
.end method

.method private isIfExecutorReleased()Z
    .registers 2

    .line 407
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mIfExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mIfExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method private releaseFaultDetectionHandler()V
    .registers 4

    .line 485
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mFaultDetectionHandler:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;

    # invokes: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->removeCallbacksAndMessages()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->access$600(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;)V

    .line 486
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 488
    :try_start_a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    const/4 v0, 0x0

    .line 489
    iput-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 490
    iput-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mFaultDetectionHandler:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_14} :catch_15

    goto :goto_23

    :catch_15
    move-exception v0

    const/4 v1, 0x1

    .line 492
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :goto_23
    return-void
.end method

.method private restartCropFaceTimer()V
    .registers 1

    .line 677
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->stopCropFaceTimer()V

    .line 678
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->startCropFaceTimer()V

    return-void
.end method

.method private restartCropPreviewTimer()V
    .registers 2

    .line 682
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "stop CropPreviewTimer"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 683
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mCropPreviewTimer:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;

    # invokes: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;->cancel()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;->access$500(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;)V

    .line 684
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->startCropPreviewTimer()V

    return-void
.end method

.method private shutdown()V
    .registers 3

    .line 458
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mIsInitialized:Z

    if-nez v0, :cond_5

    return-void

    .line 461
    :cond_5
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_12

    const-string v0, "E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_12
    const/4 v0, 0x0

    .line 463
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mIsInitialized:Z

    .line 464
    iget-object v1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mCropFaceTimer:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;

    if-eqz v1, :cond_1c

    .line 465
    # invokes: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;->cancel()V
    invoke-static {v1}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;->access$500(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;)V

    .line 467
    :cond_1c
    iget-object v1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mCropPreviewTimer:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;

    # invokes: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;->cancel()V
    invoke-static {v1}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;->access$500(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;)V

    .line 468
    iget-object v1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mOrientationListener:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectorOrientationListener;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectorOrientationListener;->disable()V

    .line 470
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->releaseFaultDetectionHandler()V

    .line 472
    iget-object v1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mInHouseDetector:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;->canDetectInPreview()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 473
    iget-object v1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mInHouseDetector:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->onRunningStateChanged(ZLcom/sonyericsson/android/camera/faultdetection/DetectorBase;)V

    .line 476
    :cond_36
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mInHouseDetector:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;->shutdown()V

    .line 477
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mEyeBlinkDetector:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    if-eqz v0, :cond_42

    .line 478
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->shutdown()V

    .line 480
    :cond_42
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mFaceStore:Lcom/sonyericsson/android/camera/faultdetection/FaceStore;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/faultdetection/FaceStore;->clear()V

    .line 481
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_54

    const-string v0, "X"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_54
    return-void
.end method

.method private startCropFaceTimer()V
    .registers 3

    .line 626
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mCropFaceTimer:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;

    if-nez v0, :cond_5

    return-void

    .line 630
    :cond_5
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mIsInitialized:Z

    if-eqz v0, :cond_31

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mIsOneShot:Z

    if-eqz v0, :cond_e

    goto :goto_31

    .line 634
    :cond_e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mEyeBlinkDetector:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->canDetectInPreview()Z

    move-result v0

    if-nez v0, :cond_19

    return-void

    .line 638
    :cond_19
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_26

    const-string v0, "start CropFaceTimer"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 639
    :cond_26
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mCropFaceTimer:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;

    new-instance v1, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$5;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$5;-><init>(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)V

    # invokes: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;->start(Ljava/util/TimerTask;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;->access$900(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;Ljava/util/TimerTask;)V

    return-void

    :cond_31
    :goto_31
    return-void
.end method

.method private startCropPreviewTimer()V
    .registers 3

    .line 657
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mIsInitialized:Z

    if-nez v0, :cond_5

    return-void

    .line 661
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mInHouseDetector:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;->canDetectInPreview()Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    .line 665
    :cond_e
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1b

    const-string v0, "start CropPreviewTimer"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 666
    :cond_1b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mCropPreviewTimer:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;

    new-instance v1, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$6;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$6;-><init>(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)V

    # invokes: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;->start(Ljava/util/TimerTask;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;->access$900(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;Ljava/util/TimerTask;)V

    return-void
.end method

.method private stopCropFaceTimer()V
    .registers 2

    .line 650
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mCropFaceTimer:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;

    if-eqz v0, :cond_16

    .line 651
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_11

    const-string v0, "stop CropFaceTimer"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 652
    :cond_11
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mCropFaceTimer:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;

    # invokes: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;->cancel()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;->access$500(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;)V

    :cond_16
    return-void
.end method


# virtual methods
.method public changeDetectableIfNeeded(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 4

    .line 126
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mIsFront:Z

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mInHouseDetector:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;->canDetectInPreview()Z

    move-result v0

    .line 128
    iget-object v1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mInHouseDetector:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;->changeDetectableIfNeeded(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 129
    iget-object v1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mInHouseDetector:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;->canDetectInPreview()Z

    move-result v1

    if-eq v1, v0, :cond_1c

    .line 130
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->restartCropPreviewTimer()V

    .line 133
    :cond_1c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mEyeBlinkDetector:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    if-eqz v0, :cond_34

    .line 134
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->canDetectInPreview()Z

    move-result v0

    .line 135
    iget-object v1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mEyeBlinkDetector:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->changeDetectableIfNeeded(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 136
    iget-object v1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mEyeBlinkDetector:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->canDetectInPreview()Z

    move-result v1

    if-eq v1, v0, :cond_34

    .line 137
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->restartCropFaceTimer()V

    .line 141
    :cond_34
    sget-object v0, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

    .line 142
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 141
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isSaveInHouseEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4c

    sget-object v0, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

    .line 143
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isSaveEyeBlinkEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 144
    :cond_4c
    invoke-static {}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->getInstance()Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->setCapturingModeName(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    :cond_53
    return-void
.end method

.method public changeDetectableIfNeeded(Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;)V
    .registers 4

    .line 150
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mInHouseDetector:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;->canDetectInPreview()Z

    move-result v0

    .line 151
    iget-object v1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mInHouseDetector:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;->changeDetectableIfNeeded(Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;)V

    .line 152
    iget-object v1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mInHouseDetector:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;->canDetectInPreview()Z

    move-result v1

    if-eq v1, v0, :cond_16

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->restartCropPreviewTimer()V

    .line 156
    :cond_16
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mEyeBlinkDetector:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    if-eqz v0, :cond_2e

    .line 157
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->canDetectInPreview()Z

    move-result v0

    .line 158
    iget-object v1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mEyeBlinkDetector:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->changeDetectableIfNeeded(Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;)V

    .line 159
    iget-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mEyeBlinkDetector:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->canDetectInPreview()Z

    move-result p1

    if-eq p1, v0, :cond_2e

    .line 160
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->restartCropFaceTimer()V

    :cond_2e
    return-void
.end method

.method public declared-synchronized clearStoredFaces()V
    .registers 2

    monitor-enter p0

    .line 338
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mFaceStore:Lcom/sonyericsson/android/camera/faultdetection/FaceStore;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/faultdetection/FaceStore;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 339
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCropRegionChanged()V
    .registers 3

    .line 167
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->isIfExecutorReleased()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 171
    :cond_7
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mIsInitialized:Z

    if-eqz v0, :cond_29

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mIsOneShot:Z

    if-eqz v0, :cond_10

    goto :goto_29

    .line 175
    :cond_10
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mEyeBlinkDetector:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    if-nez v0, :cond_15

    return-void

    .line 181
    :cond_15
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mCropFaceTimer:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;

    # invokes: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;->isScheduled()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;->access$000(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$CroppingRequestTimer;)Z

    move-result v0

    if-nez v0, :cond_1e

    return-void

    .line 186
    :cond_1e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mFaultDetectionHandler:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;

    const/4 v1, 0x5

    .line 187
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 186
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void

    :cond_29
    :goto_29
    return-void
.end method

.method public onDetected(Ljava/util/List;Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;ILcom/sonyericsson/android/camera/faultdetection/DetectorBase;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/faultdetection/DetectionType;",
            ">;",
            "Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;",
            "I",
            "Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;",
            ")V"
        }
    .end annotation

    .line 362
    sget-object p4, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mLock:Ljava/lang/Object;

    monitor-enter p4

    .line 363
    :try_start_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mFaultPhotoDetectionListener:Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$FaultPhotoDetectionListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_37

    .line 364
    sget-boolean p3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p3, :cond_35

    .line 365
    new-array p3, v1, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FaultPhotoDetectionListener is null. detection:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v2

    .line 365
    invoke-static {p3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 368
    :cond_35
    monitor-exit p4

    return-void

    .line 371
    :cond_37
    sget-object v0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;->SNAPSHOT:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;

    if-ne p2, v0, :cond_a5

    .line 373
    iget-object p2, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mSnapshotDetectionTypeList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 374
    iget-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mDetectorList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_46
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;

    .line 375
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->getSnapshotDetection()Z

    move-result p2

    if-nez p2, :cond_46

    .line 377
    monitor-exit p4

    return-void

    .line 381
    :cond_5a
    iget-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mFaultPhotoDetectionListener:Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$FaultPhotoDetectionListener;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mSnapshotDetectionTypeList:Ljava/util/List;

    invoke-interface {p1, p2, p3}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$FaultPhotoDetectionListener;->onDetect(Ljava/util/List;I)V

    .line 383
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_8f

    .line 384
    new-array p1, v1, [Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "request id:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", detection list:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mSnapshotDetectionTypeList:Ljava/util/List;

    .line 385
    invoke-interface {p3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v2

    .line 384
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 389
    :cond_8f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mDetectorList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_95
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_aa

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;

    .line 390
    invoke-virtual {p2, v2}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->setSnapshotDetection(Z)V

    goto :goto_95

    .line 393
    :cond_a5
    iget-object p2, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mFaultPhotoDetectionListener:Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$FaultPhotoDetectionListener;

    invoke-interface {p2, p1, p3}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$FaultPhotoDetectionListener;->onDetect(Ljava/util/List;I)V

    .line 395
    :cond_aa
    monitor-exit p4

    return-void

    :catchall_ac
    move-exception p1

    monitor-exit p4
    :try_end_ae
    .catchall {:try_start_3 .. :try_end_ae} :catchall_ac

    throw p1
.end method

.method public onRunningStateChanged(ZLcom/sonyericsson/android/camera/faultdetection/DetectorBase;)V
    .registers 4

    .line 400
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mFaultPhotoDetectionListener:Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$FaultPhotoDetectionListener;

    if-eqz v0, :cond_d

    instance-of p2, p2, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;

    if-eqz p2, :cond_d

    .line 401
    sget-object p2, Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;->IN_HOUSE_DETECTOR:Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;

    .line 402
    invoke-interface {v0, p2, p1}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$FaultPhotoDetectionListener;->onDetectorStateChanged(Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;Z)V

    :cond_d
    return-void
.end method

.method public onShutterDone(I)V
    .registers 5

    .line 214
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->isIfExecutorReleased()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 218
    :cond_7
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mIsInitialized:Z

    if-eqz v0, :cond_46

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mIsOneShot:Z

    if-eqz v0, :cond_10

    goto :goto_46

    .line 222
    :cond_10
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mEyeBlinkDetector:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->canDetectInSnapshot()Z

    move-result v0

    if-nez v0, :cond_1b

    return-void

    .line 227
    :cond_1b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mFaultDetectionHandler:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 229
    sget-object p1, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

    .line 230
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 229
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isSaveInHouseEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3e

    sget-object p1, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

    .line 231
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isSaveEyeBlinkEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_45

    .line 232
    :cond_3e
    invoke-static {}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->getInstance()Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->lock()V

    :cond_45
    return-void

    :cond_46
    :goto_46
    return-void
.end method

.method public onSnapshotRequested()V
    .registers 3

    .line 192
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->isIfExecutorReleased()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 196
    :cond_7
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mIsInitialized:Z

    if-eqz v0, :cond_2d

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mIsOneShot:Z

    if-eqz v0, :cond_10

    goto :goto_2d

    .line 200
    :cond_10
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mEyeBlinkDetector:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->canDetectInSnapshot()Z

    move-result v0

    if-nez v0, :cond_1b

    return-void

    .line 204
    :cond_1b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mFaultPhotoDetectionListener:Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$FaultPhotoDetectionListener;

    if-eqz v0, :cond_22

    .line 205
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$FaultPhotoDetectionListener;->onSnapshotRequested()V

    .line 209
    :cond_22
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mFaultDetectionHandler:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_2d
    :goto_2d
    return-void
.end method

.method public pauseDetection()V
    .registers 2

    .line 292
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->isIfExecutorReleased()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 296
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mInHouseDetector:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;->pause()V

    .line 297
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->restartCropPreviewTimer()V

    .line 299
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mEyeBlinkDetector:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    if-eqz v0, :cond_19

    .line 300
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->pause()V

    .line 301
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->restartCropFaceTimer()V

    .line 304
    :cond_19
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mFaceStore:Lcom/sonyericsson/android/camera/faultdetection/FaceStore;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/faultdetection/FaceStore;->clear()V

    return-void
.end method

.method public release()V
    .registers 3

    .line 343
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->isIfExecutorReleased()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 347
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mIfExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$4;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$4;-><init>(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 356
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mIfExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public requestDetection(Ljava/nio/ByteBuffer;I)V
    .registers 7

    .line 238
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->isIfExecutorReleased()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 242
    :cond_7
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    .line 243
    new-array v0, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 246
    :cond_25
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mIsInitialized:Z

    if-eqz v0, :cond_50

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mIsOneShot:Z

    if-eqz v0, :cond_2e

    goto :goto_50

    .line 250
    :cond_2e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mInHouseDetector:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;->canDetectInSnapshot()Z

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mEyeBlinkDetector:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    if-eqz v0, :cond_41

    .line 251
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->canDetectInSnapshot()Z

    move-result v0

    if-nez v0, :cond_41

    return-void

    .line 255
    :cond_41
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mFaultDetectionHandler:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;

    const/4 v2, 0x3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {v0, v2, p2, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 256
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_50
    :goto_50
    return-void
.end method

.method public resumeDetection()V
    .registers 2

    .line 309
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->isIfExecutorReleased()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 313
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mInHouseDetector:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;->resume()V

    .line 314
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->restartCropPreviewTimer()V

    .line 316
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mEyeBlinkDetector:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    if-eqz v0, :cond_19

    .line 317
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->resume()V

    .line 318
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->restartCropFaceTimer()V

    :cond_19
    return-void
.end method

.method public setCameraSensorOrientation(I)V
    .registers 2

    .line 121
    iput p1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mCameraInfoOrientation:I

    return-void
.end method

.method public setDetectionListener(Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$FaultPhotoDetectionListener;)V
    .registers 3

    .line 261
    sget-object v0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    :try_start_3
    iput-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mFaultPhotoDetectionListener:Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$FaultPhotoDetectionListener;

    .line 263
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public startDetection()V
    .registers 5

    .line 269
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mIfExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mIfExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_25

    .line 271
    :try_start_10
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mIfExecutor:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v1, 0x3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 272
    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_19} :catch_1a

    goto :goto_25

    :catch_1a
    const-string v0, "Failed to await executor termination."

    .line 274
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_26

    :cond_25
    :goto_25
    const/4 v0, 0x0

    .line 278
    :goto_26
    iget-object v1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mIfExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_30

    if-eqz v0, :cond_38

    :cond_30
    const-string v0, "FaultDIF"

    .line 279
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mIfExecutor:Ljava/util/concurrent/ExecutorService;

    .line 282
    :cond_38
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mIfExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$2;-><init>(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopDetection()V
    .registers 3

    .line 324
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->isIfExecutorReleased()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 328
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mIfExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$3;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$3;-><init>(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
