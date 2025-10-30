.class Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$OpenCameraTask;
.super Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$CameraActionTask;
.source "VirtualCameraDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenCameraTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)V
    .registers 3

    .line 317
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$CameraActionTask;-><init>(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$1;)V
    .registers 3

    .line 317
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$OpenCameraTask;-><init>(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)V

    return-void
.end method


# virtual methods
.method doCameraAccess()V
    .registers 4

    .line 327
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    # setter for: Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->access$1102(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 328
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    sget-object v1, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;->Opening:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    # invokes: Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->changeStatus(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->access$900(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;)V

    .line 329
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->access$2300(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 331
    :try_start_20
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_2d

    const-string v1, "OpenVirtualCamera:5"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2d
    const-string v1, "5"

    .line 332
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mDeviceStateCallback:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$DeviceStateCallback;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->access$2400(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$DeviceStateCallback;

    move-result-object v2

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mCameraHandler:Landroid/os/Handler;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->access$1900(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_3e} :catch_3f

    goto :goto_43

    :catch_3f
    move-exception p0

    .line 334
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_43
    return-void
.end method

.method verifyStatus(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;)Z
    .registers 4

    .line 321
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    sget-object v0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;->Closed:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    # invokes: Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->isStatusOf([Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;)Z
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->access$1600(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;[Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;)Z

    move-result p0

    return p0
.end method
