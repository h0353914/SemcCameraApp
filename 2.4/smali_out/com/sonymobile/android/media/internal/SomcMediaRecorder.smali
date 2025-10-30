.class public Lcom/sonymobile/android/media/internal/SomcMediaRecorder;
.super Ljava/lang/Object;
.source "SomcMediaRecorder.java"

# interfaces
.implements Lcom/sonymobile/android/media/internal/MediaMuxerWrapper$MuxerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/android/media/internal/SomcMediaRecorder$EventHandler;,
        Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_FILE_SIZE:J = 0x3b9aca0000L

.field public static final MEDIA_RECORDER_INFO_MASK:I = 0xfffffff

.field private static final MIN_DURATION_MS:I = 0x64

.field public static final MSG_CODEC_NOTIFY:I = 0x1

.field public static final MSG_DURATION_REACHED:I = 0x2

.field public static final MSG_FILE_SIZE_REACHED:I = 0x3

.field public static final MSG_MALFORMED_OUTPUT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SomcMediaRecorder"


# instance fields
.field private final mAudioCodecThread:Landroid/os/HandlerThread;

.field private mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

.field private final mCallback:Landroid/os/Handler;

.field private mCaptureRate:D

.field private mClock:Lcom/sonymobile/android/media/internal/ClockInterface;

.field private final mEventHandler:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$EventHandler;

.field private final mEventThread:Landroid/os/HandlerThread;

.field private mFd:Ljava/io/FileDescriptor;

.field private mIntelligentActiveEnabled:Z

.field private mLatestProgressTimeMs:I

.field private mLatitude:F

.field private mLongitude:F

.field private mMaxDurationMs:I

.field private mMaxFileSize:J

.field private mMuxerAudioTrackSet:Z

.field private mMuxerRunning:Z

.field private mMuxerStartPerformanceTimeMs:J

.field private mMuxerStopPerformanceTimeMs:J

.field private final mMuxerThread:Landroid/os/HandlerThread;

.field private mMuxerVideoTrackSet:Z

.field private mMuxerWrapper:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;

.field private mOrientationHint:I

.field private mOutputFormat:I

.field private mPath:Ljava/lang/String;

.field private mRecordingPaused:Z

.field private mRequestProgressInfoInterval:I

.field private final mSomcMediaRecorderThread:Landroid/os/HandlerThread;

.field private mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

.field private final mStateLock:Ljava/lang/Object;

.field private mStopLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mVideoCodecThread:Landroid/os/HandlerThread;

.field private mVideoFrameRate:I

.field private mVideoOnly:Z

.field private mVideoSource:I

.field private mVideoSourceSet:Z

.field private mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 6

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 78
    iput-wide v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerStartPerformanceTimeMs:J

    .line 79
    iput-wide v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerStopPerformanceTimeMs:J

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoFrameRate:I

    const-wide/16 v1, 0x0

    .line 81
    iput-wide v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mCaptureRate:D

    const/4 v1, -0x1

    .line 82
    iput v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mOrientationHint:I

    const/high16 v2, -0x3c4c0000    # -360.0f

    .line 83
    iput v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mLongitude:F

    .line 84
    iput v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mLatitude:F

    .line 85
    iput v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMaxDurationMs:I

    const-wide/16 v2, -0x1

    .line 86
    iput-wide v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMaxFileSize:J

    .line 87
    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->INITIAL:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    iput-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    .line 92
    iput-boolean v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoSourceSet:Z

    .line 94
    iput-boolean v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerVideoTrackSet:Z

    .line 95
    iput-boolean v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerAudioTrackSet:Z

    .line 96
    iput-boolean v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerRunning:Z

    .line 97
    iput v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoSource:I

    .line 98
    iput-boolean v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mRecordingPaused:Z

    .line 99
    iput v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mLatestProgressTimeMs:I

    .line 100
    iput-boolean v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mIntelligentActiveEnabled:Z

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoOnly:Z

    .line 109
    iput v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mRequestProgressInfoInterval:I

    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    .line 127
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "SomcMediaRecorder"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mSomcMediaRecorderThread:Landroid/os/HandlerThread;

    .line 129
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mSomcMediaRecorderThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 131
    new-instance v0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$EventHandler;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mSomcMediaRecorderThread:Landroid/os/HandlerThread;

    .line 132
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$EventHandler;-><init>(Ljava/lang/ref/WeakReference;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mEventHandler:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$EventHandler;

    .line 133
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "AudioCodecThread"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioCodecThread:Landroid/os/HandlerThread;

    .line 135
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioCodecThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 136
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "VideoCodecThread"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoCodecThread:Landroid/os/HandlerThread;

    .line 138
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoCodecThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 139
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "EventThread"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mEventThread:Landroid/os/HandlerThread;

    .line 140
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 141
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "MuxerThread"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerThread:Landroid/os/HandlerThread;

    .line 142
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 144
    iput-object p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mCallback:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/android/media/internal/SomcMediaRecorder;I)V
    .registers 2

    .line 52
    invoke-direct {p0, p1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->reportError(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/android/media/internal/SomcMediaRecorder;Z)V
    .registers 2

    .line 52
    invoke-direct {p0, p1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->muxerTrackSet(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/android/media/internal/SomcMediaRecorder;Z)V
    .registers 2

    .line 52
    invoke-direct {p0, p1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->muxerTrackStopped(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/android/media/internal/SomcMediaRecorder;)Lcom/sonymobile/android/media/internal/AudioTrack;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    return-object p0
.end method

.method private closeRecordingOnError()V
    .registers 2

    .line 183
    iget-boolean v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerRunning:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    .line 184
    invoke-direct {p0, v0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->muxerTrackStopped(Z)V

    const/4 v0, 0x0

    .line 185
    invoke-direct {p0, v0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->muxerTrackStopped(Z)V

    .line 186
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-virtual {v0}, Lcom/sonymobile/android/media/internal/VideoTrack;->stop()V

    .line 187
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-virtual {v0}, Lcom/sonymobile/android/media/internal/AudioTrack;->stop()V

    :cond_16
    return-void
.end method

.method private createAudioTrack(IZ)V
    .registers 11

    .line 233
    new-instance v7, Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mEventHandler:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$EventHandler;

    iget-object v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioCodecThread:Landroid/os/HandlerThread;

    iget-object v4, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mEventThread:Landroid/os/HandlerThread;

    iget-object v5, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerThread:Landroid/os/HandlerThread;

    xor-int/lit8 v6, p2, 0x1

    move-object v0, v7

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/android/media/internal/AudioTrack;-><init>(ILandroid/os/Handler;Landroid/os/HandlerThread;Landroid/os/HandlerThread;Landroid/os/HandlerThread;Z)V

    iput-object v7, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    return-void
.end method

.method public static getAudioSourceMax()I
    .registers 1

    const/16 v0, 0x8

    return v0
.end method

.method private muxerTrackSet(Z)V
    .registers 7

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    .line 851
    iput-boolean v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerVideoTrackSet:Z

    goto :goto_8

    .line 853
    :cond_6
    iput-boolean v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerAudioTrackSet:Z

    .line 857
    :goto_8
    iget-object p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 858
    :try_start_b
    iget-boolean v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerAudioTrackSet:Z

    if-eqz v1, :cond_33

    iget-boolean v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerVideoTrackSet:Z

    if-eqz v1, :cond_33

    .line 860
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 861
    iget-object v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerWrapper:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;

    invoke-virtual {v3}, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->start()V

    .line 862
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/32 v1, 0xf4240

    .line 863
    div-long/2addr v3, v1

    iput-wide v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerStartPerformanceTimeMs:J

    .line 865
    iput-boolean v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerRunning:Z

    .line 866
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-virtual {v0}, Lcom/sonymobile/android/media/internal/VideoTrack;->setMediaMuxerStarted()V

    .line 867
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-virtual {v0}, Lcom/sonymobile/android/media/internal/AudioTrack;->setMediaMuxerStarted()V

    .line 869
    :cond_33
    monitor-exit p1

    return-void

    :catchall_35
    move-exception v0

    monitor-exit p1
    :try_end_37
    .catchall {:try_start_b .. :try_end_37} :catchall_35

    throw v0
.end method

.method private muxerTrackStopped(Z)V
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 874
    iput-boolean v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerVideoTrackSet:Z

    goto :goto_8

    .line 876
    :cond_6
    iput-boolean v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerAudioTrackSet:Z

    .line 878
    :goto_8
    iget-boolean p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerAudioTrackSet:Z

    if-nez p1, :cond_37

    iget-boolean p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerVideoTrackSet:Z

    if-nez p1, :cond_37

    .line 880
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 881
    iget-object p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerWrapper:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;

    invoke-virtual {p1}, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->stop()V

    .line 882
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/32 v1, 0xf4240

    .line 883
    div-long/2addr v3, v1

    iput-wide v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerStopPerformanceTimeMs:J

    .line 885
    iget-object p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-virtual {p1}, Lcom/sonymobile/android/media/internal/VideoTrack;->setMediaMuxerStopped()V

    .line 886
    iget-object p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-virtual {p1}, Lcom/sonymobile/android/media/internal/AudioTrack;->setMediaMuxerStopped()V

    .line 887
    iput-boolean v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerRunning:Z

    .line 888
    iget-object p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStopLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_37

    .line 889
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_37
    return-void
.end method

.method private reportError(I)V
    .registers 6

    .line 836
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 837
    :try_start_3
    sget-object v1, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->ERROR:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    iput-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    .line 838
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mCallback:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 839
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 840
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method private reportInfo(II)V
    .registers 6

    const-string v0, "SomcMediaRecorder"

    .line 844
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportInfo info="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mCallback:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 846
    iput p2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mLatestProgressTimeMs:I

    return-void
.end method


# virtual methods
.method public adjustAudioStartVolume(I)V
    .registers 5

    .line 826
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 827
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->DATA_SOURCE_CONFIGURED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_10

    .line 831
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-virtual {v1, p1}, Lcom/sonymobile/android/media/internal/AudioTrack;->adjustStartVolume(I)V

    .line 832
    monitor-exit v0

    return-void

    .line 828
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {v2}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Can only be called in DATA_SOURCE_CONFIGURED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_32
    move-exception p1

    .line 832
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw p1
.end method

.method public adjustAudioTimestamp(J)V
    .registers 6

    .line 816
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 817
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->DATA_SOURCE_CONFIGURED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_10

    .line 821
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-virtual {v1, p1, p2}, Lcom/sonymobile/android/media/internal/AudioTrack;->adjustAudioTimeStamp(J)V

    .line 822
    monitor-exit v0

    return-void

    .line 818
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incorrect state "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {v1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Can only be called in DATA_SOURCE_CONFIGURED"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_32
    move-exception p1

    .line 822
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw p1
.end method

.method public getSurface()Landroid/view/Surface;
    .registers 5

    .line 197
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->PREPARED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-eq v1, v2, :cond_2d

    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->RECORDING:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_10

    goto :goto_2d

    .line 199
    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {v3}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 201
    :cond_2d
    :goto_2d
    iget-boolean v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoSourceSet:Z

    if-eqz v1, :cond_3e

    iget v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoSource:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3e

    .line 204
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-virtual {v1}, Lcom/sonymobile/android/media/internal/VideoTrack;->getSurface()Landroid/view/Surface;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 202
    :cond_3e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Video source not set to VideoSource.SURFACE"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_46
    move-exception v1

    .line 205
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_46

    throw v1
.end method

.method public onInfo(II)V
    .registers 3

    .line 193
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->reportInfo(II)V

    return-void
.end method

.method public onMaxDurationReached()V
    .registers 3

    .line 158
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mCallback:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onMaxFileSizeReached()V
    .registers 3

    .line 164
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mCallback:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onStopError()V
    .registers 3

    .line 169
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mCallback:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onWriteError()V
    .registers 3

    const-string v0, "SomcMediaRecorder"

    const-string v1, "error while writing to muxer, assume OS file limit reached"

    .line 174
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mCallback:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 176
    invoke-direct {p0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->closeRecordingOnError()V

    return-void
.end method

.method public pause()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "SomcMediaRecorder"

    const-string v1, "pause"

    .line 519
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 521
    :try_start_a
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->RECORDING:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_3d

    .line 524
    iget-boolean v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mRecordingPaused:Z

    if-nez v1, :cond_3b

    .line 525
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mClock:Lcom/sonymobile/android/media/internal/ClockInterface;

    invoke-interface {v1}, Lcom/sonymobile/android/media/internal/ClockInterface;->pauseClock()V

    .line 526
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 527
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-boolean v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mIntelligentActiveEnabled:Z

    invoke-virtual {v2, v1, v3}, Lcom/sonymobile/android/media/internal/VideoTrack;->pause(Ljava/util/concurrent/CountDownLatch;Z)V

    .line 528
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-boolean v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mIntelligentActiveEnabled:Z

    invoke-virtual {v2, v1, v3}, Lcom/sonymobile/android/media/internal/AudioTrack;->pause(Ljava/util/concurrent/CountDownLatch;Z)V
    :try_end_2d
    .catchall {:try_start_a .. :try_end_2d} :catchall_5a

    .line 530
    :try_start_2d
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_30} :catch_31
    .catchall {:try_start_2d .. :try_end_30} :catchall_5a

    goto :goto_38

    :catch_31
    :try_start_31
    const-string v1, "SomcMediaRecorder"

    const-string v2, "wait for pause was interrupted"

    .line 532
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_38
    const/4 v1, 0x1

    .line 534
    iput-boolean v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mRecordingPaused:Z

    .line 538
    :cond_3b
    monitor-exit v0

    return-void

    .line 522
    :cond_3d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {v3}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_5a
    move-exception v1

    .line 538
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_31 .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method public prepare()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "SomcMediaRecorder"

    const-string v1, "prepare"

    .line 542
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 544
    :try_start_a
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->DATA_SOURCE_CONFIGURED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_f5

    .line 547
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mPath:Ljava/lang/String;

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mFd:Ljava/io/FileDescriptor;

    if-eqz v1, :cond_19

    goto :goto_21

    .line 548
    :cond_19
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No valid output file"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 550
    :cond_21
    :goto_21
    sget-object v1, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->PREPARED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    iput-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    .line 551
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    iput-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mClock:Lcom/sonymobile/android/media/internal/ClockInterface;
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_112

    .line 553
    :try_start_29
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mFd:Ljava/io/FileDescriptor;

    if-eqz v1, :cond_3b

    .line 554
    new-instance v1, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;

    iget-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mFd:Ljava/io/FileDescriptor;

    iget v4, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mOutputFormat:I

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;-><init>(Ljava/lang/String;Ljava/io/FileDescriptor;ILcom/sonymobile/android/media/internal/MediaMuxerWrapper$MuxerListener;)V

    iput-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerWrapper:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;

    goto :goto_46

    .line 556
    :cond_3b
    new-instance v1, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;

    iget-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mPath:Ljava/lang/String;

    iget v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mOutputFormat:I

    invoke-direct {v1, v2, v3, p0}, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;-><init>(Ljava/lang/String;ILcom/sonymobile/android/media/internal/MediaMuxerWrapper$MuxerListener;)V

    iput-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerWrapper:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_46} :catch_ed
    .catch Ljava/lang/IllegalArgumentException; {:try_start_29 .. :try_end_46} :catch_ed
    .catchall {:try_start_29 .. :try_end_46} :catchall_112

    .line 562
    :goto_46
    :try_start_46
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerWrapper:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;

    invoke-virtual {v1, v2}, Lcom/sonymobile/android/media/internal/VideoTrack;->setMediaMuxer(Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;)V

    .line 563
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerWrapper:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;

    invoke-virtual {v1, v2}, Lcom/sonymobile/android/media/internal/AudioTrack;->setMediaMuxer(Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;)V

    .line 564
    iget-boolean v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mIntelligentActiveEnabled:Z

    if-eqz v1, :cond_66

    .line 566
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Lcom/sonymobile/android/media/internal/VideoTrack;->setOperatingRate(I)V

    .line 567
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonymobile/android/media/internal/AudioTrack;->setOperatingRate(I)V

    goto :goto_99

    .line 568
    :cond_66
    iget-wide v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mCaptureRate:D

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_99

    .line 569
    iget-wide v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mCaptureRate:D

    iget v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoFrameRate:I

    int-to-double v3, v3

    cmpl-double v1, v1, v3

    if-lez v1, :cond_88

    .line 571
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-wide v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mCaptureRate:D

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/android/media/internal/VideoTrack;->setOperatingRate(I)V

    .line 572
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-wide v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mCaptureRate:D

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/android/media/internal/AudioTrack;->setOperatingRate(I)V

    goto :goto_99

    .line 574
    :cond_88
    iget-wide v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mCaptureRate:D

    iget v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoFrameRate:I

    int-to-double v3, v3

    cmpg-double v1, v1, v3

    if-gez v1, :cond_99

    .line 576
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-wide v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mCaptureRate:D

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/android/media/internal/VideoTrack;->setOperatingRate(I)V

    .line 581
    :cond_99
    :goto_99
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerWrapper:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;

    iget v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mRequestProgressInfoInterval:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->setRequestProgressInfoInterval(J)V

    .line 583
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mClock:Lcom/sonymobile/android/media/internal/ClockInterface;

    invoke-virtual {v1, v2}, Lcom/sonymobile/android/media/internal/VideoTrack;->setClock(Lcom/sonymobile/android/media/internal/ClockInterface;)V

    .line 584
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mClock:Lcom/sonymobile/android/media/internal/ClockInterface;

    invoke-virtual {v1, v2}, Lcom/sonymobile/android/media/internal/AudioTrack;->setClock(Lcom/sonymobile/android/media/internal/ClockInterface;)V

    .line 585
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-virtual {v1}, Lcom/sonymobile/android/media/internal/VideoTrack;->prepare()V

    .line 586
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-virtual {v1}, Lcom/sonymobile/android/media/internal/AudioTrack;->prepare()V

    .line 587
    monitor-exit v0
    :try_end_ba
    .catchall {:try_start_46 .. :try_end_ba} :catchall_112

    .line 590
    iget v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mOrientationHint:I

    if-ltz v0, :cond_c3

    .line 591
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerWrapper:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;

    invoke-virtual {v1, v0}, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->setOrientationHint(I)V

    .line 593
    :cond_c3
    iget v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mLatitude:F

    const/high16 v1, -0x3c4c0000    # -360.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_d6

    iget v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mLongitude:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_d6

    .line 594
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerWrapper:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;

    invoke-virtual {v1, v0, v2}, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->setLocation(FF)V

    .line 596
    :cond_d6
    iget v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMaxDurationMs:I

    if-ltz v0, :cond_df

    .line 597
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerWrapper:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;

    invoke-virtual {v1, v0}, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->setMaxDuration(I)V

    .line 599
    :cond_df
    iget-wide v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMaxFileSize:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_ec

    .line 600
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerWrapper:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;

    invoke-virtual {v2, v0, v1}, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->setMaxFileSize(J)V

    :cond_ec
    return-void

    .line 559
    :catch_ed
    :try_start_ed
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid input parameters"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 545
    :cond_f5
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {v3}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_112
    move-exception v1

    .line 587
    monitor-exit v0
    :try_end_114
    .catchall {:try_start_ed .. :try_end_114} :catchall_112

    throw v1
.end method

.method public release()V
    .registers 5

    const-string v0, "SomcMediaRecorder"

    const-string v1, "release"

    .line 779
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 781
    :try_start_a
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->RELEASED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_12

    .line 783
    monitor-exit v0

    return-void

    .line 785
    :cond_12
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->INITIAL:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_52

    .line 792
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    if-eqz v1, :cond_21

    .line 793
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-virtual {v1}, Lcom/sonymobile/android/media/internal/VideoTrack;->release()V

    .line 795
    :cond_21
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    if-eqz v1, :cond_2a

    .line 796
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-virtual {v1}, Lcom/sonymobile/android/media/internal/AudioTrack;->release()V

    .line 798
    :cond_2a
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerWrapper:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;

    if-eqz v1, :cond_33

    .line 799
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerWrapper:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;

    invoke-virtual {v1}, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->release()V

    .line 801
    :cond_33
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 802
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioCodecThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 803
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoCodecThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 804
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 805
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mSomcMediaRecorderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 807
    sget-object v1, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->RELEASED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    iput-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    .line 808
    monitor-exit v0

    return-void

    .line 789
    :cond_52
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {v3}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", call reset() before release()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_74
    move-exception v1

    .line 808
    monitor-exit v0
    :try_end_76
    .catchall {:try_start_a .. :try_end_76} :catchall_74

    throw v1
.end method

.method public requestProgressInfo(I)V
    .registers 5

    const-string v0, "SomcMediaRecorder"

    .line 509
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestProgressInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 511
    :try_start_19
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->DATA_SOURCE_CONFIGURED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_23

    .line 514
    iput p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mRequestProgressInfoInterval:I

    .line 515
    monitor-exit v0

    return-void

    .line 512
    :cond_23
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {v2}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_40
    move-exception p1

    .line 515
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_19 .. :try_end_42} :catchall_40

    throw p1
.end method

.method public reset()V
    .registers 7

    const-string v0, "SomcMediaRecorder"

    const-string v1, "reset"

    .line 706
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 708
    :try_start_a
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->RELEASED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-eq v1, v2, :cond_7f

    .line 711
    sget-object v1, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->INITIAL:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    iput-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    .line 713
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerWrapper:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_36

    .line 714
    iget-boolean v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerRunning:Z

    if-eqz v1, :cond_2f

    .line 715
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerWrapper:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;

    invoke-virtual {v1}, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->stop()V

    .line 716
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-virtual {v1}, Lcom/sonymobile/android/media/internal/AudioTrack;->setMediaMuxerStopped()V

    .line 717
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-virtual {v1}, Lcom/sonymobile/android/media/internal/VideoTrack;->setMediaMuxerStopped()V

    .line 718
    iput-boolean v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerRunning:Z

    .line 720
    :cond_2f
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerWrapper:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;

    invoke-virtual {v1}, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->release()V

    .line 721
    iput-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerWrapper:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;

    .line 723
    :cond_36
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    if-eqz v1, :cond_3f

    .line 724
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-virtual {v1}, Lcom/sonymobile/android/media/internal/VideoTrack;->reset()V

    .line 726
    :cond_3f
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    if-eqz v1, :cond_48

    .line 727
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-virtual {v1}, Lcom/sonymobile/android/media/internal/AudioTrack;->reset()V

    .line 729
    :cond_48
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mClock:Lcom/sonymobile/android/media/internal/ClockInterface;

    if-eqz v1, :cond_51

    .line 730
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mClock:Lcom/sonymobile/android/media/internal/ClockInterface;

    invoke-interface {v1}, Lcom/sonymobile/android/media/internal/ClockInterface;->resetClock()V

    .line 733
    :cond_51
    iput-boolean v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerAudioTrackSet:Z

    .line 734
    iput-boolean v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerVideoTrackSet:Z

    const-wide/16 v4, 0x0

    .line 736
    iput-wide v4, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerStartPerformanceTimeMs:J

    .line 737
    iput-wide v4, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerStopPerformanceTimeMs:J

    .line 738
    iput v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoFrameRate:I

    const-wide/16 v4, 0x0

    .line 739
    iput-wide v4, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mCaptureRate:D

    const/4 v1, -0x1

    .line 740
    iput v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mOrientationHint:I

    const/high16 v4, -0x3c4c0000    # -360.0f

    .line 741
    iput v4, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mLongitude:F

    .line 742
    iput v4, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mLatitude:F

    .line 743
    iput v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMaxDurationMs:I

    const-wide/16 v4, -0x1

    .line 744
    iput-wide v4, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMaxFileSize:J

    .line 745
    iput-boolean v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoSourceSet:Z

    .line 746
    iput v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mLatestProgressTimeMs:I

    .line 747
    iput v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mRequestProgressInfoInterval:I

    .line 748
    iput-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStopLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    .line 749
    iput-boolean v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoOnly:Z

    .line 750
    iput-boolean v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mRecordingPaused:Z

    .line 751
    monitor-exit v0

    return-void

    .line 709
    :cond_7f
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {v3}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_9c
    move-exception v1

    .line 751
    monitor-exit v0
    :try_end_9e
    .catchall {:try_start_a .. :try_end_9e} :catchall_9c

    throw v1
.end method

.method public resume()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "SomcMediaRecorder"

    const-string v1, "resume"

    .line 755
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 757
    :try_start_a
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->RECORDING:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_39

    .line 760
    iget-boolean v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mRecordingPaused:Z

    if-eqz v1, :cond_37

    .line 762
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mClock:Lcom/sonymobile/android/media/internal/ClockInterface;

    invoke-interface {v1}, Lcom/sonymobile/android/media/internal/ClockInterface;->resumeClock()V

    .line 763
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 764
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-virtual {v2, v1}, Lcom/sonymobile/android/media/internal/VideoTrack;->resume(Ljava/util/concurrent/CountDownLatch;)V

    .line 765
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-virtual {v2, v1}, Lcom/sonymobile/android/media/internal/AudioTrack;->resume(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_56

    .line 767
    :try_start_29
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_2c} :catch_2d
    .catchall {:try_start_29 .. :try_end_2c} :catchall_56

    goto :goto_34

    :catch_2d
    :try_start_2d
    const-string v1, "SomcMediaRecorder"

    const-string v2, "wait for resume was interrupted"

    .line 769
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_34
    const/4 v1, 0x0

    .line 771
    iput-boolean v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mRecordingPaused:Z

    .line 775
    :cond_37
    monitor-exit v0

    return-void

    .line 758
    :cond_39
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {v3}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_56
    move-exception v1

    .line 775
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_2d .. :try_end_58} :catchall_56

    throw v1
.end method

.method public setAudioChannels(I)V
    .registers 5

    .line 451
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 452
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->DATA_SOURCE_CONFIGURED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_1a

    if-lez p1, :cond_12

    .line 458
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-virtual {v1, p1}, Lcom/sonymobile/android/media/internal/AudioTrack;->setAudioChannels(I)V

    .line 459
    monitor-exit v0

    return-void

    .line 456
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of channels is not positive"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 453
    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {v2}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_37
    move-exception p1

    .line 459
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw p1
.end method

.method public setAudioEncoder(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 420
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 421
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->DATA_SOURCE_CONFIGURED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_10

    .line 424
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-virtual {v1, p1}, Lcom/sonymobile/android/media/internal/AudioTrack;->setAudioEncoder(I)V

    .line 425
    monitor-exit v0

    return-void

    .line 422
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {v2}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_2d
    move-exception p1

    .line 425
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method public setAudioEncodingBitRate(I)V
    .registers 5

    .line 463
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 464
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->DATA_SOURCE_CONFIGURED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_1a

    if-lez p1, :cond_12

    .line 470
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-virtual {v1, p1}, Lcom/sonymobile/android/media/internal/AudioTrack;->setAudioBitRate(I)V

    .line 471
    monitor-exit v0

    return-void

    .line 468
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Audio encoding bit rate is not positive"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 465
    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {v2}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_37
    move-exception p1

    .line 471
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw p1
.end method

.method public setAudioSamplingRate(I)V
    .registers 5

    .line 439
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 440
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->DATA_SOURCE_CONFIGURED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_1a

    if-lez p1, :cond_12

    .line 446
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-virtual {v1, p1}, Lcom/sonymobile/android/media/internal/AudioTrack;->setAudioSamplingRate(I)V

    .line 447
    monitor-exit v0

    return-void

    .line 444
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Audio sampling rate is not positive"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 441
    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {v2}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_37
    move-exception p1

    .line 447
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw p1
.end method

.method public setAudioSource(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->INITIALIZED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-eq v1, v2, :cond_2d

    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->INITIAL:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_10

    goto :goto_2d

    .line 222
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {v2}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 224
    :cond_2d
    :goto_2d
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->INITIAL:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_37

    .line 225
    sget-object v1, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->INITIALIZED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    iput-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    :cond_37
    const/4 v1, 0x0

    .line 227
    iput-boolean v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoOnly:Z

    .line 228
    iget-boolean v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoOnly:Z

    invoke-direct {p0, p1, v1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->createAudioTrack(IZ)V

    .line 229
    monitor-exit v0

    return-void

    :catchall_41
    move-exception p1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw p1
.end method

.method public setCaptureRate(D)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 357
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 358
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->DATA_SOURCE_CONFIGURED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_d

    .line 361
    iput-wide p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mCaptureRate:D

    .line 362
    monitor-exit v0

    return-void

    .line 359
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incorrect state "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {v1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_2a
    move-exception p1

    .line 362
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method public setInputSurface(Landroid/view/Surface;)V
    .registers 5
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 209
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->PREPARED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-eq v1, v2, :cond_22

    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->RECORDING:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-eq v1, v2, :cond_22

    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->RELEASED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-eq v1, v2, :cond_22

    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->ERROR:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-eq v1, v2, :cond_22

    .line 214
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-virtual {v1, p1}, Lcom/sonymobile/android/media/internal/VideoTrack;->setInputSurface(Landroid/view/Surface;)V

    .line 215
    monitor-exit v0

    return-void

    .line 212
    :cond_22
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {v2}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_3f
    move-exception p1

    .line 215
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw p1
.end method

.method public setLocation(FF)V
    .registers 10

    const-string v0, "SomcMediaRecorder"

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLocation lat:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " long:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x461c4000    # 10000.0f

    mul-float v1, p1, v0

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    mul-float/2addr v0, p2

    float-to-double v5, v0

    add-double/2addr v5, v3

    double-to-int v0, v5

    const v2, 0xdbba0

    if-gt v1, v2, :cond_61

    const v2, -0xdbba0

    if-lt v1, v2, :cond_61

    const v1, 0x1b7740

    if-gt v0, v1, :cond_45

    const v1, -0x1b7740

    if-lt v0, v1, :cond_45

    .line 312
    iput p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mLatitude:F

    .line 313
    iput p2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mLongitude:F

    return-void

    .line 308
    :cond_45
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Longitude: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " out of range"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 309
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 304
    :cond_61
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Latitude: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " out of range."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 305
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setMaxDuration(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "SomcMediaRecorder"

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMaxDuration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 398
    :try_start_1e
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->DATA_SOURCE_CONFIGURED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_37

    if-lez p1, :cond_33

    const/16 v1, 0x64

    if-lt p1, v1, :cond_2b

    goto :goto_33

    .line 402
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minmimum duration too short"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 404
    :cond_33
    :goto_33
    iput p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMaxDurationMs:I

    .line 405
    monitor-exit v0

    return-void

    .line 399
    :cond_37
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {v2}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_54
    move-exception p1

    .line 405
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_1e .. :try_end_56} :catchall_54

    throw p1
.end method

.method public setMaxFileSize(J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "SomcMediaRecorder"

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMaxFileSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 411
    :try_start_19
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->DATA_SOURCE_CONFIGURED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_2c

    const-wide v1, 0x3b9aca0000L

    .line 414
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMaxFileSize:J

    .line 415
    monitor-exit v0

    return-void

    .line 412
    :cond_2c
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incorrect state "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {v1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_49
    move-exception p1

    .line 415
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_19 .. :try_end_4b} :catchall_49

    throw p1
.end method

.method public setOrientationHint(I)V
    .registers 6

    const-string v0, "SomcMediaRecorder"

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOrientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 283
    :try_start_19
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->INITIAL:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-eq v1, v2, :cond_49

    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->INITIALIZED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-eq v1, v2, :cond_49

    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->DATA_SOURCE_CONFIGURED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_2c

    goto :goto_49

    .line 285
    :cond_2c
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {v2}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_49
    :goto_49
    if-eqz p1, :cond_6f

    const/16 v1, 0x5a

    if-eq p1, v1, :cond_6f

    const/16 v1, 0xb4

    if-eq p1, v1, :cond_6f

    const/16 v1, 0x10e

    if-ne p1, v1, :cond_58

    goto :goto_6f

    .line 291
    :cond_58
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported angle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 294
    :cond_6f
    :goto_6f
    iput p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mOrientationHint:I

    .line 295
    monitor-exit v0

    return-void

    :catchall_73
    move-exception p1

    monitor-exit v0
    :try_end_75
    .catchall {:try_start_19 .. :try_end_75} :catchall_73

    throw p1
.end method

.method public setOutputFile(Ljava/io/FileDescriptor;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 489
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 490
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->DATA_SOURCE_CONFIGURED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_19

    .line 493
    iput-object p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mFd:Ljava/io/FileDescriptor;

    .line 494
    iget-object p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne p2, v1, :cond_13

    const/4 p2, 0x1

    goto :goto_14

    :cond_13
    const/4 p2, 0x0

    :goto_14
    invoke-virtual {p1, p2}, Lcom/sonymobile/android/media/internal/VideoTrack;->setIsBufferingEnabled(Z)V

    .line 495
    monitor-exit v0

    return-void

    .line 491
    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incorrect state "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {v1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_36
    move-exception p1

    .line 495
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw p1
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "SomcMediaRecorder"

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOutputFile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 501
    :try_start_19
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->DATA_SOURCE_CONFIGURED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_23

    .line 504
    iput-object p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mPath:Ljava/lang/String;

    .line 505
    monitor-exit v0

    return-void

    .line 502
    :cond_23
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {v2}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_40
    move-exception p1

    .line 505
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_19 .. :try_end_42} :catchall_40

    throw p1
.end method

.method public setOutputFormat(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "SomcMediaRecorder"

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOutputFormat:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 321
    :try_start_19
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->INITIALIZED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_3c

    .line 324
    iget-boolean v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoSourceSet:Z

    if-eqz v1, :cond_34

    .line 327
    iget-boolean v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoOnly:Z

    if-eqz v1, :cond_2c

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 328
    invoke-direct {p0, v1, v2}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->createAudioTrack(IZ)V

    .line 331
    :cond_2c
    iput p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mOutputFormat:I

    .line 332
    sget-object p1, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->DATA_SOURCE_CONFIGURED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    iput-object p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    .line 333
    monitor-exit v0

    return-void

    .line 325
    :cond_34
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "No video source set"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 322
    :cond_3c
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {v2}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_59
    move-exception p1

    .line 333
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_19 .. :try_end_5b} :catchall_59

    throw p1
.end method

.method public setProfile(Landroid/media/CamcorderProfile;)V
    .registers 4

    const-string v0, "SomcMediaRecorder"

    const-string v1, "setProfile"

    .line 260
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_45

    .line 262
    iget v0, p1, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setOutputFormat(I)V

    .line 263
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setVideoFrameRate(I)V

    .line 264
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setVideoSize(II)V

    .line 265
    iget v0, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setVideoEncodingBitRate(I)V

    .line 266
    iget v0, p1, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setVideoEncoder(I)V

    .line 267
    iget v0, p1, Landroid/media/CamcorderProfile;->quality:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_31

    iget v0, p1, Landroid/media/CamcorderProfile;->quality:I

    const/16 v1, 0x3ef

    if-gt v0, v1, :cond_31

    goto :goto_45

    .line 272
    :cond_31
    iget v0, p1, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setAudioEncodingBitRate(I)V

    .line 273
    iget v0, p1, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setAudioChannels(I)V

    .line 274
    iget v0, p1, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setAudioSamplingRate(I)V

    .line 275
    iget p1, p1, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setAudioEncoder(I)V

    :cond_45
    :goto_45
    return-void
.end method

.method public setVideoBitRateMode(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 379
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->DATA_SOURCE_CONFIGURED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_10

    .line 382
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-virtual {v1, p1}, Lcom/sonymobile/android/media/internal/VideoTrack;->setBitRateMode(I)V

    .line 383
    monitor-exit v0

    return-void

    .line 380
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {v2}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_2d
    move-exception p1

    .line 383
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method public setVideoColorAspects(III)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 388
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->DATA_SOURCE_CONFIGURED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_10

    .line 391
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-virtual {v1, p1, p2, p3}, Lcom/sonymobile/android/media/internal/VideoTrack;->setColorAspects(III)V

    .line 392
    monitor-exit v0

    return-void

    .line 389
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Incorrect state "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {p3}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_2d
    move-exception p1

    .line 392
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method public setVideoEncoder(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 431
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->DATA_SOURCE_CONFIGURED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_10

    .line 434
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-virtual {v1, p1}, Lcom/sonymobile/android/media/internal/VideoTrack;->setVideoEncoder(I)V

    .line 435
    monitor-exit v0

    return-void

    .line 432
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {v2}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_2d
    move-exception p1

    .line 435
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method public setVideoEncodingBitRate(I)V
    .registers 5

    .line 475
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 476
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->DATA_SOURCE_CONFIGURED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_1a

    if-lez p1, :cond_12

    .line 482
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-virtual {v1, p1}, Lcom/sonymobile/android/media/internal/VideoTrack;->setEncodingBitrate(I)V

    .line 483
    monitor-exit v0

    return-void

    .line 480
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Video encoding bit rate is not positive"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 477
    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {v2}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_37
    move-exception p1

    .line 483
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw p1
.end method

.method public setVideoEncodingProfileLevel(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 367
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->DATA_SOURCE_CONFIGURED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_1c

    if-ltz p1, :cond_14

    if-ltz p2, :cond_14

    .line 373
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-virtual {v1, p1, p2}, Lcom/sonymobile/android/media/internal/VideoTrack;->setEncodingProfileLevel(II)V

    .line 374
    monitor-exit v0

    return-void

    .line 371
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Video encoding bit rate is not positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 368
    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incorrect state "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {v1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_39
    move-exception p1

    .line 374
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw p1
.end method

.method public setVideoFrameRate(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 348
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->DATA_SOURCE_CONFIGURED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_12

    .line 351
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-virtual {v1, p1}, Lcom/sonymobile/android/media/internal/VideoTrack;->setFrameRate(I)V

    .line 352
    iput p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoFrameRate:I

    .line 353
    monitor-exit v0

    return-void

    .line 349
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {v2}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_2f
    move-exception p1

    .line 353
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method public setVideoSize(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->DATA_SOURCE_CONFIGURED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_10

    .line 342
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-virtual {v1, p1, p2}, Lcom/sonymobile/android/media/internal/VideoTrack;->setVideoSize(II)V

    .line 343
    monitor-exit v0

    return-void

    .line 340
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incorrect state "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {v1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_2d
    move-exception p1

    .line 343
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method public setVideoSource(I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 243
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->INITIALIZED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-eq v1, v2, :cond_2d

    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->INITIAL:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_10

    goto :goto_2d

    .line 244
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {v2}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2d
    :goto_2d
    const/4 v1, 0x1

    if-eq p1, v1, :cond_4f

    .line 249
    iput p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoSource:I

    .line 250
    new-instance p1, Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mEventHandler:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$EventHandler;

    iget-object v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoCodecThread:Landroid/os/HandlerThread;

    iget-object v4, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mEventThread:Landroid/os/HandlerThread;

    iget-object v5, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerThread:Landroid/os/HandlerThread;

    invoke-direct {p1, v2, v3, v4, v5}, Lcom/sonymobile/android/media/internal/VideoTrack;-><init>(Landroid/os/Handler;Landroid/os/HandlerThread;Landroid/os/HandlerThread;Landroid/os/HandlerThread;)V

    iput-object p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    .line 252
    iput-boolean v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoSourceSet:Z

    .line 253
    iget-object p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v1, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->INITIAL:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne p1, v1, :cond_4d

    .line 254
    sget-object p1, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->INITIALIZED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    iput-object p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    .line 256
    :cond_4d
    monitor-exit v0

    return-void

    .line 247
    :cond_4f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "VideoSource.CAMERA not supported"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_57
    move-exception p1

    .line 256
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_57

    throw p1
.end method

.method public start()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "SomcMediaRecorder"

    const-string v1, "start"

    .line 607
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 609
    :try_start_a
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->PREPARED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_25

    .line 612
    sget-object v1, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->RECORDING:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    iput-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    .line 614
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mClock:Lcom/sonymobile/android/media/internal/ClockInterface;

    invoke-interface {v1}, Lcom/sonymobile/android/media/internal/ClockInterface;->setStartTime()V

    .line 616
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-virtual {v1}, Lcom/sonymobile/android/media/internal/AudioTrack;->start()V

    .line 617
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-virtual {v1}, Lcom/sonymobile/android/media/internal/VideoTrack;->start()V

    .line 618
    monitor-exit v0

    return-void

    .line 610
    :cond_25
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {v3}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_42
    move-exception v1

    .line 618
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_a .. :try_end_44} :catchall_42

    throw v1
.end method

.method public stop()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "SomcMediaRecorder"

    const-string v1, "stop"

    .line 644
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 646
    :try_start_a
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->RECORDING:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_34

    .line 649
    sget-object v1, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->STOPPING:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    iput-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    .line 651
    iget-boolean v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerRunning:Z

    if-eqz v1, :cond_20

    .line 652
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStopLatch:Ljava/util/concurrent/CountDownLatch;

    .line 655
    :cond_20
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mClock:Lcom/sonymobile/android/media/internal/ClockInterface;

    invoke-interface {v1}, Lcom/sonymobile/android/media/internal/ClockInterface;->stopClock()V

    .line 656
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-virtual {v1}, Lcom/sonymobile/android/media/internal/AudioTrack;->stop()V

    .line 657
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-virtual {v1}, Lcom/sonymobile/android/media/internal/VideoTrack;->stop()V

    .line 660
    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->waitUntilStopCompleted()V

    .line 661
    monitor-exit v0

    return-void

    .line 647
    :cond_34
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {v3}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_51
    move-exception v1

    .line 661
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_a .. :try_end_53} :catchall_51

    throw v1
.end method

.method public stopAsync()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "SomcMediaRecorder"

    const-string v1, "stopAsync"

    .line 622
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 624
    :try_start_a
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->RECORDING:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_31

    .line 627
    sget-object v1, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->STOPPING:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    iput-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    .line 629
    iget-boolean v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerRunning:Z

    if-eqz v1, :cond_20

    .line 630
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStopLatch:Ljava/util/concurrent/CountDownLatch;

    .line 633
    :cond_20
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mClock:Lcom/sonymobile/android/media/internal/ClockInterface;

    invoke-interface {v1}, Lcom/sonymobile/android/media/internal/ClockInterface;->stopClock()V

    .line 634
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-virtual {v1}, Lcom/sonymobile/android/media/internal/AudioTrack;->stop()V

    .line 635
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-virtual {v1}, Lcom/sonymobile/android/media/internal/VideoTrack;->stop()V

    .line 640
    monitor-exit v0

    return-void

    .line 625
    :cond_31
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {v3}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_4e
    move-exception v1

    .line 640
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_a .. :try_end_50} :catchall_4e

    throw v1
.end method

.method public stopAudioRecording()V
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-virtual {v0}, Lcom/sonymobile/android/media/internal/AudioTrack;->stopAudioRecording()V

    return-void
.end method

.method public stopOnCameraError()V
    .registers 3

    const-string v0, "SomcMediaRecorder"

    const-string v1, "stopOnCameraError"

    .line 700
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    invoke-direct {p0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->closeRecordingOnError()V

    .line 702
    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->stop()V

    return-void
.end method

.method public useIntelligentActive(Z)V
    .registers 2

    .line 812
    iput-boolean p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mIntelligentActiveEnabled:Z

    return-void
.end method

.method public waitUntilStopCompleted()V
    .registers 6

    const-string v0, "SomcMediaRecorder"

    const-string v1, "waitUntilStopCompleted"

    .line 665
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 667
    :try_start_a
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->STOPPING:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_51

    .line 671
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStopLatch:Ljava/util/concurrent/CountDownLatch;
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_6e

    if-eqz v1, :cond_21

    .line 673
    :try_start_14
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStopLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_19} :catch_1a
    .catchall {:try_start_14 .. :try_end_19} :catchall_6e

    goto :goto_21

    :catch_1a
    :try_start_1a
    const-string v1, "SomcMediaRecorder"

    const-string v2, "wait for stop was interrupted"

    .line 675
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    :goto_21
    const-wide/16 v1, 0x0

    .line 679
    iput-wide v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerStartPerformanceTimeMs:J

    .line 680
    iput-wide v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerStopPerformanceTimeMs:J

    const/4 v1, 0x0

    .line 681
    iput v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoFrameRate:I

    const-wide/16 v2, 0x0

    .line 682
    iput-wide v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mCaptureRate:D

    const/4 v2, -0x1

    .line 683
    iput v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mOrientationHint:I

    const/high16 v3, -0x3c4c0000    # -360.0f

    .line 684
    iput v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mLongitude:F

    .line 685
    iput v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mLatitude:F

    .line 686
    iput v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMaxDurationMs:I

    const-wide/16 v3, -0x1

    .line 687
    iput-wide v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMaxFileSize:J

    .line 688
    iput-boolean v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoSourceSet:Z

    .line 689
    iput v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mLatestProgressTimeMs:I

    .line 690
    iput v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mRequestProgressInfoInterval:I

    const/4 v2, 0x0

    .line 691
    iput-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStopLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    .line 692
    iput-boolean v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoOnly:Z

    .line 693
    iput-boolean v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mRecordingPaused:Z

    .line 695
    sget-object v1, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->INITIAL:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    iput-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    .line 696
    monitor-exit v0

    return-void

    .line 668
    :cond_51
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {v3}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_6e
    move-exception v1

    .line 696
    monitor-exit v0
    :try_end_70
    .catchall {:try_start_1a .. :try_end_70} :catchall_6e

    throw v1
.end method
