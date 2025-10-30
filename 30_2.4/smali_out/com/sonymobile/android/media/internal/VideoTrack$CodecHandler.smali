.class Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;
.super Landroid/os/Handler;
.source "VideoTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/media/internal/VideoTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CodecHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/media/internal/VideoTrack;


# direct methods
.method constructor <init>(Lcom/sonymobile/android/media/internal/VideoTrack;Landroid/os/Looper;)V
    .registers 3

    .line 381
    iput-object p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    .line 382
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private addTrack()V
    .registers 5

    .line 528
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget v0, v0, Lcom/sonymobile/android/media/internal/VideoTrack;->mMuxerTrackIndex:I

    if-gez v0, :cond_29

    .line 530
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-object v1, v0, Lcom/sonymobile/android/media/internal/VideoTrack;->mMuxerWrapper:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;

    iget-object v2, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-object v2, v2, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->addTrack(Landroid/media/MediaFormat;)I

    move-result v1

    iput v1, v0, Lcom/sonymobile/android/media/internal/VideoTrack;->mMuxerTrackIndex:I

    .line 532
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    # getter for: Lcom/sonymobile/android/media/internal/VideoTrack;->mCallback:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonymobile/android/media/internal/VideoTrack;->access$400(Lcom/sonymobile/android/media/internal/VideoTrack;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 533
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_29
    return-void
.end method

.method private canBuffering()Z
    .registers 10

    .line 584
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    # getter for: Lcom/sonymobile/android/media/internal/VideoTrack;->mIsBufferingEnabled:Z
    invoke-static {v0}, Lcom/sonymobile/android/media/internal/VideoTrack;->access$1600(Lcom/sonymobile/android/media/internal/VideoTrack;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_45

    .line 585
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 586
    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v3

    long-to-float v0, v3

    # getter for: Lcom/sonymobile/android/media/internal/VideoTrack;->BUFFERING_ALLOWABLE_MAX_MEMORY_RATIO:Ljava/lang/Float;
    invoke-static {}, Lcom/sonymobile/android/media/internal/VideoTrack;->access$1700()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v0, v3

    float-to-long v3, v0

    .line 587
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 588
    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v7

    sub-long/2addr v5, v7

    cmp-long v0, v3, v5

    if-lez v0, :cond_43

    .line 589
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    # getter for: Lcom/sonymobile/android/media/internal/VideoTrack;->mTotalBufferingSize:J
    invoke-static {v0}, Lcom/sonymobile/android/media/internal/VideoTrack;->access$1400(Lcom/sonymobile/android/media/internal/VideoTrack;)J

    move-result-wide v3

    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    # getter for: Lcom/sonymobile/android/media/internal/VideoTrack;->mAllowableBufferingSize:J
    invoke-static {v0}, Lcom/sonymobile/android/media/internal/VideoTrack;->access$1800(Lcom/sonymobile/android/media/internal/VideoTrack;)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gez v0, :cond_43

    goto :goto_44

    :cond_43
    move v1, v2

    :goto_44
    return v1

    .line 591
    :cond_45
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-object v0, v0, Lcom/sonymobile/android/media/internal/VideoTrack;->mMuxerState:Lcom/sonymobile/android/media/internal/Track$MuxerState;

    sget-object v3, Lcom/sonymobile/android/media/internal/Track$MuxerState;->IDLE:Lcom/sonymobile/android/media/internal/Track$MuxerState;

    if-ne v0, v3, :cond_4e

    goto :goto_4f

    :cond_4e
    move v1, v2

    :goto_4f
    return v1
.end method

.method private doQueueOutputBuffer(ILandroid/media/MediaCodec$BufferInfo;)V
    .registers 12

    .line 396
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    # getter for: Lcom/sonymobile/android/media/internal/VideoTrack;->mVideoMime:Ljava/lang/String;
    invoke-static {v0}, Lcom/sonymobile/android/media/internal/VideoTrack;->access$100(Lcom/sonymobile/android/media/internal/VideoTrack;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "video/x-vnd.on2.vp8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    .line 397
    # getter for: Lcom/sonymobile/android/media/internal/VideoTrack;->mVideoMime:Ljava/lang/String;
    invoke-static {v0}, Lcom/sonymobile/android/media/internal/VideoTrack;->access$100(Lcom/sonymobile/android/media/internal/VideoTrack;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "video/3gpp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_42

    .line 403
    :cond_1f
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_27

    move v0, v1

    goto :goto_28

    :cond_27
    move v0, v2

    :goto_28
    if-eqz v0, :cond_52

    .line 405
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    # getter for: Lcom/sonymobile/android/media/internal/VideoTrack;->mFirstCodecConfigFrame:Z
    invoke-static {v0}, Lcom/sonymobile/android/media/internal/VideoTrack;->access$200(Lcom/sonymobile/android/media/internal/VideoTrack;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 407
    invoke-direct {p0}, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->addTrack()V

    .line 408
    iget-object p2, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-object p2, p2, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p2, p1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 409
    iget-object p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    # setter for: Lcom/sonymobile/android/media/internal/VideoTrack;->mFirstCodecConfigFrame:Z
    invoke-static {p1, v2}, Lcom/sonymobile/android/media/internal/VideoTrack;->access$202(Lcom/sonymobile/android/media/internal/VideoTrack;Z)Z

    return-void

    .line 398
    :cond_42
    :goto_42
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    # getter for: Lcom/sonymobile/android/media/internal/VideoTrack;->mFirstCodecConfigFrame:Z
    invoke-static {v0}, Lcom/sonymobile/android/media/internal/VideoTrack;->access$200(Lcom/sonymobile/android/media/internal/VideoTrack;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 399
    invoke-direct {p0}, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->addTrack()V

    .line 400
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    # setter for: Lcom/sonymobile/android/media/internal/VideoTrack;->mFirstCodecConfigFrame:Z
    invoke-static {v0, v2}, Lcom/sonymobile/android/media/internal/VideoTrack;->access$202(Lcom/sonymobile/android/media/internal/VideoTrack;Z)Z

    .line 414
    :cond_52
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_59

    move v0, v1

    goto :goto_5a

    :cond_59
    move v0, v2

    .line 417
    :goto_5a
    iget-object v3, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    # getter for: Lcom/sonymobile/android/media/internal/VideoTrack;->mFirstVideoFrameTimeUs:J
    invoke-static {v3}, Lcom/sonymobile/android/media/internal/VideoTrack;->access$300(Lcom/sonymobile/android/media/internal/VideoTrack;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_8e

    if-eqz v0, :cond_8a

    .line 420
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-wide v1, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    # setter for: Lcom/sonymobile/android/media/internal/VideoTrack;->mFirstVideoFrameTimeUs:J
    invoke-static {v0, v1, v2}, Lcom/sonymobile/android/media/internal/VideoTrack;->access$302(Lcom/sonymobile/android/media/internal/VideoTrack;J)J

    .line 421
    iput-wide v5, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 430
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    # getter for: Lcom/sonymobile/android/media/internal/VideoTrack;->mCallback:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonymobile/android/media/internal/VideoTrack;->access$400(Lcom/sonymobile/android/media/internal/VideoTrack;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    .line 431
    # getter for: Lcom/sonymobile/android/media/internal/VideoTrack;->mFirstVideoFrameTimeUs:J
    invoke-static {v2}, Lcom/sonymobile/android/media/internal/VideoTrack;->access$300(Lcom/sonymobile/android/media/internal/VideoTrack;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 430
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 431
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 433
    :cond_8a
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->queueBuffer(ILandroid/media/MediaCodec$BufferInfo;)V

    return-void

    .line 437
    :cond_8e
    iget v3, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_96

    move v3, v1

    goto :goto_97

    :cond_96
    move v3, v2

    :goto_97
    if-eqz v3, :cond_9d

    .line 441
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->queueBuffer(ILandroid/media/MediaCodec$BufferInfo;)V

    return-void

    .line 447
    :cond_9d
    iget-wide v3, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v7, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    # getter for: Lcom/sonymobile/android/media/internal/VideoTrack;->mFirstVideoFrameTimeUs:J
    invoke-static {v7}, Lcom/sonymobile/android/media/internal/VideoTrack;->access$300(Lcom/sonymobile/android/media/internal/VideoTrack;)J

    move-result-wide v7

    sub-long/2addr v3, v7

    .line 448
    iget-object v7, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    # getter for: Lcom/sonymobile/android/media/internal/VideoTrack;->mVideoOffset:J
    invoke-static {v7}, Lcom/sonymobile/android/media/internal/VideoTrack;->access$500(Lcom/sonymobile/android/media/internal/VideoTrack;)J

    move-result-wide v7

    sub-long v7, v3, v7

    iput-wide v7, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 451
    iget-object v7, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    # getter for: Lcom/sonymobile/android/media/internal/VideoTrack;->mRecordedDurationAtStopUs:J
    invoke-static {v7}, Lcom/sonymobile/android/media/internal/VideoTrack;->access$600(Lcom/sonymobile/android/media/internal/VideoTrack;)J

    move-result-wide v7

    cmp-long v5, v7, v5

    if-lez v5, :cond_e3

    iget-wide v5, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v7, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    .line 452
    # getter for: Lcom/sonymobile/android/media/internal/VideoTrack;->mRecordedDurationAtStopUs:J
    invoke-static {v7}, Lcom/sonymobile/android/media/internal/VideoTrack;->access$600(Lcom/sonymobile/android/media/internal/VideoTrack;)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_e3

    .line 453
    iget-object v5, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-object v5, v5, Lcom/sonymobile/android/media/internal/VideoTrack;->mState:Lcom/sonymobile/android/media/internal/Track$States;

    sget-object v6, Lcom/sonymobile/android/media/internal/Track$States;->STOPPED:Lcom/sonymobile/android/media/internal/Track$States;

    if-eq v5, v6, :cond_e3

    iget-object v5, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-object v5, v5, Lcom/sonymobile/android/media/internal/VideoTrack;->mState:Lcom/sonymobile/android/media/internal/Track$States;

    sget-object v6, Lcom/sonymobile/android/media/internal/Track$States;->STOPPING:Lcom/sonymobile/android/media/internal/Track$States;

    if-eq v5, v6, :cond_e3

    .line 454
    iget-object v5, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    sget-object v6, Lcom/sonymobile/android/media/internal/Track$States;->STOPPING:Lcom/sonymobile/android/media/internal/Track$States;

    iput-object v6, v5, Lcom/sonymobile/android/media/internal/VideoTrack;->mState:Lcom/sonymobile/android/media/internal/Track$States;

    .line 456
    iget-object v5, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-object v5, v5, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 460
    :cond_e3
    iget v5, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v5, :cond_eb

    .line 463
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->queueBuffer(ILandroid/media/MediaCodec$BufferInfo;)V

    return-void

    .line 467
    :cond_eb
    iget-object v5, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-object v5, v5, Lcom/sonymobile/android/media/internal/VideoTrack;->mClock:Lcom/sonymobile/android/media/internal/ClockInterface;

    invoke-interface {v5, v3, v4}, Lcom/sonymobile/android/media/internal/ClockInterface;->isPausedAt(J)Z

    move-result v5

    if-nez v5, :cond_16f

    .line 471
    iget-object v5, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    # getter for: Lcom/sonymobile/android/media/internal/VideoTrack;->mPauseResumeFlag:Z
    invoke-static {v5}, Lcom/sonymobile/android/media/internal/VideoTrack;->access$700(Lcom/sonymobile/android/media/internal/VideoTrack;)Z

    move-result v5

    if-eqz v5, :cond_10c

    .line 473
    iget-object v5, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    # setter for: Lcom/sonymobile/android/media/internal/VideoTrack;->mWaitForKeyFrame:Z
    invoke-static {v5, v1}, Lcom/sonymobile/android/media/internal/VideoTrack;->access$802(Lcom/sonymobile/android/media/internal/VideoTrack;Z)Z

    .line 474
    iget-object v5, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    # setter for: Lcom/sonymobile/android/media/internal/VideoTrack;->mKeyFrameRequested:Z
    invoke-static {v5, v2}, Lcom/sonymobile/android/media/internal/VideoTrack;->access$902(Lcom/sonymobile/android/media/internal/VideoTrack;Z)Z

    .line 475
    iget-object v5, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    # setter for: Lcom/sonymobile/android/media/internal/VideoTrack;->mPauseResumeFlag:Z
    invoke-static {v5, v2}, Lcom/sonymobile/android/media/internal/VideoTrack;->access$702(Lcom/sonymobile/android/media/internal/VideoTrack;Z)Z

    .line 479
    :cond_10c
    iget-object v5, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    # getter for: Lcom/sonymobile/android/media/internal/VideoTrack;->mWaitForKeyFrame:Z
    invoke-static {v5}, Lcom/sonymobile/android/media/internal/VideoTrack;->access$800(Lcom/sonymobile/android/media/internal/VideoTrack;)Z

    move-result v5

    if-eqz v5, :cond_16b

    .line 480
    iget-object v5, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    # getter for: Lcom/sonymobile/android/media/internal/VideoTrack;->mKeyFrameRequested:Z
    invoke-static {v5}, Lcom/sonymobile/android/media/internal/VideoTrack;->access$900(Lcom/sonymobile/android/media/internal/VideoTrack;)Z

    move-result v5

    if-nez v5, :cond_132

    .line 483
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "request-sync"

    .line 484
    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 486
    iget-object v6, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-object v6, v6, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v6, v5}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 487
    iget-object v5, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    # setter for: Lcom/sonymobile/android/media/internal/VideoTrack;->mKeyFrameRequested:Z
    invoke-static {v5, v1}, Lcom/sonymobile/android/media/internal/VideoTrack;->access$902(Lcom/sonymobile/android/media/internal/VideoTrack;Z)Z

    :cond_132
    if-nez v0, :cond_151

    .line 492
    iget-object p2, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-object p2, p2, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p2, p1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 494
    iget-object p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    # operator++ for: Lcom/sonymobile/android/media/internal/VideoTrack;->mFrameDropCounter:I
    invoke-static {p1}, Lcom/sonymobile/android/media/internal/VideoTrack;->access$1008(Lcom/sonymobile/android/media/internal/VideoTrack;)I

    .line 496
    iget-object p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    # getter for: Lcom/sonymobile/android/media/internal/VideoTrack;->mLastRecordedVideoTimestampUs:J
    invoke-static {p1}, Lcom/sonymobile/android/media/internal/VideoTrack;->access$1100(Lcom/sonymobile/android/media/internal/VideoTrack;)J

    move-result-wide v0

    iget-object p2, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    # getter for: Lcom/sonymobile/android/media/internal/VideoTrack;->mFrameInterval:J
    invoke-static {p2}, Lcom/sonymobile/android/media/internal/VideoTrack;->access$1200(Lcom/sonymobile/android/media/internal/VideoTrack;)J

    move-result-wide v2

    add-long/2addr v0, v2

    # setter for: Lcom/sonymobile/android/media/internal/VideoTrack;->mLastRecordedVideoTimestampUs:J
    invoke-static {p1, v0, v1}, Lcom/sonymobile/android/media/internal/VideoTrack;->access$1102(Lcom/sonymobile/android/media/internal/VideoTrack;J)J

    return-void

    .line 500
    :cond_151
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    # setter for: Lcom/sonymobile/android/media/internal/VideoTrack;->mWaitForKeyFrame:Z
    invoke-static {v0, v2}, Lcom/sonymobile/android/media/internal/VideoTrack;->access$802(Lcom/sonymobile/android/media/internal/VideoTrack;Z)Z

    .line 503
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    # getter for: Lcom/sonymobile/android/media/internal/VideoTrack;->mLastRecordedVideoTimestampUs:J
    invoke-static {v0}, Lcom/sonymobile/android/media/internal/VideoTrack;->access$1100(Lcom/sonymobile/android/media/internal/VideoTrack;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    .line 504
    # getter for: Lcom/sonymobile/android/media/internal/VideoTrack;->mFrameInterval:J
    invoke-static {v2}, Lcom/sonymobile/android/media/internal/VideoTrack;->access$1200(Lcom/sonymobile/android/media/internal/VideoTrack;)J

    move-result-wide v5

    add-long/2addr v0, v5

    .line 507
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    sub-long/2addr v3, v0

    # setter for: Lcom/sonymobile/android/media/internal/VideoTrack;->mVideoOffset:J
    invoke-static {v2, v3, v4}, Lcom/sonymobile/android/media/internal/VideoTrack;->access$502(Lcom/sonymobile/android/media/internal/VideoTrack;J)J

    .line 508
    iput-wide v0, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 513
    :cond_16b
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->queueBuffer(ILandroid/media/MediaCodec$BufferInfo;)V

    goto :goto_183

    .line 516
    :cond_16f
    iget-object p2, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    # getter for: Lcom/sonymobile/android/media/internal/VideoTrack;->mPauseResumeFlag:Z
    invoke-static {p2}, Lcom/sonymobile/android/media/internal/VideoTrack;->access$700(Lcom/sonymobile/android/media/internal/VideoTrack;)Z

    move-result p2

    if-nez p2, :cond_17c

    .line 519
    iget-object p2, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    # setter for: Lcom/sonymobile/android/media/internal/VideoTrack;->mPauseResumeFlag:Z
    invoke-static {p2, v1}, Lcom/sonymobile/android/media/internal/VideoTrack;->access$702(Lcom/sonymobile/android/media/internal/VideoTrack;Z)Z

    .line 523
    :cond_17c
    iget-object p2, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-object p2, p2, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p2, p1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :goto_183
    return-void
.end method

.method private doTimeOutBufferCallback()V
    .registers 5

    .line 596
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    # getter for: Lcom/sonymobile/android/media/internal/VideoTrack;->mRecordedDurationAtStopUs:J
    invoke-static {v0}, Lcom/sonymobile/android/media/internal/VideoTrack;->access$600(Lcom/sonymobile/android/media/internal/VideoTrack;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_53

    .line 597
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-object v0, v0, Lcom/sonymobile/android/media/internal/VideoTrack;->mState:Lcom/sonymobile/android/media/internal/Track$States;

    sget-object v1, Lcom/sonymobile/android/media/internal/Track$States;->STOPPED:Lcom/sonymobile/android/media/internal/Track$States;

    if-eq v0, v1, :cond_53

    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-object v0, v0, Lcom/sonymobile/android/media/internal/VideoTrack;->mState:Lcom/sonymobile/android/media/internal/Track$States;

    sget-object v1, Lcom/sonymobile/android/media/internal/Track$States;->STOPPING:Lcom/sonymobile/android/media/internal/Track$States;

    if-eq v0, v1, :cond_53

    .line 598
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    sget-object v1, Lcom/sonymobile/android/media/internal/Track$States;->STOPPING:Lcom/sonymobile/android/media/internal/Track$States;

    iput-object v1, v0, Lcom/sonymobile/android/media/internal/VideoTrack;->mState:Lcom/sonymobile/android/media/internal/Track$States;

    const-string v0, "VideoTrack"

    .line 599
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Forced stop due to timeout of buffer callback : recording duration at stop = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    .line 600
    # getter for: Lcom/sonymobile/android/media/internal/VideoTrack;->mRecordedDurationAtStopUs:J
    invoke-static {v2}, Lcom/sonymobile/android/media/internal/VideoTrack;->access$600(Lcom/sonymobile/android/media/internal/VideoTrack;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " , last recorded timestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    .line 601
    # getter for: Lcom/sonymobile/android/media/internal/VideoTrack;->mLastRecordedVideoTimestampUs:J
    invoke-static {v2}, Lcom/sonymobile/android/media/internal/VideoTrack;->access$1100(Lcom/sonymobile/android/media/internal/VideoTrack;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 599
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-object v0, v0, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    :cond_53
    return-void
.end method

.method private queueBuffer(ILandroid/media/MediaCodec$BufferInfo;)V
    .registers 11

    .line 538
    new-instance v0, Lcom/sonymobile/android/media/internal/Track$EncodedBuffer;

    invoke-direct {v0, p1, p2}, Lcom/sonymobile/android/media/internal/Track$EncodedBuffer;-><init>(ILandroid/media/MediaCodec$BufferInfo;)V

    .line 540
    invoke-direct {p0}, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->canBuffering()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 541
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-object v1, v1, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 543
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 545
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, v0, Lcom/sonymobile/android/media/internal/Track$EncodedBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 546
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 547
    iget-object v3, v0, Lcom/sonymobile/android/media/internal/Track$EncodedBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    .line 548
    iput-boolean v1, v0, Lcom/sonymobile/android/media/internal/Track$EncodedBuffer;->containsCopiedBuffer:Z

    .line 549
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    # getter for: Lcom/sonymobile/android/media/internal/VideoTrack;->mTotalBufferingSizeInfoLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/sonymobile/android/media/internal/VideoTrack;->access$1300(Lcom/sonymobile/android/media/internal/VideoTrack;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 550
    :try_start_31
    iget-object v3, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-object v4, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    # getter for: Lcom/sonymobile/android/media/internal/VideoTrack;->mTotalBufferingSize:J
    invoke-static {v4}, Lcom/sonymobile/android/media/internal/VideoTrack;->access$1400(Lcom/sonymobile/android/media/internal/VideoTrack;)J

    move-result-wide v4

    int-to-long v6, v2

    add-long/2addr v4, v6

    # setter for: Lcom/sonymobile/android/media/internal/VideoTrack;->mTotalBufferingSize:J
    invoke-static {v3, v4, v5}, Lcom/sonymobile/android/media/internal/VideoTrack;->access$1402(Lcom/sonymobile/android/media/internal/VideoTrack;J)J

    .line 551
    monitor-exit v1

    goto :goto_43

    :catchall_40
    move-exception p1

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_31 .. :try_end_42} :catchall_40

    throw p1

    .line 557
    :cond_43
    :goto_43
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-object v1, v1, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncoder:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 561
    iget-object p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-object p1, p1, Lcom/sonymobile/android/media/internal/VideoTrack;->mMuxerState:Lcom/sonymobile/android/media/internal/Track$MuxerState;

    sget-object v1, Lcom/sonymobile/android/media/internal/Track$MuxerState;->IDLE:Lcom/sonymobile/android/media/internal/Track$MuxerState;

    if-ne p1, v1, :cond_6c

    iget-wide v1, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/32 v3, 0x989680

    cmp-long p1, v1, v3

    if-gtz p1, :cond_5d

    goto :goto_6c

    :cond_5d
    const-string p1, "VideoTrack"

    const-string p2, "MediaMuxer is timed out."

    .line 563
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "MediaMuxer is timed out."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 568
    :cond_6c
    :goto_6c
    iget-object p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-object p1, p1, Lcom/sonymobile/android/media/internal/VideoTrack;->mBufferList:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    .line 569
    iget-object p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-wide v0, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    # setter for: Lcom/sonymobile/android/media/internal/VideoTrack;->mLastRecordedVideoTimestampUs:J
    invoke-static {p1, v0, v1}, Lcom/sonymobile/android/media/internal/VideoTrack;->access$1102(Lcom/sonymobile/android/media/internal/VideoTrack;J)J

    .line 570
    iget p1, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_90

    .line 571
    iget-object p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    # getter for: Lcom/sonymobile/android/media/internal/VideoTrack;->mMuxerHandler:Lcom/sonymobile/android/media/internal/Track$MuxerHandler;
    invoke-static {p1}, Lcom/sonymobile/android/media/internal/VideoTrack;->access$1500(Lcom/sonymobile/android/media/internal/VideoTrack;)Lcom/sonymobile/android/media/internal/Track$MuxerHandler;

    move-result-object p1

    const/16 p2, 0x6e

    invoke-virtual {p1, p2}, Lcom/sonymobile/android/media/internal/Track$MuxerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_9f

    .line 573
    :cond_90
    iget-object p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    # getter for: Lcom/sonymobile/android/media/internal/VideoTrack;->mMuxerHandler:Lcom/sonymobile/android/media/internal/Track$MuxerHandler;
    invoke-static {p1}, Lcom/sonymobile/android/media/internal/VideoTrack;->access$1500(Lcom/sonymobile/android/media/internal/VideoTrack;)Lcom/sonymobile/android/media/internal/Track$MuxerHandler;

    move-result-object p1

    const/16 p2, 0x68

    invoke-virtual {p1, p2}, Lcom/sonymobile/android/media/internal/Track$MuxerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_9f
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 609
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x69

    if-eq v0, v1, :cond_f

    const/16 p1, 0x6f

    if-eq v0, p1, :cond_b

    goto :goto_18

    .line 616
    :cond_b
    invoke-direct {p0}, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->doTimeOutBufferCallback()V

    goto :goto_18

    .line 611
    :cond_f
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p0, v0, p1}, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->doQueueOutputBuffer(ILandroid/media/MediaCodec$BufferInfo;)V

    :goto_18
    return-void
.end method
