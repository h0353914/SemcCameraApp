.class public Lcom/sonymobile/android/media/MediaRecorder;
.super Ljava/lang/Object;
.source "MediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;,
        Lcom/sonymobile/android/media/MediaRecorder$VideoEncoder;,
        Lcom/sonymobile/android/media/MediaRecorder$AudioEncoder;,
        Lcom/sonymobile/android/media/MediaRecorder$OutputFormat;,
        Lcom/sonymobile/android/media/MediaRecorder$VideoSource;,
        Lcom/sonymobile/android/media/MediaRecorder$AudioSource;
    }
.end annotation


# static fields
.field public static final MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final MEDIA_RECORDER_ERROR_UNKNOWN:I = 0x1

.field public static final MEDIA_RECORDER_INFO_MAX_DURATION_REACHED:I = 0x320

.field public static final MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED:I = 0x321

.field public static final MEDIA_RECORDER_INFO_UNKNOWN:I = 0x1

.field public static final MEDIA_RECORDER_TRACK_INFO_COMPLETION_STATUS:I = 0x3e8

.field public static final MEDIA_RECORDER_TRACK_INFO_DATA_KBYTES:I = 0x3f1

.field public static final MEDIA_RECORDER_TRACK_INFO_DURATION_MS:I = 0x3eb

.field public static final MEDIA_RECORDER_TRACK_INFO_ENCODED_FRAMES:I = 0x3ed

.field public static final MEDIA_RECORDER_TRACK_INFO_INITIAL_DELAY_MS:I = 0x3ef

.field public static final MEDIA_RECORDER_TRACK_INFO_LIST_END:I = 0x7d0

.field public static final MEDIA_RECORDER_TRACK_INFO_LIST_START:I = 0x3e8

.field public static final MEDIA_RECORDER_TRACK_INFO_MAX_CHUNK_DUR_MS:I = 0x3ec

.field public static final MEDIA_RECORDER_TRACK_INFO_PROGRESS_IN_TIME:I = 0x3e9

.field public static final MEDIA_RECORDER_TRACK_INFO_START_OFFSET_MS:I = 0x3f0

.field public static final MEDIA_RECORDER_TRACK_INFO_TYPE:I = 0x3ea

.field public static final MEDIA_RECORDER_TRACK_INTER_CHUNK_TIME_MS:I = 0x3ee

.field private static final TAG:Ljava/lang/String; = "MediaRecorder"


# instance fields
.field private mIsAvailable:Z

.field private mOnErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

.field private mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

.field private mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 326
    new-instance v0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 328
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;-><init>(Lcom/sonymobile/android/media/MediaRecorder;Ljava/lang/ref/WeakReference;Landroid/os/Looper;)V

    goto :goto_2c

    .line 329
    :cond_18
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 330
    new-instance v0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 332
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;-><init>(Lcom/sonymobile/android/media/MediaRecorder;Ljava/lang/ref/WeakReference;Landroid/os/Looper;)V

    .line 338
    :goto_2c
    new-instance v1, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-direct {v1, v0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    return-void

    .line 334
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MediaRecorder must be created on thread with Looper running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/sonymobile/android/media/MediaRecorder;)Landroid/media/MediaRecorder$OnErrorListener;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mOnErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonymobile/android/media/MediaRecorder;)Z
    .registers 1

    .line 80
    iget-boolean p0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mIsAvailable:Z

    return p0
.end method

.method static synthetic access$200(Lcom/sonymobile/android/media/MediaRecorder;)Landroid/media/MediaRecorder$OnInfoListener;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    return-object p0
.end method

.method public static final getAudioSourceMax()I
    .registers 1

    .line 434
    invoke-static {}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->getAudioSourceMax()I

    move-result v0

    return v0
.end method


# virtual methods
.method public adjustAudioStartVolume(I)V
    .registers 3

    .line 1058
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->adjustAudioStartVolume(I)V

    return-void
.end method

.method public adjustAudioTimestamp(J)V
    .registers 4

    .line 1054
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->adjustAudioTimestamp(J)V

    return-void
.end method

.method protected finalize()V
    .registers 2

    .line 1128
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    if-eqz v0, :cond_c

    .line 1130
    :try_start_4
    invoke-virtual {v0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->reset()V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_7} :catch_7

    .line 1135
    :catch_7
    :try_start_7
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->release()V
    :try_end_c
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_c} :catch_c

    :catch_c
    :cond_c
    return-void
.end method

.method public getMaxAmplitude()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1034
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, " getMaxAmplitude unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSurface()Landroid/view/Surface;
    .registers 2

    .line 373
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public pause()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 860
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->pause()V

    return-void
.end method

.method public prepare()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 768
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->prepare()V

    const/4 v0, 0x1

    .line 769
    iput-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mIsAvailable:Z

    return-void
.end method

.method public release()V
    .registers 2

    .line 1021
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->release()V

    return-void
.end method

.method public requestProgressInfo(I)V
    .registers 3

    .line 1046
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->requestProgressInfo(I)V

    return-void
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 883
    iput-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mIsAvailable:Z

    .line 884
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->reset()V

    return-void
.end method

.method public resume()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 872
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->resume()V

    return-void
.end method

.method public setAudioChannels(I)V
    .registers 3

    .line 684
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setAudioChannels(I)V

    return-void
.end method

.method public setAudioEncoder(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 641
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setAudioEncoder(I)V

    return-void
.end method

.method public setAudioEncodingBitRate(I)V
    .registers 3

    .line 697
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setAudioEncodingBitRate(I)V

    return-void
.end method

.method public setAudioSamplingRate(I)V
    .registers 3

    .line 672
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setAudioSamplingRate(I)V

    return-void
.end method

.method public setAudioSource(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 425
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setAudioSource(I)V

    return-void
.end method

.method public setAuxiliaryOutputFile(Ljava/io/FileDescriptor;)V
    .registers 3

    .line 720
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "setAuxiliaryOutputFile(FileDescriptor) unsupported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAuxiliaryOutputFile(Ljava/lang/String;)V
    .registers 3

    .line 731
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "setAuxiliaryOutputFile unsupported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCamera(Landroid/hardware/Camera;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 359
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Camera source not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCaptureRate(D)V
    .registers 4

    .line 482
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setCaptureRate(D)V

    return-void
.end method

.method public setInputSurface(Landroid/view/Surface;)V
    .registers 3
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 392
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setInputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public setLocation(FF)V
    .registers 4

    .line 520
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setLocation(FF)V

    return-void
.end method

.method public setMaxDuration(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 609
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setMaxDuration(I)V

    return-void
.end method

.method public setMaxFileSize(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 626
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setMaxFileSize(J)V

    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V
    .registers 2

    .line 915
    iput-object p1, p0, Lcom/sonymobile/android/media/MediaRecorder;->mOnErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    .registers 2

    .line 999
    iput-object p1, p0, Lcom/sonymobile/android/media/MediaRecorder;->mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    return-void
.end method

.method public setOrientationHint(I)V
    .registers 3

    .line 500
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setOrientationHint(I)V

    return-void
.end method

.method public setOutputFile(Ljava/io/FileDescriptor;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 743
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 755
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setOutputFile(Ljava/lang/String;)V

    return-void
.end method

.method public setOutputFormat(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 539
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setOutputFormat(I)V

    return-void
.end method

.method public setPreviewDisplay(Landroid/view/Surface;)V
    .registers 3

    .line 410
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "setPreviewDisplay not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setProfile(Landroid/media/CamcorderProfile;)V
    .registers 3

    .line 462
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    return-void
.end method

.method public setVideoBitRateMode(I)V
    .registers 3

    .line 585
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setVideoBitRateMode(I)V

    return-void
.end method

.method public setVideoColorAspects(III)V
    .registers 5

    .line 592
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setVideoColorAspects(III)V

    return-void
.end method

.method public setVideoEncoder(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 656
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setVideoEncoder(I)V

    return-void
.end method

.method public setVideoEncodingBitRate(I)V
    .registers 3

    .line 710
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setVideoEncodingBitRate(I)V

    return-void
.end method

.method public setVideoEncodingProfileLevel(II)V
    .registers 4

    .line 578
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setVideoEncodingProfileLevel(II)V

    return-void
.end method

.method public setVideoFrameRate(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 571
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setVideoFrameRate(I)V

    return-void
.end method

.method public setVideoSize(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 554
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setVideoSize(II)V

    return-void
.end method

.method public setVideoSource(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 449
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setVideoSource(I)V

    return-void
.end method

.method public start()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 786
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->start()V

    return-void
.end method

.method public stop()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 803
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->stop()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    .line 805
    iput-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mIsAvailable:Z

    return-void

    :catchall_9
    move-exception v1

    iput-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mIsAvailable:Z

    .line 806
    throw v1
.end method

.method public stopAsync()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 830
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->stopAsync()V

    return-void
.end method

.method public stopAudioRecording()V
    .registers 2

    .line 346
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->stopAudioRecording()V

    return-void
.end method

.method public stopOnError()V
    .registers 3

    const/4 v0, 0x0

    .line 815
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->stopOnCameraError()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    .line 817
    iput-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mIsAvailable:Z

    return-void

    :catchall_9
    move-exception v1

    iput-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mIsAvailable:Z

    .line 818
    throw v1
.end method

.method public useIntelligentActive(Z)V
    .registers 3

    .line 1050
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->useIntelligentActive(Z)V

    return-void
.end method

.method public waitUntilStopCompleted()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 841
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->waitUntilStopCompleted()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    .line 843
    iput-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mIsAvailable:Z

    return-void

    :catchall_9
    move-exception v1

    iput-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mIsAvailable:Z

    .line 844
    throw v1
.end method
