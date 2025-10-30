.class public Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;
.super Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;
.source "BypassCameraRecorderController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;,
        Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$StopVideoRecordingCallbackImpl;,
        Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$StartVideoRecordingCallbackImpl;,
        Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$PrepareVideoRecordingCallbackImpl;
    }
.end annotation


# static fields
.field private static final STOP_PROCESS_INTERVAL_MILLISECONDS:J = 0x64L

.field private static final TRACE:Z = true


# instance fields
.field private final mBypassCamera:Lcom/sonyericsson/android/camera/recorder/utility/Accessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/recorder/utility/Accessor<",
            "Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrepareVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;

.field private final mStartVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;

.field private final mStopVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/RecorderInterface;Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;JLandroid/os/Handler;IZZZZZ)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonyericsson/android/camera/recorder/utility/Accessor<",
            "Lcom/sonyericsson/android/camera/device/CameraActionSound;",
            ">;",
            "Lcom/sonyericsson/android/camera/recorder/utility/Accessor<",
            "Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;",
            ">;",
            "Lcom/sonyericsson/android/camera/recorder/RecorderInterface;",
            "Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;",
            "J",
            "Landroid/os/Handler;",
            "IZZZZZ)V"
        }
    .end annotation

    move-object v13, p0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p8

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    .line 96
    invoke-direct/range {v0 .. v12}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/RecorderInterface;Landroid/os/Handler;Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;JIZZZZ)V

    const-string v0, "BypassCameraRecorderController() E"

    .line 108
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->trace(Ljava/lang/String;)V

    move-object/from16 v0, p3

    .line 110
    iput-object v0, v13, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->mBypassCamera:Lcom/sonyericsson/android/camera/recorder/utility/Accessor;

    .line 112
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;-><init>()V

    iput-object v0, v13, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->mPrepareVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;

    .line 113
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;-><init>()V

    iput-object v0, v13, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->mStartVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;

    .line 114
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;-><init>()V

    iput-object v0, v13, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->mStopVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;

    if-eqz p14, :cond_3d

    .line 121
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->disableAdjustRecordingTimeByRecorderNotification()V

    :cond_3d
    const-string v0, "BypassCameraRecorderController() X"

    .line 124
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->trace(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .registers 1

    .line 38
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->trace(Ljava/lang/String;)V

    return-void
.end method

.method private convertDataSpace(Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;
    .registers 5

    .line 346
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;

    iget v1, p1, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;->standard:I

    iget v2, p1, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;->transfer:I

    iget p1, p1, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;->range:I

    invoke-direct {v0, v1, v2, p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;-><init>(III)V

    return-object v0
.end method

.method private static trace(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    .line 41
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getBypassCamera()Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;
    .registers 2

    .line 128
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->mBypassCamera:Lcom/sonyericsson/android/camera/recorder/utility/Accessor;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/recorder/utility/Accessor;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    return-object v0
.end method

.method protected prepareBypassCamera(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z
    .registers 5

    const-string v0, "prepareBypassCamera() E"

    .line 280
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->trace(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->mPrepareVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;->requestLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    .line 284
    :try_start_b
    new-instance v1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$RecordingParameters;

    .line 285
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->dataSpace()Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->convertDataSpace(Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$RecordingParameters;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;)V

    .line 286
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->getBypassCamera()Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->getRecorder()Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->requestPrepareVideoRecording(Landroid/view/Surface;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$RecordingParameters;)V

    .line 287
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2a
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_2a} :catch_38
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_2a} :catch_38
    .catchall {:try_start_b .. :try_end_2a} :catchall_36

    .line 294
    iget-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->mPrepareVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;->release()V

    const-string p1, "prepareBypassCamera() X"

    .line 297
    invoke-static {p1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->trace(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :catchall_36
    move-exception p1

    goto :goto_58

    :catch_38
    move-exception p1

    .line 290
    :try_start_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareBypassCamera() X failed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->trace(Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_39 .. :try_end_51} :catchall_36

    const/4 p1, 0x0

    .line 294
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->mPrepareVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;->release()V

    return p1

    :goto_58
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->mPrepareVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;->release()V

    .line 295
    throw p1
.end method

.method protected prepareCallBack()Z
    .registers 6

    const-string v0, "prepareCallBack() E"

    .line 132
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->trace(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->getBypassCamera()Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v0

    if-nez v0, :cond_12

    const-string v0, "prepareCallBack() X failed."

    .line 134
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->trace(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 138
    :cond_12
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->getBypassCamera()Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$PrepareVideoRecordingCallbackImpl;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->mPrepareVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$PrepareVideoRecordingCallbackImpl;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;)V

    new-instance v2, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$StartVideoRecordingCallbackImpl;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->mStartVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;

    invoke-direct {v2, v3}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$StartVideoRecordingCallbackImpl;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;)V

    new-instance v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$StopVideoRecordingCallbackImpl;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->mStopVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;

    invoke-direct {v3, v4}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$StopVideoRecordingCallbackImpl;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->setVideoCallbacks(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareVideoRecordingCallback;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartVideoRecordingCallback;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StopVideoRecordingCallback;)V

    const-string v0, "prepareCallBack() X"

    .line 143
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->trace(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected prepareInternal(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z
    .registers 4

    const-string v0, "prepareInternal() E"

    .line 149
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->trace(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->prepareCallBack()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    const-string p1, "prepareInternal() X failed"

    .line 152
    invoke-static {p1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->trace(Ljava/lang/String;)V

    return v1

    .line 156
    :cond_12
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->prepareInternal(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string p1, "prepareInternal() X failed"

    .line 157
    invoke-static {p1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->trace(Ljava/lang/String;)V

    return v1

    .line 161
    :cond_1e
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->prepareBypassCamera(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z

    move-result p1

    if-nez p1, :cond_2a

    const-string p1, "prepareInternal() X failed"

    .line 162
    invoke-static {p1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->trace(Ljava/lang/String;)V

    return v1

    :cond_2a
    const-string p1, "prepareInternal() X"

    .line 166
    invoke-static {p1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->trace(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected startBypassCamera()Z
    .registers 4

    const-string v0, "startBypassCamera() E"

    .line 302
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->trace(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->mStartVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;->requestLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    .line 306
    :try_start_b
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->getBypassCamera()Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->requestStartVideoRecording()V

    .line 307
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_15} :catch_23
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_15} :catch_23
    .catchall {:try_start_b .. :try_end_15} :catchall_21

    .line 314
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->mStartVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;->release()V

    const-string v0, "startBypassCamera() X"

    .line 317
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->trace(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :catchall_21
    move-exception v0

    goto :goto_43

    :catch_23
    move-exception v0

    .line 310
    :try_start_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startBypassCamera() X failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->trace(Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_24 .. :try_end_3c} :catchall_21

    const/4 v0, 0x0

    .line 314
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->mStartVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;->release()V

    return v0

    :goto_43
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->mStartVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;->release()V

    .line 315
    throw v0
.end method

.method protected startInternal()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const-string v0, "startInternal() E"

    .line 172
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->trace(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->startBypassCamera()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    const-string v0, "startInternal() X failed"

    .line 175
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->trace(Ljava/lang/String;)V

    return v1

    .line 179
    :cond_12
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->startRecorder()Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "startInternal() X failed"

    .line 180
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->trace(Ljava/lang/String;)V

    return v1

    :cond_1e
    const-string v0, "startInternal() X"

    .line 184
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->trace(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected startRecorder()Z
    .registers 3

    .line 195
    :try_start_0
    invoke-super {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->startInternal()Z

    move-result v0
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_e

    :catch_5
    move-exception v0

    .line 197
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-nez v1, :cond_f

    .line 198
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->notifyError()V

    const/4 v0, 0x0

    :goto_e
    return v0

    .line 197
    :cond_f
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected stopBypassCamera()Landroid/util/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;"
        }
    .end annotation

    const-string v0, "stopBypassCamera() E"

    .line 330
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->trace(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->mStopVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;->requestLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    .line 334
    :try_start_b
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->getBypassCamera()Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->requestStopVideoRecording()V

    const/4 v1, 0x1

    .line 335
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_1b} :catch_23
    .catchall {:try_start_b .. :try_end_1b} :catchall_21

    const-string v1, "stopBypassCamera() X"

    .line 341
    invoke-static {v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->trace(Ljava/lang/String;)V

    return-object v0

    :catchall_21
    move-exception v0

    goto :goto_33

    :catch_23
    const/4 v0, 0x0

    .line 338
    :try_start_24
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_21

    const-string v1, "stopBypassCamera() X"

    .line 341
    invoke-static {v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->trace(Ljava/lang/String;)V

    return-object v0

    :goto_33
    const-string v1, "stopBypassCamera() X"

    invoke-static {v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->trace(Ljava/lang/String;)V

    .line 342
    throw v0
.end method

.method protected stopInternal()Z
    .registers 8

    const-string v0, "stopInternal() E"

    .line 205
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->trace(Ljava/lang/String;)V

    .line 209
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->mIsCameraErrorDetected:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    .line 210
    invoke-super {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->stopInternal()Z

    move-result v0

    if-nez v0, :cond_a6

    const-string v0, "stopInternal() X failed"

    .line 211
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->trace(Ljava/lang/String;)V

    return v2

    .line 216
    :cond_17
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->getRecorder()Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    move-result-object v0

    .line 219
    :try_start_1b
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->waitUntilFirstVideoFrameWritten()V

    .line 221
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->getReferenceClock()Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->stop()V

    .line 223
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->isAsyncStopSupported()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 224
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->stopAsync()V

    goto :goto_32

    .line 226
    :cond_2f
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->stop()V
    :try_end_32
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_32} :catch_53

    :goto_32
    const-wide/16 v3, 0x64

    .line 235
    :try_start_34
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_37
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_37} :catch_38
    .catch Ljava/lang/RuntimeException; {:try_start_34 .. :try_end_37} :catch_53

    goto :goto_51

    :catch_38
    move-exception v3

    .line 237
    :try_start_39
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sleep interrupted : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->trace(Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/lang/RuntimeException; {:try_start_39 .. :try_end_51} :catch_53

    :goto_51
    move v3, v1

    goto :goto_71

    :catch_53
    move-exception v3

    .line 246
    new-array v4, v1, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stopInternal() X failed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    move v3, v2

    .line 251
    :goto_71
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->stopBypassCamera()Landroid/util/Pair;

    move-result-object v4

    .line 252
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_80

    return v2

    .line 255
    :cond_80
    iget-object v2, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/CountDownLatch;

    if-eqz v3, :cond_92

    .line 259
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->isAsyncStopSupported()Z

    move-result v3

    if-eqz v3, :cond_8f

    .line 260
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->waitUntilStopCompleted()V

    .line 262
    :cond_8f
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->reset()V

    :cond_92
    if-eqz v2, :cond_a6

    .line 267
    :try_start_94
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 268
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->mStopVideoRecordingCallbackLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;->release()V
    :try_end_9c
    .catch Ljava/lang/InterruptedException; {:try_start_94 .. :try_end_9c} :catch_9d

    goto :goto_a6

    :catch_9d
    const-string v0, "stopBypassCameraLatch.await() interrupted"

    .line 270
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_a6
    :goto_a6
    const-string v0, "stopInternal() X"

    .line 275
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->trace(Ljava/lang/String;)V

    return v1
.end method
