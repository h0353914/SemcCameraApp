.class public abstract Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectorTask;
.super Ljava/lang/Object;
.source "DetectorBase.java"

# interfaces
.implements Lcom/sonymobile/camera/faultdetector/DetectorInterface$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "DetectorTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;


# direct methods
.method protected constructor <init>(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectorTask;->this$0:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs notifyDetection(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;I[Lcom/sonyericsson/android/camera/faultdetection/DetectionType;)V
    .registers 9

    .line 142
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_32

    .line 143
    new-array v0, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Detected:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 143
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 147
    :cond_32
    sget-object v0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;->SNAPSHOT:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;

    if-ne p1, v0, :cond_3b

    .line 148
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectorTask;->this$0:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->setSnapshotDetection(Z)V

    .line 150
    :cond_3b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectorTask;->this$0:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->mCallback:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$Callback;

    if-eqz v0, :cond_4e

    .line 151
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectorTask;->this$0:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->mCallback:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$Callback;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    iget-object v1, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectorTask;->this$0:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;

    invoke-interface {v0, p3, p1, p2, v1}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$Callback;->onDetected(Ljava/util/List;Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$DetectionTrigger;ILcom/sonyericsson/android/camera/faultdetection/DetectorBase;)V

    :cond_4e
    return-void
.end method

.method public onExecuted(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[F>;)V"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectorTask;->this$0:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->mFaultDetectionHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->access$100(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 114
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectorTask;->postExecuteDetection(Ljava/util/List;)V

    return-void

    .line 117
    :cond_1c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectorTask;->this$0:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->mFaultDetectionHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;->access$100(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectorTask$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectorTask$1;-><init>(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectorTask;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected abstract postExecuteDetection(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[F>;)V"
        }
    .end annotation
.end method

.method protected abstract preExecuteDetection()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method
