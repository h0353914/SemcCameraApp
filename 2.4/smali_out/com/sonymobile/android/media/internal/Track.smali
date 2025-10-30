.class public abstract Lcom/sonymobile/android/media/internal/Track;
.super Ljava/lang/Object;
.source "Track.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/android/media/internal/Track$EventHandler;,
        Lcom/sonymobile/android/media/internal/Track$MuxerHandler;,
        Lcom/sonymobile/android/media/internal/Track$EncodedBuffer;,
        Lcom/sonymobile/android/media/internal/Track$States;,
        Lcom/sonymobile/android/media/internal/Track$MuxerState;
    }
.end annotation


# static fields
.field public static final AUDIO_CODEC_MUXER_TRACK_ADDED:I = 0xb

.field public static final CODEC_ERROR:I = 0x4

.field public static final CODEC_ERROR_ON_START:I = 0xf4240

.field public static final CODEC_FORMAT_UNSUPPORTED:I = 0x2

.field public static final CODEC_ILLEGAL_STATE:I = 0x3

.field public static final CODEC_UNSUPPORTED:I = 0x1

.field public static final EXTRA_VIDEO_LAST_FRAME_IS_NOT_WRITTEN_YET:I = 0x0

.field public static final EXTRA_VIDEO_LAST_FRAME_IS_WRITTEN:I = 0x1

.field protected static final MSG_AUDIO_CODEC_STOPPED:I = 0x67

.field protected static final MSG_FIRST_VIDEO_FRAME_RECEIVED:I = 0xd

.field protected static final MSG_FLUSH_OUTPUT_BUFFERS:I = 0x6e

.field protected static final MSG_HANDLE_INPUT_BUFFER:I = 0x66

.field protected static final MSG_PAUSE:I = 0x5

.field protected static final MSG_PREPARE:I = 0x3

.field protected static final MSG_QUEUE_OUTPUT_BUFFER:I = 0x69

.field protected static final MSG_RELEASE:I = 0x4

.field protected static final MSG_RELEASE_AUDIO_RECORDER:I = 0x6c

.field protected static final MSG_RESET:I = 0x7

.field protected static final MSG_RESUME:I = 0x6

.field protected static final MSG_START:I = 0x1

.field protected static final MSG_START_AUDIO_RECORDER:I = 0x6d

.field protected static final MSG_STOP:I = 0x2

.field protected static final MSG_STOP_AUDIO_RECORDER:I = 0x6b

.field protected static final MSG_TIME_OUT_OUTPUT_BUFFER_RECEIVE:I = 0x6f

.field protected static final MSG_VIDEO_CODEC_STOPPED:I = 0x65

.field protected static final MSG_VIDEO_PROGRESS_INFO_UPDATED:I = 0xc

.field protected static final MSG_WRITE_OUTPUT_BUFFER:I = 0x68

.field private static final TAG:Ljava/lang/String; = "Track"

.field public static final UNKNOWN:I = 0x0

.field public static final VIDEO_CODEC_MUXER_TRACK_ADDED:I = 0xa


# instance fields
.field protected mBufferList:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "Lcom/sonymobile/android/media/internal/Track$EncodedBuffer;",
            ">;"
        }
    .end annotation
.end field

.field protected mClock:Lcom/sonymobile/android/media/internal/ClockInterface;

.field protected mEncoder:Landroid/media/MediaCodec;

.field protected mEncodingBitRate:I

.field protected mEventHandler:Lcom/sonymobile/android/media/internal/Track$EventHandler;

.field protected mHandlerHelper:Lcom/sonymobile/android/media/internal/HandlerHelper;

.field protected mIsPauseLatchDown:Z

.field protected mMuxerState:Lcom/sonymobile/android/media/internal/Track$MuxerState;

.field protected mMuxerTrackIndex:I

.field protected mMuxerWrapper:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;

.field protected mOperatingRate:I

.field protected mPauseLatch:Ljava/util/concurrent/CountDownLatch;

.field protected mState:Lcom/sonymobile/android/media/internal/Track$States;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1e8480

    .line 85
    iput v0, p0, Lcom/sonymobile/android/media/internal/Track;->mEncodingBitRate:I

    const/4 v0, 0x0

    .line 87
    iput v0, p0, Lcom/sonymobile/android/media/internal/Track;->mOperatingRate:I

    .line 97
    sget-object v0, Lcom/sonymobile/android/media/internal/Track$MuxerState;->IDLE:Lcom/sonymobile/android/media/internal/Track$MuxerState;

    iput-object v0, p0, Lcom/sonymobile/android/media/internal/Track;->mMuxerState:Lcom/sonymobile/android/media/internal/Track$MuxerState;

    const/4 v0, -0x1

    .line 103
    iput v0, p0, Lcom/sonymobile/android/media/internal/Track;->mMuxerTrackIndex:I

    return-void
.end method


# virtual methods
.method protected checkFormat(Landroid/media/MediaCodecList;Landroid/media/MediaFormat;Ljava/lang/String;)Z
    .registers 10

    .line 260
    invoke-virtual {p1}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 262
    :goto_7
    array-length v3, p1

    if-ge v1, v3, :cond_32

    if-nez v2, :cond_32

    .line 263
    aget-object v3, p1, v1

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v3

    move v4, v2

    move v2, v0

    .line 264
    :goto_14
    array-length v5, v3

    if-ge v2, v5, :cond_2e

    if-nez v4, :cond_2e

    .line 265
    aget-object v5, v3, v2

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 266
    aget-object v4, p1, v1

    .line 267
    invoke-virtual {v4, p3}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v4

    .line 268
    invoke-virtual {v4, p2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFormatSupported(Landroid/media/MediaFormat;)Z

    move-result v4

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_7

    :cond_32
    return v2
.end method

.method protected abstract doPause()V
.end method

.method protected abstract doPrepare()V
.end method

.method protected abstract doRelease()V
.end method

.method protected abstract doReset()V
.end method

.method protected abstract doResume(Ljava/util/concurrent/CountDownLatch;)V
.end method

.method protected abstract doStart()V
.end method

.method protected abstract doStop()V
.end method

.method protected abstract doWriteOutputBuffer()V
.end method

.method protected isMuxerStarted()Z
    .registers 3

    .line 236
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/Track;->mMuxerState:Lcom/sonymobile/android/media/internal/Track$MuxerState;

    sget-object v1, Lcom/sonymobile/android/media/internal/Track$MuxerState;->STARTED:Lcom/sonymobile/android/media/internal/Track$MuxerState;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public pause(Ljava/util/concurrent/CountDownLatch;Z)V
    .registers 4

    .line 141
    iput-object p1, p0, Lcom/sonymobile/android/media/internal/Track;->mPauseLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 p1, 0x0

    .line 142
    iput-boolean p1, p0, Lcom/sonymobile/android/media/internal/Track;->mIsPauseLatchDown:Z

    .line 143
    iget-object p1, p0, Lcom/sonymobile/android/media/internal/Track;->mMuxerState:Lcom/sonymobile/android/media/internal/Track$MuxerState;

    sget-object v0, Lcom/sonymobile/android/media/internal/Track$MuxerState;->IDLE:Lcom/sonymobile/android/media/internal/Track$MuxerState;

    if-ne p1, v0, :cond_15

    if-nez p2, :cond_15

    .line 146
    iget-object p1, p0, Lcom/sonymobile/android/media/internal/Track;->mPauseLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 p1, 0x1

    .line 147
    iput-boolean p1, p0, Lcom/sonymobile/android/media/internal/Track;->mIsPauseLatchDown:Z

    .line 149
    :cond_15
    iget-object p1, p0, Lcom/sonymobile/android/media/internal/Track;->mEventHandler:Lcom/sonymobile/android/media/internal/Track$EventHandler;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lcom/sonymobile/android/media/internal/Track$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public prepare()V
    .registers 4

    .line 158
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/Track;->mHandlerHelper:Lcom/sonymobile/android/media/internal/HandlerHelper;

    iget-object v1, p0, Lcom/sonymobile/android/media/internal/Track;->mEventHandler:Lcom/sonymobile/android/media/internal/Track$EventHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sonymobile/android/media/internal/Track$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/media/internal/HandlerHelper;->sendMessageAndAwaitResponse(Landroid/os/Message;)Ljava/lang/Object;

    return-void
.end method

.method public release()V
    .registers 4

    .line 179
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/Track;->mHandlerHelper:Lcom/sonymobile/android/media/internal/HandlerHelper;

    iget-object v1, p0, Lcom/sonymobile/android/media/internal/Track;->mEventHandler:Lcom/sonymobile/android/media/internal/Track$EventHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sonymobile/android/media/internal/Track$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/media/internal/HandlerHelper;->sendMessageAndAwaitResponse(Landroid/os/Message;)Ljava/lang/Object;

    .line 180
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/Track;->mHandlerHelper:Lcom/sonymobile/android/media/internal/HandlerHelper;

    invoke-virtual {v0}, Lcom/sonymobile/android/media/internal/HandlerHelper;->releaseAllLocks()V

    return-void
.end method

.method public reset()V
    .registers 4

    .line 194
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/Track;->mHandlerHelper:Lcom/sonymobile/android/media/internal/HandlerHelper;

    iget-object v1, p0, Lcom/sonymobile/android/media/internal/Track;->mEventHandler:Lcom/sonymobile/android/media/internal/Track$EventHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/sonymobile/android/media/internal/Track$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/media/internal/HandlerHelper;->sendMessageAndAwaitResponse(Landroid/os/Message;)Ljava/lang/Object;

    return-void
.end method

.method public resume(Ljava/util/concurrent/CountDownLatch;)V
    .registers 4

    .line 187
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/Track;->mEventHandler:Lcom/sonymobile/android/media/internal/Track$EventHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/sonymobile/android/media/internal/Track$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setClock(Lcom/sonymobile/android/media/internal/ClockInterface;)V
    .registers 2

    .line 136
    iput-object p1, p0, Lcom/sonymobile/android/media/internal/Track;->mClock:Lcom/sonymobile/android/media/internal/ClockInterface;

    return-void
.end method

.method public setEncodingBitrate(I)V
    .registers 2

    .line 125
    iput p1, p0, Lcom/sonymobile/android/media/internal/Track;->mEncodingBitRate:I

    return-void
.end method

.method public setMediaMuxer(Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;)V
    .registers 2

    .line 200
    iput-object p1, p0, Lcom/sonymobile/android/media/internal/Track;->mMuxerWrapper:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;

    return-void
.end method

.method public setMediaMuxerStarted()V
    .registers 2

    .line 211
    sget-object v0, Lcom/sonymobile/android/media/internal/Track$MuxerState;->STARTED:Lcom/sonymobile/android/media/internal/Track$MuxerState;

    iput-object v0, p0, Lcom/sonymobile/android/media/internal/Track;->mMuxerState:Lcom/sonymobile/android/media/internal/Track$MuxerState;

    return-void
.end method

.method public setMediaMuxerStopped()V
    .registers 2

    .line 228
    sget-object v0, Lcom/sonymobile/android/media/internal/Track$MuxerState;->STOPPED:Lcom/sonymobile/android/media/internal/Track$MuxerState;

    iput-object v0, p0, Lcom/sonymobile/android/media/internal/Track;->mMuxerState:Lcom/sonymobile/android/media/internal/Track$MuxerState;

    return-void
.end method

.method public setOperatingRate(I)V
    .registers 2

    .line 132
    iput p1, p0, Lcom/sonymobile/android/media/internal/Track;->mOperatingRate:I

    return-void
.end method

.method public start()V
    .registers 4

    .line 165
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/Track;->mHandlerHelper:Lcom/sonymobile/android/media/internal/HandlerHelper;

    iget-object v1, p0, Lcom/sonymobile/android/media/internal/Track;->mEventHandler:Lcom/sonymobile/android/media/internal/Track$EventHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonymobile/android/media/internal/Track$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/media/internal/HandlerHelper;->sendMessageAndAwaitResponse(Landroid/os/Message;)Ljava/lang/Object;

    return-void
.end method

.method public stop()V
    .registers 4

    .line 172
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/Track;->mHandlerHelper:Lcom/sonymobile/android/media/internal/HandlerHelper;

    iget-object v1, p0, Lcom/sonymobile/android/media/internal/Track;->mEventHandler:Lcom/sonymobile/android/media/internal/Track$EventHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sonymobile/android/media/internal/Track$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/media/internal/HandlerHelper;->sendMessageAndAwaitResponse(Landroid/os/Message;)Ljava/lang/Object;

    return-void
.end method
