.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CameraDeviceHandlerInquirer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V
    .registers 2

    .line 4907
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method awaitLoadSettingsThread()Z
    .registers 2

    .line 4959
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->awaitLoadSettingsThread()Z

    move-result v0

    return v0
.end method

.method changePreProcessStateTo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V
    .registers 3

    .line 4969
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->changePreProcessStateTo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$5200(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V

    return-void
.end method

.method getCapturingSchemeQueue()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;
    .registers 2

    .line 4993
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCapturingSchemeQueue:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$5500(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;

    move-result-object v0

    return-object v0
.end method

.method getDeviceThreadHandler()Landroid/os/Handler;
    .registers 2

    .line 4954
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraDeviceThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$2200(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;
    .registers 3

    .line 4909
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$3600(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object p1

    return-object p1
.end method

.method getPreProcessState()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;
    .registers 2

    .line 4965
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$5100(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v0

    return-object v0
.end method

.method public getVideoStabilizerDeviceValue(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;Z)Ljava/lang/String;
    .registers 12

    .line 4988
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    # invokes: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getVideoStabilizerDeviceValue(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;Z)Ljava/lang/String;
    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$8100(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method isCameraAvailable()Z
    .registers 2

    .line 4929
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isCameraAvailable()Z

    move-result v0

    return v0
.end method

.method isIgnoreCameraError()Z
    .registers 2

    .line 4917
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mActivityIsInForeground:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$2100(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Z

    move-result v0

    return v0
.end method

.method isLongCaptureDuration()Z
    .registers 2

    .line 4997
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isLongCaptureDuration()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$8200(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Z

    move-result v0

    return v0
.end method

.method isNeedCreatePreviewSession()Z
    .registers 2

    .line 4913
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isNeedCreatePreviewSession()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$5400(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Z

    move-result v0

    return v0
.end method

.method public isPreCaptureOnGoing()Z
    .registers 3

    .line 4977
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$5100(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-eq v0, v1, :cond_17

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    .line 4978
    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$5100(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_SHUTTER_DONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-ne v0, v1, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method public isPreScanOnGoing()Z
    .registers 3

    .line 4973
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$5100(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_SCAN_STARTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method isRecording()Z
    .registers 2

    .line 4925
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isRecording()Z

    move-result v0

    return v0
.end method

.method isSnapshotRunning()Z
    .registers 2

    .line 4982
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getCapturingSchemeQueue()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CapturingSchemeQueue;->hasRequest()Z

    move-result v0

    return v0
.end method

.method isVideo()Z
    .registers 2

    .line 4921
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mIsVideo:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$6300(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Z

    move-result v0

    return v0
.end method

.method postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V
    .registers 3

    .line 4946
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->runOnCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$2900(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    return-void
.end method

.method postCameraDeviceThreadSync(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V
    .registers 3

    .line 4950
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->runOnCameraDeviceThreadSync(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$8000(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    return-void
.end method

.method prepareCaptureImageReader()V
    .registers 3

    .line 4941
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->prepareCaptureImageReader(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;)V

    return-void
.end method

.method releaseRecorderOnCameraClosed()V
    .registers 2

    .line 4933
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4934
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->releaseRecorderOnCameraClosed()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$7900(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    return-void
.end method
