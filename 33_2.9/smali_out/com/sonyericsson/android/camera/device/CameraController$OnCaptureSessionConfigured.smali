.class Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;
.super Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnCaptureSessionConfigured"
.end annotation


# instance fields
.field private final mResult:Landroid/hardware/camera2/CameraCaptureSession;

.field private final mSender:Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/hardware/camera2/CameraCaptureSession;Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;)V
    .registers 5

    .line 3856
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 3857
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 3858
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->mResult:Landroid/hardware/camera2/CameraCaptureSession;

    .line 3859
    iput-object p4, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->mSender:Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/hardware/camera2/CameraCaptureSession;Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;Lcom/sonyericsson/android/camera/device/CameraController$1;)V
    .registers 6

    .line 3850
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/hardware/camera2/CameraCaptureSession;Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;)V

    return-void
.end method


# virtual methods
.method public doCameraDeviceAccess()V
    .registers 8

    .line 3876
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoked sessionId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3878
    :cond_24
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mConfigStateCallback:Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$11400(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->mSender:Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

    if-eq v0, v2, :cond_3c

    .line 3882
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_3b

    const-string p0, "This callback is invalid."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3b
    return-void

    .line 3886
    :cond_3c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->mResult:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_59

    .line 3887
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 3888
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v1

    .line 3889
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;->ERROR_ON_CONFIGURE_FAILED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    .line 3887
    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->onCameraOtherErrorDetected(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V
    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$7400(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V

    .line 3891
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mOneShotCaptureTaskPendingList:Ljava/util/List;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$7700(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void

    .line 3895
    :cond_59
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mReceivedResultCount:I
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$12202(Lcom/sonyericsson/android/camera/device/CameraController;I)I

    .line 3896
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mReceivedResultCount2:I
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$12302(Lcom/sonyericsson/android/camera/device/CameraController;I)I

    .line 3897
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mIsCaptureAvailable:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$12402(Lcom/sonyericsson/android/camera/device/CameraController;Z)Z

    .line 3899
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$700(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3900
    :try_start_6f
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCropRegionChecker:Lcom/sonyericsson/android/camera/device/CropRegionChecker;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$12500(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CropRegionChecker;

    move-result-object v2

    if-eqz v2, :cond_98

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$12600(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 3901
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCropRegionChecker:Lcom/sonyericsson/android/camera/device/CropRegionChecker;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$12500(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CropRegionChecker;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 3902
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$12600(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCropRegionChecker:Lcom/sonyericsson/android/camera/device/CropRegionChecker;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$12500(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CropRegionChecker;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3904
    :cond_98
    monitor-exit v0
    :try_end_99
    .catchall {:try_start_6f .. :try_end_99} :catchall_183

    .line 3905
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    new-instance v2, Lcom/sonyericsson/android/camera/device/CropRegionChecker;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 3906
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getDeviceThreadHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/sonyericsson/android/camera/device/CameraController$OnCropRegionCallback;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/sonyericsson/android/camera/device/CameraController$OnCropRegionCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$1;)V

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/android/camera/device/CropRegionChecker;-><init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraController$CropRegionCallback;)V

    .line 3905
    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCropRegionChecker:Lcom/sonyericsson/android/camera/device/CropRegionChecker;
    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$12502(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CropRegionChecker;)Lcom/sonyericsson/android/camera/device/CropRegionChecker;

    .line 3908
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_READY:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->setCameraDeviceStatus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;)V

    .line 3910
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->mResult:Landroid/hardware/camera2/CameraCaptureSession;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4202(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 3913
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->mSender:Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;->getSessionType()Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;->access$12800(Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_QUICK_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    if-ne v0, v2, :cond_d6

    .line 3914
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v2

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->doQuickPreScan(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$12900(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 3917
    :cond_d6
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isVideo()Z

    move-result v0

    if-nez v0, :cond_fe

    .line 3918
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mInputConfiguration:Landroid/hardware/camera2/params/InputConfiguration;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$11200(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/params/InputConfiguration;

    move-result-object v0

    if-eqz v0, :cond_f1

    .line 3919
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->mResult:Landroid/hardware/camera2/CameraCaptureSession;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->configImageWriter(Landroid/hardware/camera2/CameraCaptureSession;)V
    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$13000(Lcom/sonyericsson/android/camera/device/CameraController;Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 3921
    :cond_f1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mZslImageReader:Landroid/media/ImageReader;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$11100(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v0

    if-eqz v0, :cond_fe

    .line 3922
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->initReprocessDataFactory()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$13100(Lcom/sonyericsson/android/camera/device/CameraController;)V

    .line 3925
    :cond_fe
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    new-instance v2, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->CAPTURE_REQUEST_DUMP_TYPE:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraController;->access$13200()Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 3926
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4200(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;-><init>(Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 3925
    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestDumper:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;
    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$8302(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;)Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;

    .line 3928
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3600(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_12d

    .line 3930
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mConfigStateCallback:Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$11400(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;->getOperationMode()I

    move-result v2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v3

    new-array v4, v1, [Z

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/sonyericsson/android/camera/device/CameraController;->setRepeatingRequestInternal(ILcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z[Z)V

    .line 3933
    :cond_12d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mOneShotCaptureTaskPendingList:Ljava/util/List;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$7700(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_137
    :goto_137
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/device/CameraController$OneShotCaptureTask;

    .line 3934
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->postCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    .line 3935
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_137

    const-string v1, "Pending OneShotCaptureTask is posted."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_137

    .line 3937
    :cond_15a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->mSender:Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;->getSessionType()Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;->access$12800(Lcom/sonyericsson/android/camera/device/CameraController$ConfigStateCallback;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v1

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentSessionType:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$13302(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    .line 3938
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCurrentSessionType:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$13300(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->onPreviewSessionConfigured(Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V

    .line 3939
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mOneShotCaptureTaskPendingList:Ljava/util/List;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$7700(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 3940
    sget-object p0, Lcom/sonyericsson/android/camera/util/PerfLog;->ON_CONFIGURED:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    return-void

    :catchall_183
    move-exception p0

    .line 3904
    :try_start_184
    monitor-exit v0
    :try_end_185
    .catchall {:try_start_184 .. :try_end_185} :catchall_183

    throw p0
.end method

.method protected verifyCameraDeviceStatus()Z
    .registers 3

    .line 3864
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isCloseCameraTaskRequested()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return v1

    .line 3867
    :cond_c
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCaptureSessionConfigured;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    if-eq p0, v0, :cond_24

    .line 3868
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_23

    const-string p0, "CurrentDeviceState is not OPENED."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_23
    return v1

    :cond_24
    const/4 p0, 0x1

    return p0
.end method
