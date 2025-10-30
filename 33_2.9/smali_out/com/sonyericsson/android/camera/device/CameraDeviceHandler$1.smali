.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/device/virtual/VirtualTakePictureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V
    .registers 2

    .line 731
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearPendingProcessingCount()V
    .registers 2

    .line 746
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 747
    :cond_d
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->clearBGProcessingCount()V
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$200(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    return-void
.end method

.method public clearPendingProcessingMedia(I)V
    .registers 2

    return-void
.end method

.method public onCaptureFailed()V
    .registers 2

    .line 740
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 741
    :cond_d
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->decrementBGProcessingCount()V
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$100(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    return-void
.end method

.method public onPictureTaken([B)V
    .registers 2

    .line 734
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_d

    const-string p1, "invoked"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 735
    :cond_d
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->decrementBGProcessingCount()V
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$100(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    return-void
.end method
