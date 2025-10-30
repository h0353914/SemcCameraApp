.class public interface abstract Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$FaultPhotoDetectionListener;
.super Ljava/lang/Object;
.source "FaultDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/faultdetection/FaultDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FaultPhotoDetectionListener"
.end annotation


# virtual methods
.method public abstract onDetect(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/faultdetection/DetectionType;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract onDetectorStateChanged(Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;Z)V
.end method

.method public abstract onSnapshotRequested()V
.end method
