.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ReleaseRecorderTask;
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
    name = "ReleaseRecorderTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V
    .registers 2

    .line 1586
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ReleaseRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;)V
    .registers 3

    .line 1586
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ReleaseRecorderTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1590
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "ReleaseRecorderTask : E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1591
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ReleaseRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorderLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$3200(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1592
    :try_start_14
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ReleaseRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$3300(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/recorder/RecorderController;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 1593
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ReleaseRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$3300(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/recorder/RecorderController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/recorder/RecorderController;->release()Z

    .line 1594
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ReleaseRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    const/4 v2, 0x0

    # setter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVideoRecorder:Lcom/sonyericsson/android/camera/recorder/RecorderController;
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$3302(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/recorder/RecorderController;)Lcom/sonyericsson/android/camera/recorder/RecorderController;

    .line 1596
    :cond_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_14 .. :try_end_2c} :catchall_44

    .line 1597
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ReleaseRecorderTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # setter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsRecording:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$3702(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1598
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_43

    const-string v0, "ReleaseRecorderTask : X"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_43
    return-void

    :catchall_44
    move-exception v1

    .line 1596
    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v1
.end method
