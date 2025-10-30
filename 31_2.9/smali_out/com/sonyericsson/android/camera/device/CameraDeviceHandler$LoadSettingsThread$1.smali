.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread$1;
.super Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;
.source "CameraDeviceHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .registers 3

    .line 1516
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method


# virtual methods
.method public doCameraDeviceAccess()V
    .registers 5

    .line 1524
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getApplicationContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$1400(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$3200(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 1525
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$3200(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    .line 1527
    # invokes: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getApplicationContext()Landroid/content/Context;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$1400(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "gps"

    .line 1526
    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->isLocationProviderAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    .line 1530
    # invokes: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getApplicationContext()Landroid/content/Context;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$1400(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "network"

    .line 1529
    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->isLocationProviderAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 1525
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->startLocationUpdates(ZZ)V

    goto :goto_45

    :cond_3c
    const-string v0, "Camera has been released."

    .line 1533
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :goto_45
    return-void
.end method

.method protected verifyCameraDeviceStatus()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
