.class Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;
.super Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;
.source "CameraController.java"


# annotations
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

    .line 4061
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 4062
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 4063
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;->mSurface:Landroid/view/Surface;

    .line 4064
    sget-object p1, Lcom/sonyericsson/android/camera/util/PerfLog;->SET_REPEATING_REQUEST_TASK:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;->setPerformancefLog(Lcom/sonyericsson/android/camera/util/PerfLog;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/view/Surface;Lcom/sonyericsson/android/camera/device/CameraController$1;)V
    .registers 5

    .line 4058
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/view/Surface;)V

    return-void
.end method


# virtual methods
.method public doCameraDeviceAccess()V
    .registers 3

    .line 4077
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3600(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;->mSurface:Landroid/view/Surface;

    if-ne v0, v1, :cond_14

    const-string p0, "Set preview surface kicked"

    .line 4078
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void

    :cond_14
    if-eqz v1, :cond_23

    .line 4081
    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 4082
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;->mSurface:Landroid/view/Surface;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3602(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/view/Surface;)Landroid/view/Surface;

    :cond_23
    return-void
.end method

.method protected verifyCameraDeviceStatus()Z
    .registers 1

    .line 4069
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetSurfaceTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isCloseCameraTaskRequested()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    const/4 p0, 0x1

    return p0
.end method
