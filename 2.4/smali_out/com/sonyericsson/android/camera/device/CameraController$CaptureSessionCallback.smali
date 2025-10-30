.class final Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CaptureSessionCallback"
.end annotation


# static fields
.field private static final IGNORE_CAPTURE_RESULT_THRESHOLD:I = 0x5


# instance fields
.field private mIsPreviewStartNotificationRequired:Z

.field private mIsRecordStartNotificationRequired:Z

.field private mProfiler:Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;

.field private final mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .registers 4

    const/4 v0, 0x0

    .line 3002
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$1;)V
    .registers 4

    .line 2993
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V
    .registers 5

    const/4 v0, 0x0

    .line 3007
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ZZ)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ZLcom/sonyericsson/android/camera/device/CameraController$1;)V
    .registers 5

    .line 2993
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    return-void
.end method

.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ZZ)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 3013
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ZZLcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;)V

    return-void
.end method

.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ZZLcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;)V
    .registers 6

    .line 3021
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    .line 3022
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 3023
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->mIsPreviewStartNotificationRequired:Z

    .line 3024
    iput-boolean p4, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->mIsRecordStartNotificationRequired:Z

    .line 3025
    iput-object p5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->mProfiler:Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ZZLcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;Lcom/sonyericsson/android/camera/device/CameraController$1;)V
    .registers 7

    .line 2993
    invoke-direct/range {p0 .. p5}, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ZZLcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;)V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 8

    .line 3056
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->mIsPreviewStartNotificationRequired:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    .line 3057
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->mIsPreviewStartNotificationRequired:Z

    .line 3058
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->notifyOnPreviewStarted(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$7500(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 3059
    sget-object p1, Lcom/sonyericsson/android/camera/util/PerfLog;->START_PREVIEW:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    .line 3062
    :cond_13
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->mProfiler:Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;

    if-eqz p1, :cond_26

    .line 3063
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;->add(J)V

    .line 3066
    :cond_26
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object p1

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_READY:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    if-eq p1, v1, :cond_3e

    .line 3067
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_3d

    const-string p1, "CurrentDeviceState is not READY."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3d
    return-void

    .line 3071
    :cond_3e
    sget-object p1, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_CONTROL_INTELLIGENT_ACTIVE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 3073
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_6e

    .line 3075
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_6e

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "T7 onCaptureCompleted uptimeMillis:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3076
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 3075
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3079
    :cond_6e
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultHolder:Lcom/sonyericsson/android/camera/device/CaptureResultHolder;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2600(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureResultHolder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->add(Landroid/hardware/camera2/CaptureResult;)V

    .line 3081
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_8c

    .line 3082
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultHolder:Lcom/sonyericsson/android/camera/device/CaptureResultHolder;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2600(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureResultHolder;

    move-result-object p1

    if-eqz p1, :cond_8c

    .line 3083
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultHolder:Lcom/sonyericsson/android/camera/device/CaptureResultHolder;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2600(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureResultHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->dumpLatest()V

    .line 3089
    :cond_8c
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCropRegionChecker:Lcom/sonyericsson/android/camera/device/CropRegionChecker;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5500(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CropRegionChecker;

    move-result-object p1

    if-eqz p1, :cond_9d

    .line 3090
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCropRegionChecker:Lcom/sonyericsson/android/camera/device/CropRegionChecker;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5500(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CropRegionChecker;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->setCaptureRequest(Landroid/hardware/camera2/CaptureRequest;)V

    .line 3093
    :cond_9d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerLock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5400(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 3094
    :try_start_a4
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCropRegionChecker:Lcom/sonyericsson/android/camera/device/CropRegionChecker;
    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5500(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CropRegionChecker;

    move-result-object p2

    if-eqz p2, :cond_cd

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;
    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5600(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/Set;

    move-result-object p2

    iget-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 3095
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCropRegionChecker:Lcom/sonyericsson/android/camera/device/CropRegionChecker;
    invoke-static {p3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5500(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CropRegionChecker;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_cd

    .line 3096
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;
    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5600(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/Set;

    move-result-object p2

    iget-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCropRegionChecker:Lcom/sonyericsson/android/camera/device/CropRegionChecker;
    invoke-static {p3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5500(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CropRegionChecker;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3098
    :cond_cd
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultCheckerSet:Ljava/util/Set;
    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5600(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_d7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_ed

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;

    .line 3099
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultHolder:Lcom/sonyericsson/android/camera/device/CaptureResultHolder;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2600(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureResultHolder;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;->check(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;)V

    goto :goto_d7

    .line 3101
    :cond_ed
    monitor-exit p1
    :try_end_ee
    .catchall {:try_start_a4 .. :try_end_ee} :catchall_117

    .line 3102
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureResultHolder:Lcom/sonyericsson/android/camera/device/CaptureResultHolder;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2600(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureResultHolder;

    move-result-object p1

    sget-object p2, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_LOGICAL_MULTI_CAMERA_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatestValue(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3104
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviousLogicalCameraMode:I
    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$7600(Lcom/sonyericsson/android/camera/device/CameraController;)I

    move-result p2

    if-eq p2, p1, :cond_116

    .line 3105
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviousLogicalCameraMode:I
    invoke-static {p2, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$7602(Lcom/sonyericsson/android/camera/device/CameraController;I)I

    .line 3106
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$200(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onLogicalCameraModeChanged()V

    :cond_116
    return-void

    :catchall_117
    move-exception p2

    .line 3101
    :try_start_118
    monitor-exit p1
    :try_end_119
    .catchall {:try_start_118 .. :try_end_119} :catchall_117

    throw p2
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .registers 7

    .line 3113
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p2, :cond_38

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invoked sessionId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " captureSession:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3114
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " reason:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3115
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    .line 3113
    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_38
    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .registers 7

    .line 3032
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->mIsRecordStartNotificationRequired:Z

    if-eqz p1, :cond_84

    const/4 p1, 0x0

    .line 3033
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->mIsRecordStartNotificationRequired:Z

    .line 3035
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 p3, 0x1

    if-eqz p2, :cond_28

    new-array p2, p3, [Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "T2 onCaptureStarted uptimeMillis:"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p5

    invoke-virtual {p4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p2, p1

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3036
    :cond_28
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;
    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$200(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    move-result-object p2

    invoke-interface {p2}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onCaptureStarted()V

    .line 3038
    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mRepeatingRequestStateLock:Ljava/lang/Object;
    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5900(Lcom/sonyericsson/android/camera/device/CameraController;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 3039
    :try_start_38
    sget-boolean p4, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p4, :cond_64

    new-array p3, p3, [Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "invoked current:"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mRepeatingRequestState:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;
    invoke-static {p5}, Lcom/sonyericsson/android/camera/device/CameraController;->access$6000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p5, " next:"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p5, Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;->RECORDING:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, p1

    invoke-static {p3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3041
    :cond_64
    iget-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    sget-object p4, Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;->RECORDING:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mRepeatingRequestState:Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;
    invoke-static {p3, p4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$6002(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;)Lcom/sonyericsson/android/camera/device/CameraController$RepeatingRequestState;

    .line 3045
    iget-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mIsPendingRepeatingRequest:Z
    invoke-static {p3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$7400(Lcom/sonyericsson/android/camera/device/CameraController;)Z

    move-result p3

    if-eqz p3, :cond_7a

    .line 3046
    iget-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object p4, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {p3, p4}, Lcom/sonyericsson/android/camera/device/CameraController;->updateRepeatingRequest(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    .line 3048
    :cond_7a
    iget-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CaptureSessionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # setter for: Lcom/sonyericsson/android/camera/device/CameraController;->mIsPendingRepeatingRequest:Z
    invoke-static {p3, p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$7402(Lcom/sonyericsson/android/camera/device/CameraController;Z)Z

    .line 3049
    monitor-exit p2

    goto :goto_84

    :catchall_81
    move-exception p1

    monitor-exit p2
    :try_end_83
    .catchall {:try_start_38 .. :try_end_83} :catchall_81

    throw p1

    :cond_84
    :goto_84
    return-void
.end method
