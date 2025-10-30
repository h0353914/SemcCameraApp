.class Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotReadyCallbackImpl;
.super Ljava/lang/Object;
.source "BypassCameraController.java"

# interfaces
.implements Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/BypassCameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SnapshotReadyCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V
    .registers 2

    .line 857
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotReadyCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;Lcom/sonyericsson/android/camera/device/BypassCameraController$1;)V
    .registers 3

    .line 857
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotReadyCallbackImpl;-><init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V

    return-void
.end method


# virtual methods
.method public onSnapshotReadyDone(ZZZLcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DisplayFlashColor;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;I)V
    .registers 15

    .line 866
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotReadyCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    const/4 v1, 0x0

    # invokes: Lcom/sonyericsson/android/camera/device/BypassCameraController;->setSnapshotReadyWaiting(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1000(Lcom/sonyericsson/android/camera/device/BypassCameraController;Z)V

    .line 867
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotReadyCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/BypassCameraController;->awaitImageReaderReady()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1100(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V

    .line 870
    sget-object v0, Lcom/sonyericsson/android/camera/device/BypassCameraController$3;->$SwitchMap$com$sonymobile$imageprocessor$bypasscamera2$BypassCamera$CaptureStartPoint:[I

    invoke-virtual {p5}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;->ordinal()I

    move-result p5

    aget p5, v0, p5

    packed-switch p5, :pswitch_data_36

    .line 879
    sget-object p5, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CaptureStartPoint;->INVALID:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CaptureStartPoint;

    move-object v6, p5

    goto :goto_21

    .line 875
    :pswitch_1a
    sget-object p5, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CaptureStartPoint;->ON_REQUEST:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CaptureStartPoint;

    move-object v6, p5

    goto :goto_21

    .line 872
    :pswitch_1e
    sget-object p5, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CaptureStartPoint;->ALREADY_DONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CaptureStartPoint;

    move-object v6, p5

    .line 884
    :goto_21
    iget-object p5, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotReadyCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mCallback:Lcom/sonyericsson/android/camera/device/BypassCameraController$BypassCameraControllerCallback;
    invoke-static {p5}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$000(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/BypassCameraController$BypassCameraControllerCallback;

    move-result-object v0

    iget-object p5, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$SnapshotReadyCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/BypassCameraController;->mBypassCameraRequestExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {p5}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$1200(Lcom/sonyericsson/android/camera/device/BypassCameraController;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/sonyericsson/android/camera/device/BypassCameraController$BypassCameraControllerCallback;->onSnapshotReadyDone(Ljava/util/concurrent/ExecutorService;ZZZLcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DisplayFlashColor;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CaptureStartPoint;I)V

    return-void

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1a
    .end packed-switch
.end method
