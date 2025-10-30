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
    .registers 4

    .line 1524
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$mgetApplicationContext(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmGeotagManager(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 1525
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmGeotagManager(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    .line 1527
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$mgetApplicationContext(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "gps"

    .line 1526
    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->isLocationProviderAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    .line 1530
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$mgetApplicationContext(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/content/Context;

    move-result-object p0

    const-string v2, "network"

    .line 1529
    invoke-static {p0, v2}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->isLocationProviderAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    .line 1525
    invoke-virtual {v0, v1, p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->startLocationUpdates(ZZ)V

    goto :goto_45

    .line 1533
    :cond_3c
    const-string p0, "Camera has been released."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :goto_45
    return-void
.end method

.method protected verifyCameraDeviceStatus()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
