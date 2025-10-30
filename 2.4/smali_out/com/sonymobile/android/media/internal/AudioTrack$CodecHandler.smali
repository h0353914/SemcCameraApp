.class Lcom/sonymobile/android/media/internal/AudioTrack$CodecHandler;
.super Landroid/os/Handler;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/media/internal/AudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CodecHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/media/internal/AudioTrack;


# direct methods
.method constructor <init>(Lcom/sonymobile/android/media/internal/AudioTrack;Landroid/os/Looper;)V
    .registers 3

    .line 819
    iput-object p1, p0, Lcom/sonymobile/android/media/internal/AudioTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    .line 820
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private addTrack()V
    .registers 5

    .line 868
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget v0, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->mMuxerTrackIndex:I

    if-gez v0, :cond_29

    .line 870
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object v1, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->mMuxerWrapper:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;

    iget-object v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object v2, v2, Lcom/sonymobile/android/media/internal/AudioTrack;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->addTrack(Landroid/media/MediaFormat;)I

    move-result v1

    iput v1, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->mMuxerTrackIndex:I

    .line 872
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mCallback:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$1300(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 873
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_29
    return-void
.end method

.method private doQueueOutputBuffer(ILandroid/media/MediaCodec$BufferInfo;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 835
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # getter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mFirstCodecFrame:Z
    invoke-static {v0}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$1600(Lcom/sonymobile/android/media/internal/AudioTrack;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_25

    .line 836
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_12

    move v0, v1

    goto :goto_13

    :cond_12
    move v0, v2

    .line 838
    :goto_13
    invoke-direct {p0}, Lcom/sonymobile/android/media/internal/AudioTrack$CodecHandler;->addTrack()V

    .line 839
    iget-object v3, p0, Lcom/sonymobile/android/media/internal/AudioTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    # setter for: Lcom/sonymobile/android/media/internal/AudioTrack;->mFirstCodecFrame:Z
    invoke-static {v3, v2}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$1602(Lcom/sonymobile/android/media/internal/AudioTrack;Z)Z

    if-eqz v0, :cond_25

    .line 844
    iget-object p2, p0, Lcom/sonymobile/android/media/internal/AudioTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object p2, p2, Lcom/sonymobile/android/media/internal/AudioTrack;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p2, p1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void

    .line 849
    :cond_25
    new-instance v0, Lcom/sonymobile/android/media/internal/Track$EncodedBuffer;

    invoke-direct {v0, p1, p2}, Lcom/sonymobile/android/media/internal/Track$EncodedBuffer;-><init>(ILandroid/media/MediaCodec$BufferInfo;)V

    .line 851
    iget-object p2, p0, Lcom/sonymobile/android/media/internal/AudioTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object p2, p2, Lcom/sonymobile/android/media/internal/AudioTrack;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p2, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    if-eqz p2, :cond_48

    .line 854
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, v0, Lcom/sonymobile/android/media/internal/Track$EncodedBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 855
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 856
    iget-object v3, v0, Lcom/sonymobile/android/media/internal/Track$EncodedBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 857
    iput-boolean v1, v0, Lcom/sonymobile/android/media/internal/Track$EncodedBuffer;->containsCopiedBuffer:Z

    .line 863
    :cond_48
    iget-object p2, p0, Lcom/sonymobile/android/media/internal/AudioTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object p2, p2, Lcom/sonymobile/android/media/internal/AudioTrack;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p2, p1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 864
    iget-object p1, p0, Lcom/sonymobile/android/media/internal/AudioTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object p1, p1, Lcom/sonymobile/android/media/internal/AudioTrack;->mBufferList:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 879
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x69

    if-eq v0, v1, :cond_7

    goto :goto_10

    .line 882
    :cond_7
    :try_start_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p0, v0, p1}, Lcom/sonymobile/android/media/internal/AudioTrack$CodecHandler;->doQueueOutputBuffer(ILandroid/media/MediaCodec$BufferInfo;)V
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :goto_10
    return-void
.end method
