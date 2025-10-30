.class public interface abstract Lcom/sonyericsson/android/camera/device/SurfaceCropper$OnCropListener;
.super Ljava/lang/Object;
.source "SurfaceCropper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/SurfaceCropper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCropListener"
.end annotation


# virtual methods
.method public abstract onCrop(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;",
            ">;)V"
        }
    .end annotation
.end method
