.class public Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;
.super Ljava/lang/Object;
.source "HandSignsDetector.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;,
        Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectResult;,
        Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;,
        Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$FpsLimiter;
    }
.end annotation


# static fields
.field private static final DEBUG_FPS_CALCULATE_INTERVAL_MILLIS:I = 0xbb8

.field private static final DETECT_FRAME_RATE:I = 0xa

.field private static final MAX_DETECT_FRAME_HEIGHT:I = 0x1e0

.field private static final MAX_DETECT_FRAME_WIDTH:I = 0x280

.field private static final NV21_BUFFER_SIZE_MULTIPLIER:F = 1.5f

.field public static final TAG:Ljava/lang/String; = "HandSignsDetector"


# instance fields
.field private mCurrentDetect:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;

.field private final mDetectContext:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

.field private final mFpsLimiter:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$FpsLimiter;

.field private final mGetFrameTask:Ljava/lang/Runnable;

.field private mImageCallback:Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;

.field private mImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

.field private mIsStarted:Z

.field private final mListener:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultListener;

.field private mNativeWrapper:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;

.field private final mResultScheduler:Landroid/os/Handler;

.field private mRoll:I

.field private mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultListener;Landroid/os/Handler;)V
    .registers 5

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mIsStarted:Z

    .line 179
    new-instance v0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;-><init>(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mDetectContext:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    .line 181
    new-instance v0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$FpsLimiter;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$FpsLimiter;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mFpsLimiter:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$FpsLimiter;

    .line 193
    new-instance v0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$1;-><init>(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mGetFrameTask:Ljava/lang/Runnable;

    .line 210
    new-instance v0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$2;-><init>(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mImageCallback:Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;

    .line 236
    iput-object p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mListener:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultListener;

    .line 237
    new-instance p1, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mNativeWrapper:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;

    .line 238
    new-instance p1, Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    const-string v0, "HandSignsDetector"

    invoke-direct {p1, v0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    .line 239
    iput-object p2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mResultScheduler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mDetectContext:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)I
    .registers 1

    .line 26
    iget p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mRoll:I

    return p0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mListener:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultListener;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Landroid/os/Handler;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mResultScheduler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->postGetFrame()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Z
    .registers 1

    .line 26
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mIsStarted:Z

    return p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mImageCallback:Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/util/BackgroundWorker;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/device/ImageRetriever;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;IILjava/nio/ByteBuffer;)V
    .registers 4

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->postDetect(IILjava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mNativeWrapper:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;

    return-object p0
.end method

.method private postDetect(IILjava/nio/ByteBuffer;)V
    .registers 5

    .line 331
    new-instance v0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;-><init>(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;IILjava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mCurrentDetect:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;

    .line 332
    iget-object p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mCurrentDetect:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 333
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1f

    const-string p0, "detection posted"

    .line 334
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1f
    return-void
.end method

.method private postGetFrame()V
    .registers 6

    .line 323
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mFpsLimiter:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$FpsLimiter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$FpsLimiter;->hit()J

    move-result-wide v0

    .line 324
    iget-object v2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mGetFrameTask:Ljava/lang/Runnable;

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 325
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_31

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get frame posted with delay: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v2

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_31
    return-void
.end method


# virtual methods
.method public getDetectHeight()I
    .registers 2

    .line 253
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mDetectContext:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 254
    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mDetectContext:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->getDetectHeight()I

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public getDetectWidth()I
    .registers 2

    .line 244
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mDetectContext:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 245
    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mDetectContext:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->getDetectWidth()I

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public isStarted()Z
    .registers 1

    .line 310
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mIsStarted:Z

    return p0
.end method

.method public release()V
    .registers 2

    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->quit()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_5

    .line 319
    :catch_5
    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mNativeWrapper:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;->release()V

    return-void
.end method

.method public setLayoutOrientation(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;)V
    .registers 6

    .line 287
    sget-object v0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$3;->$SwitchMap$com$sonyericsson$android$camera$CameraActivity$LayoutOrientation:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3b

    const/4 v3, 0x2

    if-eq v0, v3, :cond_38

    const/4 v3, 0x3

    if-eq v0, v3, :cond_33

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1a

    const/16 p1, 0xb4

    .line 298
    iput p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mRoll:I

    goto :goto_3f

    .line 301
    :cond_1a
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Abnormal orientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_33
    const/16 p1, 0x5a

    .line 295
    iput p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mRoll:I

    goto :goto_3f

    .line 292
    :cond_38
    iput v1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mRoll:I

    goto :goto_3f

    :cond_3b
    const/16 p1, 0x10e

    .line 289
    iput p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mRoll:I

    .line 303
    :goto_3f
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_5f

    new-array p1, v2, [Ljava/lang/String;

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rotation updated to:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mRoll:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_5f
    return-void
.end method

.method public startDetect(Lcom/sonyericsson/android/camera/device/ImageRetriever;)V
    .registers 2

    .line 262
    iput-object p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

    .line 263
    iget-object p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mDetectContext:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->reset()V

    const/4 p1, 0x1

    .line 265
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mIsStarted:Z

    .line 266
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->postGetFrame()V

    return-void
.end method

.method public stopDetect()V
    .registers 5

    .line 271
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mCurrentDetect:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 272
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mCurrentDetect:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 273
    iput-object v1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mCurrentDetect:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;

    .line 276
    :cond_12
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mGetFrameTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 278
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mDetectContext:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    monitor-enter v0

    .line 279
    :try_start_20
    iget-object v2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mImageCallback:Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;

    invoke-interface {v2, v3}, Lcom/sonyericsson/android/camera/device/ImageRetriever;->unregisterPreviewStreamingCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;)V

    .line 280
    iput-object v1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

    const/4 v1, 0x0

    .line 281
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mIsStarted:Z

    .line 282
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception p0

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_20 .. :try_end_30} :catchall_2e

    throw p0
.end method
