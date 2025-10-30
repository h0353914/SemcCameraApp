.class Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback$1;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback;->OnStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback;)V
    .registers 2

    .line 442
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 445
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$700(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 446
    :try_start_9
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mAfStateChecker:Lcom/sonyericsson/android/camera/device/AfStateChecker;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/AfStateChecker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/AfStateChecker;->isFocusLocked()Z

    move-result v2

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->onAutoFocus(Z)V
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$400(Lcom/sonyericsson/android/camera/device/CameraController;Z)V

    .line 447
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mStateCheckerSet:Ljava/util/Set;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$800(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mAeStateChecker:Lcom/sonyericsson/android/camera/device/AeStateChecker;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/AeStateChecker;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 448
    monitor-exit v0

    return-void

    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_9 .. :try_end_33} :catchall_31

    throw v1
.end method
