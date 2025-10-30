.class Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$5;
.super Ljava/util/TimerTask;
.source "FaultDetectorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->startCropFaceTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)V
    .registers 2

    .line 639
    iput-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$5;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 642
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$5;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mIsInitialized:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->access$700(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 643
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$5;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mFaultDetectionHandler:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->access$800(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$FaultDetectionHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_16
    return-void
.end method
