.class Lcom/sonyericsson/android/camera/device/CameraController$9;
.super Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraController;->takeMultiFramePicture(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;ILcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;

.field final synthetic val$cameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

.field final synthetic val$jpeg:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;

.field final synthetic val$multiFramePreCaptureNum:I

.field final synthetic val$shutter:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;

.field final synthetic val$type:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;ILcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .registers 7

    .line 917
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iput p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$9;->val$multiFramePreCaptureNum:I

    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$9;->val$type:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;

    iput-object p4, p0, Lcom/sonyericsson/android/camera/device/CameraController$9;->val$shutter:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;

    iput-object p5, p0, Lcom/sonyericsson/android/camera/device/CameraController$9;->val$jpeg:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;

    iput-object p6, p0, Lcom/sonyericsson/android/camera/device/CameraController$9;->val$cameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doCameraDeviceAccess()V
    .registers 18

    move-object/from16 v0, p0

    .line 920
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;

    iget v2, v0, Lcom/sonyericsson/android/camera/device/CameraController$9;->val$multiFramePreCaptureNum:I

    iget-object v3, v0, Lcom/sonyericsson/android/camera/device/CameraController$9;->val$type:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;-><init>(ILcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;)V

    .line 923
    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->isLLS()Z
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->access$3300(Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x0

    goto :goto_15

    :cond_13
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/CameraController$9;->val$shutter:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;

    .line 925
    :goto_15
    iget-object v3, v0, Lcom/sonyericsson/android/camera/device/CameraController$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mMultiFramePreCaptureImageReader:Landroid/media/ImageReader;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2100(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v3

    new-instance v4, Lcom/sonyericsson/android/camera/device/CameraController$9$1;

    invoke-direct {v4, v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController$9$1;-><init>(Lcom/sonyericsson/android/camera/device/CameraController$9;Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;)V

    iget-object v5, v0, Lcom/sonyericsson/android/camera/device/CameraController$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 938
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->getDeviceThreadHandler()Landroid/os/Handler;

    move-result-object v5

    .line 925
    invoke-virtual {v3, v4, v5}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 940
    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;->HDR:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;

    iget-object v4, v0, Lcom/sonyericsson/android/camera/device/CameraController$9;->val$type:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_59

    .line 942
    iget-object v3, v0, Lcom/sonyericsson/android/camera/device/CameraController$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$100(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object v7

    iget-object v3, v0, Lcom/sonyericsson/android/camera/device/CameraController$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 943
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2000(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v8

    const/4 v9, 0x2

    iget v10, v0, Lcom/sonyericsson/android/camera/device/CameraController$9;->val$multiFramePreCaptureNum:I

    const/4 v11, 0x1

    new-array v12, v6, [Landroid/view/Surface;

    iget-object v3, v0, Lcom/sonyericsson/android/camera/device/CameraController$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 945
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mMultiFramePreCaptureImageReader:Landroid/media/ImageReader;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2100(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    aput-object v3, v12, v5

    .line 942
    invoke-virtual/range {v7 .. v12}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequestList(Landroid/hardware/camera2/CameraDevice;IIZ[Landroid/view/Surface;)Ljava/util/List;

    move-result-object v3

    goto/16 :goto_16c

    .line 946
    :cond_59
    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;->WALKING:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;

    iget-object v4, v0, Lcom/sonyericsson/android/camera/device/CameraController$9;->val$type:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;

    const/4 v7, 0x2

    if-ne v3, v4, :cond_142

    .line 948
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const-string v4, " EV:"

    if-eqz v3, :cond_9c

    new-array v3, v6, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Walking(Anti-shaking) Original ISO:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/sonyericsson/android/camera/device/CameraController$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 949
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mWalkingParamStatus:Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;
    invoke-static {v9}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3400(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;->getIso()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/sonyericsson/android/camera/device/CameraController$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 950
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mWalkingParamStatus:Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;
    invoke-static {v9}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3400(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;->getEv()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v5

    .line 948
    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 954
    :cond_9c
    iget-object v3, v0, Lcom/sonyericsson/android/camera/device/CameraController$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 955
    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->getCurrentCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3500(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedIsoRange(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/util/Range;

    move-result-object v3

    .line 956
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 957
    iget-object v8, v0, Lcom/sonyericsson/android/camera/device/CameraController$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mWalkingParamStatus:Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;
    invoke-static {v8}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3400(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;->getIso()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3

    div-int/2addr v8, v7

    if-le v8, v3, :cond_c0

    goto :goto_c1

    :cond_c0
    move v3, v8

    .line 959
    :goto_c1
    iget-object v7, v0, Lcom/sonyericsson/android/camera/device/CameraController$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mWalkingParamStatus:Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;
    invoke-static {v7}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3400(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;->getEv()J

    move-result-wide v7

    const-wide/16 v9, 0x3

    div-long/2addr v7, v9

    .line 960
    sget-boolean v9, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v9, :cond_f4

    new-array v9, v6, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Walking(Anti-shaking) Set ISO:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v5

    invoke-static {v9}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 962
    :cond_f4
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 963
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v12, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v12, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    sget-object v3, Lcom/sonyericsson/android/camera/device/SomcCaptureRequestKeys;->SONYMOBILE_MULTI_CAPTURING_TYPE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 966
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 965
    invoke-interface {v12, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 968
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 967
    invoke-interface {v12, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    iget-object v3, v0, Lcom/sonyericsson/android/camera/device/CameraController$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$100(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object v10

    iget-object v3, v0, Lcom/sonyericsson/android/camera/device/CameraController$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 970
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2000(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v11

    const/4 v13, 0x2

    iget v14, v0, Lcom/sonyericsson/android/camera/device/CameraController$9;->val$multiFramePreCaptureNum:I

    const/4 v15, 0x1

    new-array v3, v6, [Landroid/view/Surface;

    iget-object v4, v0, Lcom/sonyericsson/android/camera/device/CameraController$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 973
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mMultiFramePreCaptureImageReader:Landroid/media/ImageReader;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2100(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    aput-object v4, v3, v5

    move-object/from16 v16, v3

    .line 969
    invoke-virtual/range {v10 .. v16}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequestList(Landroid/hardware/camera2/CameraDevice;Ljava/util/Map;IIZ[Landroid/view/Surface;)Ljava/util/List;

    move-result-object v3

    goto :goto_16c

    .line 976
    :cond_142
    iget-object v3, v0, Lcom/sonyericsson/android/camera/device/CameraController$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCaptureRequestHolder:Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$100(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;

    move-result-object v8

    iget-object v3, v0, Lcom/sonyericsson/android/camera/device/CameraController$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 977
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2000(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v9

    const/4 v10, 0x2

    iget v11, v0, Lcom/sonyericsson/android/camera/device/CameraController$9;->val$multiFramePreCaptureNum:I

    const/4 v12, 0x1

    new-array v13, v7, [Landroid/view/Surface;

    iget-object v3, v0, Lcom/sonyericsson/android/camera/device/CameraController$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 979
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mMultiFramePreCaptureImageReader:Landroid/media/ImageReader;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2100(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/media/ImageReader;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    aput-object v3, v13, v5

    iget-object v3, v0, Lcom/sonyericsson/android/camera/device/CameraController$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mPreviewSurface:Landroid/view/Surface;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3600(Lcom/sonyericsson/android/camera/device/CameraController;)Landroid/view/Surface;

    move-result-object v3

    aput-object v3, v13, v6

    .line 976
    invoke-virtual/range {v8 .. v13}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->createCaptureRequestList(Landroid/hardware/camera2/CameraDevice;IIZ[Landroid/view/Surface;)Ljava/util/List;

    move-result-object v3

    .line 983
    :goto_16c
    iget-object v4, v0, Lcom/sonyericsson/android/camera/device/CameraController$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    new-instance v5, Lcom/sonyericsson/android/camera/device/CameraController$9$2;

    invoke-direct {v5, v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController$9$2;-><init>(Lcom/sonyericsson/android/camera/device/CameraController$9;Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;)V

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V
    invoke-static {v4, v3, v5}, Lcom/sonyericsson/android/camera/device/CameraController;->access$2700(Lcom/sonyericsson/android/camera/device/CameraController;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V

    .line 999
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;->HDR:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;

    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/CameraController$9;->val$type:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;

    if-ne v1, v2, :cond_181

    .line 1000
    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraController$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->skip2FramesInHDRMultiframeCapture()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$3800(Lcom/sonyericsson/android/camera/device/CameraController;)V

    :cond_181
    return-void
.end method

.method protected verifyCameraDeviceStatus()Z
    .registers 2

    .line 1006
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_READY:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    if-ne p0, v0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method
