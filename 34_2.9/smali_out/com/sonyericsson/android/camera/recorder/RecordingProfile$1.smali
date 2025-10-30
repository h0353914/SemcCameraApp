.class Lcom/sonyericsson/android/camera/recorder/RecordingProfile$1;
.super Landroid/media/MediaCodec$Callback;
.source "RecordingProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->setupEncoder(Landroid/media/MediaFormat;Landroid/view/Surface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 741
    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .registers 3

    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .registers 3

    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .registers 4

    .line 748
    invoke-static {}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->-$$Nest$sfgetmEncoderLock()Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0

    .line 749
    :try_start_5
    invoke-static {}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->-$$Nest$sfgetsEncoder()Landroid/media/MediaCodec;

    move-result-object p3

    if-eqz p3, :cond_f

    const/4 p3, 0x0

    .line 750
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 752
    :cond_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .registers 3

    return-void
.end method
