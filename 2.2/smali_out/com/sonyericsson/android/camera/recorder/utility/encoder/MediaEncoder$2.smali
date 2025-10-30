.class Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$2;
.super Ljava/lang/Object;
.source "MediaEncoder.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask$EncoderStateListener;


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

    .line 236
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$2;->this$0:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEncoderFinished()V
    .registers 1

    .line 251
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$2;->this$0:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

    # getter for: Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mEncoderFinishSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->access$400(Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onEncoderFormatChanged(Landroid/media/MediaFormat;)V
    .registers 2

    .line 240
    iget-object p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$2;->this$0:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

    # getter for: Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mEncoderFormatChangedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->access$100(Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 243
    :try_start_9
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$2;->this$0:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

    # getter for: Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->mMuxerStartedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->access$300(Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_12} :catch_13

    goto :goto_1c

    :catch_13
    const-string p0, "mMuxerStartedSignal is interrupted."

    .line 245
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :goto_1c
    return-void
.end method
