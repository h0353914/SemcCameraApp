.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PauseRecorderTask;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PauseRecorderTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V
    .registers 2

    .line 1605
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PauseRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;)V
    .registers 3

    .line 1605
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PauseRecorderTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1609
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "PauseRecorderTask : E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1611
    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PauseRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorderLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$3200(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_14
    .catch Lcom/sonyericsson/android/camera/recorder/RecorderException; {:try_start_d .. :try_end_14} :catch_4d

    .line 1612
    :try_start_14
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PauseRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$3300(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/recorder/RecorderController;

    move-result-object v1

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PauseRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$3300(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/recorder/RecorderController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1613
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PauseRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$3300(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/recorder/RecorderController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->pause()V

    .line 1614
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PauseRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$700(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->setCameraAudioRestriction(Z)V

    .line 1616
    :cond_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_14 .. :try_end_3c} :catchall_4a

    .line 1620
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_49

    const-string v0, "PauseRecorderTask : X"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_49
    return-void

    :catchall_4a
    move-exception v1

    .line 1616
    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    :try_start_4c
    throw v1
    :try_end_4d
    .catch Lcom/sonyericsson/android/camera/recorder/RecorderException; {:try_start_4c .. :try_end_4d} :catch_4d

    .line 1618
    :catch_4d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "pauseRecording():[Failed to pause MediaRecorder.]"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
