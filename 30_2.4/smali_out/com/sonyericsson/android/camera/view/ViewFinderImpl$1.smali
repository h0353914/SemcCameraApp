.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$1;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$FaultPhotoDetectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .registers 2

    .line 514
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$1;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetect(Ljava/util/List;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/faultdetection/DetectionType;",
            ">;I)V"
        }
    .end annotation

    .line 525
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$1;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->sendFaultDetectionEvent(Ljava/util/List;I)V
    invoke-static {v0, p1, p2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Ljava/util/List;I)V

    return-void
.end method

.method public onDetectorStateChanged(Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;Z)V
    .registers 4

    .line 530
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$1;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->handleDetectorStateChanged(Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;Z)V
    invoke-static {v0, p1, p2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$600(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;Z)V

    return-void
.end method

.method public onSnapshotRequested()V
    .registers 3

    .line 518
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$1;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mFaultDetectionViewController:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 519
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$1;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mFaultDetectionViewController:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->setDuringSnapshot(Z)V

    :cond_12
    return-void
.end method
