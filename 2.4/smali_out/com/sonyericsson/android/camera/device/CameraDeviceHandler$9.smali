.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mVideoSavingRequestBuilder:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V
    .registers 2

    .line 5355
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 5356
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;->mVideoSavingRequestBuilder:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    return-void
.end method


# virtual methods
.method public getVideoSavingRequestBuilder()Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;
    .registers 2

    .line 5365
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;->mVideoSavingRequestBuilder:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    return-object v0
.end method

.method public onRecordError(II)V
    .registers 6

    const/4 v0, 0x1

    .line 5377
    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR:MediaRecorder ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 5379
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->releaseRecorderOnError()V

    .line 5380
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$3400(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 5381
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$3400(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onRecordError(II)V

    :cond_3d
    return-void
.end method

.method public onRecordFinished(Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;)V
    .registers 6

    .line 5387
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoke result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 5390
    :cond_1e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->notifyRecordingStopCompleted()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$8300(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    .line 5392
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$10;->$SwitchMap$com$sonyericsson$android$camera$recorder$RecorderController$Result:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_66

    goto :goto_65

    .line 5428
    :pswitch_2f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$1300(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9$3;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5439
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->releaseRecorderOnError()V

    goto :goto_65

    .line 5413
    :pswitch_43
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$1300(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9$2;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9$2;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_65

    .line 5396
    :pswitch_52
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->finalizeRecording()V

    .line 5398
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$1300(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9$1;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_65
    return-void

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_52
        :pswitch_43
        :pswitch_43
        :pswitch_2f
    .end packed-switch
.end method

.method public onRecordProgress(J)V
    .registers 4

    .line 5370
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$3400(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 5371
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$3400(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onRecordProgress(J)V

    :cond_11
    return-void
.end method

.method public setSavingRequestBuilder(Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;)V
    .registers 3

    .line 5360
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 5361
    :cond_d
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;->mVideoSavingRequestBuilder:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    return-void
.end method
