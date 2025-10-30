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

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 327
    new-instance v0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 329
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;-><init>(Lcom/sonymobile/android/media/MediaRecorder;Ljava/lang/ref/WeakReference;Landroid/os/Looper;)V

    goto :goto_2c

    .line 330
    :cond_18
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 331
    new-instance v0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 333
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;-><init>(Lcom/sonymobile/android/media/MediaRecorder;Ljava/lang/ref/WeakReference;Landroid/os/Looper;)V

    .line 339
    :goto_2c
    new-instance v1, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-direct {v1, v0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    return-void

    .line 335
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MediaRecorder must be created on thread with Looper running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/sonymobile/android/media/MediaRecorder;)Landroid/media/MediaRecorder$OnErrorListener;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mOnErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonymobile/android/media/MediaRecorder;)Z
    .registers 1

    .line 81
    iget-boolean p0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mIsAvailable:Z

    return p0
.end method

.method static synthetic access$200(Lcom/sonymobile/android/media/MediaRecorder;)Landroid/media/MediaRecorder$OnInfoListener;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    return-object p0
.end method

.method public static final getAudioSourceMax()I
    .registers 1

    .line 435
    invoke-static {}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->getAudioSourceMax()I

    move-result v0

    return v0
.end method


# virtual methods
.method public adjustAudioStartVolume(I)V
    .registers 3

    .line 1061
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->adjustAudioStartVolume(I)V

    return-void
.end method

.method public adjustAudioTimestamp(J)V
    .registers 4

    .line 1057
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->adjustAudioTimestamp(J)V

    return-void
.end method

.method protected finalize()V
    .registers 2

    .line 1131
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    if-eqz v0, :cond_c

    .line 1133
    :try_start_4
    invoke-virtual {v0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->reset()V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_7} :catch_7

    .line 1138
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

    .line 1037
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, " getMaxAmplitude unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSurface()Landroid/view/Surface;
    .registers 2

    .line 374
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

    .line 863
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

    .line 771
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->prepare()V

    const/4 v0, 0x1

    .line 772
    iput-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mIsAvailable:Z

    return-void
.end method

.method public release()V
    .registers 2

    .line 1024
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->release()V

    return-void
.end method

.method public requestProgressInfo(I)V
    .registers 3

    .line 1049
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->requestProgressInfo(I)V

    return-void
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 886
    iput-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mIsAvailable:Z

    .line 887
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

    .line 875
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->resume()V

    return-void
.end method

.method public setAudioChannels(I)V
    .registers 3

    .line 685
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

    .line 642
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setAudioEncoder(I)V

    return-void
.end method

.method public setAudioEncodingBitRate(I)V
    .registers 3

    .line 698
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setAudioEncodingBitRate(I)V

    return-void
.end method

.method public setAudioSamplingRate(I)V
    .registers 3

    .line 673
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

    .line 426
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setAudioSource(I)V

    return-void
.end method

.method public setAuxiliaryOutputFile(Ljava/io/FileDescriptor;)V
    .registers 3

    .line 721
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "setAuxiliaryOutputFile(FileDescriptor) unsupported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAuxiliaryOutputFile(Ljava/lang/String;)V
    .registers 3

    .line 732
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

    .line 360
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Camera source not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCaptureRate(D)V
    .registers 4

    .line 483
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

    .line 393
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setInputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public setLocation(FF)V
    .registers 4

    .line 521
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

    .line 610
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

    .line 627
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setMaxFileSize(J)V

    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V
    .registers 2

    .line 918
    iput-object p1, p0, Lcom/sonymobile/android/media/MediaRecorder;->mOnErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    .registers 2

    .line 1002
    iput-object p1, p0, Lcom/sonymobile/android/media/MediaRecorder;->mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    return-void
.end method

.method public setOrientationHint(I)V
    .registers 3

    .line 501
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setOrientationHint(I)V

    return-void
.end method

.method public setOutputFile(Ljava/io/FileDescriptor;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 746
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V

    return-void
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 758
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

    .line 540
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setOutputFormat(I)V

    return-void
.end method

.method public setPreviewDisplay(Landroid/view/Surface;)V
    .registers 3

    .line 411
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "setPreviewDisplay not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setProfile(Landroid/media/CamcorderProfile;)V
    .registers 3

    .line 463
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    return-void
.end method

.method public setVideoBitRateMode(I)V
    .registers 3

    .line 586
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setVideoBitRateMode(I)V

    return-void
.end method

.method public setVideoColorAspects(III)V
    .registers 5

    .line 593
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

    .line 657
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setVideoEncoder(I)V

    return-void
.end method

.method public setVideoEncodingBitRate(I)V
    .registers 3

    .line 711
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->setVideoEncodingBitRate(I)V

    return-void
.end method

.method public setVideoEncodingProfileLevel(II)V
    .registers 4

    .line 579
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

    .line 572
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

    .line 555
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

    .line 450
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

    .line 789
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

    .line 806
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->stop()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    .line 808
    iput-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mIsAvailable:Z

    return-void

    :catchall_9
    move-exception v1

    iput-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mIsAvailable:Z

    .line 809
    throw v1
.end method

.method public stopAsync()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 833
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->stopAsync()V

    return-void
.end method

.method public stopAudioRecording()V
    .registers 2

    .line 347
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->stopAudioRecording()V

    return-void
.end method

.method public stopOnError()V
    .registers 3

    const/4 v0, 0x0

    .line 818
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->stopOnCameraError()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    .line 820
    iput-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mIsAvailable:Z

    return-void

    :catchall_9
    move-exception v1

    iput-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mIsAvailable:Z

    .line 821
    throw v1
.end method

.method public useIntelligentActive(Z)V
    .registers 3

    .line 1053
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

    .line 844
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/android/media/MediaRecorder;->mSomcMediaRecorder:Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    invoke-virtual {v1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->waitUntilStopCompleted()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    .line 846
    iput-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mIsAvailable:Z

    return-void

    :catchall_9
    move-exception v1

    iput-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorder;->mIsAvailable:Z

    .line 847
    throw v1
.end method
