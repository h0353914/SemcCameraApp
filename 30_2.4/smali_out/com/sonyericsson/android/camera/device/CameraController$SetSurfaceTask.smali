.class Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;
.super Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;
.source "CameraController.java"


# annotations
.annotation build Landroidx/annotation/WorkerThread;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetSurfaceTask"
.end annotation


# instance fields
.field private final mSurface:Landroid/view/Surface;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/view/Surface;)V
    .registers 4

    .line 1593
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1594
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 1595
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;->mSurface:Landroid/view/Surface;

    .line 1596
    sget-object p1, Lcom/sonyericsson/android/camera/util/PerfLog;->SET_REPEATING_REQUEST_TASK:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;->setPerformancefLog(Lcom/sonyericsson/android/camera/util/PerfLog;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/view/Surface;Lcom/sonyericsson/android/camera/device/CameraController$1;)V
    .registers 5

    .line 1590
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/view/Surface;)V

    return-void
.end method


# virtual methods
.method public doCameraDeviceAccess()V
    .registers 6

    .line 1606
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_6f

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 1607
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;->mSurface:Landroid/view/Surface;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2902(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/view/Surface;)Landroid/view/Surface;

    .line 1612
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_READY:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    if-ne v0, v1, :cond_6f

    .line 1613
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mRepeatingRequestStateLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5900(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1614
    :try_start_22
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mRepeatingRequestState:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$6000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;->NONE:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    if-ne v1, v2, :cond_6a

    .line 1615
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/device/CameraController;->setRepeatingRequestForPreview(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    .line 1619
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_63

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked current:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mRepeatingRequestState:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$6000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " next:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;->PREVIEW:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1621
    :cond_63
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;->PREVIEW:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mRepeatingRequestState:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$6002(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;)Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    .line 1623
    :cond_6a
    monitor-exit v0

    goto :goto_6f

    :catchall_6c
    move-exception v1

    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_22 .. :try_end_6e} :catchall_6c

    throw v1

    :cond_6f
    :goto_6f
    return-void
.end method

.method protected verifyCameraDeviceStatus()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
