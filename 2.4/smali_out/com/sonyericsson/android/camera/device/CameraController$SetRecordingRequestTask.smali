.class Lcom/sonyericsson/android/camera/device/CameraController$SetRecordingRequestTask;
.super Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;
.source "CameraController.java"


# annotations
.annotation build Landroidx/annotation/WorkerThread;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetRecordingRequestTask"
.end annotation


# instance fields
.field private final mCaptureSessionCallback:Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .registers 4

    const/4 v0, 0x0

    .line 2084
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/sonyericsson/android/camera/device/CameraController$SetRecordingRequestTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ZZ)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$1;)V
    .registers 4

    .line 2080
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController$SetRecordingRequestTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ZZ)V
    .registers 12

    .line 2088
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRecordingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 2089
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    if-eqz p4, :cond_17

    .line 2092
    new-instance p4, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mProfile:Lcom/sonyericsson/android/camera/recorder/RecordingProfile;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    move-result-object v0

    const/16 v1, 0xa

    invoke-direct {p4, v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;-><init>(Lcom/sonyericsson/android/camera/recorder/RecordingProfile;I)V

    .line 2093
    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mFramedropProfiler:Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;
    invoke-static {p1, p4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$6602(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;)Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;

    move-object v5, p4

    goto :goto_1c

    .line 2095
    :cond_17
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mFramedropProfiler:Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$6600(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;

    move-result-object p4

    move-object v5, p4

    .line 2097
    :goto_1c
    new-instance p4, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ZZLcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    iput-object p4, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRecordingRequestTask;->mCaptureSessionCallback:Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ZZLcom/sonyericsson/android/camera/device/CameraController$1;)V
    .registers 6

    .line 2080
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/device/CameraController$SetRecordingRequestTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ZZ)V

    return-void
.end method


# virtual methods
.method public doCameraDeviceAccess()V
    .registers 10

    const/4 v0, 0x2

    .line 2131
    new-array v0, v0, [Landroid/view/Surface;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRecordingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2900(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRecordingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mRecordingSurface:Landroid/view/Surface;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3000(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 2133
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRecordingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2100(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object v1

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRecordingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 2134
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mProfile:Lcom/sonyericsson/android/camera/recorder/RecordingProfile;
    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameRate()I

    move-result v5

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/FpsProvider;->getFpsRangeForVideoRecording(I)Landroid/util/Range;

    move-result-object v5

    .line 2133
    invoke-virtual {v1, v4, v5}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2136
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRecordingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 2137
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2100(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object v1

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRecordingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 2138
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2200(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v4

    const/4 v5, 0x3

    .line 2137
    invoke-virtual {v1, v4, v5, v0}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequest(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    if-nez v0, :cond_54

    const-string v0, "SetRecordingRequestTask : CaptureRequest cannot be created. mCaptureSurface is not null."

    .line 2142
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 2145
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRecordingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$200(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onStartRecordingFailed()V

    return-void

    .line 2149
    :cond_54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2151
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRecordingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mProfile:Lcom/sonyericsson/android/camera/recorder/RecordingProfile;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameRate()I

    move-result v4

    const/16 v6, 0x3c

    if-eq v4, v6, :cond_bb

    const/16 v6, 0x78

    if-eq v4, v6, :cond_79

    const-string v4, "default : ([P,V])"

    .line 2197
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2199
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f9

    .line 2153
    :cond_79
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v4, :cond_86

    const-string v4, "HD_120FPS : ([P,V],V,V,V)"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2157
    :cond_86
    :try_start_86
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRecordingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$100(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    .line 2158
    invoke-virtual {v4, v0}, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;->createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;

    move-result-object v1
    :try_end_92
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_86 .. :try_end_92} :catch_ab
    .catch Ljava/lang/IllegalArgumentException; {:try_start_86 .. :try_end_92} :catch_93

    goto :goto_f9

    :catch_93
    move-exception v0

    .line 2165
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRecordingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2900(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-nez v4, :cond_aa

    const-string v0, "SetRepeatingRequestTask : Preview surface is not valid, so the request is refused."

    .line 2166
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    goto :goto_f9

    .line 2169
    :cond_aa
    throw v0

    :catch_ab
    move-exception v0

    const-string v1, "SetRecordingRequestTask: Failed to create high speed Request list."

    .line 2160
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2162
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRecordingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$200(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onStartRecordingFailed()V

    return-void

    :cond_bb
    const-string v4, "FULL_HD_60FPS : ([P,V],V)"

    .line 2176
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2178
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRecordingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 2179
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2100(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object v4

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRecordingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 2180
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2200(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v6

    new-array v7, v3, [Landroid/view/Surface;

    iget-object v8, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRecordingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 2182
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mRecordingSurface:Landroid/view/Surface;
    invoke-static {v8}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3000(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v8

    aput-object v8, v7, v2

    .line 2179
    invoke-virtual {v4, v6, v5, v7}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequest(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    if-nez v4, :cond_f3

    const-string v0, "SetRecordingRequestTask : CaptureRequest cannot be created. mRecordingSurface is not null."

    .line 2184
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    .line 2187
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRecordingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$200(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onStartRecordingFailed()V

    return-void

    .line 2191
    :cond_f3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2192
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2205
    :goto_f9
    :try_start_f9
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_119

    new-array v0, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "T1 setRepeatingBurst uptimeMillis:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2206
    :cond_119
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRecordingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$100(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRecordingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 2207
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSessionCallbackExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5100(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRecordingRequestTask;->mCaptureSessionCallback:Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

    .line 2206
    invoke-virtual {v0, v1, v4, v6}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingBurstRequests(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    :try_end_12a
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_f9 .. :try_end_12a} :catch_13d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f9 .. :try_end_12a} :catch_12c

    goto/16 :goto_1c8

    :catch_12c
    move-exception v0

    .line 2230
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRecordingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$200(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onStartRecordingFailed()V

    const-string v1, "Failed in setRepeatingRequest."

    .line 2231
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c8

    :catch_13d
    move-exception v0

    .line 2210
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRecordingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1400(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isIgnoreCameraError()Z

    move-result v1

    if-eqz v1, :cond_1ba

    .line 2211
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetRecordingRequestTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isErrorCaused()Z

    move-result v1

    if-eqz v1, :cond_155

    goto :goto_1ba

    .line 2213
    :cond_155
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRecordingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2900(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-nez v1, :cond_172

    .line 2214
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRecordingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->setCameraDeviceStatus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;)V

    const-string v0, "setRepeatingRequest : mPreviewSurface is invalid.(after performing set repeating request)"

    .line 2215
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_1bf

    .line 2217
    :cond_172
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRecordingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mRecordingSurface:Landroid/view/Surface;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3000(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-nez v1, :cond_188

    const-string v0, "setRepeatingRequest : mRecordingSurface is invalid.(after performing set repeating request)"

    .line 2218
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_1bf

    .line 2220
    :cond_188
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v1

    if-ne v1, v5, :cond_1bf

    .line 2221
    new-array v1, v3, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed in setRepeatingRequest  by CameraAccessException. Reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2222
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 2221
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2223
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRecordingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 2224
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetRecordingRequestTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v1

    .line 2225
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetRecordingRequestTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;->ERROR_ON_CAMERA_ERROR:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    .line 2223
    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->onCameraOtherErrorDetected(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V
    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V

    goto :goto_1bf

    :cond_1ba
    :goto_1ba
    const-string v1, "Failed in setRepeatingRequest"

    .line 2212
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2228
    :cond_1bf
    :goto_1bf
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRecordingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$200(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onStartRecordingFailed()V

    :goto_1c8
    return-void
.end method

.method protected verifyCameraDeviceStatus()Z
    .registers 4

    .line 2103
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraController$3;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRecordingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_4a

    .line 2122
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed due to wrong status in SetRecordingRequestTask. status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRecordingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 2124
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2114
    :pswitch_2f
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetRecordingRequestTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isErrorCaused()Z

    move-result v0

    if-eqz v0, :cond_3a

    return v1

    .line 2117
    :cond_3a
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetRecordingRequestTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isCloseCameraTaskRequested()Z

    move-result v0

    if-eqz v0, :cond_45

    return v1

    :cond_45
    return v1

    :pswitch_46
    const/4 v0, 0x1

    return v0

    :pswitch_48
    return v1

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_48
        :pswitch_48
        :pswitch_46
        :pswitch_48
        :pswitch_2f
    .end packed-switch
.end method
