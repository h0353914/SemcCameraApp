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

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 76
    iput-wide v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerStartPerformanceTimeMs:J

    .line 77
    iput-wide v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerStopPerformanceTimeMs:J

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoFrameRate:I

    const-wide/16 v1, 0x0

    .line 79
    iput-wide v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mCaptureRate:D

    const/4 v1, -0x1

    .line 80
    iput v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mOrientationHint:I

    const/high16 v2, -0x3c4c0000    # -360.0f

    .line 81
    iput v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mLongitude:F

    .line 82
    iput v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mLatitude:F

    .line 83
    iput v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMaxDurationMs:I

    const-wide/16 v2, -0x1

    .line 84
    iput-wide v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMaxFileSize:J

    .line 85
    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->INITIAL:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    iput-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    .line 90
    iput-boolean v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoSourceSet:Z

    .line 92
    iput-boolean v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerVideoTrackSet:Z

    .line 93
    iput-boolean v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerAudioTrackSet:Z

    .line 94
    iput-boolean v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerRunning:Z

    .line 95
    iput v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoSource:I

    .line 96
    iput-boolean v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mRecordingPaused:Z

    .line 97
    iput v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mLatestProgressTimeMs:I

    .line 98
    iput-boolean v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mIntelligentActiveEnabled:Z

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoOnly:Z

    .line 107
    iput v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mRequestProgressInfoInterval:I

    .line 111
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    .line 125
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "SomcMediaRecorder"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mSomcMediaRecorderThread:Landroid/os/HandlerThread;

    .line 127
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 129
    new-instance v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$EventHandler;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 130
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$EventHandler;-><init>(Ljava/lang/ref/WeakReference;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mEventHandler:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$EventHandler;

    .line 131
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "AudioCodecThread"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioCodecThread:Landroid/os/HandlerThread;

    .line 133
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 134
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "VideoCodecThread"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoCodecThread:Landroid/os/HandlerThread;

    .line 136
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 137
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "EventThread"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mEventThread:Landroid/os/HandlerThread;

    .line 138
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 139
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "MuxerThread"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerThread:Landroid/os/HandlerThread;

    .line 140
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 142
    iput-object p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mCallback:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/android/media/internal/SomcMediaRecorder;I)V
    .registers 2

    .line 50
    invoke-direct {p0, p1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->reportError(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/android/media/internal/SomcMediaRecorder;Z)V
    .registers 2

    .line 50
    invoke-direct {p0, p1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->muxerTrackSet(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/android/media/internal/SomcMediaRecorder;Z)V
    .registers 2

    .line 50
    invoke-direct {p0, p1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->muxerTrackStopped(Z)V

    return-void
.end method

.method private closeRecordingOnError()V
    .registers 2

    .line 181
    iget-boolean v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerRunning:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    .line 182
    invoke-direct {p0, v0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->muxerTrackStopped(Z)V

    const/4 v0, 0x0

    .line 183
    invoke-direct {p0, v0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->muxerTrackStopped(Z)V

    .line 184
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-virtual {v0}, Lcom/sonymobile/android/media/internal/VideoTrack;->stop()V

    .line 185
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/AudioTrack;->stop()V

    :cond_16
    return-void
.end method

.method private createAudioTrack(IZ)V
    .registers 11

    .line 231
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

    .line 847
    iput-boolean v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerVideoTrackSet:Z

    goto :goto_8

    .line 849
    :cond_6
    iput-boolean v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerAudioTrackSet:Z

    .line 853
    :goto_8
    iget-object p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 854
    :try_start_b
    iget-boolean v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerAudioTrackSet:Z

    if-eqz v1, :cond_33

    iget-boolean v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerVideoTrackSet:Z

    if-eqz v1, :cond_33

    .line 856
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 857
    iget-object v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerWrapper:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;

    invoke-virtual {v3}, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->start()V

    .line 858
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/32 v1, 0xf4240

    .line 859
    div-long/2addr v3, v1

    iput-wide v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerStartPerformanceTimeMs:J

    .line 861
    iput-boolean v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerRunning:Z

    .line 862
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-virtual {v0}, Lcom/sonymobile/android/media/internal/VideoTrack;->setMediaMuxerStarted()V

    .line 863
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/AudioTrack;->setMediaMuxerStarted()V

    .line 865
    :cond_33
    monitor-exit p1

    return-void

    :catchall_35
    move-exception p0

    monitor-exit p1
    :try_end_37
    .catchall {:try_start_b .. :try_end_37} :catchall_35

    throw p0
.end method

.method private muxerTrackStopped(Z)V
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 870
    iput-boolean v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerVideoTrackSet:Z

    goto :goto_8

    .line 872
    :cond_6
    iput-boolean v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerAudioTrackSet:Z

    .line 874
    :goto_8
    iget-boolean p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerAudioTrackSet:Z

    if-nez p1, :cond_37

    iget-boolean p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerVideoTrackSet:Z

    if-nez p1, :cond_37

    .line 876
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 877
    iget-object p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerWrapper:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;

    invoke-virtual {p1}, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->stop()V

    .line 878
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/32 v1, 0xf4240

    .line 879
    div-long/2addr v3, v1

    iput-wide v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerStopPerformanceTimeMs:J

    .line 881
    iget-object p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-virtual {p1}, Lcom/sonymobile/android/media/internal/VideoTrack;->setMediaMuxerStopped()V

    .line 882
    iget-object p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-virtual {p1}, Lcom/sonymobile/android/media/internal/AudioTrack;->setMediaMuxerStopped()V

    .line 883
    iput-boolean v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerRunning:Z

    .line 884
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStopLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz p0, :cond_37

    .line 885
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_37
    return-void
.end method

.method private reportError(I)V
    .registers 5

    .line 832
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 833
    :try_start_3
    sget-object v1, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->ERROR:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    iput-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    .line 834
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mCallback:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 835
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 836
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method private reportInfo(II)V
    .registers 5

    .line 840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportInfo info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SomcMediaRecorder"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mCallback:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 842
    iput p2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mLatestProgressTimeMs:I

    return-void
.end method


# virtual methods
.method public adjustAudioStartVolume(I)V
    .registers 5

    .line 822
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 823
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->DATA_SOURCE_CONFIGURED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_10

    .line 827
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/internal/AudioTrack;->adjustStartVolume(I)V

    .line 828
    monitor-exit v0

    return-void

    .line 824
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " Can only be called in DATA_SOURCE_CONFIGURED"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_35
    move-exception p0

    .line 828
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public adjustAudioTimestamp(J)V
    .registers 6

    .line 812
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 813
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->DATA_SOURCE_CONFIGURED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_10

    .line 817
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/android/media/internal/AudioTrack;->adjustAudioTimeStamp(J)V

    .line 818
    monitor-exit v0

    return-void

    .line 814
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incorrect state "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " Can only be called in DATA_SOURCE_CONFIGURED"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_35
    move-exception p0

    .line 818
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public getSurface()Landroid/view/Surface;
    .registers 5

    .line 195
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->PREPARED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-eq v1, v2, :cond_2f

    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->RECORDING:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_10

    goto :goto_2f

    .line 197
    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    :cond_2f
    :goto_2f
    iget-boolean v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoSourceSet:Z

    if-eqz v1, :cond_40

    iget v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoSource:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_40

    .line 202
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/VideoTrack;->getSurface()Landroid/view/Surface;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 200
    :cond_40
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Video source not set to VideoSource.SURFACE"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_48
    move-exception p0

    .line 203
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_48

    throw p0
.end method

.method public onInfo(II)V
    .registers 3

    .line 191
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->reportInfo(II)V

    return-void
.end method

.method public onMaxDurationReached()V
    .registers 2

    .line 156
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mCallback:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onMaxFileSizeReached()V
    .registers 2

    .line 162
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mCallback:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onStopError()V
    .registers 2

    .line 167
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mCallback:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onWriteError()V
    .registers 3

    const-string v0, "SomcMediaRecorder"

    const-string v1, "error while writing to muxer, assume OS file limit reached"

    .line 172
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mCallback:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 174
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

    .line 515
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 517
    :try_start_a
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->RECORDING:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_3e

    .line 520
    iget-boolean v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mRecordingPaused:Z

    if-nez v1, :cond_3c

    .line 521
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mClock:Lcom/sonymobile/android/media/internal/ClockInterface;

    invoke-interface {v1}, Lcom/sonymobile/android/media/internal/ClockInterface;->pauseClock()V

    .line 522
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 523
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-boolean v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mIntelligentActiveEnabled:Z

    invoke-virtual {v2, v1, v3}, Lcom/sonymobile/android/media/internal/VideoTrack;->pause(Ljava/util/concurrent/CountDownLatch;Z)V

    .line 524
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-boolean v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mIntelligentActiveEnabled:Z

    invoke-virtual {v2, v1, v3}, Lcom/sonymobile/android/media/internal/AudioTrack;->pause(Ljava/util/concurrent/CountDownLatch;Z)V
    :try_end_2d
    .catchall {:try_start_a .. :try_end_2d} :catchall_5d

    .line 526
    :try_start_2d
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_30} :catch_31
    .catchall {:try_start_2d .. :try_end_30} :catchall_5d

    goto :goto_39

    :catch_31
    :try_start_31
    const-string v1, "SomcMediaRecorder"

    const-string/jumbo v2, "wait for pause was interrupted"

    .line 528
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_39
    const/4 v1, 0x1

    .line 530
    iput-boolean v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mRecordingPaused:Z

    .line 534
    :cond_3c
    monitor-exit v0

    return-void

    .line 518
    :cond_3e
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_5d
    move-exception p0

    .line 534
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_31 .. :try_end_5f} :catchall_5d

    throw p0
.end method

.method public prepare()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "SomcMediaRecorder"

    const-string v1, "prepare"

    .line 538
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 540
    :try_start_a
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->DATA_SOURCE_CONFIGURED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_eb

    .line 543
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mPath:Ljava/lang/String;

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mFd:Ljava/io/FileDescriptor;

    if-eqz v1, :cond_19

    goto :goto_21

    .line 544
    :cond_19
    new-instance p0, Ljava/io/IOException;

    const-string v1, "No valid output file"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 546
    :cond_21
    :goto_21
    sget-object v1, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->PREPARED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    iput-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    .line 547
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    iput-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mClock:Lcom/sonymobile/android/media/internal/ClockInterface;
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_10a

    .line 549
    :try_start_29
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mFd:Ljava/io/FileDescriptor;

    if-eqz v1, :cond_3b

    .line 550
    new-instance v1, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;

    iget-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mFd:Ljava/io/FileDescriptor;

    iget v4, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mOutputFormat:I

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;-><init>(Ljava/lang/String;Ljava/io/FileDescriptor;ILcom/sonymobile/android/media/internal/MediaMuxerWrapper$MuxerListener;)V

    iput-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerWrapper:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;

    goto :goto_46

    .line 552
    :cond_3b
    new-instance v1, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;

    iget-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mPath:Ljava/lang/String;

    iget v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mOutputFormat:I

    invoke-direct {v1, v2, v3, p0}, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;-><init>(Ljava/lang/String;ILcom/sonymobile/android/media/internal/MediaMuxerWrapper$MuxerListener;)V

    iput-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerWrapper:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_46} :catch_e3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_29 .. :try_end_46} :catch_e3
    .catchall {:try_start_29 .. :try_end_46} :catchall_10a

    .line 558
    :goto_46
    :try_start_46
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerWrapper:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;

    invoke-virtual {v1, v2}, Lcom/sonymobile/android/media/internal/VideoTrack;->setMediaMuxer(Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;)V

    .line 559
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerWrapper:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;

    invoke-virtual {v1, v2}, Lcom/sonymobile/android/media/internal/AudioTrack;->setMediaMuxer(Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;)V

    .line 560
    iget-boolean v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mIntelligentActiveEnabled:Z

    if-eqz v1, :cond_66

    .line 562
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Lcom/sonymobile/android/media/internal/VideoTrack;->setOperatingRate(I)V

    .line 563
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonymobile/android/media/internal/AudioTrack;->setOperatingRate(I)V

    goto :goto_8f

    .line 564
    :cond_66
    iget-wide v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mCaptureRate:D

    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-lez v3, :cond_8f

    .line 565
    iget v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoFrameRate:I

    int-to-double v4, v3

    cmpl-double v4, v1, v4

    if-lez v4, :cond_84

    .line 567
    iget-object v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    double-to-int v1, v1

    invoke-virtual {v3, v1}, Lcom/sonymobile/android/media/internal/VideoTrack;->setOperatingRate(I)V

    .line 568
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-wide v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mCaptureRate:D

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/android/media/internal/AudioTrack;->setOperatingRate(I)V

    goto :goto_8f

    :cond_84
    int-to-double v3, v3

    cmpg-double v3, v1, v3

    if-gez v3, :cond_8f

    .line 572
    iget-object v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    double-to-int v1, v1

    invoke-virtual {v3, v1}, Lcom/sonymobile/android/media/internal/VideoTrack;->setOperatingRate(I)V

    .line 577
    :cond_8f
    :goto_8f
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerWrapper:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;

    iget v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mRequestProgressInfoInterval:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->setRequestProgressInfoInterval(J)V

    .line 579
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mClock:Lcom/sonymobile/android/media/internal/ClockInterface;

    invoke-virtual {v1, v2}, Lcom/sonymobile/android/media/internal/VideoTrack;->setClock(Lcom/sonymobile/android/media/internal/ClockInterface;)V

    .line 580
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mClock:Lcom/sonymobile/android/media/internal/ClockInterface;

    invoke-virtual {v1, v2}, Lcom/sonymobile/android/media/internal/AudioTrack;->setClock(Lcom/sonymobile/android/media/internal/ClockInterface;)V

    .line 581
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-virtual {v1}, Lcom/sonymobile/android/media/internal/VideoTrack;->prepare()V

    .line 582
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-virtual {v1}, Lcom/sonymobile/android/media/internal/AudioTrack;->prepare()V

    .line 583
    monitor-exit v0
    :try_end_b0
    .catchall {:try_start_46 .. :try_end_b0} :catchall_10a

    .line 586
    iget v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mOrientationHint:I

    if-ltz v0, :cond_b9

    .line 587
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerWrapper:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;

    invoke-virtual {v1, v0}, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->setOrientationHint(I)V

    .line 589
    :cond_b9
    iget v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mLatitude:F

    const/high16 v1, -0x3c4c0000    # -360.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_cc

    iget v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mLongitude:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_cc

    .line 590
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerWrapper:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;

    invoke-virtual {v1, v0, v2}, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->setLocation(FF)V

    .line 592
    :cond_cc
    iget v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMaxDurationMs:I

    if-ltz v0, :cond_d5

    .line 593
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerWrapper:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;

    invoke-virtual {v1, v0}, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->setMaxDuration(I)V

    .line 595
    :cond_d5
    iget-wide v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMaxFileSize:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_e2

    .line 596
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerWrapper:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->setMaxFileSize(J)V

    :cond_e2
    return-void

    .line 555
    :catch_e3
    :try_start_e3
    new-instance p0, Ljava/io/IOException;

    const-string v1, "Invalid input parameters"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 541
    :cond_eb
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_10a
    move-exception p0

    .line 583
    monitor-exit v0
    :try_end_10c
    .catchall {:try_start_e3 .. :try_end_10c} :catchall_10a

    throw p0
.end method

.method public release()V
    .registers 5

    const-string v0, "SomcMediaRecorder"

    const-string v1, "release"

    .line 775
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 777
    :try_start_a
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->RELEASED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_12

    .line 779
    monitor-exit v0

    return-void

    .line 781
    :cond_12
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->INITIAL:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_4c

    .line 788
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    if-eqz v1, :cond_1f

    .line 789
    invoke-virtual {v1}, Lcom/sonymobile/android/media/internal/VideoTrack;->release()V

    .line 791
    :cond_1f
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    if-eqz v1, :cond_26

    .line 792
    invoke-virtual {v1}, Lcom/sonymobile/android/media/internal/AudioTrack;->release()V

    .line 794
    :cond_26
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerWrapper:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;

    if-eqz v1, :cond_2d

    .line 795
    invoke-virtual {v1}, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->release()V

    .line 797
    :cond_2d
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 798
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioCodecThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 799
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoCodecThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 800
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 801
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mSomcMediaRecorderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 803
    sget-object v1, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->RELEASED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    iput-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    .line 804
    monitor-exit v0

    return-void

    .line 785
    :cond_4c
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, ", call reset() before release()"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_71
    move-exception p0

    .line 804
    monitor-exit v0
    :try_end_73
    .catchall {:try_start_a .. :try_end_73} :catchall_71

    throw p0
.end method

.method public requestProgressInfo(I)V
    .registers 5

    const-string v0, "SomcMediaRecorder"

    .line 505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestProgressInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 507
    :try_start_1b
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->DATA_SOURCE_CONFIGURED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_25

    .line 510
    iput p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mRequestProgressInfoInterval:I

    .line 511
    monitor-exit v0

    return-void

    .line 508
    :cond_25
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_44
    move-exception p0

    .line 511
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_1b .. :try_end_46} :catchall_44

    throw p0
.end method

.method public reset()V
    .registers 7

    const-string v0, "SomcMediaRecorder"

    const-string v1, "reset"

    .line 702
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 704
    :try_start_a
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->RELEASED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-eq v1, v2, :cond_77

    .line 707
    sget-object v1, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->INITIAL:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    iput-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    .line 709
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerWrapper:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_34

    .line 710
    iget-boolean v4, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerRunning:Z

    if-eqz v4, :cond_2d

    .line 711
    invoke-virtual {v1}, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->stop()V

    .line 712
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-virtual {v1}, Lcom/sonymobile/android/media/internal/AudioTrack;->setMediaMuxerStopped()V

    .line 713
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-virtual {v1}, Lcom/sonymobile/android/media/internal/VideoTrack;->setMediaMuxerStopped()V

    .line 714
    iput-boolean v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerRunning:Z

    .line 716
    :cond_2d
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerWrapper:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;

    invoke-virtual {v1}, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->release()V

    .line 717
    iput-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerWrapper:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;

    .line 719
    :cond_34
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    if-eqz v1, :cond_3b

    .line 720
    invoke-virtual {v1}, Lcom/sonymobile/android/media/internal/VideoTrack;->reset()V

    .line 722
    :cond_3b
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    if-eqz v1, :cond_42

    .line 723
    invoke-virtual {v1}, Lcom/sonymobile/android/media/internal/AudioTrack;->reset()V

    .line 725
    :cond_42
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mClock:Lcom/sonymobile/android/media/internal/ClockInterface;

    if-eqz v1, :cond_49

    .line 726
    invoke-interface {v1}, Lcom/sonymobile/android/media/internal/ClockInterface;->resetClock()V

    .line 729
    :cond_49
    iput-boolean v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerAudioTrackSet:Z

    .line 730
    iput-boolean v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerVideoTrackSet:Z

    const-wide/16 v4, 0x0

    .line 732
    iput-wide v4, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerStartPerformanceTimeMs:J

    .line 733
    iput-wide v4, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerStopPerformanceTimeMs:J

    .line 734
    iput v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoFrameRate:I

    const-wide/16 v4, 0x0

    .line 735
    iput-wide v4, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mCaptureRate:D

    const/4 v1, -0x1

    .line 736
    iput v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mOrientationHint:I

    const/high16 v4, -0x3c4c0000    # -360.0f

    .line 737
    iput v4, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mLongitude:F

    .line 738
    iput v4, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mLatitude:F

    .line 739
    iput v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMaxDurationMs:I

    const-wide/16 v4, -0x1

    .line 740
    iput-wide v4, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMaxFileSize:J

    .line 741
    iput-boolean v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoSourceSet:Z

    .line 742
    iput v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mLatestProgressTimeMs:I

    .line 743
    iput v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mRequestProgressInfoInterval:I

    .line 744
    iput-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStopLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    .line 745
    iput-boolean v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoOnly:Z

    .line 746
    iput-boolean v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mRecordingPaused:Z

    .line 747
    monitor-exit v0

    return-void

    .line 705
    :cond_77
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_96
    move-exception p0

    .line 747
    monitor-exit v0
    :try_end_98
    .catchall {:try_start_a .. :try_end_98} :catchall_96

    throw p0
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

    .line 751
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 753
    :try_start_a
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->RECORDING:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_3a

    .line 756
    iget-boolean v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mRecordingPaused:Z

    if-eqz v1, :cond_38

    .line 758
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mClock:Lcom/sonymobile/android/media/internal/ClockInterface;

    invoke-interface {v1}, Lcom/sonymobile/android/media/internal/ClockInterface;->resumeClock()V

    .line 759
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 760
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-virtual {v2, v1}, Lcom/sonymobile/android/media/internal/VideoTrack;->resume(Ljava/util/concurrent/CountDownLatch;)V

    .line 761
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-virtual {v2, v1}, Lcom/sonymobile/android/media/internal/AudioTrack;->resume(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_59

    .line 763
    :try_start_29
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_2c} :catch_2d
    .catchall {:try_start_29 .. :try_end_2c} :catchall_59

    goto :goto_35

    :catch_2d
    :try_start_2d
    const-string v1, "SomcMediaRecorder"

    const-string/jumbo v2, "wait for resume was interrupted"

    .line 765
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_35
    const/4 v1, 0x0

    .line 767
    iput-boolean v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mRecordingPaused:Z

    .line 771
    :cond_38
    monitor-exit v0

    return-void

    .line 754
    :cond_3a
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_59
    move-exception p0

    .line 771
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_2d .. :try_end_5b} :catchall_59

    throw p0
.end method

.method public setAudioChannels(I)V
    .registers 5

    .line 449
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 450
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->DATA_SOURCE_CONFIGURED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_1a

    if-lez p1, :cond_12

    .line 456
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/internal/AudioTrack;->setAudioChannels(I)V

    .line 457
    monitor-exit v0

    return-void

    .line 454
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of channels is not positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 451
    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_39
    move-exception p0

    .line 457
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public setAudioEncoder(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 418
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 419
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->DATA_SOURCE_CONFIGURED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_10

    .line 422
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/internal/AudioTrack;->setAudioEncoder(I)V

    .line 423
    monitor-exit v0

    return-void

    .line 420
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_2f
    move-exception p0

    .line 423
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public setAudioEncodingBitRate(I)V
    .registers 5

    .line 461
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 462
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->DATA_SOURCE_CONFIGURED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_1a

    if-lez p1, :cond_12

    .line 468
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/internal/AudioTrack;->setAudioBitRate(I)V

    .line 469
    monitor-exit v0

    return-void

    .line 466
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Audio encoding bit rate is not positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 463
    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_39
    move-exception p0

    .line 469
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public setAudioSamplingRate(I)V
    .registers 5

    .line 437
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 438
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->DATA_SOURCE_CONFIGURED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_1a

    if-lez p1, :cond_12

    .line 444
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/internal/AudioTrack;->setAudioSamplingRate(I)V

    .line 445
    monitor-exit v0

    return-void

    .line 442
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Audio sampling rate is not positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 439
    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_39
    move-exception p0

    .line 445
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public setAudioSource(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 219
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->INITIALIZED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-eq v1, v2, :cond_2f

    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->INITIAL:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_10

    goto :goto_2f

    .line 220
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 222
    :cond_2f
    :goto_2f
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->INITIAL:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_39

    .line 223
    sget-object v1, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->INITIALIZED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    iput-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    :cond_39
    const/4 v1, 0x0

    .line 225
    iput-boolean v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoOnly:Z

    .line 226
    invoke-direct {p0, p1, v1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->createAudioTrack(IZ)V

    .line 227
    monitor-exit v0

    return-void

    :catchall_41
    move-exception p0

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw p0
.end method

.method public setCaptureRate(D)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 356
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->DATA_SOURCE_CONFIGURED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_d

    .line 359
    iput-wide p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mCaptureRate:D

    .line 360
    monitor-exit v0

    return-void

    .line 357
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incorrect state "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_2c
    move-exception p0

    .line 360
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public setInputSurface(Landroid/view/Surface;)V
    .registers 5

    .line 207
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 208
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

    .line 212
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/internal/VideoTrack;->setInputSurface(Landroid/view/Surface;)V

    .line 213
    monitor-exit v0

    return-void

    .line 210
    :cond_22
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_41
    move-exception p0

    .line 213
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw p0
.end method

.method public setLocation(FF)V
    .registers 10

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLocation lat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " long:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SomcMediaRecorder"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    if-gt v1, v2, :cond_68

    const v2, -0xdbba0

    if-lt v1, v2, :cond_68

    const v1, 0x1b7740

    if-gt v0, v1, :cond_49

    const v1, -0x1b7740

    if-lt v0, v1, :cond_49

    .line 310
    iput p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mLatitude:F

    .line 311
    iput p2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mLongitude:F

    return-void

    .line 306
    :cond_49
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Longitude: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " out of range"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 307
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 302
    :cond_68
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Latitude: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " out of range."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 303
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxDuration(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "SomcMediaRecorder"

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMaxDuration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 396
    :try_start_21
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->DATA_SOURCE_CONFIGURED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_3a

    if-lez p1, :cond_36

    const/16 v1, 0x64

    if-lt p1, v1, :cond_2e

    goto :goto_36

    .line 400
    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Minmimum duration too short"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 402
    :cond_36
    :goto_36
    iput p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMaxDurationMs:I

    .line 403
    monitor-exit v0

    return-void

    .line 397
    :cond_3a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_59
    move-exception p0

    .line 403
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_21 .. :try_end_5b} :catchall_59

    throw p0
.end method

.method public setMaxFileSize(J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "SomcMediaRecorder"

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMaxFileSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 409
    :try_start_1b
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->DATA_SOURCE_CONFIGURED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_2e

    const-wide v1, 0x3b9aca0000L

    .line 412
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMaxFileSize:J

    .line 413
    monitor-exit v0

    return-void

    .line 410
    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incorrect state "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_4d
    move-exception p0

    .line 413
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_1b .. :try_end_4f} :catchall_4d

    throw p0
.end method

.method public setOrientationHint(I)V
    .registers 5

    const-string v0, "SomcMediaRecorder"

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOrientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 281
    :try_start_1b
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->INITIAL:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-eq v1, v2, :cond_4d

    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->INITIALIZED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-eq v1, v2, :cond_4d

    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->DATA_SOURCE_CONFIGURED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_2e

    goto :goto_4d

    .line 283
    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4d
    :goto_4d
    if-eqz p1, :cond_75

    const/16 v1, 0x5a

    if-eq p1, v1, :cond_75

    const/16 v1, 0xb4

    if-eq p1, v1, :cond_75

    const/16 v1, 0x10e

    if-ne p1, v1, :cond_5c

    goto :goto_75

    .line 289
    :cond_5c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported angle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 292
    :cond_75
    :goto_75
    iput p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mOrientationHint:I

    .line 293
    monitor-exit v0

    return-void

    :catchall_79
    move-exception p0

    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_1b .. :try_end_7b} :catchall_79

    throw p0
.end method

.method public setOutputFile(Ljava/io/FileDescriptor;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 486
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 487
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->DATA_SOURCE_CONFIGURED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_d

    .line 490
    iput-object p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mFd:Ljava/io/FileDescriptor;

    .line 491
    monitor-exit v0

    return-void

    .line 488
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_2c
    move-exception p0

    .line 491
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "SomcMediaRecorder"

    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOutputFile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 497
    :try_start_1b
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->DATA_SOURCE_CONFIGURED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_25

    .line 500
    iput-object p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mPath:Ljava/lang/String;

    .line 501
    monitor-exit v0

    return-void

    .line 498
    :cond_25
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_44
    move-exception p0

    .line 501
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_1b .. :try_end_46} :catchall_44

    throw p0
.end method

.method public setOutputFormat(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "SomcMediaRecorder"

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOutputFormat:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 319
    :try_start_1b
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->INITIALIZED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_3e

    .line 322
    iget-boolean v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoSourceSet:Z

    if-eqz v1, :cond_36

    .line 325
    iget-boolean v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoOnly:Z

    if-eqz v1, :cond_2e

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 326
    invoke-direct {p0, v1, v2}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->createAudioTrack(IZ)V

    .line 329
    :cond_2e
    iput p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mOutputFormat:I

    .line 330
    sget-object p1, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->DATA_SOURCE_CONFIGURED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    iput-object p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    .line 331
    monitor-exit v0

    return-void

    .line 323
    :cond_36
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No video source set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 320
    :cond_3e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_5d
    move-exception p0

    .line 331
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_1b .. :try_end_5f} :catchall_5d

    throw p0
.end method

.method public setProfile(Landroid/media/CamcorderProfile;)V
    .registers 4

    const-string v0, "SomcMediaRecorder"

    const-string v1, "setProfile"

    .line 258
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_45

    .line 260
    iget v0, p1, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setOutputFormat(I)V

    .line 261
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setVideoFrameRate(I)V

    .line 262
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setVideoSize(II)V

    .line 263
    iget v0, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setVideoEncodingBitRate(I)V

    .line 264
    iget v0, p1, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setVideoEncoder(I)V

    .line 265
    iget v0, p1, Landroid/media/CamcorderProfile;->quality:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_31

    iget v0, p1, Landroid/media/CamcorderProfile;->quality:I

    const/16 v1, 0x3ef

    if-gt v0, v1, :cond_31

    goto :goto_45

    .line 270
    :cond_31
    iget v0, p1, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setAudioEncodingBitRate(I)V

    .line 271
    iget v0, p1, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setAudioChannels(I)V

    .line 272
    iget v0, p1, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setAudioSamplingRate(I)V

    .line 273
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

    .line 376
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 377
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->DATA_SOURCE_CONFIGURED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_10

    .line 380
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/internal/VideoTrack;->setBitRateMode(I)V

    .line 381
    monitor-exit v0

    return-void

    .line 378
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_2f
    move-exception p0

    .line 381
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public setVideoColorAspects(III)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 385
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 386
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->DATA_SOURCE_CONFIGURED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_10

    .line 389
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sonymobile/android/media/internal/VideoTrack;->setColorAspects(III)V

    .line 390
    monitor-exit v0

    return-void

    .line 387
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Incorrect state "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_2f
    move-exception p0

    .line 390
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public setVideoEncoder(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 428
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 429
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->DATA_SOURCE_CONFIGURED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_10

    .line 432
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/internal/VideoTrack;->setVideoEncoder(I)V

    .line 433
    monitor-exit v0

    return-void

    .line 430
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_2f
    move-exception p0

    .line 433
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public setVideoEncodingBitRate(I)V
    .registers 5

    .line 473
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 474
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->DATA_SOURCE_CONFIGURED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_1a

    if-lez p1, :cond_12

    .line 480
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/internal/VideoTrack;->setEncodingBitrate(I)V

    .line 481
    monitor-exit v0

    return-void

    .line 478
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Video encoding bit rate is not positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 475
    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_39
    move-exception p0

    .line 481
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public setVideoEncodingProfileLevel(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 365
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->DATA_SOURCE_CONFIGURED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_1c

    if-ltz p1, :cond_14

    if-ltz p2, :cond_14

    .line 371
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/android/media/internal/VideoTrack;->setEncodingProfileLevel(II)V

    .line 372
    monitor-exit v0

    return-void

    .line 369
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Video encoding bit rate is not positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 366
    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incorrect state "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_3b
    move-exception p0

    .line 372
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw p0
.end method

.method public setVideoFrameRate(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 346
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->DATA_SOURCE_CONFIGURED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_12

    .line 349
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-virtual {v1, p1}, Lcom/sonymobile/android/media/internal/VideoTrack;->setFrameRate(I)V

    .line 350
    iput p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoFrameRate:I

    .line 351
    monitor-exit v0

    return-void

    .line 347
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_31
    move-exception p0

    .line 351
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw p0
.end method

.method public setVideoSize(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 337
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->DATA_SOURCE_CONFIGURED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_10

    .line 340
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/android/media/internal/VideoTrack;->setVideoSize(II)V

    .line 341
    monitor-exit v0

    return-void

    .line 338
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incorrect state "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_2f
    move-exception p0

    .line 341
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public setVideoSource(I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->INITIALIZED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-eq v1, v2, :cond_2f

    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->INITIAL:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_10

    goto :goto_2f

    .line 242
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2f
    :goto_2f
    const/4 v1, 0x1

    if-eq p1, v1, :cond_51

    .line 247
    iput p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoSource:I

    .line 248
    new-instance p1, Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mEventHandler:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$EventHandler;

    iget-object v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoCodecThread:Landroid/os/HandlerThread;

    iget-object v4, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mEventThread:Landroid/os/HandlerThread;

    iget-object v5, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerThread:Landroid/os/HandlerThread;

    invoke-direct {p1, v2, v3, v4, v5}, Lcom/sonymobile/android/media/internal/VideoTrack;-><init>(Landroid/os/Handler;Landroid/os/HandlerThread;Landroid/os/HandlerThread;Landroid/os/HandlerThread;)V

    iput-object p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    .line 250
    iput-boolean v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoSourceSet:Z

    .line 251
    iget-object p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v1, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->INITIAL:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne p1, v1, :cond_4f

    .line 252
    sget-object p1, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->INITIALIZED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    iput-object p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    .line 254
    :cond_4f
    monitor-exit v0

    return-void

    .line 245
    :cond_51
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "VideoSource.CAMERA not supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_59
    move-exception p0

    .line 254
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_3 .. :try_end_5b} :catchall_59

    throw p0
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

    .line 603
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 605
    :try_start_a
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->PREPARED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_25

    .line 608
    sget-object v1, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->RECORDING:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    iput-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    .line 610
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mClock:Lcom/sonymobile/android/media/internal/ClockInterface;

    invoke-interface {v1}, Lcom/sonymobile/android/media/internal/ClockInterface;->setStartTime()V

    .line 612
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-virtual {v1}, Lcom/sonymobile/android/media/internal/AudioTrack;->start()V

    .line 613
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/VideoTrack;->start()V

    .line 614
    monitor-exit v0

    return-void

    .line 606
    :cond_25
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_44
    move-exception p0

    .line 614
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_a .. :try_end_46} :catchall_44

    throw p0
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

    .line 640
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 642
    :try_start_a
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->RECORDING:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_34

    .line 645
    sget-object v1, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->STOPPING:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    iput-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    .line 647
    iget-boolean v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerRunning:Z

    if-eqz v1, :cond_20

    .line 648
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStopLatch:Ljava/util/concurrent/CountDownLatch;

    .line 651
    :cond_20
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mClock:Lcom/sonymobile/android/media/internal/ClockInterface;

    invoke-interface {v1}, Lcom/sonymobile/android/media/internal/ClockInterface;->stopClock()V

    .line 652
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-virtual {v1}, Lcom/sonymobile/android/media/internal/AudioTrack;->stop()V

    .line 653
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-virtual {v1}, Lcom/sonymobile/android/media/internal/VideoTrack;->stop()V

    .line 656
    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->waitUntilStopCompleted()V

    .line 657
    monitor-exit v0

    return-void

    .line 643
    :cond_34
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_53
    move-exception p0

    .line 657
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_a .. :try_end_55} :catchall_53

    throw p0
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

    .line 618
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 620
    :try_start_a
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->RECORDING:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_31

    .line 623
    sget-object v1, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->STOPPING:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    iput-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    .line 625
    iget-boolean v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerRunning:Z

    if-eqz v1, :cond_20

    .line 626
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStopLatch:Ljava/util/concurrent/CountDownLatch;

    .line 629
    :cond_20
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mClock:Lcom/sonymobile/android/media/internal/ClockInterface;

    invoke-interface {v1}, Lcom/sonymobile/android/media/internal/ClockInterface;->stopClock()V

    .line 630
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-virtual {v1}, Lcom/sonymobile/android/media/internal/AudioTrack;->stop()V

    .line 631
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoTrack:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/VideoTrack;->stop()V

    .line 636
    monitor-exit v0

    return-void

    .line 621
    :cond_31
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_50
    move-exception p0

    .line 636
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_a .. :try_end_52} :catchall_50

    throw p0
.end method

.method public stopAudioRecording()V
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/AudioTrack;->stopAudioRecording()V

    return-void
.end method

.method public stopOnCameraError()V
    .registers 3

    const-string v0, "SomcMediaRecorder"

    const-string v1, "stopOnCameraError"

    .line 696
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    invoke-direct {p0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->closeRecordingOnError()V

    .line 698
    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->stop()V

    return-void
.end method

.method public useIntelligentActive(Z)V
    .registers 2

    .line 808
    iput-boolean p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mIntelligentActiveEnabled:Z

    return-void
.end method

.method public waitUntilStopCompleted()V
    .registers 6

    const-string v0, "SomcMediaRecorder"

    const-string/jumbo v1, "waitUntilStopCompleted"

    .line 661
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 663
    :try_start_b
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->STOPPING:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    if-ne v1, v2, :cond_51

    .line 667
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStopLatch:Ljava/util/concurrent/CountDownLatch;
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_70

    if-eqz v1, :cond_21

    .line 669
    :try_start_15
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_18} :catch_19
    .catchall {:try_start_15 .. :try_end_18} :catchall_70

    goto :goto_21

    :catch_19
    :try_start_19
    const-string v1, "SomcMediaRecorder"

    const-string/jumbo v2, "wait for stop was interrupted"

    .line 671
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    :goto_21
    const-wide/16 v1, 0x0

    .line 675
    iput-wide v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerStartPerformanceTimeMs:J

    .line 676
    iput-wide v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMuxerStopPerformanceTimeMs:J

    const/4 v1, 0x0

    .line 677
    iput v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoFrameRate:I

    const-wide/16 v2, 0x0

    .line 678
    iput-wide v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mCaptureRate:D

    const/4 v2, -0x1

    .line 679
    iput v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mOrientationHint:I

    const/high16 v3, -0x3c4c0000    # -360.0f

    .line 680
    iput v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mLongitude:F

    .line 681
    iput v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mLatitude:F

    .line 682
    iput v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMaxDurationMs:I

    const-wide/16 v3, -0x1

    .line 683
    iput-wide v3, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mMaxFileSize:J

    .line 684
    iput-boolean v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoSourceSet:Z

    .line 685
    iput v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mLatestProgressTimeMs:I

    .line 686
    iput v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mRequestProgressInfoInterval:I

    const/4 v2, 0x0

    .line 687
    iput-object v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mStopLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    .line 688
    iput-boolean v2, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mVideoOnly:Z

    .line 689
    iput-boolean v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mRecordingPaused:Z

    .line 691
    sget-object v1, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->INITIAL:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    iput-object v1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    .line 692
    monitor-exit v0

    return-void

    .line 664
    :cond_51
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mState:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_70
    move-exception p0

    .line 692
    monitor-exit v0
    :try_end_72
    .catchall {:try_start_19 .. :try_end_72} :catchall_70

    throw p0
.end method
