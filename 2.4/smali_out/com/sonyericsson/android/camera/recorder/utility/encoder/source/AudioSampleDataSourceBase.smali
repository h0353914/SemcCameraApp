.class public abstract Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;
.super Ljava/lang/Object;
.source "AudioSampleDataSourceBase.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataSource;
.implements Landroid/media/AudioRecord$OnRecordPositionUpdateListener;


# static fields
.field protected static final INPUTBUFFER_TIMEOUT_MICROSECONDS:J = 0x186a0L

.field protected static final NOTIFICATION_COUNT_PER_SECOND:I = 0xa


# instance fields
.field private volatile mAlreadyEos:Z

.field private final mAudioBuffer:[B

.field private final mAudioRecord:Landroid/media/AudioRecord;

.field private final mCodec:Landroid/media/MediaCodec;

.field private final mMinBufferSize:I

.field private final mNotificationPeriod:I

.field private mSampleCount:J

.field private final mSampleDataBytes:I

.field private final mSampleRate:I

.field private final mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec;III)V
    .registers 11

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_59

    .line 57
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mCodec:Landroid/media/MediaCodec;

    .line 58
    iput p2, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mSampleRate:I

    .line 59
    invoke-direct {p0, p4}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->bytesInFrame(I)I

    move-result p1

    mul-int/2addr p1, p3

    iput p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mSampleDataBytes:I

    const/4 p1, 0x2

    if-ne p3, p1, :cond_16

    const/16 p1, 0xc

    goto :goto_18

    :cond_16
    const/16 p1, 0x10

    :goto_18
    move v3, p1

    .line 64
    iget p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mSampleRate:I

    invoke-static {p1, v3, p4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mMinBufferSize:I

    .line 66
    new-instance p1, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    iget v2, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mSampleRate:I

    .line 68
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->getBufferSize()I

    move-result v5

    move-object v0, p1

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mAudioRecord:Landroid/media/AudioRecord;

    .line 70
    iget-object p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {p1}, Landroid/media/AudioRecord;->getState()I

    move-result p1

    if-eqz p1, :cond_51

    .line 75
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->getAudioBufferSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mAudioBuffer:[B

    .line 77
    iget p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mSampleRate:I

    div-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mNotificationPeriod:I

    .line 79
    new-instance p1, Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    const-string p2, "AudioSampleDataReaderThread"

    invoke-direct {p1, p2}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    return-void

    .line 71
    :cond_51
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "AudioRecord failed to initialize. Parameters might be invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_59
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "MediaCodec cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;Z)V
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->readSampleData(Z)V

    return-void
.end method

.method private bytesInFrame(I)I
    .registers 3

    packed-switch p1, :pswitch_data_10

    .line 210
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Specified Audio format is not supported."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_b
    const/4 p1, 0x1

    return p1

    :pswitch_d
    const/4 p1, 0x2

    return p1

    nop

    :pswitch_data_10
    .packed-switch 0x2
        :pswitch_d
        :pswitch_b
    .end packed-switch
.end method

.method protected static isCancelled()Z
    .registers 1

    .line 147
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    return v0
.end method

.method private readSampleData(Z)V
    .registers 7

    .line 215
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mAlreadyEos:Z

    if-eqz v0, :cond_12

    .line 216
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_11

    const-string p1, "Already End of Stream"

    .line 217
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_11
    return-void

    .line 222
    :cond_12
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mAudioRecord:Landroid/media/AudioRecord;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mAudioBuffer:[B

    const/4 v2, 0x0

    array-length v3, v1

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/AudioRecord;->read([BIII)I

    move-result v0

    packed-switch v0, :pswitch_data_4c

    goto :goto_3d

    .line 227
    :pswitch_21
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_4a

    const-string p1, "ERROR_BAD_VALUE"

    .line 228
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_4a

    .line 233
    :pswitch_2f
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_3c

    const-string p1, "ERROR_INVALID_OPERATION"

    .line 234
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3c
    move p1, v4

    .line 239
    :goto_3d
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mAudioBuffer:[B

    invoke-virtual {p0, v1, v0, p1}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->pushToEncoder([BIZ)J

    move-result-wide v0

    .line 240
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->addSampleCount(J)V

    if-eqz p1, :cond_4a

    .line 242
    iput-boolean v4, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mAlreadyEos:Z

    :cond_4a
    :goto_4a
    return-void

    nop

    :pswitch_data_4c
    .packed-switch -0x3
        :pswitch_2f
        :pswitch_21
    .end packed-switch
.end method

.method private requestToReadSampleData(Z)V
    .registers 4

    .line 194
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase$1;-><init>(Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected addSampleCount(J)V
    .registers 5

    .line 178
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mSampleCount:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mSampleCount:J

    return-void
.end method

.method protected getAudioBufferSize()I
    .registers 2

    .line 186
    iget v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mMinBufferSize:I

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method protected getAudioRecord()Landroid/media/AudioRecord;
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mAudioRecord:Landroid/media/AudioRecord;

    return-object v0
.end method

.method protected getBackgroundWorker()Lcom/sonyericsson/android/camera/util/BackgroundWorker;
    .registers 2

    .line 174
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    return-object v0
.end method

.method protected getBufferSize()I
    .registers 2

    .line 182
    iget v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mMinBufferSize:I

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method protected getCodec()Landroid/media/MediaCodec;
    .registers 2

    .line 162
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mCodec:Landroid/media/MediaCodec;

    return-object v0
.end method

.method protected getMinBufferSize()I
    .registers 2

    .line 190
    iget v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mMinBufferSize:I

    return v0
.end method

.method protected getPresentationTime(J)J
    .registers 5

    .line 153
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mSampleCount:J

    add-long/2addr v0, p1

    const-wide/32 p1, 0xf4240

    mul-long/2addr v0, p1

    iget p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mSampleRate:I

    int-to-long p1, p1

    div-long/2addr v0, p1

    return-wide v0
.end method

.method protected getSampleDataBytes()I
    .registers 2

    .line 170
    iget v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mSampleDataBytes:I

    return v0
.end method

.method protected getSampleRate()I
    .registers 2

    .line 166
    iget v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mSampleRate:I

    return v0
.end method

.method public onMarkerReached(Landroid/media/AudioRecord;)V
    .registers 2

    return-void
.end method

.method public onPeriodicNotification(Landroid/media/AudioRecord;)V
    .registers 2

    const/4 p1, 0x0

    .line 143
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->readSampleData(Z)V

    return-void
.end method

.method protected abstract pushToEncoder([BIZ)J
.end method

.method public release()V
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 86
    :try_start_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->quit()V

    .line 87
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_25

    const-string v0, "worker.quit FINISHED"

    .line 88
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_17} :catch_18

    goto :goto_25

    .line 91
    :catch_18
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_25

    const-string v0, "worker.quit INTERRUPTED"

    .line 92
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_25
    :goto_25
    return-void
.end method

.method public start()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 99
    iput-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mSampleCount:J

    .line 101
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mAudioRecord:Landroid/media/AudioRecord;

    iget v1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mNotificationPeriod:I

    invoke-virtual {v0, v1}, Landroid/media/AudioRecord;->setPositionNotificationPeriod(I)I

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "setPositionNotificationPeriod:failed"

    .line 103
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 105
    :cond_17
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mAudioRecord:Landroid/media/AudioRecord;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/media/AudioRecord;->setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;Landroid/os/Handler;)V

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->requestToReadSampleData(Z)V

    .line 112
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_35

    return-void

    :cond_35
    const-string v0, "Could not start audio recorder, Recording state is STOPPED"

    .line 113
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 114
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not start audio recorder, Recording state is STOPPED"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()V
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    const/4 v0, 0x1

    .line 122
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->requestToReadSampleData(Z)V

    .line 125
    :try_start_9
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->quit()V

    .line 126
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_29

    const-string v0, "worker.quit FINISHED"

    .line 127
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_1b} :catch_1c

    goto :goto_29

    .line 130
    :catch_1c
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_29

    const-string v0, "worker.quit INTERRUPTED"

    .line 131
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_29
    :goto_29
    return-void
.end method
