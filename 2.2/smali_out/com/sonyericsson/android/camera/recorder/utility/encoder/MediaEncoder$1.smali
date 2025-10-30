.class Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$1;
.super Ljava/lang/Object;
.source "MediaEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;)V
    .registers 2

    .line 171
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$1;->this$0:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 175
    # getter for: Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->TRACE:Z
    invoke-static {}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->access$000()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "### START RECODING ###"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 178
    :cond_f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$1;->this$0:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$1;->this$0:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

    # getter for: Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mInputStreams:[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->access$200(Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;)[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    move-result-object v2

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    # setter for: Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mEncoderFormatChangedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->access$102(Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 179
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$1;->this$0:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    # setter for: Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mMuxerStartedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->access$302(Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 180
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$1;->this$0:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$1;->this$0:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

    # getter for: Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mInputStreams:[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->access$200(Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;)[Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    move-result-object v3

    array-length v3, v3

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    # setter for: Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mEncoderFinishSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->access$402(Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 182
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$1;->this$0:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->startEncoders()V

    .line 185
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$1;->this$0:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->startInputDataSource()V

    .line 188
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$1;->this$0:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->startEncodedDataWriteTasks()V

    .line 190
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$1;->this$0:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->sendOnStartedEvent()V

    .line 205
    :try_start_50
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$1;->this$0:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->startMediaMuxerAfterEncodedFormatIsFixed()V
    :try_end_55
    .catch Ljava/lang/InterruptedException; {:try_start_50 .. :try_end_55} :catch_89

    .line 213
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$1;->this$0:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->waitToCompleteEncoding()V

    .line 215
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$1;->this$0:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->stopEncoders()V

    .line 217
    :try_start_5f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$1;->this$0:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->stopMuxer()V
    :try_end_64
    .catch Ljava/lang/IllegalStateException; {:try_start_5f .. :try_end_64} :catch_65

    goto :goto_6f

    :catch_65
    const-string v0, "IllegalStateException occur at stopMuxer()."

    .line 223
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 228
    :goto_6f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$1;->this$0:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->release()V

    .line 229
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$1;->this$0:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->sendOnFinishedEvent(Z)V

    .line 231
    # getter for: Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->TRACE:Z
    invoke-static {}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->access$000()Z

    move-result p0

    if-eqz p0, :cond_88

    const-string p0, "### END RECORDING ###"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_88
    return-void

    :catch_89
    const-string v0, "startMediaMuxerAfterEncodedFormatIsFixed() is interrupted"

    .line 208
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 209
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$1;->this$0:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->stopEncoders()V

    return-void
.end method
