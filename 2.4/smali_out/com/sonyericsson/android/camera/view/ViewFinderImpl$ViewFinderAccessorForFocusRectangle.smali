.class public Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForFocusRectangle;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewFinderAccessorForFocusRectangle"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .registers 2

    .line 11620
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForFocusRectangle;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAnimalEyeDetectionAvailable()Z
    .registers 4

    .line 11636
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForFocusRectangle;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 11637
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    return v2

    .line 11641
    :cond_e
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isAnimalEyeDetectionAvailable(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    return v2
.end method

.method public setEyeDetectionButtonVisibility(Z)V
    .registers 3

    .line 11627
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForFocusRectangle;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isEyeDetectionAvailable()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$12500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 11628
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForFocusRectangle;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->setEyeDetectionButtonVisibility(Z)V
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$12600(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Z)V

    :cond_d
    return-void
.end method
