.class public interface abstract Lcom/sonyericsson/android/camera/faultdetection/FaultDetector;
.super Ljava/lang/Object;
.source "FaultDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$FaultPhotoDetectionListener;,
        Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;
    }
.end annotation


# virtual methods
.method public abstract changeDetectableIfNeeded(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
.end method

.method public abstract changeDetectableIfNeeded(Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;)V
.end method

.method public abstract clearStoredFaces()V
.end method

.method public abstract pauseDetection()V
.end method

.method public abstract release()V
.end method

.method public abstract requestDetection(Ljava/nio/ByteBuffer;I)V
.end method

.method public abstract resumeDetection()V
.end method

.method public abstract setCameraSensorOrientation(I)V
.end method

.method public abstract setDetectionListener(Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$FaultPhotoDetectionListener;)V
.end method

.method public abstract startDetection()V
.end method

.method public abstract stopDetection()V
.end method
