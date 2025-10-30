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
.field private final mBytesLock:Ljava/lang/Object;

.field private mCurrentDetect:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;

.field private final mDetectContext:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

.field private final mFpsLimiter:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$FpsLimiter;

.field private final mGetFrameTask:Ljava/lang/Runnable;

.field private mImageCallback:Lcom/sonyericsson/android/camera/device/PreviewFrameProvider$OnPreviewFrameCallback;

.field private mImageHeight:I

.field private mImageWidth:I

.field private mIsStarted:Z

.field private final mListener:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultListener;

.field private mNativeWrapper:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;

.field private mPreviewFrameProvider:Lcom/sonyericsson/android/camera/device/PreviewFrameProvider;

.field private final mResultScheduler:Landroid/os/Handler;

.field private mRoll:I

.field private mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

.field private mYuvBytes:[B


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultListener;Landroid/os/Handler;)V
    .registers 5

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mBytesLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 175
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mIsStarted:Z

    .line 177
    new-instance v0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;-><init>(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mDetectContext:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    .line 179
    new-instance v0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$FpsLimiter;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$FpsLimiter;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mFpsLimiter:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$FpsLimiter;

    .line 191
    new-instance v0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$1;-><init>(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mGetFrameTask:Ljava/lang/Runnable;

    .line 208
    new-instance v0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$2;-><init>(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mImageCallback:Lcom/sonyericsson/android/camera/device/PreviewFrameProvider$OnPreviewFrameCallback;

    .line 234
    iput-object p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mListener:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultListener;

    .line 235
    new-instance p1, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mNativeWrapper:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;

    .line 236
    new-instance p1, Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    const-string v0, "HandSignsDetector"

    invoke-direct {p1, v0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    .line 237
    iput-object p2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mResultScheduler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mDetectContext:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)I
    .registers 1

    .line 25
    iget p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mRoll:I

    return p0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultListener;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mListener:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultListener;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Landroid/os/Handler;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mResultScheduler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->postGetFrame()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Z
    .registers 1

    .line 25
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mIsStarted:Z

    return p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/device/PreviewFrameProvider$OnPreviewFrameCallback;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mImageCallback:Lcom/sonyericsson/android/camera/device/PreviewFrameProvider$OnPreviewFrameCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/util/BackgroundWorker;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/device/PreviewFrameProvider;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mPreviewFrameProvider:Lcom/sonyericsson/android/camera/device/PreviewFrameProvider;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;IILjava/nio/ByteBuffer;)V
    .registers 4

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->postDetect(IILjava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Ljava/lang/Object;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mBytesLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)[B
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mYuvBytes:[B

    return-object p0
.end method

.method static synthetic access$900(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mNativeWrapper:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;

    return-object p0
.end method

.method private postDetect(IILjava/nio/ByteBuffer;)V
    .registers 7

    .line 329
    iget v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mImageWidth:I

    if-ne v0, p1, :cond_8

    iget v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mImageHeight:I

    if-eq v0, p2, :cond_1d

    .line 330
    :cond_8
    iput p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mImageWidth:I

    .line 331
    iput p2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mImageHeight:I

    .line 332
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mBytesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 333
    :try_start_f
    iget v1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mImageWidth:I

    iget v2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mImageHeight:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mYuvBytes:[B

    .line 334
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_3d

    .line 336
    :cond_1d
    new-instance v0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;-><init>(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;IILjava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mCurrentDetect:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;

    .line 337
    iget-object p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mCurrentDetect:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 338
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_3c

    const-string p1, "detection posted"

    .line 339
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3c
    return-void

    :catchall_3d
    move-exception p1

    .line 334
    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw p1
.end method

.method private postGetFrame()V
    .registers 7

    .line 321
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mFpsLimiter:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$FpsLimiter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$FpsLimiter;->hit()J

    move-result-wide v0

    .line 322
    iget-object v2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mGetFrameTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 323
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_2f

    const/4 v2, 0x1

    .line 324
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get frame posted with delay: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2f
    return-void
.end method


# virtual methods
.method public getDetectHeight()I
    .registers 2

    .line 251
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mDetectContext:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 252
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mDetectContext:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->getDetectHeight()I

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public getDetectWidth()I
    .registers 2

    .line 242
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mDetectContext:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 243
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mDetectContext:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->getDetectWidth()I

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public isStarted()Z
    .registers 2

    .line 308
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mIsStarted:Z

    return v0
.end method

.method public release()V
    .registers 2

    .line 314
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->quit()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_5

    .line 317
    :catch_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mNativeWrapper:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;->release()V

    return-void
.end method

.method public setLayoutOrientation(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;)V
    .registers 5

    .line 285
    sget-object v0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$3;->$SwitchMap$com$sonyericsson$android$camera$CameraActivity$LayoutOrientation:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_54

    .line 299
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Abnormal orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_23
    const/16 p1, 0xb4

    .line 296
    iput p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mRoll:I

    goto :goto_34

    :pswitch_28
    const/16 p1, 0x5a

    .line 293
    iput p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mRoll:I

    goto :goto_34

    .line 290
    :pswitch_2d
    iput v1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mRoll:I

    goto :goto_34

    :pswitch_30
    const/16 p1, 0x10e

    .line 287
    iput p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mRoll:I

    .line 301
    :goto_34
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_53

    const/4 p1, 0x1

    .line 302
    new-array p1, p1, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rotation updated to:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mRoll:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_53
    return-void

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_30
        :pswitch_2d
        :pswitch_28
        :pswitch_23
    .end packed-switch
.end method

.method public startDetect(Lcom/sonyericsson/android/camera/device/PreviewFrameProvider;)V
    .registers 2

    .line 260
    iput-object p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mPreviewFrameProvider:Lcom/sonyericsson/android/camera/device/PreviewFrameProvider;

    .line 261
    iget-object p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mDetectContext:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->reset()V

    const/4 p1, 0x1

    .line 263
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mIsStarted:Z

    .line 264
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->postGetFrame()V

    return-void
.end method

.method public stopDetect()V
    .registers 5

    .line 269
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mCurrentDetect:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 270
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mCurrentDetect:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 271
    iput-object v1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mCurrentDetect:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;

    .line 274
    :cond_12
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mGetFrameTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 276
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mDetectContext:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    monitor-enter v0

    .line 277
    :try_start_20
    iget-object v2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mPreviewFrameProvider:Lcom/sonyericsson/android/camera/device/PreviewFrameProvider;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mImageCallback:Lcom/sonyericsson/android/camera/device/PreviewFrameProvider$OnPreviewFrameCallback;

    invoke-interface {v2, v3}, Lcom/sonyericsson/android/camera/device/PreviewFrameProvider;->unregisterPreviewFrameCallback(Lcom/sonyericsson/android/camera/device/PreviewFrameProvider$OnPreviewFrameCallback;)V

    .line 278
    iput-object v1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mPreviewFrameProvider:Lcom/sonyericsson/android/camera/device/PreviewFrameProvider;

    const/4 v1, 0x0

    .line 279
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mIsStarted:Z

    .line 280
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_20 .. :try_end_30} :catchall_2e

    throw v1
.end method
