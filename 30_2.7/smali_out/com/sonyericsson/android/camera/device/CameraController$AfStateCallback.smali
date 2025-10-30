.class final Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AfStateCallback"
.end annotation


# instance fields
.field private mAeLock:Z

.field private mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

.field private mShouldTriggerAE:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;ZLcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V
    .registers 5

    .line 365
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 361
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;->mAeLock:Z

    .line 366
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;->mAeLock:Z

    .line 367
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 368
    iput-boolean p4, p0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;->mShouldTriggerAE:Z

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;)Z
    .registers 1

    .line 360
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;->mShouldTriggerAE:Z

    return p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;)Z
    .registers 1

    .line 360
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;->mAeLock:Z

    return p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;
    .registers 1

    .line 360
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    return-object p0
.end method


# virtual methods
.method public OnStateChanged()V
    .registers 3

    .line 373
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mAfStateChecker:Lcom/sonyericsson/android/camera/device/AfStateChecker;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/AfStateChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/AfStateChecker;->isStateInactive()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$100(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "### For AF mode is not off, inactive state do nothing, return"

    .line 375
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void

    .line 378
    :cond_2a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mAfStateChecker:Lcom/sonyericsson/android/camera/device/AfStateChecker;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/AfStateChecker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/AfStateChecker;->setStateListener(Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;)V

    .line 379
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mUiThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$900(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback$1;-><init>(Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
