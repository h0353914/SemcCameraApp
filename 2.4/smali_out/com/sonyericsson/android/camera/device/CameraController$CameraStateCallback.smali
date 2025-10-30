.class Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraStateCallback"
.end annotation


# static fields
.field private static final OPEN_CLOSE_WAIT_TIME_MILLIS:I = 0x3e8


# instance fields
.field private final mCameraDeviceLock:Ljava/lang/Object;

.field private mCloseCameraLatch:Ljava/util/concurrent/CountDownLatch;

.field private mDevice:Landroid/hardware/camera2/CameraDevice;

.field private mIsRequiredToAbandonDevice:Z

.field private mOpenCameraLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .registers 4

    .line 940
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    .line 933
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mOpenCameraLatch:Ljava/util/concurrent/CountDownLatch;

    .line 934
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mCloseCameraLatch:Ljava/util/concurrent/CountDownLatch;

    .line 936
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mCameraDeviceLock:Ljava/lang/Object;

    .line 941
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    const/4 p1, 0x0

    .line 942
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mIsRequiredToAbandonDevice:Z

    const/4 p1, 0x0

    .line 943
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mDevice:Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$1;)V
    .registers 4

    .line 929
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;)V
    .registers 1

    .line 929
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->cancelOpenCamera()V

    return-void
.end method

.method static synthetic access$2300(Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;)Landroid/hardware/camera2/CameraDevice;
    .registers 1

    .line 929
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->waitCameraOpened()Landroid/hardware/camera2/CameraDevice;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3500(Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;)V
    .registers 1

    .line 929
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->waitCameraClosed()V

    return-void
.end method

.method private cancelOpenCamera()V
    .registers 3

    .line 973
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mCameraDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 974
    :try_start_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v1, :cond_f

    .line 975
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->close()V

    const/4 v1, 0x0

    .line 976
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mDevice:Landroid/hardware/camera2/CameraDevice;

    :cond_f
    const/4 v1, 0x1

    .line 978
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mIsRequiredToAbandonDevice:Z

    .line 979
    monitor-exit v0

    return-void

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private waitCameraClosed()V
    .registers 5

    .line 984
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mCloseCameraLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x3e8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_2f

    const/4 v0, 0x1

    .line 987
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Closing camera device is timed-out. sessionId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_28} :catch_29

    goto :goto_2f

    :catch_29
    move-exception v0

    const-string v1, "waitCameraClosed() : Failed to await"

    .line 990
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2f
    :goto_2f
    return-void
.end method

.method private waitCameraOpened()Landroid/hardware/camera2/CameraDevice;
    .registers 6

    const/4 v0, 0x1

    .line 952
    :try_start_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mOpenCameraLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x3e8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 955
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Opening camera device is timed-out. sessionId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_28} :catch_29

    goto :goto_2f

    :catch_29
    move-exception v1

    const-string v2, "waitCameraOpened() : Failed to await"

    .line 958
    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 961
    :cond_2f
    :goto_2f
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mCameraDeviceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 962
    :try_start_32
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v3, 0x0

    .line 963
    iput-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mDevice:Landroid/hardware/camera2/CameraDevice;

    .line 964
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mIsRequiredToAbandonDevice:Z

    .line 965
    monitor-exit v1

    return-object v2

    :catchall_3b
    move-exception v0

    .line 966
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_3b

    throw v0
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .registers 5

    .line 1066
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_20

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invoked sessionId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1067
    :cond_20
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mCloseCameraLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .registers 4

    const/4 p1, 0x1

    .line 1021
    new-array p1, p1, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraStateCallback.onDisconnected() : SessionID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 1022
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->setCameraEvicted()V

    .line 1023
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$200(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onSessionDisconnected(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .registers 6

    const/4 p1, 0x0

    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_f0

    .line 1055
    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError is called. Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " (UNKNOWN). SessionID = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto/16 :goto_d8

    .line 1045
    :pswitch_29
    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError is called. Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " (CameraStateCallback.ERROR_CAMERA_SERVICE). SessionID = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto/16 :goto_d8

    .line 1030
    :pswitch_4d
    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError is called. Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " (CameraStateCallback.ERROR_CAMERA_DEVICE). SessionID = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_d8

    .line 1035
    :pswitch_70
    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError is called. Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " (CameraStateCallback.ERROR_CAMERA_DISABLED). SessionID = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_d8

    .line 1050
    :pswitch_93
    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError is called. Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " (CameraStateCallback.ERROR_MAX_CAMERAS_IN_USE). SessionID = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_d8

    .line 1040
    :pswitch_b6
    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError is called. Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " (CameraStateCallback.ERROR_CAMERA_IN_USE). SessionID = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 1060
    :goto_d8
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->setCameraError()V

    .line 1061
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$200(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    move-result-object p1

    iget-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;->ERROR_ON_CAMERA_ERROR:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;

    invoke-interface {p1, p2, v0}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onDeviceError(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ErrorCode;)V

    return-void

    nop

    :pswitch_data_f0
    .packed-switch 0x1
        :pswitch_b6
        :pswitch_93
        :pswitch_70
        :pswitch_4d
        :pswitch_29
    .end packed-switch
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .registers 7

    .line 996
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mCameraDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 997
    :try_start_3
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_2d

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked sessionId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " isRequiredToAbandonDevice:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mIsRequiredToAbandonDevice:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 999
    :cond_2d
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mIsRequiredToAbandonDevice:Z

    if-eqz v1, :cond_35

    .line 1000
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    goto :goto_37

    .line 1002
    :cond_35
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mDevice:Landroid/hardware/camera2/CameraDevice;

    .line 1004
    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_55

    .line 1006
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mOpenCameraLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1009
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mCameraDeviceLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1010
    :try_start_40
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mIsRequiredToAbandonDevice:Z

    if-eqz v0, :cond_50

    .line 1011
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_50

    .line 1012
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    const/4 v0, 0x0

    .line 1013
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$CameraStateCallback;->mDevice:Landroid/hardware/camera2/CameraDevice;

    .line 1016
    :cond_50
    monitor-exit p1

    return-void

    :catchall_52
    move-exception v0

    monitor-exit p1
    :try_end_54
    .catchall {:try_start_40 .. :try_end_54} :catchall_52

    throw v0

    :catchall_55
    move-exception p1

    .line 1004
    :try_start_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw p1
.end method
