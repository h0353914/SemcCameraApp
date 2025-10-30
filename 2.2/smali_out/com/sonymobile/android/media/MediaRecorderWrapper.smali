.class public Lcom/sonymobile/android/media/MediaRecorderWrapper;
.super Ljava/lang/Object;
.source "MediaRecorderWrapper.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "MediaRecorderWrapper"


# instance fields
.field private mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

.field private mOldRecorder:Landroid/media/MediaRecorder;

.field private final mUseNew:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, v0}, Lcom/sonymobile/android/media/MediaRecorderWrapper;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean p1, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    .line 51
    iget-boolean p1, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz p1, :cond_11

    .line 52
    new-instance p1, Lcom/sonymobile/android/media/MediaRecorder;

    invoke-direct {p1}, Lcom/sonymobile/android/media/MediaRecorder;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    goto :goto_18

    .line 54
    :cond_11
    new-instance p1, Landroid/media/MediaRecorder;

    invoke-direct {p1}, Landroid/media/MediaRecorder;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    :goto_18
    return-void
.end method

.method public static final getAudioSourceMax()I
    .registers 1

    .line 120
    invoke-static {}, Landroid/media/MediaRecorder;->getAudioSourceMax()I

    move-result v0

    return v0
.end method


# virtual methods
.method public adjustAudioStartVolume(I)V
    .registers 3

    .line 499
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_9

    .line 500
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->adjustAudioStartVolume(I)V

    :cond_9
    return-void
.end method

.method public adjustAudioTimestamp(J)V
    .registers 4

    .line 486
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_9

    .line 487
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/android/media/MediaRecorder;->adjustAudioTimestamp(J)V

    :cond_9
    return-void
.end method

.method public dump(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 527
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_b

    .line 528
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->dump(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMaxAmplitude()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 412
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_c

    .line 413
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, " getMaxAmplitude unsupported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 415
    :cond_c
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result p0

    return p0
.end method

.method public getSurface()Landroid/view/Surface;
    .registers 2

    .line 82
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_b

    .line 83
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/MediaRecorder;->getSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0

    .line 85
    :cond_b
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->getSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public isAsyncStopSupported()Z
    .registers 1

    .line 346
    iget-boolean p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    return p0
.end method

.method public pause()Z
    .registers 2

    .line 367
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 368
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/MediaRecorder;->pause()V

    goto :goto_f

    .line 370
    :cond_a
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->pause()V

    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public prepare()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 314
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/MediaRecorder;->prepare()V

    goto :goto_f

    .line 316
    :cond_a
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->prepare()V

    :goto_f
    return-void
.end method

.method public release()V
    .registers 2

    .line 398
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 399
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/MediaRecorder;->release()V

    goto :goto_f

    .line 401
    :cond_a
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->release()V

    :goto_f
    return-void
.end method

.method public requestProgressInfo(I)Z
    .registers 8

    .line 446
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    .line 447
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->requestProgressInfo(I)V

    return v1

    :cond_b
    const/4 v0, 0x0

    .line 452
    :try_start_c
    const-class v2, Landroid/media/MediaRecorder;

    const-string v3, "setParameter"

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    .line 453
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 454
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 455
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    new-array v3, v1, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "param-track-time-status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit16 p1, p1, 0x3e8

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_39} :catch_3a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_39} :catch_3a
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_39} :catch_3a

    return v1

    :catch_3a
    return v0
.end method

.method public reset()V
    .registers 2

    .line 390
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 391
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/MediaRecorder;->reset()V

    goto :goto_f

    .line 393
    :cond_a
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->reset()V

    :goto_f
    return-void
.end method

.method public resume()Z
    .registers 2

    .line 381
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 382
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/MediaRecorder;->resume()V

    goto :goto_f

    .line 384
    :cond_a
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->resume()V

    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public setAudioChannels(I)V
    .registers 3

    .line 273
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 274
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setAudioChannels(I)V

    goto :goto_f

    .line 276
    :cond_a
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    :goto_f
    return-void
.end method

.method public setAudioEncoder(I)V
    .registers 3

    .line 249
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 250
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setAudioEncoder(I)V

    goto :goto_f

    .line 252
    :cond_a
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    :goto_f
    return-void
.end method

.method public setAudioEncodingBitRate(I)V
    .registers 3

    .line 281
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 282
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    goto :goto_f

    .line 284
    :cond_a
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    :goto_f
    return-void
.end method

.method public setAudioSamplingRate(I)V
    .registers 3

    .line 265
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 266
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setAudioSamplingRate(I)V

    goto :goto_f

    .line 268
    :cond_a
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    :goto_f
    return-void
.end method

.method public setAudioSource(I)V
    .registers 3

    .line 112
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 113
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setAudioSource(I)V

    goto :goto_f

    .line 115
    :cond_a
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    :goto_f
    return-void
.end method

.method public setCamera(Landroid/hardware/Camera;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 74
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_c

    .line 75
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "unsupported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 77
    :cond_c
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    return-void
.end method

.method public setCaptureRate(D)V
    .registers 4

    .line 154
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 155
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/android/media/MediaRecorder;->setCaptureRate(D)V

    goto :goto_f

    .line 157
    :cond_a
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    :goto_f
    return-void
.end method

.method public setDebugMode(Z)V
    .registers 2

    .line 513
    iget-boolean p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    return-void
.end method

.method public setInputSurface(Landroid/view/Surface;)V
    .registers 3

    .line 90
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 91
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setInputSurface(Landroid/view/Surface;)V

    goto :goto_f

    .line 93
    :cond_a
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setInputSurface(Landroid/view/Surface;)V

    :goto_f
    return-void
.end method

.method public setLocation(FF)V
    .registers 4

    .line 170
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 171
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/android/media/MediaRecorder;->setLocation(FF)V

    goto :goto_f

    .line 173
    :cond_a
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRecorder;->setLocation(FF)V

    :goto_f
    return-void
.end method

.method public setMaxDuration(I)V
    .registers 3

    .line 233
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 234
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setMaxDuration(I)V

    goto :goto_f

    .line 236
    :cond_a
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    :goto_f
    return-void
.end method

.method public setMaxFileSize(J)V
    .registers 4

    .line 241
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 242
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/android/media/MediaRecorder;->setMaxFileSize(J)V

    goto :goto_f

    .line 244
    :cond_a
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    :goto_f
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V
    .registers 3

    .line 421
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 422
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    goto :goto_f

    .line 424
    :cond_a
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    :goto_f
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    .registers 3

    .line 430
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 431
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    goto :goto_f

    .line 433
    :cond_a
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    :goto_f
    return-void
.end method

.method public setOrientationHint(I)V
    .registers 3

    .line 162
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 163
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setOrientationHint(I)V

    goto :goto_f

    .line 165
    :cond_a
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    :goto_f
    return-void
.end method

.method public setOutputFile(Ljava/io/FileDescriptor;)V
    .registers 3

    .line 297
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 298
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    goto :goto_f

    .line 300
    :cond_a
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    :goto_f
    return-void
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .registers 3

    .line 305
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 306
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto :goto_f

    .line 308
    :cond_a
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    :goto_f
    return-void
.end method

.method public setOutputFormat(I)V
    .registers 3

    .line 178
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 179
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setOutputFormat(I)V

    goto :goto_f

    .line 181
    :cond_a
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    :goto_f
    return-void
.end method

.method public setPreviewDisplay(Landroid/view/Surface;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 104
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_c

    .line 105
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "setPreviewDisplay unsupported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 107
    :cond_c
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    return-void
.end method

.method public setProfile(Landroid/media/CamcorderProfile;)V
    .registers 3

    .line 141
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 142
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    goto :goto_f

    .line 144
    :cond_a
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    :goto_f
    return-void
.end method

.method public setVideoBitRateMode(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 217
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 218
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setVideoBitRateMode(I)V

    return-void

    .line 220
    :cond_a
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "setVideoBitRateMode unsupported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setVideoColorAspects(III)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 225
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 226
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sonymobile/android/media/MediaRecorder;->setVideoColorAspects(III)V

    return-void

    .line 228
    :cond_a
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "setVideoColorAspects unsupported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setVideoEncoder(I)V
    .registers 3

    .line 257
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 258
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setVideoEncoder(I)V

    goto :goto_f

    .line 260
    :cond_a
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    :goto_f
    return-void
.end method

.method public setVideoEncodingBitRate(I)V
    .registers 3

    .line 289
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 290
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    goto :goto_f

    .line 292
    :cond_a
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    :goto_f
    return-void
.end method

.method public setVideoEncodingProfileLevel(II)V
    .registers 10

    .line 202
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 203
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/android/media/MediaRecorder;->setVideoEncodingProfileLevel(II)V

    goto :goto_35

    .line 207
    :cond_a
    :try_start_a
    const-class v0, Landroid/media/MediaRecorder;

    const-string v1, "setVideoEncodingProfileLevel"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 208
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 209
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 210
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v6

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_35} :catch_35
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_35} :catch_35
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_35} :catch_35

    :catch_35
    :goto_35
    return-void
.end method

.method public setVideoFrameRate(I)V
    .registers 3

    .line 194
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 195
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setVideoFrameRate(I)V

    goto :goto_f

    .line 197
    :cond_a
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    :goto_f
    return-void
.end method

.method public setVideoSize(II)V
    .registers 4

    .line 186
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 187
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/android/media/MediaRecorder;->setVideoSize(II)V

    goto :goto_f

    .line 189
    :cond_a
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    :goto_f
    return-void
.end method

.method public setVideoSource(I)V
    .registers 3

    .line 133
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 134
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setVideoSource(I)V

    goto :goto_f

    .line 136
    :cond_a
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    :goto_f
    return-void
.end method

.method public start()V
    .registers 2

    .line 321
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 322
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/MediaRecorder;->start()V

    goto :goto_f

    .line 324
    :cond_a
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->start()V

    :goto_f
    return-void
.end method

.method public stop()V
    .registers 2

    .line 329
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 330
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/MediaRecorder;->stop()V

    goto :goto_f

    .line 332
    :cond_a
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->stop()V

    :goto_f
    return-void
.end method

.method public stopAsync()V
    .registers 2

    .line 350
    invoke-virtual {p0}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->isAsyncStopSupported()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 351
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/MediaRecorder;->stopAsync()V

    :cond_b
    return-void
.end method

.method public stopAudioRecording()V
    .registers 2

    .line 63
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_9

    .line 64
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/MediaRecorder;->stopAudioRecording()V

    :cond_9
    return-void
.end method

.method public stopOnError()V
    .registers 2

    .line 337
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 338
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/MediaRecorder;->stopOnError()V

    goto :goto_f

    .line 340
    :cond_a
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->stop()V

    :goto_f
    return-void
.end method

.method public useIntelligentActive(Z)V
    .registers 3

    .line 471
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_9

    .line 472
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->useIntelligentActive(Z)V

    :cond_9
    return-void
.end method

.method public waitUntilStopCompleted()V
    .registers 2

    .line 356
    invoke-virtual {p0}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->isAsyncStopSupported()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 357
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/MediaRecorder;->waitUntilStopCompleted()V

    :cond_b
    return-void
.end method
