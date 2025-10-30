.class Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusWaitingMultiAutoFocusAreaState;
.super Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;
.source "FocusRectangles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultFocusWaitingMultiAutoFocusAreaState"
.end annotation


# instance fields
.field private mInZoom:Z

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Z)V
    .registers 3

    .line 1214
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusWaitingMultiAutoFocusAreaState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    const/4 p1, 0x0

    .line 1213
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusWaitingMultiAutoFocusAreaState;->mInZoom:Z

    .line 1215
    iput-boolean p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusWaitingMultiAutoFocusAreaState;->mInZoom:Z

    return-void
.end method

.method static synthetic access$3000(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusWaitingMultiAutoFocusAreaState;)Z
    .registers 1

    .line 1212
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusWaitingMultiAutoFocusAreaState;->mInZoom:Z

    return p0
.end method


# virtual methods
.method public handleOnFaceDetected(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)V
    .registers 2

    return-void
.end method

.method public handleSetMultiAutoFocusArea()V
    .registers 3

    .line 1230
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusWaitingMultiAutoFocusAreaState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mMultiAutoFocusArea:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$2900(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1231
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusWaitingMultiAutoFocusAreaState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$3100(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusWaitingMultiAutoFocusAreaState$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusWaitingMultiAutoFocusAreaState$1;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusWaitingMultiAutoFocusAreaState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1a
    return-void
.end method

.method public handleStartFaceDetection()V
    .registers 1

    return-void
.end method
