.class Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask$1;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->doCameraDeviceAccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;)V
    .registers 2

    .line 2720
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 2723
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    if-nez v0, :cond_32

    const/4 v0, 0x1

    .line 2724
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SessionId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is removed, it need not createPreviewSession."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void

    .line 2728
    :cond_32
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$7600(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 2729
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewRequest:Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$7600(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->mSessionType:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->access$7700(Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v1

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->setSessionType(Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->access$7800(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V

    .line 2731
    :cond_4d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraController$OpenCameraTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->createPreviewSession(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Z

    return-void
.end method
