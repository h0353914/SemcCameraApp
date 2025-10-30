.class Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback$1;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;->OnStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;)V
    .registers 2

    .line 396
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 399
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;->mShouldTriggerAE:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;->access$200(Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;->mAeLock:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;->access$300(Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_25

    .line 402
    :cond_11
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;->mAeLock:Z
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;->access$300(Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;)Z

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;->access$500(Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v2

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->startAutoExposure(ZLcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$600(Lcom/sonyericsson/android/camera/device/CameraController;ZLcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    goto :goto_38

    .line 400
    :cond_25
    :goto_25
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mAfStateChecker:Lcom/sonyericsson/android/camera/device/AfStateChecker;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/AfStateChecker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/AfStateChecker;->isFocusLocked()Z

    move-result v1

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->onAutoFocus(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$400(Lcom/sonyericsson/android/camera/device/CameraController;Z)V

    .line 405
    :goto_38
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$700(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 406
    :try_start_41
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mStateCheckerSet:Ljava/util/Set;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$800(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/device/CameraController$AfStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mAfStateChecker:Lcom/sonyericsson/android/camera/device/AfStateChecker;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/AfStateChecker;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 407
    monitor-exit v0

    return-void

    :catchall_56
    move-exception v1

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_41 .. :try_end_58} :catchall_56

    throw v1
.end method
