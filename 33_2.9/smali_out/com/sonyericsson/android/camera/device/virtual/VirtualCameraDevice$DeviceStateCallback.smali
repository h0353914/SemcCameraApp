.class Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$DeviceStateCallback;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "VirtualCameraDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceStateCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)V
    .registers 2

    .line 181
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$DeviceStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$1;)V
    .registers 3

    .line 181
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$DeviceStateCallback;-><init>(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .registers 2

    .line 196
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$DeviceStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    sget-object p1, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;->Closed:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    # invokes: Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->changeStatus(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;)V
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->access$900(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;)V

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .registers 5

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VirtualCameraDevice error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 202
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$DeviceStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    sget-object p2, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;->Closed:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    # invokes: Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->changeStatus(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;)V
    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->access$900(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;)V

    .line 203
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$DeviceStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    # invokes: Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->clearPendingProcessingMedia()V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->access$1300(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)V

    .line 204
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$DeviceStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    # invokes: Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->clearPendingProcessingCount()V
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->access$1400(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)V

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .registers 3

    .line 184
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$DeviceStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    # setter for: Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->access$1002(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 185
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$DeviceStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    sget-object v0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;->Opened:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    # invokes: Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->changeStatus(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;)V
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->access$900(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;)V

    .line 186
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_19

    const-string p1, "OpenVirtualCamera:5 successful"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 187
    :cond_19
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$DeviceStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->access$1100(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 188
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$DeviceStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->access$1100(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 191
    :cond_2a
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$DeviceStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mCaptureSize:Landroid/util/Size;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->access$1200(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->configSurface(Landroid/util/Size;)V

    return-void
.end method
