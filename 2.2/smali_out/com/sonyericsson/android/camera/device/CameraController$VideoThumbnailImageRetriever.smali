.class Lcom/sonyericsson/android/camera/device/CameraController$VideoThumbnailImageRetriever;
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
    name = "VideoThumbnailImageRetriever"
.end annotation


# instance fields
.field private final mImageReader:Landroid/media/ImageReader;

.field private final mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/media/ImageReader;)V
    .registers 4

    .line 2146
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$VideoThumbnailImageRetriever;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2147
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$VideoThumbnailImageRetriever;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 2148
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$VideoThumbnailImageRetriever;->mImageReader:Landroid/media/ImageReader;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/media/ImageReader;Lcom/sonyericsson/android/camera/device/CameraController$1;)V
    .registers 5

    .line 2141
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/CameraController$VideoThumbnailImageRetriever;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/media/ImageReader;)V

    return-void
.end method


# virtual methods
.method public registerPreviewStreamingCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;Landroid/os/Handler;)V
    .registers 3

    return-void
.end method

.method public requestOneShotPreviewCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;Landroid/os/Handler;)V
    .registers 9

    .line 2154
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$VideoThumbnailImageRetriever;->mImageReader:Landroid/media/ImageReader;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 2159
    :try_start_6
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$VideoThumbnailImageRetriever;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1800(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 2161
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$VideoThumbnailImageRetriever;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 2162
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1800(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$VideoThumbnailImageRetriever;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 2163
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1700(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object v2

    .line 2161
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->validate(Ljava/lang/String;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;)V
    :try_end_21
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_21} :catch_22

    goto :goto_45

    :catch_22
    move-exception v1

    .line 2166
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v2, :cond_28

    .line 2167
    throw v1

    .line 2169
    :cond_28
    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to valid camera parameter. : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 2173
    :cond_45
    :goto_45
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$VideoThumbnailImageRetriever;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewFrameReceiver:Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;

    invoke-direct {v2, p1, v0, p2}, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;-><init>(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;ZLandroid/os/Handler;)V

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->registerCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;)V
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->access$6000(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;)V

    .line 2175
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$VideoThumbnailImageRetriever;->mImageReader:Landroid/media/ImageReader;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$VideoThumbnailImageRetriever;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 2176
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewFrameReceiver:Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;
    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;

    move-result-object p2

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$VideoThumbnailImageRetriever;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 2177
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getDeviceThreadHandler()Landroid/os/Handler;

    move-result-object v0

    .line 2175
    invoke-virtual {p1, p2, v0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 2178
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$VideoThumbnailImageRetriever;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object p1

    new-instance p2, Lcom/sonyericsson/android/camera/device/CameraController$OneShotCaptureTask;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$VideoThumbnailImageRetriever;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$VideoThumbnailImageRetriever;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$VideoThumbnailImageRetriever;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 2179
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1700(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$VideoThumbnailImageRetriever;->mImageReader:Landroid/media/ImageReader;

    const/4 v5, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/device/CameraController$OneShotCaptureTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Landroid/media/ImageReader;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    .line 2178
    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    return-void
.end method

.method public unregisterPreviewStreamingCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;)V
    .registers 2

    return-void
.end method
