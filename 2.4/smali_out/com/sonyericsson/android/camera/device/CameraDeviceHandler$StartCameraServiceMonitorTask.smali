.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StartCameraServiceMonitorTask;
.super Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;
.source "CameraDeviceHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartCameraServiceMonitorTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V
    .registers 2

    .line 753
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StartCameraServiceMonitorTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;)V
    .registers 3

    .line 753
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StartCameraServiceMonitorTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    return-void
.end method


# virtual methods
.method protected doCameraDeviceAccess()V
    .registers 4

    .line 763
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraMonitor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 764
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 765
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StartCameraServiceMonitorTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    # setter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraMonitorThreadHandler:Landroid/os/Handler;
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$902(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Landroid/os/Handler;)Landroid/os/Handler;

    .line 767
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StartCameraServiceMonitorTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraMonitorThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$900(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/os/Handler;

    move-result-object v1

    # invokes: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->startCameraServiceAvailability(Landroid/os/Handler;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$1000(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Landroid/os/Handler;)V

    return-void
.end method

.method public postCameraDeviceAccess()V
    .registers 2

    .line 772
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$StartCameraServiceMonitorTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method protected verifyCameraDeviceStatus()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
