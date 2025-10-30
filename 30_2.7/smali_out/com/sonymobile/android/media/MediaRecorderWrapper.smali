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

    .line 127
    invoke-static {}, Landroid/media/MediaRecorder;->getAudioSourceMax()I

    move-result v0

    return v0
.end method


# virtual methods
.method public adjustAudioStartVolume(I)V
    .registers 3

    .line 506
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_9

    .line 507
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->adjustAudioStartVolume(I)V

    :cond_9
    return-void
.end method

.method public adjustAudioTimestamp(J)V
    .registers 4

    .line 493
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_9

    .line 494
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/android/media/MediaRecorder;->adjustAudioTimestamp(J)V

    :cond_9
    return-void
.end method

.method public getMaxAmplitude()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 419
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-nez v0, :cond_b

    .line 422
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v0

    return v0

    .line 420
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, " getMaxAmplitude unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOldRecorder()Landroid/media/MediaRecorder;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSurface()Landroid/view/Surface;
    .registers 2

    .line 82
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_b

    .line 83
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {v0}, Lcom/sonymobile/android/media/MediaRecorder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0

    .line 85
    :cond_b
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public isAsyncStopSupported()Z
    .registers 2

    .line 353
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    return v0
.end method

.method public pause()Z
    .registers 2

    .line 374
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 375
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {v0}, Lcom/sonymobile/android/media/MediaRecorder;->pause()V

    goto :goto_f

    .line 377
    :cond_a
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->pause()V

    :goto_f
    const/4 v0, 0x1

    return v0
.end method

.method public prepare()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 321
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {v0}, Lcom/sonymobile/android/media/MediaRecorder;->prepare()V

    goto :goto_f

    .line 323
    :cond_a
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    :goto_f
    return-void
.end method

.method public release()V
    .registers 2

    .line 405
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 406
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {v0}, Lcom/sonymobile/android/media/MediaRecorder;->release()V

    goto :goto_f

    .line 408
    :cond_a
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    :goto_f
    return-void
.end method

.method public requestProgressInfo(I)Z
    .registers 9

    .line 453
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    .line 454
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->requestProgressInfo(I)V

    return v1

    :cond_b
    const/4 v0, 0x0

    .line 459
    :try_start_c
    const-class v2, Landroid/media/MediaRecorder;

    const-string v3, "setParameter"

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    .line 460
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 461
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 462
    iget-object v3, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    new-array v4, v1, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "param-track-time-status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit16 p1, p1, 0x3e8

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 397
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 398
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {v0}, Lcom/sonymobile/android/media/MediaRecorder;->reset()V

    goto :goto_f

    .line 400
    :cond_a
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    :goto_f
    return-void
.end method

.method public resume()Z
    .registers 2

    .line 388
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 389
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {v0}, Lcom/sonymobile/android/media/MediaRecorder;->resume()V

    goto :goto_f

    .line 391
    :cond_a
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->resume()V

    :goto_f
    const/4 v0, 0x1

    return v0
.end method

.method public setAudioChannels(I)V
    .registers 3

    .line 280
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 281
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setAudioChannels(I)V

    goto :goto_f

    .line 283
    :cond_a
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    :goto_f
    return-void
.end method

.method public setAudioEncoder(I)V
    .registers 3

    .line 256
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 257
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setAudioEncoder(I)V

    goto :goto_f

    .line 259
    :cond_a
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    :goto_f
    return-void
.end method

.method public setAudioEncodingBitRate(I)V
    .registers 3

    .line 288
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 289
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    goto :goto_f

    .line 291
    :cond_a
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    :goto_f
    return-void
.end method

.method public setAudioSamplingRate(I)V
    .registers 3

    .line 272
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 273
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setAudioSamplingRate(I)V

    goto :goto_f

    .line 275
    :cond_a
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    :goto_f
    return-void
.end method

.method public setAudioSource(I)V
    .registers 3

    .line 119
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 120
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setAudioSource(I)V

    goto :goto_f

    .line 122
    :cond_a
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

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

    if-nez v0, :cond_a

    .line 77
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    return-void

    .line 75
    :cond_a
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "unsupported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCaptureRate(D)V
    .registers 4

    .line 161
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 162
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/android/media/MediaRecorder;->setCaptureRate(D)V

    goto :goto_f

    .line 164
    :cond_a
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    :goto_f
    return-void
.end method

.method public setDebugMode(Z)V
    .registers 2

    .line 520
    iget-boolean p1, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    return-void
.end method

.method public setInputSurface(Landroid/view/Surface;)V
    .registers 3

    .line 97
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 98
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setInputSurface(Landroid/view/Surface;)V

    goto :goto_f

    .line 100
    :cond_a
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setInputSurface(Landroid/view/Surface;)V

    :goto_f
    return-void
.end method

.method public setLocation(FF)V
    .registers 4

    .line 177
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 178
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/android/media/MediaRecorder;->setLocation(FF)V

    goto :goto_f

    .line 180
    :cond_a
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaRecorder;->setLocation(FF)V

    :goto_f
    return-void
.end method

.method public setMaxDuration(I)V
    .registers 3

    .line 240
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 241
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setMaxDuration(I)V

    goto :goto_f

    .line 243
    :cond_a
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    :goto_f
    return-void
.end method

.method public setMaxFileSize(J)V
    .registers 4

    .line 248
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 249
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/android/media/MediaRecorder;->setMaxFileSize(J)V

    goto :goto_f

    .line 251
    :cond_a
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    :goto_f
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V
    .registers 3

    .line 428
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 429
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    goto :goto_f

    .line 431
    :cond_a
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    :goto_f
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    .registers 3

    .line 437
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 438
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    goto :goto_f

    .line 440
    :cond_a
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    :goto_f
    return-void
.end method

.method public setOrientationHint(I)V
    .registers 3

    .line 169
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 170
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setOrientationHint(I)V

    goto :goto_f

    .line 172
    :cond_a
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    :goto_f
    return-void
.end method

.method public setOutputFile(Ljava/io/FileDescriptor;)V
    .registers 3

    .line 304
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 305
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    goto :goto_f

    .line 307
    :cond_a
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    :goto_f
    return-void
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .registers 3

    .line 312
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 313
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto :goto_f

    .line 315
    :cond_a
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    :goto_f
    return-void
.end method

.method public setOutputFormat(I)V
    .registers 3

    .line 185
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 186
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setOutputFormat(I)V

    goto :goto_f

    .line 188
    :cond_a
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

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

    .line 111
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-nez v0, :cond_a

    .line 114
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    return-void

    .line 112
    :cond_a
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "setPreviewDisplay unsupported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setProfile(Landroid/media/CamcorderProfile;)V
    .registers 3

    .line 148
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 149
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    goto :goto_f

    .line 151
    :cond_a
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

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

    .line 224
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 225
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setVideoBitRateMode(I)V

    return-void

    .line 227
    :cond_a
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "setVideoBitRateMode unsupported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setVideoColorAspects(III)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 232
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 233
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonymobile/android/media/MediaRecorder;->setVideoColorAspects(III)V

    return-void

    .line 235
    :cond_a
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "setVideoColorAspects unsupported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setVideoEncoder(I)V
    .registers 3

    .line 264
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 265
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setVideoEncoder(I)V

    goto :goto_f

    .line 267
    :cond_a
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    :goto_f
    return-void
.end method

.method public setVideoEncodingBitRate(I)V
    .registers 3

    .line 296
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 297
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    goto :goto_f

    .line 299
    :cond_a
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    :goto_f
    return-void
.end method

.method public setVideoEncodingProfileLevel(II)V
    .registers 10

    .line 209
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 210
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/android/media/MediaRecorder;->setVideoEncodingProfileLevel(II)V

    goto :goto_35

    .line 214
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

    .line 215
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 216
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 217
    iget-object v1, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 201
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 202
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setVideoFrameRate(I)V

    goto :goto_f

    .line 204
    :cond_a
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    :goto_f
    return-void
.end method

.method public setVideoSize(II)V
    .registers 4

    .line 193
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 194
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/android/media/MediaRecorder;->setVideoSize(II)V

    goto :goto_f

    .line 196
    :cond_a
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    :goto_f
    return-void
.end method

.method public setVideoSource(I)V
    .registers 3

    .line 140
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 141
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setVideoSource(I)V

    goto :goto_f

    .line 143
    :cond_a
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    :goto_f
    return-void
.end method

.method public start()V
    .registers 2

    .line 328
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 329
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {v0}, Lcom/sonymobile/android/media/MediaRecorder;->start()V

    goto :goto_f

    .line 331
    :cond_a
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    :goto_f
    return-void
.end method

.method public stop()V
    .registers 2

    .line 336
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 337
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {v0}, Lcom/sonymobile/android/media/MediaRecorder;->stop()V

    goto :goto_f

    .line 339
    :cond_a
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    :goto_f
    return-void
.end method

.method public stopAsync()V
    .registers 2

    .line 357
    invoke-virtual {p0}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->isAsyncStopSupported()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 358
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {v0}, Lcom/sonymobile/android/media/MediaRecorder;->stopAsync()V

    :cond_b
    return-void
.end method

.method public stopAudioRecording()V
    .registers 2

    .line 63
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_9

    .line 64
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {v0}, Lcom/sonymobile/android/media/MediaRecorder;->stopAudioRecording()V

    :cond_9
    return-void
.end method

.method public stopOnError()V
    .registers 2

    .line 344
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_a

    .line 345
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {v0}, Lcom/sonymobile/android/media/MediaRecorder;->stopOnError()V

    goto :goto_f

    .line 347
    :cond_a
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    :goto_f
    return-void
.end method

.method public useIntelligentActive(Z)V
    .registers 3

    .line 478
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_9

    .line 479
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->useIntelligentActive(Z)V

    :cond_9
    return-void
.end method

.method public waitUntilStopCompleted()V
    .registers 2

    .line 363
    invoke-virtual {p0}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->isAsyncStopSupported()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 364
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {v0}, Lcom/sonymobile/android/media/MediaRecorder;->waitUntilStopCompleted()V

    :cond_b
    return-void
.end method
