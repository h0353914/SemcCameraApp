.class Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$1;
.super Ljava/lang/Object;
.source "HandSignsDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)V
    .registers 2

    .line 193
    iput-object p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$1;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 196
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$1;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    # getter for: Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mDetectContext:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->access$100(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    move-result-object v0

    monitor-enter v0

    .line 197
    :try_start_7
    iget-object v1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$1;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    # getter for: Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mIsStarted:Z
    invoke-static {v1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->access$200(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 198
    monitor-exit v0

    return-void

    .line 200
    :cond_11
    iget-object v1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$1;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    # getter for: Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->access$500(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/device/ImageRetriever;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$1;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    .line 201
    # getter for: Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mImageCallback:Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->access$300(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;

    move-result-object v2

    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$1;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    # getter for: Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->access$400(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object p0

    .line 200
    invoke-interface {v1, v2, p0}, Lcom/sonyericsson/android/camera/device/ImageRetriever;->registerPreviewStreamingCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;Landroid/os/Handler;)V

    .line 203
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_37

    const-string p0, "Get frame requested"

    .line 204
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 206
    :cond_37
    monitor-exit v0

    return-void

    :catchall_39
    move-exception p0

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_7 .. :try_end_3b} :catchall_39

    throw p0
.end method
