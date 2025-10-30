.class Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionInLockedState;
.super Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;
.source "FocusRectangles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FaceDetectionInLockedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V
    .registers 3

    .line 1280
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionInLockedState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$1;)V

    return-void
.end method


# virtual methods
.method public handleOnBurstShutterDone(Z)V
    .registers 4

    if-eqz p1, :cond_d

    .line 1299
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionInLockedState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$1;)V

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->changeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V
    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$900(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    :cond_d
    return-void
.end method

.method public handleOnFaceDetected(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)V
    .registers 5

    .line 1284
    iget-object v0, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->extFaceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_e

    .line 1285
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionInLockedState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mLatestSelectedFaceUuid:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$2202(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Ljava/lang/String;)Ljava/lang/String;

    .line 1288
    :cond_e
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionInLockedState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mLatestSelectedFaceUuid:Ljava/lang/String;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$2200(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    return-void

    .line 1292
    :cond_17
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionInLockedState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v1, 0x0

    .line 1293
    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->getSelectedFaceUuId(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$3200(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)Ljava/lang/String;

    move-result-object v2

    .line 1292
    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->updateFaceRectanglesData(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;ZLjava/lang/String;)V
    invoke-static {v0, p1, v1, v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$3300(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;ZLjava/lang/String;)V

    return-void
.end method
