.class Lcom/sonymobile/android/media/internal/AudioTrack$AudioEncoderCallback;
.super Landroid/media/MediaCodec$Callback;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/media/internal/AudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioEncoderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/media/internal/AudioTrack;


# direct methods
.method private constructor <init>(Lcom/sonymobile/android/media/internal/AudioTrack;)V
    .registers 2

    .line 776
    iput-object p1, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioEncoderCallback;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/android/media/internal/AudioTrack;Lcom/sonymobile/android/media/internal/AudioTrack$1;)V
    .registers 3

    .line 776
    invoke-direct {p0, p1}, Lcom/sonymobile/android/media/internal/AudioTrack$AudioEncoderCallback;-><init>(Lcom/sonymobile/android/media/internal/AudioTrack;)V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .registers 5
    .param p1    # Landroid/media/MediaCodec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/media/MediaCodec$CodecException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "AudioTrack"

    const-string v0, "Error from encoder"

    .line 795
    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 796
    iget-object p1, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioEncoderCallback;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mCallback:Landroid/os/Handler;
    invoke-static {p1}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$900(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .registers 5
    .param p1    # Landroid/media/MediaCodec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 781
    iget-object p1, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioEncoderCallback;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mAudioRecordHandler:Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;
    invoke-static {p1}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$1000(Lcom/sonymobile/android/media/internal/AudioTrack;)Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;

    move-result-object p1

    const/16 v0, 0x66

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 782
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .registers 6
    .param p1    # Landroid/media/MediaCodec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/media/MediaCodec$BufferInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 789
    iget-object p1, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioEncoderCallback;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mCodecHandler:Lcom/sonymobile/android/media/internal/AudioTrack$CodecHandler;
    invoke-static {p1}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$1400(Lcom/sonymobile/android/media/internal/AudioTrack;)Lcom/sonymobile/android/media/internal/AudioTrack$CodecHandler;

    move-result-object p1

    const/16 v0, 0x69

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1, p3}, Lcom/sonymobile/android/media/internal/AudioTrack$CodecHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 790
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .registers 3
    .param p1    # Landroid/media/MediaCodec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/media/MediaFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
