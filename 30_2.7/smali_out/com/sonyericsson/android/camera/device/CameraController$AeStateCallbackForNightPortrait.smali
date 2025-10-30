.class final Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallbackForNightPortrait;
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
    name = "AeStateCallbackForNightPortrait"
.end annotation


# instance fields
.field private mAePrecaptureCallback:Lcom/sonyericsson/android/camera/device/CameraController$AePreCaptureCallback;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$AePreCaptureCallback;)V
    .registers 3

    .line 444
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallbackForNightPortrait;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallbackForNightPortrait;->mAePrecaptureCallback:Lcom/sonyericsson/android/camera/device/CameraController$AePreCaptureCallback;

    return-void
.end method


# virtual methods
.method public OnStateChanged()V
    .registers 4

    .line 450
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallbackForNightPortrait;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mAeStateChecker:Lcom/sonyericsson/android/camera/device/AeStateChecker;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/AeStateChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/AeStateChecker;->isAeStateConverged()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 455
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallbackForNightPortrait;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mAeStateChecker:Lcom/sonyericsson/android/camera/device/AeStateChecker;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/AeStateChecker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/AeStateChecker;->setStateListener(Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;)V

    .line 456
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallbackForNightPortrait;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$700(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 457
    :try_start_1e
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallbackForNightPortrait;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mStateCheckerSet:Ljava/util/Set;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$800(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallbackForNightPortrait;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mAeStateChecker:Lcom/sonyericsson/android/camera/device/AeStateChecker;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/AeStateChecker;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 458
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_34

    .line 459
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$AeStateCallbackForNightPortrait;->mAePrecaptureCallback:Lcom/sonyericsson/android/camera/device/CameraController$AePreCaptureCallback;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/device/CameraController$AePreCaptureCallback;->onAeConverged()V

    return-void

    :catchall_34
    move-exception v1

    .line 458
    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method
