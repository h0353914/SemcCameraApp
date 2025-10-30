.class Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectorOrientationListener;
.super Landroid/view/OrientationEventListener;
.source "FaultDetectorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaultDetectorOrientationListener"
.end annotation


# instance fields
.field private mLast:I

.field final synthetic this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;Landroid/content/Context;)V
    .registers 3

    .line 893
    iput-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectorOrientationListener;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    .line 894
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 891
    iput p1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectorOrientationListener;->mLast:I

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .registers 3

    .line 899
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getNormalizedRotation(I)I

    move-result p1

    .line 901
    iget v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectorOrientationListener;->mLast:I

    if-eq v0, p1, :cond_f

    .line 902
    iput p1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectorOrientationListener;->mLast:I

    .line 903
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectorOrientationListener;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    # setter for: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mDeviceOrientation:I
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->access$1002(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;I)I

    :cond_f
    return-void
.end method
