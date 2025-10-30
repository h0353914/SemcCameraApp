.class Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;
.super Ljava/lang/Object;
.source "QrDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/qrdetection/QrDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DetectRunnable"
.end annotation


# instance fields
.field private height:I

.field private mYuvBuffer:Ljava/nio/ByteBuffer;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;IILjava/nio/ByteBuffer;)V
    .registers 5

    .line 184
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput p2, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;->width:I

    .line 186
    iput p3, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;->height:I

    .line 187
    iput-object p4, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;->mYuvBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 192
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    # getter for: Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mIsStarted:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->access$100(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 195
    :cond_9
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    # getter for: Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mBytesLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->access$600(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 196
    :try_start_10
    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    # getter for: Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mYuvBytes:[B
    invoke-static {v1}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->access$700(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)[B

    move-result-object v1

    array-length v1, v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;->mYuvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-ne v1, v2, :cond_62

    .line 197
    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;->mYuvBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    # getter for: Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mYuvBytes:[B
    invoke-static {v2}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->access$700(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 199
    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    # getter for: Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mYuvBytes:[B
    invoke-static {v3}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->access$700(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)[B

    move-result-object v3

    # invokes: Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->Detect([B)Lcom/google/zxing/Result;
    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->access$900(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;[B)Lcom/google/zxing/Result;

    move-result-object v2

    # setter for: Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mScanResult:Lcom/google/zxing/Result;
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->access$802(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;Lcom/google/zxing/Result;)Lcom/google/zxing/Result;

    .line 200
    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    # getter for: Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mScanResult:Lcom/google/zxing/Result;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->access$800(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)Lcom/google/zxing/Result;

    move-result-object v1

    if-eqz v1, :cond_95

    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    # getter for: Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mListener:Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController$QrDetectResultListener;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->access$1000(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController$QrDetectResultListener;

    move-result-object v1

    if-eqz v1, :cond_95

    .line 201
    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    # getter for: Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mResultScheduler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->access$1100(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_95

    .line 202
    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    # getter for: Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mResultScheduler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->access$1100(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable$1;-><init>(Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_95

    .line 211
    :cond_62
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_95

    const/4 v1, 0x1

    .line 212
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not use buffer. byte array size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    # getter for: Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mYuvBytes:[B
    invoke-static {v4}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->access$700(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", byte buffer size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;->mYuvBuffer:Ljava/nio/ByteBuffer;

    .line 213
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 212
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 216
    :cond_95
    :goto_95
    monitor-exit v0
    :try_end_96
    .catchall {:try_start_10 .. :try_end_96} :catchall_9c

    .line 218
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    # invokes: Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->postGetFrame()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->access$1200(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)V

    return-void

    :catchall_9c
    move-exception v1

    .line 216
    :try_start_9d
    monitor-exit v0
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_9c

    throw v1
.end method
