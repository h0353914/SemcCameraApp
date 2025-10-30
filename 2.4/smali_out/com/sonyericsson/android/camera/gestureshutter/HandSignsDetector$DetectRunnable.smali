.class Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;
.super Ljava/lang/Object;
.source "HandSignsDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DetectRunnable"
.end annotation


# instance fields
.field private height:I

.field private mYuvBuffer:Ljava/nio/ByteBuffer;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;IILjava/nio/ByteBuffer;)V
    .registers 5

    .line 388
    iput-object p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    iput p2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->width:I

    .line 390
    iput p3, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->height:I

    .line 391
    iput-object p4, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->mYuvBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .line 397
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    # getter for: Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mIsStarted:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->access$200(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 400
    :cond_9
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_16

    const-string v0, "Starting detection"

    .line 401
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 404
    :cond_16
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    # getter for: Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mDetectContext:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->access$100(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 405
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    # getter for: Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mDetectContext:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->access$100(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->width:I

    iget v2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->height:I

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->initialize(II)V

    .line 408
    :cond_2f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    # getter for: Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mBytesLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->access$700(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 409
    :try_start_36
    iget-object v1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    # getter for: Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mYuvBytes:[B
    invoke-static {v1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->access$800(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)[B

    move-result-object v1

    array-length v1, v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->mYuvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_f0

    .line 410
    iget-object v1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->mYuvBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    # getter for: Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mYuvBytes:[B
    invoke-static {v2}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->access$800(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 413
    iget-object v1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    # getter for: Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mNativeWrapper:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->access$900(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    # getter for: Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mYuvBytes:[B
    invoke-static {v1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->access$800(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)[B

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->width:I

    iget v5, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->height:I

    iget-object v6, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    .line 414
    # getter for: Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mDetectContext:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->access$100(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->getFrame()[B

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    # getter for: Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mDetectContext:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;
    invoke-static {v7}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->access$100(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->getShrinkRatio()Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;

    move-result-object v7

    .line 413
    invoke-static {v1, v2, v5, v6, v7}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;->shrinkYvu420Sp([BII[BLcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;)V

    .line 417
    new-instance v1, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectResult;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectResult;-><init>()V

    .line 418
    iget-object v2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    # getter for: Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mNativeWrapper:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->access$900(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;

    move-result-object v8

    iget-object v2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    # getter for: Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mDetectContext:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->access$100(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->getDetectWidth()I

    move-result v9

    iget-object v2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    .line 419
    # getter for: Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mDetectContext:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->access$100(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->getDetectHeight()I

    move-result v10

    iget-object v2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    # getter for: Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mDetectContext:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->access$100(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;->getFrame()[B

    move-result-object v11

    iget-object v2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    .line 420
    # getter for: Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mRoll:I
    invoke-static {v2}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->access$1000(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)I

    move-result v12

    move-object v13, v1

    .line 418
    invoke-virtual/range {v8 .. v13}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;->detect(II[BILcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectResult;)Z

    .line 422
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_c7

    .line 423
    new-array v2, v4, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Detect result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 427
    :cond_c7
    iget-object v2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    # getter for: Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mListener:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultListener;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->access$1100(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultListener;

    move-result-object v2

    if-eqz v2, :cond_121

    .line 428
    iget-object v2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    # getter for: Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mResultScheduler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->access$1200(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_e6

    .line 429
    iget-object v2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    # getter for: Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mResultScheduler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->access$1200(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable$1;

    invoke-direct {v3, p0, v1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable$1;-><init>(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectResult;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_121

    .line 436
    :cond_e6
    iget-object v2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    # getter for: Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mListener:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultListener;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->access$1100(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultListener;->onDetectResult(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface;)V

    goto :goto_121

    .line 440
    :cond_f0
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_121

    .line 441
    new-array v1, v4, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not use buffer. byte array size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    # getter for: Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mYuvBytes:[B
    invoke-static {v4}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->access$800(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", byte buffer size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->mYuvBuffer:Ljava/nio/ByteBuffer;

    .line 442
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 441
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 445
    :cond_121
    :goto_121
    monitor-exit v0
    :try_end_122
    .catchall {:try_start_36 .. :try_end_122} :catchall_128

    .line 448
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    # invokes: Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->postGetFrame()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->access$1300(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)V

    return-void

    :catchall_128
    move-exception v1

    .line 445
    :try_start_129
    monitor-exit v0
    :try_end_12a
    .catchall {:try_start_129 .. :try_end_12a} :catchall_128

    throw v1
.end method
