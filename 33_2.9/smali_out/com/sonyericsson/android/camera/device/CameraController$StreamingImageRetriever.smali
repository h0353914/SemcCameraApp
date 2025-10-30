.class Lcom/sonyericsson/android/camera/device/CameraController$StreamingImageRetriever;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/device/ImageRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StreamingImageRetriever"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;)V
    .registers 2

    .line 5718
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$StreamingImageRetriever;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$1;)V
    .registers 3

    .line 5718
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$StreamingImageRetriever;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;)V

    return-void
.end method


# virtual methods
.method public registerBlurPreviewStreamingCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;Landroid/os/Handler;)V
    .registers 6

    .line 5736
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$StreamingImageRetriever;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewFrameReceiver:Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p2}, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;-><init>(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;ZLandroid/os/Handler;)V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$StreamingImageRetriever;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 5737
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object p0

    .line 5736
    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->registerBlurCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V
    invoke-static {v0, v1, p0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->access$16500(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V

    return-void
.end method

.method public registerPreviewStreamingCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;Landroid/os/Handler;)V
    .registers 6

    .line 5729
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$StreamingImageRetriever;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewFrameReceiver:Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p2}, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;-><init>(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;ZLandroid/os/Handler;)V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$StreamingImageRetriever;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 5730
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object p0

    .line 5729
    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->registerCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V
    invoke-static {v0, v1, p0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->access$16300(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V

    return-void
.end method

.method public registerQrCodePreviewStreamingCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;Landroid/os/Handler;)V
    .registers 6

    .line 5744
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$StreamingImageRetriever;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewFrameReceiver:Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p2}, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;-><init>(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;ZLandroid/os/Handler;)V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$StreamingImageRetriever;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 5746
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object p0

    .line 5744
    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->registerQrCodeCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V
    invoke-static {v0, v1, p0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->access$16600(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V

    return-void
.end method

.method public requestOneShotPreviewCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;Landroid/os/Handler;)V
    .registers 3

    return-void
.end method

.method public unregisterBlurPreviewStreamingCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;)V
    .registers 3

    .line 5758
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$StreamingImageRetriever;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewFrameReceiver:Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->hasBlurCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 5759
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$StreamingImageRetriever;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewFrameReceiver:Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;

    move-result-object p0

    const/4 p1, 0x0

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->registerBlurCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V
    invoke-static {p0, p1, p1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->access$16500(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V

    :cond_16
    return-void
.end method

.method public unregisterPreviewStreamingCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;)V
    .registers 3

    .line 5751
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$StreamingImageRetriever;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewFrameReceiver:Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;

    move-result-object v0

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->hasCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;)Z
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->access$16700(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 5752
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$StreamingImageRetriever;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewFrameReceiver:Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;

    move-result-object p0

    const/4 p1, 0x0

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->registerCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V
    invoke-static {p0, p1, p1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->access$16300(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V

    :cond_16
    return-void
.end method

.method public unregisterQrCodePreviewStreamingCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;)V
    .registers 3

    .line 5765
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$StreamingImageRetriever;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewFrameReceiver:Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->hasQrCodeCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 5766
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$StreamingImageRetriever;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewFrameReceiver:Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;

    move-result-object p0

    const/4 p1, 0x0

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->registerQrCodeCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V
    invoke-static {p0, p1, p1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->access$16600(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V

    :cond_16
    return-void
.end method
