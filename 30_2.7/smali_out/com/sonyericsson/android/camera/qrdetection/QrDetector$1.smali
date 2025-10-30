.class Lcom/sonyericsson/android/camera/qrdetection/QrDetector$1;
.super Ljava/lang/Object;
.source "QrDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/qrdetection/QrDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$1;->this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$1;->this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    # getter for: Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mIsStarted:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->access$100(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 110
    :cond_9
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$1;->this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    # getter for: Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->access$400(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)Lcom/sonyericsson/android/camera/device/ImageRetriever;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$1;->this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    .line 111
    # getter for: Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mImageCallback:Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->access$200(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$1;->this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    # getter for: Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->access$300(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 110
    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/ImageRetriever;->registerQrCodePreviewStreamingCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;Landroid/os/Handler;)V

    return-void
.end method
