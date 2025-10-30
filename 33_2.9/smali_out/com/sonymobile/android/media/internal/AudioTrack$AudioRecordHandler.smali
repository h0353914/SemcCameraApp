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

    .line 515
    iput-object p1, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    .line 516
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private doHandleInputBuffer(I)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 527
    iget-object v2, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object v2, v2, Lcom/sonymobile/android/media/internal/AudioTrack;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 528
    iget-object v3, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioDurationUs:J
    invoke-static {v3}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$100(Lcom/sonymobile/android/media/internal/AudioTrack;)J

    move-result-wide v3

    iget-object v5, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioOffset:J
    invoke-static {v5}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$200(Lcom/sonymobile/android/media/internal/AudioTrack;)J

    move-result-wide v5

    add-long v4, v3, v5

    .line 529
    iget-object v3, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioRecorder:Landroid/media/AudioRecord;
    invoke-static {v3}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$400(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/media/AudioRecord;

    move-result-object v3

    iget-object v6, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mInputBufferSize:I
    invoke-static {v6}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$300(Lcom/sonymobile/android/media/internal/AudioTrack;)I

    move-result v6

    invoke-virtual {v3, v2, v6}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 530
    iget-object v6, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mNumAudioChannels:I
    invoke-static {v6}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$500(Lcom/sonymobile/android/media/internal/AudioTrack;)I

    move-result v6

    div-int v6, v3, v6

    iget-object v7, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mBytesPerSample:I
    invoke-static {v7}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$600(Lcom/sonymobile/android/media/internal/AudioTrack;)I

    move-result v7

    div-int/2addr v6, v7

    int-to-long v6, v6

    const-wide/32 v8, 0xf4240

    mul-long/2addr v6, v8

    .line 531
    iget-object v8, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioSamplingRate:I
    invoke-static {v8}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$700(Lcom/sonymobile/android/media/internal/AudioTrack;)I

    move-result v8

    int-to-long v8, v8

    div-long/2addr v6, v8

    .line 533
    iget-object v8, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object v8, v8, Lcom/sonymobile/android/media/internal/AudioTrack;->mState:Lcom/sonymobile/android/media/internal/Track$States;

    sget-object v9, Lcom/sonymobile/android/media/internal/Track$States;->PAUSED:Lcom/sonymobile/android/media/internal/Track$States;

    const-string v10, "Read audio data is empty."

    const-string v11, "AudioTrack"

    const/4 v12, 0x4

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-ne v8, v9, :cond_c4

    iget-object v8, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    .line 534
    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioDurationUs:J
    invoke-static {v8}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$100(Lcom/sonymobile/android/media/internal/AudioTrack;)J

    move-result-wide v8

    add-long/2addr v8, v6

    iget-object v15, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object v15, v15, Lcom/sonymobile/android/media/internal/AudioTrack;->mClock:Lcom/sonymobile/android/media/internal/ClockInterface;

    invoke-interface {v15}, Lcom/sonymobile/android/media/internal/ClockInterface;->getDurationAtPauseUs()J

    move-result-wide v15

    cmp-long v8, v8, v15

    if-lez v8, :cond_c4

    .line 535
    iget-object v4, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-boolean v4, v4, Lcom/sonymobile/android/media/internal/AudioTrack;->mIsPauseLatchDown:Z

    if-nez v4, :cond_79

    .line 536
    iget-object v4, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object v4, v4, Lcom/sonymobile/android/media/internal/AudioTrack;->mPauseLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 537
    iget-object v4, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iput-boolean v13, v4, Lcom/sonymobile/android/media/internal/AudioTrack;->mIsPauseLatchDown:Z

    :cond_79
    if-eqz v2, :cond_133

    .line 540
    iget-object v4, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mEosFlagged:Z
    invoke-static {v4}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$800(Lcom/sonymobile/android/media/internal/AudioTrack;)Z

    move-result v4

    if-nez v4, :cond_133

    .line 541
    iget-object v4, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mInputBufferSize:I
    invoke-static {v4}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$300(Lcom/sonymobile/android/media/internal/AudioTrack;)I

    move-result v4

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    if-le v4, v5, :cond_98

    .line 542
    iget-object v4, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    # setter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mInputBufferSize:I
    invoke-static {v4, v2}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$302(Lcom/sonymobile/android/media/internal/AudioTrack;I)I

    :cond_98
    if-gez v3, :cond_ab

    .line 545
    invoke-static {v11, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v0, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mCallback:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$900(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v13, v12, v14}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 547
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 551
    :cond_ab
    iget-object v2, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioRecordHandler:Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;
    invoke-static {v2}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$1000(Lcom/sonymobile/android/media/internal/AudioTrack;)Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;

    move-result-object v2

    const/16 v3, 0x66

    invoke-virtual {v2, v3, v1, v14}, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 553
    iget-object v0, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioRecordHandler:Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;
    invoke-static {v0}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$1000(Lcom/sonymobile/android/media/internal/AudioTrack;)Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_133

    .line 555
    :cond_c4
    iget-object v8, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object v8, v8, Lcom/sonymobile/android/media/internal/AudioTrack;->mState:Lcom/sonymobile/android/media/internal/Track$States;

    sget-object v9, Lcom/sonymobile/android/media/internal/Track$States;->STOPPED:Lcom/sonymobile/android/media/internal/Track$States;

    if-eq v8, v9, :cond_133

    if-eqz v2, :cond_133

    .line 556
    iget-object v8, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mEosFlagged:Z
    invoke-static {v8}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$800(Lcom/sonymobile/android/media/internal/AudioTrack;)Z

    move-result v8

    if-nez v8, :cond_133

    .line 557
    iget-object v8, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mInputBufferSize:I
    invoke-static {v8}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$300(Lcom/sonymobile/android/media/internal/AudioTrack;)I

    move-result v8

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    if-le v8, v9, :cond_eb

    .line 558
    iget-object v8, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    # setter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mInputBufferSize:I
    invoke-static {v8, v9}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$302(Lcom/sonymobile/android/media/internal/AudioTrack;I)I

    .line 562
    :cond_eb
    iget-object v8, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mStartVolumeDelayUs:I
    invoke-static {v8}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$1100(Lcom/sonymobile/android/media/internal/AudioTrack;)I

    move-result v8

    int-to-long v8, v8

    cmp-long v8, v4, v8

    if-gez v8, :cond_fe

    .line 563
    new-array v8, v3, [B

    .line 564
    invoke-static {v8, v14}, Ljava/util/Arrays;->fill([BB)V

    .line 565
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 567
    :cond_fe
    iget-object v2, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # += operator for: Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioDurationUs:J
    invoke-static {v2, v6, v7}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$114(Lcom/sonymobile/android/media/internal/AudioTrack;J)J

    .line 569
    iget-object v2, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object v2, v2, Lcom/sonymobile/android/media/internal/AudioTrack;->mState:Lcom/sonymobile/android/media/internal/Track$States;

    sget-object v6, Lcom/sonymobile/android/media/internal/Track$States;->STOPPING:Lcom/sonymobile/android/media/internal/Track$States;

    if-ne v2, v6, :cond_115

    .line 574
    iget-object v2, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # setter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mEosFlagged:Z
    invoke-static {v2, v13}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$802(Lcom/sonymobile/android/media/internal/AudioTrack;Z)Z

    move v6, v12

    if-gez v3, :cond_129

    move v3, v14

    goto :goto_129

    :cond_115
    if-gez v3, :cond_128

    .line 580
    invoke-static {v11, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v0, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mCallback:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$900(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v13, v12, v14}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 582
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_128
    move v6, v14

    .line 586
    :cond_129
    :goto_129
    iget-object v0, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object v0, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->mEncoder:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    move/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :cond_133
    :goto_133
    return-void
.end method

.method private doReleaseAudioRecorder()V
    .registers 2

    .line 631
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioRecorder:Landroid/media/AudioRecord;
    invoke-static {v0}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$400(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/media/AudioRecord;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 632
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioRecorder:Landroid/media/AudioRecord;
    invoke-static {v0}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$400(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 633
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    const/4 v0, 0x0

    # setter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioRecorder:Landroid/media/AudioRecord;
    invoke-static {p0, v0}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$402(Lcom/sonymobile/android/media/internal/AudioTrack;Landroid/media/AudioRecord;)Landroid/media/AudioRecord;

    :cond_17
    return-void
.end method

.method private doStartAudioRecorder()V
    .registers 6

    const-string v0, "AudioTrack"

    .line 595
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    const/4 v2, 0x0

    # setter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mEosFlagged:Z
    invoke-static {v1, v2}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$802(Lcom/sonymobile/android/media/internal/AudioTrack;Z)Z

    .line 596
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    const/4 v2, 0x1

    # setter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mFirstCodecFrame:Z
    invoke-static {v1, v2}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$1202(Lcom/sonymobile/android/media/internal/AudioTrack;Z)Z

    const/4 v1, 0x4

    .line 598
    :try_start_f
    iget-object v3, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioRecorder:Landroid/media/AudioRecord;
    invoke-static {v3}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$400(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/media/AudioRecord;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioRecord;->startRecording()V

    .line 600
    iget-object v3, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioRecorder:Landroid/media/AudioRecord;
    invoke-static {v3}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$400(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/media/AudioRecord;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v3

    if-ne v3, v2, :cond_49

    const-string v3, "Could not start audio recorder, Recording state is STOPPED"

    .line 601
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v3, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mCallback:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$900(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/os/Handler;

    move-result-object v3

    const v4, 0xf4240

    invoke-virtual {v3, v2, v1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 603
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_39
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_39} :catch_3a

    return-void

    :catch_3a
    const-string v3, "Could not start audio recorder, illegal state"

    .line 607
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mCallback:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$900(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/os/Handler;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 611
    :cond_49
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object v0, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 612
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    sget-object v0, Lcom/sonymobile/android/media/internal/Track$States;->STARTED:Lcom/sonymobile/android/media/internal/Track$States;

    iput-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mState:Lcom/sonymobile/android/media/internal/Track$States;

    return-void
.end method

.method private doStopAudioRecorder()V
    .registers 5

    .line 617
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioRecorder:Landroid/media/AudioRecord;
    invoke-static {v0}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$400(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/media/AudioRecord;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 619
    :try_start_8
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioRecorder:Landroid/media/AudioRecord;
    invoke-static {v0}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$400(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_11
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_11} :catch_12

    goto :goto_25

    :catch_12
    const-string v0, "AudioTrack"

    const-string v1, "Could not stop audio recorder, illegal state"

    .line 621
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mCallback:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$900(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 626
    :cond_25
    :goto_25
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    sget-object v0, Lcom/sonymobile/android/media/internal/Track$States;->STOPPING:Lcom/sonymobile/android/media/internal/Track$States;

    iput-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mState:Lcom/sonymobile/android/media/internal/Track$States;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 639
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x66

    if-eq v0, v1, :cond_4c

    packed-switch v0, :pswitch_data_52

    goto :goto_51

    .line 648
    :pswitch_a
    invoke-direct {p0}, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->doStartAudioRecorder()V

    .line 650
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    .line 651
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    .line 652
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 653
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_51

    .line 666
    :pswitch_20
    invoke-direct {p0}, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->doReleaseAudioRecorder()V

    .line 668
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    .line 669
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    .line 670
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 671
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_51

    .line 657
    :pswitch_36
    invoke-direct {p0}, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->doStopAudioRecorder()V

    .line 659
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    .line 660
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    .line 661
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 662
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_51

    .line 642
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
