.class Lcom/sonyericsson/android/camera/device/CameraController$20;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/device/zsl/DataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonyericsson/android/camera/device/zsl/DataListener<",
        "Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;)V
    .registers 2

    .line 5574
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$20;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;)V
    .registers 4

    .line 5577
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_f

    const-string v0, "CameraController"

    const-string v1, "### invoke E "

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 5578
    :cond_f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$20;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mZslCaptureTaskDeque:Ljava/util/Deque;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$16100(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;->isValid()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$20;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 5579
    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->isDataReady(Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;)Z
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$16200(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 5580
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$20;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mZslCaptureTaskDeque:Ljava/util/Deque;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$16100(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/Deque;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/device/CameraController$ZslCaptureTask;

    .line 5581
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$ZslCaptureTask;->capture(Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;)V

    goto :goto_3c

    .line 5583
    :cond_39
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;->recycle()V

    :goto_3c
    return-void
.end method

.method public bridge synthetic onDataAvailable(Ljava/lang/Object;)V
    .registers 2

    .line 5574
    check-cast p1, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$20;->onDataAvailable(Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;)V

    return-void
.end method
