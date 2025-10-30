.class Lcom/sonyericsson/android/camera/device/CameraController$OnFaceDetectionCallback;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnFaceDetectionCallback"
.end annotation


# static fields
.field private static final IGNORE_CAPTURE_RESULT_FOR_FACE_FRAME_ABNORMAL:I = 0x14

.field private static final IGNORE_CAPTURE_RESULT_SUPERNIGHTMODE_RESTART:I = 0x19


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;)V
    .registers 2

    .line 6608
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnFaceDetectionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$1;)V
    .registers 3

    .line 6608
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$OnFaceDetectionCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;)V

    return-void
.end method


# virtual methods
.method public onFaceDetection(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)V
    .registers 4

    .line 6617
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnFaceDetectionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->isFaceDetectionRunning()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$17100(Lcom/sonyericsson/android/camera/device/CameraController;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 6618
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_15

    const-string p0, "Face detection is stopped."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15
    return-void

    .line 6622
    :cond_16
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnFaceDetectionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$1900(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;->isSuperNightMode()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnFaceDetectionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 6623
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mReceivedResultCount4:I
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$4300(Lcom/sonyericsson/android/camera/device/CameraController;)I

    move-result v0

    const/16 v1, 0x19

    if-lt v0, v1, :cond_36

    :cond_2c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnFaceDetectionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    .line 6624
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mReceivedResultCount2:I
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$12300(Lcom/sonyericsson/android/camera/device/CameraController;)I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_37

    :cond_36
    return-void

    .line 6627
    :cond_37
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnFaceDetectionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController;->mCallback:Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$5200(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onFaceDetected(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)V

    return-void
.end method

.method public setCameraSessionId(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .registers 2

    return-void
.end method
