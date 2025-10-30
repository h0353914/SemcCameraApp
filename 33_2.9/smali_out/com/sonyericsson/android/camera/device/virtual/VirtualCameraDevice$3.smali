.class Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$3;
.super Ljava/lang/Object;
.source "VirtualCameraDevice.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$OnMediaDequeSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)V
    .registers 2

    .line 360
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$3;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDequeSizeChanged(I)V
    .registers 6

    .line 363
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDequeSizeChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mPendingCloseCamera: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$3;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    .line 364
    # getter for: Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mPendingCloseCamera:Z
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->access$2600(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 363
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 365
    :cond_30
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$3;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    # setter for: Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mPendingMediaSize:I
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->access$2702(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;I)I

    .line 366
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$3;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mPendingCloseCamera:Z
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->access$2600(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Z

    move-result p1

    if-eqz p1, :cond_4a

    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$3;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->mPendingMediaSize:I
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->access$2700(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)I

    move-result p1

    if-nez p1, :cond_4a

    .line 367
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$3;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->close()V

    :cond_4a
    return-void
.end method
