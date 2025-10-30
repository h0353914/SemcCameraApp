.class Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler$2;
.super Ljava/lang/Object;
.source "FaultDetectorImpl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/device/SurfaceCropper$OnCropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->requestCropFaces()V
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

    .line 822
    iput-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler$2;->this$1:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCrop(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;",
            ">;)V"
        }
    .end annotation

    .line 825
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler$2;->this$1:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 829
    :cond_11
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_33

    const/4 v0, 0x1

    .line 830
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of cropping:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 832
    :cond_33
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler$2;->this$1:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->access$1800(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 833
    :try_start_3a
    iget-object v1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler$2;->this$1:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler$2;->this$1:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->mLastDetectedFaces:Ljava/util/List;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->access$1900(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;)Ljava/util/List;

    move-result-object v2

    # invokes: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->clearFaceList(Ljava/util/List;)V
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->access$2000(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;Ljava/util/List;)V

    .line 834
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_58

    .line 835
    iget-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler$2;->this$1:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mFaceStore:Lcom/sonyericsson/android/camera/faultdetection/FaceStore;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->access$1400(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)Lcom/sonyericsson/android/camera/faultdetection/FaceStore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/faultdetection/FaceStore;->clear()V

    .line 836
    monitor-exit v0

    return-void

    .line 839
    :cond_58
    iget-object v1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler$2;->this$1:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->mLastDetectedFaces:Ljava/util/List;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->access$1900(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler$2;->this$1:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    # invokes: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->createFaceSet(Ljava/util/List;)Ljava/util/List;
    invoke-static {v2, p1}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->access$2100(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 840
    iget-object v1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler$2;->this$1:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mFaceStore:Lcom/sonyericsson/android/camera/faultdetection/FaceStore;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->access$1400(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)Lcom/sonyericsson/android/camera/faultdetection/FaceStore;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler$2;->this$1:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mDeviceOrientation:I
    invoke-static {v2}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->access$1000(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/sonyericsson/android/camera/faultdetection/FaceStore;->addAll(Ljava/util/List;I)V

    .line 841
    monitor-exit v0

    return-void

    :catchall_7e
    move-exception p1

    monitor-exit v0
    :try_end_80
    .catchall {:try_start_3a .. :try_end_80} :catchall_7e

    throw p1
.end method
