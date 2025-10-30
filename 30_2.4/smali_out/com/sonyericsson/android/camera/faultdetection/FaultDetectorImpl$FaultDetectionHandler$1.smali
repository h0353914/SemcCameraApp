.class Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler$1;
.super Ljava/lang/Object;
.source "FaultDetectorImpl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/device/SurfaceCropper$OnCropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;)V
    .registers 2

    .line 710
    iput-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler$1;->this$1:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCrop(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;",
            ">;)V"
        }
    .end annotation

    .line 713
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler$1;->this$1:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 717
    :cond_11
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 718
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler$1;->this$1:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mInHouseDetector:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->access$300(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;

    move-result-object v1

    const/4 v0, 0x0

    .line 719
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;

    iget-object v2, p1, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;->dest:Landroid/graphics/Bitmap;

    sget-object v3, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;->PREVIEW:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;

    const/4 v4, -0x1

    iget-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler$1;->this$1:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    .line 721
    # getter for: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mIsFront:Z
    invoke-static {p1}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->access$1100(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)Z

    move-result v5

    iget-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler$1;->this$1:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mDeviceOrientation:I
    invoke-static {p1}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->access$1000(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)I

    move-result v6

    .line 719
    invoke-virtual/range {v1 .. v6}, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;->createTask(Landroid/graphics/Bitmap;Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;IZI)Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectorTask;

    move-result-object p1

    .line 722
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler$1;->this$1:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mInHouseDetector:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->access$300(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;->detect(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectorTask;)V

    :cond_4a
    return-void
.end method
