.class public Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;
.super Ljava/lang/Object;
.source "VariableSourceMediaRecorder.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/recorder/RecorderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;,
        Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$InputDataSourceFactory;,
        Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;
    }
.end annotation


# static fields
.field private static final AUDIO_MIMETYPE:Ljava/lang/String; = "audio/mp4a-latm"

.field private static final ENABLE_MONITOR_FPS:Z = false

.field private static final PROGRESS_NOTIFICATION_INTERVAL_MILLIS:J = 0x3e8L

.field private static final STOP_RECORDING_TIME_OUT_MILLIS:J = 0x1388L

.field private static final TAG:Ljava/lang/String; = "VariableSourceMediaRecorder"

.field private static final TRACE:Z = false

.field private static final VIDEO_MIMETYPE:Ljava/lang/String; = "video/avc"


# instance fields
.field private mAudioTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

.field private mContext:Landroid/content/Context;

.field private mEncoder:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

.field private final mFpsMonitor:Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;

.field private final mHandler:Landroid/os/Handler;

.field private mInputDataInfos:[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

.field private mInputDataSourceFactory:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$InputDataSourceFactory;

.field private mIsNeedToDeleteFile:Z

.field private mLocation:Landroid/location/Location;

.field private mMaxDurationMillis:J

.field private mMaxFileSizeBytes:J

.field private mMediaUri:Landroid/net/Uri;

.field private mOnErrorListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnErrorListener;

.field private mOnMaxReachedListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;

.field private final mOperatingRate:I

.field private mOrientationHint:I

.field private mOutputPath:Ljava/lang/String;

.field private volatile mResult:Z

.field private mState:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;

.field private mSurface:Landroid/view/Surface;

.field private mVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

.field private mVideoTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

.field private mWaitUntilStarted:Ljava/util/concurrent/CountDownLatch;

.field private mWaitUntilStoped:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(I)V
    .registers 5

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mMediaUri:Landroid/net/Uri;

    .line 166
    sget-object v1, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;->IDLE:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mState:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;

    .line 168
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mHandler:Landroid/os/Handler;

    .line 169
    iput p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mOperatingRate:I

    .line 173
    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mFpsMonitor:Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mWaitUntilStarted:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;)Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mVideoTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;)Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mEncoder:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;Z)Z
    .registers 2

    .line 49
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mIsNeedToDeleteFile:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;)Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnErrorListener;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mOnErrorListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnErrorListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;)Landroid/os/Handler;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;)Ljava/lang/String;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mOutputPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;Z)Z
    .registers 2

    .line 49
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mResult:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mWaitUntilStoped:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;)Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mOnMaxReachedListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;)Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mAudioTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

    return-object p0
.end method

.method private createAudioFormat(Ljava/lang/String;Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Landroid/media/MediaFormat;
    .registers 4

    .line 495
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getAudioSampleRate()I

    move-result p0

    .line 496
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getAudioChannels()I

    move-result v0

    .line 493
    invoke-static {p1, p0, v0}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p0

    .line 497
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getAudioBitRate()I

    move-result p1

    const-string p2, "bitrate"

    invoke-virtual {p0, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "aac-profile"

    const/4 p2, 0x2

    .line 499
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-object p0
.end method

.method private createAudioInputStreamInfo(Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "audio/mp4a-latm"

    .line 522
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->createAudioFormat(Ljava/lang/String;Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Landroid/media/MediaFormat;

    move-result-object v1

    .line 523
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 524
    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 526
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mInputDataSourceFactory:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$InputDataSourceFactory;

    invoke-interface {p0, v0, p1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$InputDataSourceFactory;->createAudioSource(Landroid/media/MediaCodec;Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataSource;

    move-result-object p0

    .line 527
    invoke-static {v1, v0, p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;->create(Landroid/media/MediaFormat;Landroid/media/MediaCodec;Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataSource;)Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    move-result-object p0

    return-object p0
.end method

.method private createVideoFormat(Ljava/lang/String;Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Landroid/media/MediaFormat;
    .registers 8

    .line 454
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameWidth()I

    move-result v0

    .line 455
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameHeight()I

    move-result v1

    .line 452
    invoke-static {p1, v0, v1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p1

    const-string v0, "color-format"

    const v1, 0x7f000789

    .line 456
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 458
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoBitRate()I

    move-result v0

    const-string v1, "bitrate"

    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 459
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameRate()I

    move-result v0

    const-string v1, "frame-rate"

    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "i-frame-interval"

    const/4 v1, 0x1

    .line 461
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 463
    iget p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mOperatingRate:I

    const-string v0, "operating-rate"

    invoke-virtual {p1, v0, p0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 465
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameWidth()I

    move-result p0

    const/16 v0, 0x8

    const-string v2, "level"

    const-string v3, "profile"

    const/16 v4, 0xf00

    if-lt p0, v4, :cond_56

    .line 466
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoCodec()I

    move-result p0

    const/4 p2, 0x2

    if-ne p0, p2, :cond_4f

    .line 467
    invoke-virtual {p1, v3, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 469
    invoke-virtual {p1, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_73

    .line 472
    :cond_4f
    invoke-virtual {p1, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 474
    invoke-virtual {p1, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_73

    .line 477
    :cond_56
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameWidth()I

    move-result p0

    const/16 v4, 0x280

    if-lt p0, v4, :cond_6d

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameHeight()I

    move-result p0

    const/16 p2, 0x1e0

    if-lt p0, p2, :cond_6d

    .line 478
    invoke-virtual {p1, v3, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 480
    invoke-virtual {p1, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_73

    .line 483
    :cond_6d
    invoke-virtual {p1, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 485
    invoke-virtual {p1, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :goto_73
    return-object p1
.end method

.method private createVideoInputStreamInfo(Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "video/avc"

    .line 507
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->createVideoFormat(Ljava/lang/String;Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Landroid/media/MediaFormat;

    move-result-object v1

    .line 508
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 509
    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 511
    iget-object v2, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mInputDataSourceFactory:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$InputDataSourceFactory;

    invoke-interface {v2, v0, p1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$InputDataSourceFactory;->createVideoSource(Landroid/media/MediaCodec;Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/VideoFrameSource;

    move-result-object p1

    .line 513
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mSurface:Landroid/view/Surface;

    if-eqz p0, :cond_1d

    .line 514
    invoke-virtual {v0, p0}, Landroid/media/MediaCodec;->setInputSurface(Landroid/view/Surface;)V

    .line 517
    :cond_1d
    invoke-static {v1, v0, p1}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;->create(Landroid/media/MediaFormat;Landroid/media/MediaCodec;Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataSource;)Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    move-result-object p0

    return-object p0
.end method

.method private static trace(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 55
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getSurface()Landroid/view/Surface;
    .registers 1

    .line 216
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public isAsyncStopSupported()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public pause()V
    .registers 2

    .line 448
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This method is not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public prepare(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z
    .registers 9

    .line 223
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mState:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;

    sget-object v1, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;->IDLE:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;

    if-ne v0, v1, :cond_a7

    .line 227
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->location()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mLocation:Landroid/location/Location;

    .line 228
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->orientationHint()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mOrientationHint:I

    .line 229
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->outputUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mOutputPath:Ljava/lang/String;

    .line 230
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->videoSavingRequest()Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    .line 231
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->maxDuration()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mMaxDurationMillis:J

    .line 232
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->maxFileSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mMaxFileSizeBytes:J

    .line 233
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mContext:Landroid/content/Context;

    .line 235
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->isMicrophoneEnabled()Z

    move-result p1

    .line 236
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->profile()Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    move-result-object v0

    .line 238
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mFpsMonitor:Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;

    if-eqz v1, :cond_40

    .line 239
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;->reset()V

    :cond_40
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_58

    const/4 p1, 0x2

    :try_start_45
    new-array p1, p1, [Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    .line 244
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mInputDataInfos:[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    .line 245
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->createVideoInputStreamInfo(Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    move-result-object v3

    aput-object v3, p1, v1

    .line 246
    iget-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mInputDataInfos:[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->createAudioInputStreamInfo(Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    move-result-object v0

    aput-object v0, p1, v2

    goto :goto_62

    :cond_58
    new-array p1, v2, [Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    .line 249
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mInputDataInfos:[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    .line 250
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->createVideoInputStreamInfo(Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    move-result-object v0

    aput-object v0, p1, v1
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_62} :catch_6d

    .line 266
    :goto_62
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->outputUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mOutputPath:Ljava/lang/String;

    return v2

    :catch_6d
    move-exception p1

    .line 254
    iget-object p2, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mInputDataInfos:[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    if-eqz p2, :cond_88

    .line 255
    array-length v0, p2

    move v3, v1

    :goto_74
    if-ge v3, v0, :cond_85

    aget-object v4, p2, v3

    .line 256
    iget-object v5, v4, Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->release()V

    .line 257
    iget-object v4, v4, Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;->source:Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataSource;

    invoke-interface {v4}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataSource;->release()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_74

    :cond_85
    const/4 p2, 0x0

    .line 259
    iput-object p2, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mInputDataInfos:[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    :cond_88
    new-array p0, v2, [Ljava/lang/String;

    .line 261
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "prepare() failed : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v1

    .line 224
    :cond_a7
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public release()V
    .registers 3

    .line 427
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mState:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;

    sget-object v1, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;->IDLE:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;

    if-eq v0, v1, :cond_a

    .line 428
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->stop()V

    goto :goto_d

    .line 430
    :cond_a
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->reset()V

    .line 433
    :goto_d
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mIsNeedToDeleteFile:Z

    if-eqz v0, :cond_1f

    .line 434
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mOutputPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->deleteVideoFile(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 435
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mIsNeedToDeleteFile:Z

    :cond_1f
    return-void
.end method

.method public reset()V
    .registers 7

    const/4 v0, 0x0

    .line 404
    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mEncoder:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

    .line 405
    sget-object v1, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;->IDLE:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mState:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;

    .line 407
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mInputDataInfos:[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    if-eqz v1, :cond_20

    .line 408
    array-length v2, v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_1e

    aget-object v4, v1, v3

    .line 409
    iget-object v5, v4, Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->release()V

    .line 410
    iget-object v4, v4, Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;->source:Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataSource;

    invoke-interface {v4}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataSource;->release()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 412
    :cond_1e
    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mInputDataInfos:[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    :cond_20
    return-void
.end method

.method public resume()V
    .registers 2

    .line 443
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This method is not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setInputDataSourceFactory(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$InputDataSourceFactory;)V
    .registers 2

    if-eqz p1, :cond_5

    .line 197
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mInputDataSourceFactory:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$InputDataSourceFactory;

    return-void

    .line 194
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This method cannot accept null as InputDataSourceFactory."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setInputSurface(Landroid/view/Surface;)V
    .registers 2

    .line 689
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method public setListener(Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnErrorListener;Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;)V
    .registers 5

    .line 207
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mAudioTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

    .line 208
    iput-object p2, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mVideoTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

    .line 209
    iput-object p3, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mOnErrorListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnErrorListener;

    .line 210
    iput-object p4, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mOnMaxReachedListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;

    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .registers 2

    .line 654
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mLocation:Landroid/location/Location;

    return-void
.end method

.method public setMaxDurationMillis(J)V
    .registers 3

    .line 660
    iput-wide p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mMaxDurationMillis:J

    return-void
.end method

.method public setMaxFileSizeBytes(J)V
    .registers 5

    const-wide v0, 0x3b9aca0000L

    .line 666
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mMaxFileSizeBytes:J

    return-void
.end method

.method public setOrientationHint(I)V
    .registers 2

    .line 684
    iput p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mOrientationHint:I

    return-void
.end method

.method public setOutputFilePath(Ljava/lang/String;)V
    .registers 2

    .line 672
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mOutputPath:Ljava/lang/String;

    return-void
.end method

.method public setVideoSavingRequest(Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;)V
    .registers 2

    .line 678
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    return-void
.end method

.method public start()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getVolume(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 282
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mState:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;

    sget-object v2, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;->IDLE:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;

    if-ne v1, v2, :cond_11f

    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_11f

    if-eqz v0, :cond_11f

    .line 286
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 287
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 288
    iget-object v3, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mOutputPath:Ljava/lang/String;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 289
    iget-object v4, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mOutputPath:Ljava/lang/String;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "_display_name"

    .line 290
    invoke-virtual {v2, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v4, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mVideoSavingRequest:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;->getMimeType()Ljava/lang/String;

    move-result-object v4

    const-string v6, "mime_type"

    invoke-virtual {v2, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "relative_path"

    .line 292
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "is_pending"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 295
    invoke-static {v0}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 296
    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mMediaUri:Landroid/net/Uri;

    :try_start_64
    const-string v2, "rw"

    const/4 v3, 0x0

    .line 300
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_6b
    .catch Ljava/io/FileNotFoundException; {:try_start_64 .. :try_end_6b} :catch_10e

    if-eqz v0, :cond_fa

    .line 312
    new-instance v1, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;-><init>(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;)V

    .line 315
    :try_start_72
    new-instance v2, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mInputDataInfos:[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mOutputPath:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v2, v4, v6, v0, v1}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;-><init>([Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;Ljava/lang/String;Ljava/io/FileDescriptor;Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$StateListener;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mEncoder:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_81} :catch_d4

    .line 323
    iget v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mOrientationHint:I

    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->setOrientationHint(I)V

    .line 324
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mEncoder:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

    iget-wide v1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mMaxDurationMillis:J

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->setMaxDuration(J)V

    .line 325
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mEncoder:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

    iget-wide v1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mMaxFileSizeBytes:J

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->setMaxFileSize(J)V

    .line 327
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_a9

    .line 328
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mEncoder:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

    .line 329
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    double-to-float v0, v6

    iget-object v2, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    double-to-float v2, v6

    .line 328
    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->setLocation(FF)V

    .line 332
    :cond_a9
    iput-object v3, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mInputDataInfos:[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    .line 334
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mWaitUntilStarted:Ljava/util/concurrent/CountDownLatch;

    .line 335
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mWaitUntilStoped:Ljava/util/concurrent/CountDownLatch;

    .line 337
    sget-object v0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;->RUNNING:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mState:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;

    .line 339
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mEncoder:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->start()V

    .line 342
    :try_start_c2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mWaitUntilStarted:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_c7
    .catch Ljava/lang/InterruptedException; {:try_start_c2 .. :try_end_c7} :catch_c8

    return-void

    :catch_c8
    move-exception v0

    .line 344
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mMediaUri:Landroid/net/Uri;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->releasePending(Landroid/net/Uri;)V

    .line 345
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :catch_d4
    move-exception v0

    new-array v1, v5, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 318
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start() failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 319
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mMediaUri:Landroid/net/Uri;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->releasePending(Landroid/net/Uri;)V

    .line 320
    throw v0

    :cond_fa
    const-string v0, "openFileDescriptor fd is null."

    .line 307
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 308
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mMediaUri:Landroid/net/Uri;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->releasePending(Landroid/net/Uri;)V

    .line 309
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_10e
    move-exception v0

    const-string v1, "openFileDescriptor failed."

    .line 302
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 303
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mMediaUri:Landroid/net/Uri;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->releasePending(Landroid/net/Uri;)V

    .line 304
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 283
    :cond_11f
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public stop()V
    .registers 5

    .line 354
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mState:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;

    sget-object v1, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;->IDLE:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;

    if-eq v0, v1, :cond_e

    .line 355
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mEncoder:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->stop()V

    const/4 v0, 0x0

    .line 356
    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mEncoder:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

    .line 358
    :cond_e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mFpsMonitor:Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;

    if-eqz v0, :cond_34

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FPS_MONITOR:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mFpsMonitor:Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/recorder/utility/FpsMonitor;->dump()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 364
    :cond_34
    :try_start_34
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mWaitUntilStoped:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x1388

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_3e
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_3e} :catch_61
    .catchall {:try_start_34 .. :try_end_3e} :catchall_5f

    .line 369
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mMediaUri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->releasePending(Landroid/net/Uri;)V

    if-nez v0, :cond_4e

    const-string v0, "Encoder doesn\'t finish correctly. Video file may be corrupt."

    .line 372
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 375
    :cond_4e
    sget-object v0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;->IDLE:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mState:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;

    .line 378
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mResult:Z

    if-eqz p0, :cond_57

    return-void

    .line 379
    :cond_57
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "recording failed."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_5f
    move-exception v0

    goto :goto_6d

    :catch_61
    move-exception v0

    :try_start_62
    const-string v1, "stop failed due to interruption."

    .line 366
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 367
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_6d
    .catchall {:try_start_62 .. :try_end_6d} :catchall_5f

    .line 369
    :goto_6d
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->mMediaUri:Landroid/net/Uri;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->releasePending(Landroid/net/Uri;)V

    .line 370
    throw v0
.end method

.method public stopAsync()V
    .registers 2

    .line 391
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "#stopAsync() only supported by SomeMediaRecorder"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public stopAudioRecording()V
    .registers 1

    return-void
.end method

.method public stopOnCameraError()V
    .registers 2

    const-string v0, "stopOnCameraError() E"

    .line 419
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->trace(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->stop()V

    const-string p0, "stopOnCameraError() X"

    .line 421
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public waitUntilStopCompleted()V
    .registers 2

    .line 397
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "#stopAsync() only supported by SomeMediaRecorder"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
