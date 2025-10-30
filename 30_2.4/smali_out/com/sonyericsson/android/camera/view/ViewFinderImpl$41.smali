.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$41;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->handleDetectorStateChanged(Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

.field final synthetic val$isRunning:Z

.field final synthetic val$type:Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;Z)V
    .registers 4

    .line 11509
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$41;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$41;->val$type:Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;

    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$41;->val$isRunning:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 11512
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$41;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mFaultDetectionViewController:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$41;->val$type:Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;

    sget-object v1, Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;->IN_HOUSE_DETECTOR:Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;

    if-ne v0, v1, :cond_2d

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$41;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 11513
    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mIsCoolingUltraLow:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$12200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 11514
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$41;->val$isRunning:Z

    if-eqz v0, :cond_24

    .line 11515
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$41;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mFaultDetectionViewController:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->registerDeviceMotionMonitor()V

    goto :goto_2d

    .line 11517
    :cond_24
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$41;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mFaultDetectionViewController:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->unregisterDeviceMotionMonitor()V

    :cond_2d
    :goto_2d
    return-void
.end method
