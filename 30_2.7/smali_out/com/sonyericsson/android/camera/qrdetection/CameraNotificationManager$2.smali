.class Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$2;
.super Landroid/content/BroadcastReceiver;
.source "CameraNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;)V
    .registers 2

    .line 195
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$2;->this$0:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 198
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.sonyericsson.android.camera.intent.action.CAMERA_QR_SCAN_RESULT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 200
    iget-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$2;->this$0:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->cancelNotification()V

    .line 201
    iget-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$2;->this$0:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;

    # getter for: Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mQrCodeScanner:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->access$300(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;)Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;->readyToNotify()Z

    move-result p1

    if-eqz p1, :cond_38

    .line 202
    iget-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$2;->this$0:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;

    # invokes: Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->handleResult()V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->access$400(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;)V

    goto :goto_38

    .line 204
    :cond_23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NOTIFICATIONCAN_CELED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_38

    .line 205
    iget-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$2;->this$0:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;

    # getter for: Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mQrCodeScanner:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->access$300(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;)Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;->start()V

    .line 207
    :cond_38
    :goto_38
    iget-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$2;->this$0:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;

    # getter for: Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mQrCodeScanner:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->access$300(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;)Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;

    move-result-object p1

    iget-object p2, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$2;->this$0:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;

    # getter for: Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->QrDetectNotifyReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {p2}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->access$500(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;)Landroid/content/BroadcastReceiver;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
