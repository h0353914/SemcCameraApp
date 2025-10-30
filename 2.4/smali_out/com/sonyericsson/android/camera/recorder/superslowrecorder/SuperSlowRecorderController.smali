.class public Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;
.super Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;
.source "SuperSlowRecorderController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$SuperSlowSourceFactory;,
        Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$StartSuperSlowRecordingCallbackImpl;,
        Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$PrepareSuperSlowRecordingCallbackImpl;,
        Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$StartSuperSlowTask;,
        Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$PrepareTask;
    }
.end annotation


# static fields
.field private static final MEDIA_FORMAT_OPERATING_RATE:I = 0x78

.field private static MIN_VIDEO_DURATION_MILLIS:J = 0xbb8L

.field private static final START_RECORDING_TIME_OUT_MILLIS:J = 0x2710L

.field private static final SUPER_SLOW_PROCESS_TIME_MILLIS:J = 0xb4L

.field private static final THREAD_NAME:Ljava/lang/String; = "SSM_RECORDER_PREPARE"

.field private static final TRACE:Z = true


# instance fields
.field private mMutableAudioSource:Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;

.field private final mMuteDurationInMillis:I

.field private final mOnSuperSlowRecordingFinishedListener:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;

.field private final mPrepareSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;

.field private mPrepareTask:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrepareTaskExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mSilentDurationInMillis:I

.field private final mStartSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;

.field private final mSuperSlowFrameNum:I

.field private final mSuperSlowFrameRate:I

.field private volatile mSuperSlowTriggerTimeMillis:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;Landroid/os/Handler;IZII)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonyericsson/android/camera/recorder/utility/Accessor<",
            "Lcom/sonyericsson/android/camera/device/CameraActionSound;",
            ">;",
            "Lcom/sonyericsson/android/camera/recorder/utility/Accessor<",
            "Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;",
            ">;",
            "Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;",
            "Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;",
            "Landroid/os/Handler;",
            "IZII)V"
        }
    .end annotation

    move-object/from16 v15, p0

    .line 131
    new-instance v4, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;

    const/16 v0, 0x78

    invoke-direct {v4, v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;-><init>(I)V

    sget-wide v6, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->MIN_VIDEO_DURATION_MILLIS:J

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v13, p8

    invoke-direct/range {v0 .. v14}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/RecorderInterface;Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;JLandroid/os/Handler;IZZZZZ)V

    const-string v0, "SSM_RECORDER_PREPARE"

    .line 183
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, v15, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mPrepareTaskExecutor:Ljava/util/concurrent/ExecutorService;

    const-string v0, "SuperSlowRecorderController() E"

    .line 144
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    move/from16 v0, p9

    .line 146
    iput v0, v15, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowFrameRate:I

    move/from16 v0, p10

    .line 147
    iput v0, v15, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowFrameNum:I

    move-object/from16 v0, p5

    .line 148
    iput-object v0, v15, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mOnSuperSlowRecordingFinishedListener:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;

    .line 151
    iget v0, v15, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowFrameNum:I

    mul-int/lit16 v1, v0, 0x3e8

    iget v2, v15, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowFrameRate:I

    div-int/2addr v1, v2

    iput v1, v15, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mMuteDurationInMillis:I

    mul-int/lit16 v0, v0, 0x3e8

    .line 153
    div-int/lit8 v0, v0, 0x1e

    iput v0, v15, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSilentDurationInMillis:I

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->getRecorder()Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;

    new-instance v1, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$SuperSlowSourceFactory;

    const/4 v2, 0x0

    invoke-direct {v1, v15, v2}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$SuperSlowSourceFactory;-><init>(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$1;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->setInputDataSourceFactory(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$InputDataSourceFactory;)V

    .line 160
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;-><init>()V

    iput-object v0, v15, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mPrepareSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;

    .line 161
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;-><init>()V

    iput-object v0, v15, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mStartSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;

    const-string v0, "SuperSlowRecorderController() X"

    .line 163
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;)Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mMutableAudioSource:Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;)Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mMutableAudioSource:Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;

    return-object p1
.end method

.method static synthetic access$101(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z
    .registers 2

    .line 47
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->prepareInternal(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;)I
    .registers 1

    .line 47
    iget p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mMuteDurationInMillis:I

    return p0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;)I
    .registers 1

    .line 47
    iget p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSilentDurationInMillis:I

    return p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;)V
    .registers 1

    .line 47
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->notifyError()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->startBypassCameraSuperSlow()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;)V
    .registers 1

    .line 47
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->notifyError()V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;)Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mOnSuperSlowRecordingFinishedListener:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;)Landroid/os/Handler;
    .registers 1

    .line 47
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->getCallbackHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;)V
    .registers 1

    .line 47
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->notifyError()V

    return-void
.end method

.method static synthetic access$900(Ljava/lang/String;)V
    .registers 1

    .line 47
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    return-void
.end method

.method private computeSuperSlowRemainTime()J
    .registers 7

    const-string v0, "computeSuperSlowRemainTime()"

    .line 321
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    .line 323
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowTriggerTimeMillis:J

    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  super-slow-trigger-time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    const-string v2, "  super-slow-process-time:180"

    .line 325
    invoke-static {v2}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_27

    return-wide v2

    .line 331
    :cond_27
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  elapsed-time-since-trigger:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    const-wide/16 v0, 0xb4

    sub-long/2addr v0, v4

    .line 334
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private startBypassCameraSuperSlow()Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const-string v0, "startBypassCameraSuperSlow() E"

    .line 339
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    .line 341
    :try_start_9
    new-array v1, v1, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v2, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RELEASING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RELEASED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startBypassCameraSuperSlow() X failed to verify state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RELEASED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    .line 343
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 342
    invoke-static {v1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    .line 344
    monitor-exit v0

    return v3

    .line 346
    :cond_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_9 .. :try_end_38} :catchall_146

    .line 347
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mMutableAudioSource:Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;

    if-eqz v0, :cond_5a

    .line 349
    :try_start_3c
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->startMute()V
    :try_end_3f
    .catch Ljava/lang/IllegalStateException; {:try_start_3c .. :try_end_3f} :catch_40

    goto :goto_5a

    :catch_40
    move-exception v0

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startBypassCameraSuperSlow() X failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    return v3

    .line 359
    :cond_5a
    :goto_5a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mStartSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;->requestLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    .line 360
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowTriggerTimeMillis:J

    const-wide/16 v1, 0x0

    .line 362
    :try_start_68
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->getBypassCamera()Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->requestStartSuperSlowRecording()V
    :try_end_6f
    .catch Ljava/lang/RuntimeException; {:try_start_68 .. :try_end_6f} :catch_10a

    const-wide/16 v5, 0x2710

    .line 377
    :try_start_71
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v5, v6, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_77
    .catch Ljava/lang/InterruptedException; {:try_start_71 .. :try_end_77} :catch_ab
    .catchall {:try_start_71 .. :try_end_77} :catchall_a9

    if-eqz v0, :cond_a1

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "actual-elapsed-time-since-trigger:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowTriggerTimeMillis:J

    sub-long/2addr v5, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 386
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    .line 389
    iput-wide v1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowTriggerTimeMillis:J

    .line 391
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mStartSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;->release()V

    const-string v0, "startBypassCameraSuperSlow() X"

    .line 394
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    return v4

    .line 378
    :cond_a1
    :try_start_a1
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v4, "Callback of slow motion frame is not sent over 5s from Bypasscamera"

    invoke-direct {v0, v4}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a9
    .catch Ljava/lang/InterruptedException; {:try_start_a1 .. :try_end_a9} :catch_ab
    .catchall {:try_start_a1 .. :try_end_a9} :catchall_a9

    :catchall_a9
    move-exception v0

    goto :goto_e7

    :catch_ab
    move-exception v0

    .line 382
    :try_start_ac
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startBypassCameraSuperSlow() X failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V
    :try_end_c4
    .catchall {:try_start_ac .. :try_end_c4} :catchall_a9

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "actual-elapsed-time-since-trigger:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowTriggerTimeMillis:J

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 386
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    .line 389
    iput-wide v1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowTriggerTimeMillis:J

    .line 391
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mStartSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;->release()V

    return v3

    .line 386
    :goto_e7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "actual-elapsed-time-since-trigger:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowTriggerTimeMillis:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 386
    invoke-static {v3}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    .line 389
    iput-wide v1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowTriggerTimeMillis:J

    .line 391
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mStartSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;->release()V

    .line 392
    throw v0

    :catch_10a
    move-exception v0

    .line 365
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startBypassCameraSuperSlow() X failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "actual-elapsed-time-since-trigger:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowTriggerTimeMillis:J

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 367
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    .line 370
    iput-wide v1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowTriggerTimeMillis:J

    .line 372
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mStartSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;->release()V

    return v3

    :catchall_146
    move-exception v1

    .line 346
    :try_start_147
    monitor-exit v0
    :try_end_148
    .catchall {:try_start_147 .. :try_end_148} :catchall_146

    throw v1
.end method

.method private static trace(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    .line 76
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void
.end method

.method private waitForPrepareCompleted()Z
    .registers 6

    .line 207
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mPrepareTask:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    const-string v0, "PrepareTask is not submitted."

    .line 208
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v1

    .line 212
    :cond_f
    :try_start_f
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_19} :catch_3d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_f .. :try_end_19} :catch_1a

    return v0

    :catch_1a
    move-exception v0

    const/4 v2, 0x1

    .line 219
    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception is thrown in PrepareTask.  cause:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 219
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v1

    :catch_3d
    const-string v0, "PrepareTask is interrupted."

    .line 215
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v1
.end method


# virtual methods
.method public getRecordingTimeMillis()J
    .registers 5

    const/4 v0, 0x2

    .line 457
    new-array v0, v0, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->STOPPING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RELEASING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 465
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mMutableAudioSource:Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->getCurrentPresentationTimeMillis()J

    move-result-wide v0

    .line 466
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->computeSuperSlowRemainTime()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    .line 468
    :cond_1f
    invoke-super {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->getRecordingTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public prepare(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;Landroid/view/Surface;)Z
    .registers 5

    const-wide/16 v0, 0x0

    .line 168
    iput-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowTriggerTimeMillis:J

    .line 169
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->prepare(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;Landroid/view/Surface;)Z

    move-result p1

    return p1
.end method

.method protected prepareBypassCamera(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z
    .registers 7

    .line 400
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "prepareBypassCamera() E frame-rate:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowFrameRate:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " frame-num"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mSuperSlowFrameNum:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    .line 404
    iget-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mPrepareSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;->requestLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    const/4 v0, 0x0

    .line 406
    :try_start_27
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->getBypassCamera()Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v1

    .line 407
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->getRecorder()Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->getSurface()Landroid/view/Surface;

    move-result-object v2

    new-instance v3, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$RecordingParameters;

    new-instance v4, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;

    invoke-direct {v4, v0, v0, v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;-><init>(III)V

    invoke-direct {v3, v4}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$RecordingParameters;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;)V

    .line 406
    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->requestPrepareSuperSlowRecording(Landroid/view/Surface;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$RecordingParameters;)V

    .line 409
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_43
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_43} :catch_51
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_43} :catch_51
    .catchall {:try_start_27 .. :try_end_43} :catchall_4f

    .line 416
    iget-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mPrepareSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;->release()V

    const-string p1, "prepareBypassCamera() X"

    .line 419
    invoke-static {p1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :catchall_4f
    move-exception p1

    goto :goto_70

    :catch_51
    move-exception p1

    .line 412
    :try_start_52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareBypassCamera() X failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_52 .. :try_end_6a} :catchall_4f

    .line 416
    iget-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mPrepareSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;->release()V

    return v0

    :goto_70
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mPrepareSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;->release()V

    .line 417
    throw p1
.end method

.method protected prepareCallBack()Z
    .registers 5

    const-string v0, "prepareCallBack() E"

    .line 234
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    .line 235
    invoke-super {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->prepareCallBack()Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "prepareCallBack() X failed."

    .line 236
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 240
    :cond_12
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->getBypassCamera()Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$PrepareSuperSlowRecordingCallbackImpl;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mPrepareSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$PrepareSuperSlowRecordingCallbackImpl;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;)V

    new-instance v2, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$StartSuperSlowRecordingCallbackImpl;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mStartSuperSlowRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;

    invoke-direct {v2, v3}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$StartSuperSlowRecordingCallbackImpl;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;)V

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->setSuperSlowCallbacks(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareSuperSlowRecordingCallback;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartSuperSlowRecordingCallback;)V

    const-string v0, "prepareCallBack() X"

    .line 246
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected prepareInternal(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z
    .registers 4

    .line 178
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mPrepareTaskExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$PrepareTask;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$PrepareTask;-><init>(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mPrepareTask:Ljava/util/concurrent/Future;

    const/4 p1, 0x1

    return p1
.end method

.method protected releaseInternal()V
    .registers 2

    .line 227
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->waitForPrepareCompleted()Z

    .line 228
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mPrepareTaskExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 229
    invoke-super {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->releaseInternal()V

    return-void
.end method

.method protected startInternal()Z
    .registers 3

    const-string v0, "startInternal() E"

    .line 252
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    .line 254
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->waitForPrepareCompleted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return v1

    .line 263
    :cond_d
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->startRecorder()Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "startInternal() X failed"

    .line 264
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    return v1

    .line 268
    :cond_19
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->startBypassCamera()Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "startInternal() X failed"

    .line 269
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    return v1

    :cond_25
    const-string v0, "startInternal() X"

    .line 273
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public startSuperSlow()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/android/camera/recorder/RecorderException;
        }
    .end annotation

    const-string v0, "startSuperSlow() E"

    .line 284
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    .line 287
    :try_start_9
    new-array v1, v1, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v2, 0x0

    sget-object v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->STARTING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v3, v1, v2

    sget-object v2, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RECORDING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 291
    new-instance v1, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$StartSuperSlowTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$StartSuperSlowTask;-><init>(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$1;)V

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->executeInBackground(Ljava/lang/Runnable;)V

    .line 292
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_38

    const-string v0, "startSuperSlow() X"

    .line 293
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    return v3

    :cond_2b
    :try_start_2b
    const-string v1, "start() X failed : illegal state"

    .line 288
    invoke-static {v1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V

    .line 289
    new-instance v1, Lcom/sonyericsson/android/camera/recorder/RecorderException;

    const-string v2, "Fail to verify state."

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/recorder/RecorderException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_38
    move-exception v1

    .line 292
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_38

    throw v1
.end method
