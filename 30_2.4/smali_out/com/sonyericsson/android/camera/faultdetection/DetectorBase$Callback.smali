.class interface abstract Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$Callback;
.super Ljava/lang/Object;
.source "DetectorBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onDetected(Ljava/util/List;Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;ILcom/sonyericsson/android/camera/faultdetection/DetectorBase;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/faultdetection/DetectionType;",
            ">;",
            "Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;",
            "I",
            "Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onRunningStateChanged(ZLcom/sonyericsson/android/camera/faultdetection/DetectorBase;)V
.end method
