.class Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;
.super Landroid/os/Handler;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/media/internal/AudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioRecordHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/media/internal/AudioTrack;


# direct methods
.method constructor <init>(Lcom/sonymobile/android/media/internal/AudioTrack;Landroid/os/Looper;)V
    .registers 3

    .line 630
    iput-object p1, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    .line 631
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private doHandleInputBuffer(I)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 642
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object v0, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 644
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mTotalMuteBytes:J
    invoke-static {v1}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$100(Lcom/sonymobile/android/media/internal/AudioTrack;)J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    # setter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mTotalMuteBytes:J
    invoke-static {v1, v2, v3}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$102(Lcom/sonymobile/android/media/internal/AudioTrack;J)J

    .line 645
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mTotalMuteBytes:J
    invoke-static {v1}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$100(Lcom/sonymobile/android/media/internal/AudioTrack;)J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    mul-long/2addr v1, v3

    iget-object v5, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    .line 646
    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mNumAudioChannels:I
    invoke-static {v5}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$200(Lcom/sonymobile/android/media/internal/AudioTrack;)I

    move-result v5

    int-to-long v5, v5

    div-long/2addr v1, v5

    iget-object v5, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mBytesPerSample:I
    invoke-static {v5}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$300(Lcom/sonymobile/android/media/internal/AudioTrack;)I

    move-result v5

    int-to-long v5, v5

    div-long/2addr v1, v5

    iget-object v5, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioSamplingRate:I
    invoke-static {v5}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$400(Lcom/sonymobile/android/media/internal/AudioTrack;)I

    move-result v5

    int-to-long v5, v5

    div-long/2addr v1, v5

    cmp-long v5, v1, v3

    if-gez v5, :cond_60

    .line 648
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    new-array v3, v3, [B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 649
    iget-object v3, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object v4, v3, Lcom/sonymobile/android/media/internal/AudioTrack;->mEncoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    .line 650
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mTotalMuteDurationUs:J
    invoke-static {v0}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$500(Lcom/sonymobile/android/media/internal/AudioTrack;)J

    move-result-wide v8

    const/4 v10, 0x0

    move v5, p1

    .line 649
    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 651
    iget-object p1, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # setter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mTotalMuteDurationUs:J
    invoke-static {p1, v1, v2}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$502(Lcom/sonymobile/android/media/internal/AudioTrack;J)J

    return-void

    .line 655
    :cond_60
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioDurationUs:J
    invoke-static {v1}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$600(Lcom/sonymobile/android/media/internal/AudioTrack;)J

    move-result-wide v1

    iget-object v5, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioOffset:J
    invoke-static {v5}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$700(Lcom/sonymobile/android/media/internal/AudioTrack;)J

    move-result-wide v5

    add-long/2addr v1, v5

    iget-object v5, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mTotalMuteDurationUs:J
    invoke-static {v5}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$500(Lcom/sonymobile/android/media/internal/AudioTrack;)J

    move-result-wide v5

    add-long v11, v1, v5

    .line 656
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioRecorder:Landroid/media/AudioRecord;
    invoke-static {v1}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$900(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/media/AudioRecord;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mInputBufferSize:I
    invoke-static {v2}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$800(Lcom/sonymobile/android/media/internal/AudioTrack;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v1

    .line 657
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mNumAudioChannels:I
    invoke-static {v2}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$200(Lcom/sonymobile/android/media/internal/AudioTrack;)I

    move-result v2

    div-int v2, v1, v2

    iget-object v5, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mBytesPerSample:I
    invoke-static {v5}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$300(Lcom/sonymobile/android/media/internal/AudioTrack;)I

    move-result v5

    div-int/2addr v2, v5

    int-to-long v5, v2

    mul-long/2addr v5, v3

    .line 658
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioSamplingRate:I
    invoke-static {v2}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$400(Lcom/sonymobile/android/media/internal/AudioTrack;)I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v5, v2

    .line 660
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mFirstAudioFrameTimeUs:J
    invoke-static {v2}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$1000(Lcom/sonymobile/android/media/internal/AudioTrack;)J

    move-result-wide v2

    const-wide/16 v7, 0x0

    cmp-long v2, v2, v7

    if-gez v2, :cond_ba

    .line 661
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # invokes: Lcom/sonymobile/android/media/internal/AudioTrack;->calculateFirstAudioFrameTimeUs()J
    invoke-static {v2}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$1100(Lcom/sonymobile/android/media/internal/AudioTrack;)J

    move-result-wide v3

    iget-object v7, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mTotalMuteDurationUs:J
    invoke-static {v7}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$500(Lcom/sonymobile/android/media/internal/AudioTrack;)J

    move-result-wide v7

    sub-long/2addr v3, v7

    # setter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mFirstAudioFrameTimeUs:J
    invoke-static {v2, v3, v4}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$1002(Lcom/sonymobile/android/media/internal/AudioTrack;J)J

    .line 664
    :cond_ba
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object v2, v2, Lcom/sonymobile/android/media/internal/AudioTrack;->mState:Lcom/sonymobile/android/media/internal/Track$States;

    sget-object v3, Lcom/sonymobile/android/media/internal/Track$States;->PAUSED:Lcom/sonymobile/android/media/internal/Track$States;

    const/4 v4, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v2, v3, :cond_138

    iget-object v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    .line 665
    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioDurationUs:J
    invoke-static {v2}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$600(Lcom/sonymobile/android/media/internal/AudioTrack;)J

    move-result-wide v2

    add-long/2addr v2, v5

    iget-object v9, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object v9, v9, Lcom/sonymobile/android/media/internal/AudioTrack;->mClock:Lcom/sonymobile/android/media/internal/ClockInterface;

    invoke-interface {v9}, Lcom/sonymobile/android/media/internal/ClockInterface;->getDurationAtPauseUs()J

    move-result-wide v9

    cmp-long v2, v2, v9

    if-lez v2, :cond_138

    .line 666
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-boolean v2, v2, Lcom/sonymobile/android/media/internal/AudioTrack;->mIsPauseLatchDown:Z

    if-nez v2, :cond_e9

    .line 667
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object v2, v2, Lcom/sonymobile/android/media/internal/AudioTrack;->mPauseLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 668
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iput-boolean v7, v2, Lcom/sonymobile/android/media/internal/AudioTrack;->mIsPauseLatchDown:Z

    :cond_e9
    if-eqz v0, :cond_1b3

    .line 671
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mEosFlagged:Z
    invoke-static {v2}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$1200(Lcom/sonymobile/android/media/internal/AudioTrack;)Z

    move-result v2

    if-nez v2, :cond_1b3

    .line 672
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mInputBufferSize:I
    invoke-static {v2}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$800(Lcom/sonymobile/android/media/internal/AudioTrack;)I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    if-le v2, v3, :cond_108

    .line 673
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    # setter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mInputBufferSize:I
    invoke-static {v2, v0}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$802(Lcom/sonymobile/android/media/internal/AudioTrack;I)I

    :cond_108
    if-gez v1, :cond_11f

    const-string p1, "AudioTrack"

    const-string v0, "Read audio data is empty."

    .line 676
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iget-object p1, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mCallback:Landroid/os/Handler;
    invoke-static {p1}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$1300(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v7, v4, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 678
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 682
    :cond_11f
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioRecordHandler:Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;
    invoke-static {v0}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$1400(Lcom/sonymobile/android/media/internal/AudioTrack;)Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p1, v8}, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 684
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioRecordHandler:Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;
    invoke-static {v0}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$1400(Lcom/sonymobile/android/media/internal/AudioTrack;)Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1b3

    .line 686
    :cond_138
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object v2, v2, Lcom/sonymobile/android/media/internal/AudioTrack;->mState:Lcom/sonymobile/android/media/internal/Track$States;

    sget-object v3, Lcom/sonymobile/android/media/internal/Track$States;->STOPPED:Lcom/sonymobile/android/media/internal/Track$States;

    if-eq v2, v3, :cond_1b3

    if-eqz v0, :cond_1b3

    .line 687
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mEosFlagged:Z
    invoke-static {v2}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$1200(Lcom/sonymobile/android/media/internal/AudioTrack;)Z

    move-result v2

    if-nez v2, :cond_1b3

    .line 688
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mInputBufferSize:I
    invoke-static {v2}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$800(Lcom/sonymobile/android/media/internal/AudioTrack;)I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    if-le v2, v3, :cond_15f

    .line 689
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    # setter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mInputBufferSize:I
    invoke-static {v2, v3}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$802(Lcom/sonymobile/android/media/internal/AudioTrack;I)I

    .line 693
    :cond_15f
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mStartVolumeDelayUs:I
    invoke-static {v2}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$1500(Lcom/sonymobile/android/media/internal/AudioTrack;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v11, v2

    if-gez v2, :cond_172

    .line 694
    new-array v2, v1, [B

    .line 695
    invoke-static {v2, v8}, Ljava/util/Arrays;->fill([BB)V

    .line 696
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 698
    :cond_172
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioDurationUs:J
    invoke-static {v0}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$600(Lcom/sonymobile/android/media/internal/AudioTrack;)J

    move-result-wide v2

    add-long/2addr v2, v5

    # setter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioDurationUs:J
    invoke-static {v0, v2, v3}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$602(Lcom/sonymobile/android/media/internal/AudioTrack;J)J

    .line 700
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object v0, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->mState:Lcom/sonymobile/android/media/internal/Track$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/Track$States;->STOPPING:Lcom/sonymobile/android/media/internal/Track$States;

    if-ne v0, v2, :cond_191

    .line 705
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # setter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mEosFlagged:Z
    invoke-static {v0, v7}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$1202(Lcom/sonymobile/android/media/internal/AudioTrack;Z)Z

    if-gez v1, :cond_18e

    move v13, v4

    move v10, v8

    goto :goto_1aa

    :cond_18e
    move v10, v1

    move v13, v4

    goto :goto_1aa

    :cond_191
    if-gez v1, :cond_1a8

    const-string p1, "AudioTrack"

    const-string v0, "Read audio data is empty."

    .line 711
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-object p1, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mCallback:Landroid/os/Handler;
    invoke-static {p1}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$1300(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v7, v4, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 713
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_1a8
    move v10, v1

    move v13, v8

    .line 717
    :goto_1aa
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object v7, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->mEncoder:Landroid/media/MediaCodec;

    const/4 v9, 0x0

    move v8, p1

    invoke-virtual/range {v7 .. v13}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :cond_1b3
    :goto_1b3
    return-void
.end method

.method private doReleaseAudioRecorder()V
    .registers 3

    .line 762
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioRecorder:Landroid/media/AudioRecord;
    invoke-static {v0}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$900(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/media/AudioRecord;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 763
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioRecorder:Landroid/media/AudioRecord;
    invoke-static {v0}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$900(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 764
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    const/4 v1, 0x0

    # setter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioRecorder:Landroid/media/AudioRecord;
    invoke-static {v0, v1}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$902(Lcom/sonymobile/android/media/internal/AudioTrack;Landroid/media/AudioRecord;)Landroid/media/AudioRecord;

    :cond_17
    return-void
.end method

.method private doStartAudioRecorder()V
    .registers 5

    .line 726
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    const/4 v1, 0x0

    # setter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mEosFlagged:Z
    invoke-static {v0, v1}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$1202(Lcom/sonymobile/android/media/internal/AudioTrack;Z)Z

    .line 727
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    const/4 v1, 0x1

    # setter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mFirstCodecFrame:Z
    invoke-static {v0, v1}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$1602(Lcom/sonymobile/android/media/internal/AudioTrack;Z)Z

    const/4 v0, 0x4

    .line 729
    :try_start_d
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioRecorder:Landroid/media/AudioRecord;
    invoke-static {v2}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$900(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/media/AudioRecord;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioRecord;->startRecording()V

    .line 731
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioRecorder:Landroid/media/AudioRecord;
    invoke-static {v2}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$900(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/media/AudioRecord;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v2

    if-ne v2, v1, :cond_4f

    const-string v2, "AudioTrack"

    const-string v3, "Could not start audio recorder, Recording state is STOPPED"

    .line 732
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mCallback:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$1300(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/os/Handler;

    move-result-object v2

    const v3, 0xf4240

    invoke-virtual {v2, v1, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 734
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_39
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_39} :catch_3a

    return-void

    :catch_3a
    const-string v2, "AudioTrack"

    const-string v3, "Could not start audio recorder, illegal state"

    .line 738
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mCallback:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$1300(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v1, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 740
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 742
    :cond_4f
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object v0, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 743
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    sget-object v1, Lcom/sonymobile/android/media/internal/Track$States;->STARTED:Lcom/sonymobile/android/media/internal/Track$States;

    iput-object v1, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->mState:Lcom/sonymobile/android/media/internal/Track$States;

    return-void
.end method

.method private doStopAudioRecorder()V
    .registers 5

    .line 748
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioRecorder:Landroid/media/AudioRecord;
    invoke-static {v0}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$900(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/media/AudioRecord;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 750
    :try_start_8
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioRecorder:Landroid/media/AudioRecord;
    invoke-static {v0}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$900(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_11
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_11} :catch_12

    goto :goto_29

    :catch_12
    const-string v0, "AudioTrack"

    const-string v1, "Could not stop audio recorder, illegal state"

    .line 752
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mCallback:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$1300(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 754
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 757
    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    sget-object v1, Lcom/sonymobile/android/media/internal/Track$States;->STOPPING:Lcom/sonymobile/android/media/internal/Track$States;

    iput-object v1, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->mState:Lcom/sonymobile/android/media/internal/Track$States;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 770
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x66

    if-eq v0, v1, :cond_4c

    packed-switch v0, :pswitch_data_52

    goto :goto_51

    .line 779
    :pswitch_a
    invoke-direct {p0}, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->doStartAudioRecorder()V

    .line 781
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Handler;

    .line 782
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 783
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 784
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_51

    .line 797
    :pswitch_20
    invoke-direct {p0}, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->doReleaseAudioRecorder()V

    .line 799
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Handler;

    .line 800
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 801
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 802
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_51

    .line 788
    :pswitch_36
    invoke-direct {p0}, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->doStopAudioRecorder()V

    .line 790
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Handler;

    .line 791
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 792
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 793
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_51

    .line 773
    :cond_4c
    :try_start_4c
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->doHandleInputBuffer(I)V
    :try_end_51
    .catch Ljava/lang/IllegalStateException; {:try_start_4c .. :try_end_51} :catch_51

    :catch_51
    :goto_51
    return-void

    :pswitch_data_52
    .packed-switch 0x6b
        :pswitch_36
        :pswitch_20
        :pswitch_a
    .end packed-switch
.end method
