.class Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;
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
    name = "SetRepeatingRequestTask"
.end annotation


# static fields
.field private static final REPEATING_BURST_COUNT:I = 0x3


# instance fields
.field private final mCaptureSessionCallback:Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

.field private final mCaptureSurface:Landroid/view/Surface;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/media/ImageReader;)V
    .registers 6

    .line 1675
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1676
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    const/4 v0, 0x0

    if-eqz p3, :cond_d

    .line 1677
    invoke-virtual {p3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p3

    goto :goto_e

    :cond_d
    move-object p3, v0

    :goto_e
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mCaptureSurface:Landroid/view/Surface;

    .line 1678
    new-instance p3, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

    const/4 v1, 0x1

    invoke-direct {p3, p1, p2, v1, v0}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ZLcom/sonyericsson/android/camera/device/CameraController$1;)V

    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mCaptureSessionCallback:Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

    .line 1679
    sget-object p1, Lcom/sonyericsson/android/camera/util/PerfLog;->SET_REPEATING_REQUEST_TASK:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->setPerformancefLog(Lcom/sonyericsson/android/camera/util/PerfLog;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/media/ImageReader;Lcom/sonyericsson/android/camera/device/CameraController$1;)V
    .registers 5

    .line 1670
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/media/ImageReader;)V

    return-void
.end method

.method private updateCameraStatus(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 1900
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1400(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1901
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mRepeatingRequestStateLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5900(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1902
    :try_start_16
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mRepeatingRequestState:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$6000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;->REQUEST_RECORDING:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    if-eq v1, v2, :cond_2e

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1903
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mRepeatingRequestState:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$6000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;->RECORDING:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    if-ne v1, v2, :cond_2b

    goto :goto_2e

    .line 1906
    :cond_2b
    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->VIDEO_PREVIEW:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    goto :goto_30

    .line 1904
    :cond_2e
    :goto_2e
    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->VIDEO_RECORDING:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    .line 1908
    :goto_30
    monitor-exit v0

    goto :goto_37

    :catchall_32
    move-exception p1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_16 .. :try_end_34} :catchall_32

    throw p1

    .line 1910
    :cond_35
    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->STILL_PREVIEW:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    .line 1913
    :goto_37
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    .line 1914
    new-instance v2, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1915
    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->getApplicationContext()Landroid/content/Context;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2500(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    .line 1917
    new-instance v3, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;

    invoke-direct {v3, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;)V

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 1919
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1400(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isVideo()Z

    move-result v1

    invoke-virtual {v2, p1, v0, v1}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->putFromParameter(Lcom/sonyericsson/android/camera/device/CameraParameters;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Z)Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    .line 1920
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight;

    .line 1921
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    const-string v3, "torch"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight$Value;->ON:Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight$Value;

    goto :goto_6e

    :cond_6c
    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight$Value;

    :goto_6e
    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight$Value;)V

    .line 1920
    invoke-virtual {v2, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 1927
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2100(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_STATISTICS_SCENE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8c

    sget-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition$Value;->ON:Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition$Value;

    goto :goto_8e

    :cond_8c
    sget-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition$Value;

    .line 1931
    :goto_8e
    new-instance v3, Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition;

    invoke-direct {v3, v0}, Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition$Value;)V

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 1933
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2100(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object v0

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1935
    new-instance v3, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification;

    sget-object v4, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification$Value;

    invoke-direct {v3, v4}, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification$Value;)V

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v3

    new-instance v4, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection;

    if-ne v0, v1, :cond_ba

    sget-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection$Value;->ON:Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection$Value;

    goto :goto_bc

    :cond_ba
    sget-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection$Value;

    :goto_bc
    invoke-direct {v4, v0}, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection$Value;)V

    .line 1939
    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 1943
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/Bokeh;

    .line 1944
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getBokehMode()Ljava/lang/String;

    move-result-object v1

    const-string v3, "on"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d3

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/Bokeh$Value;->ON:Lcom/sonyericsson/cameracommon/status/eachcamera/Bokeh$Value;

    goto :goto_d5

    :cond_d3
    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/Bokeh$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/Bokeh$Value;

    :goto_d5
    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/Bokeh;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/Bokeh$Value;)V

    .line 1943
    invoke-virtual {v2, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 1948
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraController$3;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getSlowMotion()Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1d0

    .line 1981
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoResolution;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoResolution;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoRecordingFps;

    .line 1983
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v3

    .line 1984
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object v4

    .line 1982
    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameRate(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)I

    move-result v3

    invoke-direct {v1, v3}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoRecordingFps;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    .line 1986
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoStabilizer()Ljava/lang/String;

    move-result-object v1

    .line 1985
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus;->fromCameraParameter(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion;

    sget-object v3, Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;

    invoke-direct {v1, v3}, Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;)V

    .line 1987
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr;

    .line 1992
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr;->fromCameraParameter(Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;)V

    .line 1990
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    goto/16 :goto_1cc

    .line 1967
    :pswitch_139
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v0

    .line 1968
    new-instance v1, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoResolution;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoResolution;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v1}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v1

    new-instance v3, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoRecordingFps;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 1969
    invoke-static {v0, v4}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameRate(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)I

    move-result v0

    invoke-direct {v3, v0}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoRecordingFps;-><init>(I)V

    invoke-virtual {v1, v3}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    .line 1972
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoStabilizer()Ljava/lang/String;

    move-result-object p1

    .line 1971
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus;->fromCameraParameter(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object p1

    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;->ON:Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;)V

    .line 1973
    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object p1

    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 1978
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr;->fromCameraParameter(Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;)V

    .line 1976
    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    goto :goto_1cc

    .line 1950
    :pswitch_17f
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoResolution;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    .line 1952
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoResolution;-><init>(Landroid/graphics/Rect;)V

    .line 1951
    invoke-virtual {v2, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoRecordingFps;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    .line 1954
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 1953
    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameRate(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)I

    move-result v3

    invoke-direct {v1, v3}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoRecordingFps;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    .line 1957
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getVideoStabilizer()Ljava/lang/String;

    move-result-object p1

    .line 1956
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus;->fromCameraParameter(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object p1

    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;)V

    .line 1958
    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object p1

    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 1963
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr;->fromCameraParameter(Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;)V

    .line 1961
    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 1995
    :goto_1cc
    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->publish()V

    return-void

    :pswitch_data_1d0
    .packed-switch 0x1
        :pswitch_17f
        :pswitch_139
        :pswitch_139
    .end packed-switch
.end method


# virtual methods
.method public doCameraDeviceAccess()V
    .registers 10

    .line 1712
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2900(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_16

    .line 1713
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_15

    const-string v0, "Preview surface is not created, so the request is refused."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15
    return-void

    .line 1717
    :cond_16
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2900(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_37

    .line 1718
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->setCameraDeviceStatus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;)V

    .line 1719
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_36

    const-string v0, "Preview surface is not valid, so the request is refused."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_36
    return-void

    .line 1724
    :cond_37
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1400(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getParameters(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraParameters;

    move-result-object v0

    .line 1726
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mOutputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2800(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_ce

    .line 1727
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getSlowMotion()Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    move-result-object v1

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-eq v1, v4, :cond_7f

    .line 1730
    :try_start_57
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mOutputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2800(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v1

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2900(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/hardware/camera2/params/OutputConfiguration;->addSurface(Landroid/view/Surface;)V
    :try_end_66
    .catch Ljava/lang/IllegalArgumentException; {:try_start_57 .. :try_end_66} :catch_67

    goto :goto_7f

    :catch_67
    move-exception v0

    .line 1732
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2900(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-nez v1, :cond_7e

    const-string v0, "SetRepeatingRequestTask : Preview surface is not valid, so the request is refused."

    .line 1733
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return-void

    .line 1737
    :cond_7e
    throw v0

    .line 1742
    :cond_7f
    :goto_7f
    :try_start_7f
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$100(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    new-array v4, v3, [Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1743
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mOutputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2800(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 1742
    invoke-virtual {v1, v4}, Landroid/hardware/camera2/CameraCaptureSession;->finalizeOutputConfigurations(Ljava/util/List;)V
    :try_end_96
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_7f .. :try_end_96} :catch_b5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7f .. :try_end_96} :catch_9d

    .line 1761
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    const/4 v4, 0x0

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mOutputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-static {v1, v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2802(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/params/OutputConfiguration;)Landroid/hardware/camera2/params/OutputConfiguration;

    goto :goto_ce

    :catch_9d
    move-exception v0

    .line 1753
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2900(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-nez v1, :cond_b4

    const-string v0, "SetRepeatingRequestTask : Preview surface is not valid, so the request is refused."

    .line 1754
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return-void

    .line 1758
    :cond_b4
    throw v0

    :catch_b5
    const-string v0, "setRepeatingRequest: finalizeOutputConfigurations failed."

    .line 1745
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 1747
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1748
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v1

    .line 1749
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;->ERROR_ON_CAMERA_ERROR:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    .line 1747
    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->onCameraOtherErrorDetected(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V
    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V

    return-void

    .line 1764
    :cond_ce
    :goto_ce
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1767
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1400(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isPreCaptureOnGoing()Z

    move-result v4

    if-nez v4, :cond_eb

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1768
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1400(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isPreScanOnGoing()Z

    move-result v4

    if-eqz v4, :cond_fa

    .line 1769
    :cond_eb
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2100(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1771
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1769
    invoke-virtual {v4, v5, v6}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1774
    :cond_fa
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mCaptureSurface:Landroid/view/Surface;

    const/4 v5, 0x3

    if-nez v4, :cond_15d

    .line 1775
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2100(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object v4

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1776
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2200(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v6

    new-array v7, v3, [Landroid/view/Surface;

    iget-object v8, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1778
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;
    invoke-static {v8}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2900(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v8

    aput-object v8, v7, v2

    .line 1775
    invoke-virtual {v4, v6, v3, v7}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequest(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    if-nez v4, :cond_125

    const-string v0, "SetRepeatingRequestTask : CaptureRequest cannot be created. mCaptureSurface is null."

    .line 1780
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void

    .line 1786
    :cond_125
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getSlowMotion()Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    move-result-object v6

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-ne v6, v7, :cond_159

    .line 1788
    :try_start_12d
    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1789
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->access$100(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    .line 1790
    invoke-virtual {v6, v4}, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;->createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;

    move-result-object v1
    :try_end_139
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_12d .. :try_end_139} :catch_152
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12d .. :try_end_139} :catch_13a

    goto :goto_19d

    :catch_13a
    move-exception v4

    .line 1795
    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2900(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Surface;->isValid()Z

    move-result v6

    if-nez v6, :cond_151

    const-string v4, "SetRepeatingRequestTask : Preview surface is not valid, so the request is refused."

    .line 1796
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    goto :goto_19d

    .line 1799
    :cond_151
    throw v4

    :catch_152
    move-exception v4

    const-string v6, "SetRepeatingRequestTask : Failed to create high speed Request list."

    .line 1792
    invoke-static {v6, v4}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_19d

    .line 1803
    :cond_159
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19d

    :cond_15d
    move v4, v2

    :goto_15e
    if-ge v4, v5, :cond_19d

    .line 1808
    new-array v6, v3, [Landroid/view/Surface;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;
    invoke-static {v7}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2900(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x2

    if-ne v4, v7, :cond_17b

    .line 1810
    new-array v6, v7, [Landroid/view/Surface;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;
    invoke-static {v7}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2900(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v7

    aput-object v7, v6, v2

    iget-object v7, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mCaptureSurface:Landroid/view/Surface;

    aput-object v7, v6, v3

    .line 1812
    :cond_17b
    iget-object v7, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;
    invoke-static {v7}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2100(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object v7

    iget-object v8, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1813
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v8}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2200(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v8

    .line 1812
    invoke-virtual {v7, v8, v3, v6}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequest(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v6

    if-nez v6, :cond_197

    const-string v0, "SetRepeatingRequestTask : CaptureRequest cannot be created. mCaptureSurface is not null."

    .line 1817
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return-void

    .line 1822
    :cond_197
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_15e

    .line 1827
    :cond_19d
    :goto_19d
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2900(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-nez v4, :cond_1be

    .line 1828
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->setCameraDeviceStatus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;)V

    .line 1829
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1bd

    const-string v0, "Preview surface is not valid, so the request is refused."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1bd
    return-void

    .line 1834
    :cond_1be
    :try_start_1be
    sget-object v4, Lcom/sonyericsson/android/camera/util/PerfLog;->START_PREVIEW:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 1836
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v4, :cond_1e3

    new-array v4, v3, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setRepeatingBurst() requestNum:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1837
    :cond_1e3
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$100(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v4

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1838
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSessionCallbackExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5100(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->mCaptureSessionCallback:Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;

    .line 1837
    invoke-virtual {v4, v1, v6, v7}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingBurstRequests(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I

    .line 1840
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v4, :cond_210

    .line 1841
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestDumper:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2700(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;

    move-result-object v4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v4, v1}, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;->update(Landroid/hardware/camera2/CaptureRequest;)V

    .line 1842
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestDumper:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2700(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;->dump()V

    .line 1844
    :cond_210
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->updateCameraStatus(Lcom/sonyericsson/android/camera/device/CameraParameters;)V
    :try_end_213
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1be .. :try_end_213} :catch_21d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1be .. :try_end_213} :catch_215

    goto/16 :goto_2a4

    :catch_215
    move-exception v0

    const-string v1, "Failed in setRepeatingRequest."

    .line 1872
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a4

    :catch_21d
    move-exception v0

    .line 1846
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1400(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isIgnoreCameraError()Z

    move-result v1

    if-eqz v1, :cond_29f

    .line 1847
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isErrorCaused()Z

    move-result v1

    if-eqz v1, :cond_235

    goto :goto_29f

    .line 1849
    :cond_235
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2900(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-nez v1, :cond_252

    .line 1850
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->setCameraDeviceStatus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;)V

    const-string v0, "setRepeatingRequest : mPreviewSurface is invalid.(after performing set repeating request)"

    .line 1851
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_2a4

    .line 1853
    :cond_252
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v1

    if-ne v1, v5, :cond_284

    .line 1854
    new-array v1, v3, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed in setRepeatingRequest  by CameraAccessException. Reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1855
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 1854
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1856
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1857
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v1

    .line 1858
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;->ERROR_ON_CAMERA_ERROR:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    .line 1856
    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->onCameraOtherErrorDetected(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V
    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V

    goto :goto_2a4

    .line 1861
    :cond_284
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed in setRepeatingRequest by CameraAccessException. Reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1864
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_29f
    :goto_29f
    const-string v1, "Failed in setRepeatingRequest"

    .line 1848
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2a4
    return-void
.end method

.method protected verifyCameraDeviceStatus()Z
    .registers 4

    .line 1684
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraController$3;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_4a

    .line 1703
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed due to wrong status in SetRepeatingRequestTask. status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 1705
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1695
    :pswitch_2f
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isErrorCaused()Z

    move-result v0

    if-eqz v0, :cond_3a

    return v1

    .line 1698
    :cond_3a
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SetRepeatingRequestTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isCloseCameraTaskOrBypassCameraTaskRequested()Z

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
