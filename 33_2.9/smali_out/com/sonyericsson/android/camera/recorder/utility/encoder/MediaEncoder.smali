.class public Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;
.super Ljava/lang/Object;
.source "MediaEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$StateListener;,
        Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$EncodingStateNotifier;
    }
.end annotation


# static fields
.field public static final ENCODER_ERROR_ON_START:I = 0xf4240

.field public static final TAG:Ljava/lang/String; = "MediaEncoder"

.field private static final THREAD_NAME_DATA_WRITE_FOR_EACH_STREAMS:Ljava/lang/String; = "ME#WriteData"

.field private static final THREAD_NAME_MAIN_TASK:Ljava/lang/String; = "ME#MainTask"

.field private static final THREAD_NAME_WAIT_TO_COMPLETE_ENCODING:Ljava/lang/String; = "ME#WaitFinish"

.field private static TRACE:Z = true


# instance fields
.field private final mEncodedDataWriteListener:Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask$EncoderStateListener;

.field private mEncoderFinishSignal:Ljava/util/concurrent/CountDownLatch;

.field private mEncoderFormatChangedSignal:Ljava/util/concurrent/CountDownLatch;

.field private mInputEncodedDataThreadPool:Ljava/util/concurrent/ExecutorService;

.field private final mInputStreams:[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

.field private final mMainTask:Ljava/lang/Runnable;

.field private mMainTaskExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mMuxer:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;

.field private mMuxerStartedSignal:Ljava/util/concurrent/CountDownLatch;

.field private final mNotifier:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$EncodingStateNotifier;

.field private mRequestFinishSignal:Ljava/util/concurrent/CountDownLatch;

.field private final mWaitRequestFinishSignalTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>([Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;Ljava/lang/String;Ljava/io/FileDescriptor;Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$StateListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$1;-><init>(Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mMainTask:Ljava/lang/Runnable;

    .line 253
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$2;-><init>(Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mEncodedDataWriteListener:Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask$EncoderStateListener;

    .line 273
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$3;-><init>(Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mWaitRequestFinishSignalTask:Ljava/lang/Runnable;

    const/4 v0, 0x0

    if-nez p4, :cond_1d

    move-object v1, v0

    goto :goto_22

    .line 62
    :cond_1d
    new-instance v1, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$EncodingStateNotifier;

    invoke-direct {v1, p4}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$EncodingStateNotifier;-><init>(Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$StateListener;)V

    :goto_22
    iput-object v1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mNotifier:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$EncodingStateNotifier;

    const/4 p4, 0x0

    if-eqz p3, :cond_2f

    .line 65
    new-instance p2, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;

    invoke-direct {p2, p3, p4, v1}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;-><init>(Ljava/io/FileDescriptor;ILcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper$MuxerListener;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mMuxer:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;

    goto :goto_36

    .line 68
    :cond_2f
    new-instance p3, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;

    invoke-direct {p3, p2, p4, v1}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;-><init>(Ljava/lang/String;ILcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper$MuxerListener;)V

    iput-object p3, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mMuxer:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;

    .line 72
    :goto_36
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mInputStreams:[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    .line 73
    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mRequestFinishSignal:Ljava/util/concurrent/CountDownLatch;

    .line 74
    array-length p1, p1

    const-string p2, "ME#WriteData"

    .line 75
    invoke-static {p2, p1}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildPoolExecutor(Ljava/lang/String;I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mInputEncodedDataThreadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 33
    sget-boolean v0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->TRACE:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mEncoderFormatChangedSignal:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic access$102(Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mEncoderFormatChangedSignal:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;)[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mInputStreams:[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mMuxerStartedSignal:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic access$302(Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mMuxerStartedSignal:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mEncoderFinishSignal:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic access$402(Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mEncoderFinishSignal:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mRequestFinishSignal:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method private shutdownEncodedDataThreadPool()V
    .registers 1

    .line 325
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mInputEncodedDataThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method


# virtual methods
.method public release()V
    .registers 1

    .line 104
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->shutdownEncodedDataThreadPool()V

    .line 105
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->releaseInputDataSource()V

    .line 106
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->releaseEncoders()V

    .line 108
    :try_start_9
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->releaseMuxer()V
    :try_end_c
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_16

    :catch_d
    const-string p0, "IllegalStateException occur at releaseMuxer()."

    .line 110
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :goto_16
    return-void
.end method

.method releaseEncoders()V
    .registers 4

    .line 345
    sget-boolean v0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->TRACE:Z

    if-eqz v0, :cond_d

    const-string v0, "releaseEncoders() E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 346
    :cond_d
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mInputStreams:[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v0, :cond_1d

    aget-object v2, p0, v1

    .line 347
    iget-object v2, v2, Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 349
    :cond_1d
    sget-boolean p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->TRACE:Z

    if-eqz p0, :cond_2a

    const-string p0, "releaseEncoders() X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2a
    return-void
.end method

.method releaseInputDataSource()V
    .registers 4

    .line 365
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mInputStreams:[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_10

    aget-object v2, p0, v1

    .line 366
    iget-object v2, v2, Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;->source:Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataSource;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataSource;->release()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_10
    return-void
.end method

.method releaseMuxer()V
    .registers 2

    .line 377
    sget-boolean v0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->TRACE:Z

    if-eqz v0, :cond_d

    const-string v0, "releaseMuxer() E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 378
    :cond_d
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mMuxer:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->release()V

    .line 379
    sget-boolean p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->TRACE:Z

    if-eqz p0, :cond_1f

    const-string p0, "releaseMuxer() X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1f
    return-void
.end method

.method sendOnErrorEvent(I)V
    .registers 2

    .line 421
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mNotifier:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$EncodingStateNotifier;

    if-eqz p0, :cond_7

    .line 422
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$EncodingStateNotifier;->notifyOnError(I)V

    :cond_7
    return-void
.end method

.method sendOnFinishedEvent(Z)V
    .registers 3

    .line 412
    monitor-enter p0

    const/4 v0, 0x0

    .line 413
    :try_start_2
    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mRequestFinishSignal:Ljava/util/concurrent/CountDownLatch;

    .line 414
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_d

    .line 415
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mNotifier:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$EncodingStateNotifier;

    if-eqz p0, :cond_c

    .line 416
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$EncodingStateNotifier;->notifyOnFinished(Z)V

    :cond_c
    return-void

    :catchall_d
    move-exception p1

    .line 414
    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p1
.end method

.method sendOnStartedEvent()V
    .registers 1

    .line 406
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mNotifier:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$EncodingStateNotifier;

    if-eqz p0, :cond_7

    .line 407
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$EncodingStateNotifier;->notifyOnStarted()V

    :cond_7
    return-void
.end method

.method public setLocation(FF)V
    .registers 3

    .line 460
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mMuxer:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->setLocation(FF)V

    return-void
.end method

.method public setMaxDuration(J)V
    .registers 3

    .line 432
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mMuxer:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->setMaxDuration(J)V

    return-void
.end method

.method public setMaxFileSize(J)V
    .registers 3

    .line 441
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mMuxer:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->setMaxFileSize(J)V

    return-void
.end method

.method public setOrientationHint(I)V
    .registers 2

    .line 450
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mMuxer:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->setOrientationHint(I)V

    return-void
.end method

.method public start()V
    .registers 3

    const-string v0, "ME#MainTask"

    .line 79
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mMainTaskExecutor:Ljava/util/concurrent/ExecutorService;

    .line 80
    monitor-enter p0

    .line 81
    :try_start_9
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mRequestFinishSignal:Ljava/util/concurrent/CountDownLatch;

    if-nez v0, :cond_1e

    .line 84
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mRequestFinishSignal:Ljava/util/concurrent/CountDownLatch;

    .line 85
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_24

    .line 86
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mMainTaskExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mMainTask:Ljava/lang/Runnable;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 82
    :cond_1e
    :try_start_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :catchall_24
    move-exception v0

    .line 85
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_24

    throw v0
.end method

.method startEncodedDataWriteTasks()V
    .registers 10

    .line 313
    sget-boolean v0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->TRACE:Z

    if-eqz v0, :cond_d

    const-string v0, "startEncodedDataWriteTasks() E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 314
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mInputStreams:[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_2c

    aget-object v3, v0, v2

    .line 315
    iget-object v4, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mInputEncodedDataThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mMuxer:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;

    iget-object v7, v3, Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;->codec:Landroid/media/MediaCodec;

    iget-object v8, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mEncodedDataWriteListener:Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask$EncoderStateListener;

    .line 319
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;->mimeType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v6, v7, v8, v3}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask;-><init>(Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;Landroid/media/MediaCodec;Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask$EncoderStateListener;Ljava/lang/String;)V

    .line 315
    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 321
    :cond_2c
    sget-boolean p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->TRACE:Z

    if-eqz p0, :cond_39

    const-string p0, "startEncodedDataWriteTasks() X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_39
    return-void
.end method

.method startEncoders()V
    .registers 4

    .line 329
    sget-boolean v0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->TRACE:Z

    if-eqz v0, :cond_d

    const-string v0, "startEncoders() E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 330
    :cond_d
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mInputStreams:[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v0, :cond_1d

    aget-object v2, p0, v1

    .line 331
    iget-object v2, v2, Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 333
    :cond_1d
    sget-boolean p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->TRACE:Z

    if-eqz p0, :cond_2a

    const-string p0, "startEncoders() X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2a
    return-void
.end method

.method startInputDataSource()V
    .registers 4

    .line 353
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mInputStreams:[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_10

    aget-object v2, p0, v1

    .line 354
    iget-object v2, v2, Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;->source:Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataSource;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataSource;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_10
    return-void
.end method

.method startMediaMuxerAfterEncodedFormatIsFixed()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 301
    sget-boolean v0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->TRACE:Z

    if-eqz v0, :cond_d

    const-string v0, "startMediaMuxer() E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 302
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mEncoderFormatChangedSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 304
    sget-boolean v0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->TRACE:Z

    if-eqz v0, :cond_1f

    const-string v0, "muxer.start E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 305
    :cond_1f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mMuxer:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->start()V

    .line 306
    sget-boolean v0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->TRACE:Z

    if-eqz v0, :cond_31

    const-string v0, "muxer.start X"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 308
    :cond_31
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mMuxerStartedSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 309
    sget-boolean p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->TRACE:Z

    if-eqz p0, :cond_43

    const-string p0, "startMediaMuxer() X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_43
    return-void
.end method

.method public stop()V
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mMainTaskExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_f

    .line 92
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mMainTaskExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 95
    :cond_f
    monitor-enter p0

    .line 96
    :try_start_10
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mRequestFinishSignal:Ljava/util/concurrent/CountDownLatch;

    if-nez v0, :cond_16

    .line 97
    monitor-exit p0

    return-void

    .line 99
    :cond_16
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 100
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method stopEncoders()V
    .registers 4

    .line 337
    sget-boolean v0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->TRACE:Z

    if-eqz v0, :cond_d

    const-string v0, "stopEncoders() E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 338
    :cond_d
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mInputStreams:[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v0, :cond_1d

    aget-object v2, p0, v1

    .line 339
    iget-object v2, v2, Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 341
    :cond_1d
    sget-boolean p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->TRACE:Z

    if-eqz p0, :cond_2a

    const-string p0, "stopEncoders() X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2a
    return-void
.end method

.method stopInputDataSource()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 359
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mInputStreams:[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_10

    aget-object v2, p0, v1

    .line 360
    iget-object v2, v2, Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;->source:Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataSource;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataSource;->stop()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_10
    return-void
.end method

.method stopMuxer()V
    .registers 2

    .line 371
    sget-boolean v0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->TRACE:Z

    if-eqz v0, :cond_d

    const-string v0, "stopMuxer() E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 372
    :cond_d
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mMuxer:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;->stop()V

    .line 373
    sget-boolean p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->TRACE:Z

    if-eqz p0, :cond_1f

    const-string p0, "stopMuxer() X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1f
    return-void
.end method

.method waitToCompleteEncoding()V
    .registers 4

    .line 383
    sget-boolean v0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->TRACE:Z

    if-eqz v0, :cond_e

    const-string/jumbo v0, "waitToCompleteEncoding() E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_e
    const-string v0, "ME#WaitFinish"

    .line 384
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 386
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mWaitRequestFinishSignalTask:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 390
    :try_start_1a
    sget-boolean v2, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->TRACE:Z

    if-eqz v2, :cond_27

    const-string v2, "EncoderFinishSignal.await"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 391
    :cond_27
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mEncoderFinishSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 392
    sget-boolean p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->TRACE:Z

    if-eqz p0, :cond_43

    const-string p0, "EncoderFinishSignal.await FINISHED"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_39} :catch_3a

    goto :goto_43

    :catch_3a
    const-string p0, "mEncoderFinishSignal is interrupted"

    .line 395
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_43
    :goto_43
    const/4 p0, 0x1

    .line 398
    invoke-interface {v1, p0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 399
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 402
    sget-boolean p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->TRACE:Z

    if-eqz p0, :cond_58

    const-string/jumbo p0, "waitToCompleteEncoding() X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_58
    return-void
.end method
