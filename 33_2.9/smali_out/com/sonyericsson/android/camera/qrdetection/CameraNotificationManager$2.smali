.class Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$2;
.super Ljava/lang/Object;
.source "CameraNotificationManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->notifyQrDetectResult()V
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

    .line 205
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$2;->this$0:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 208
    iget-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$2;->this$0:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;

    # getter for: Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mQrCodeScanner:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->access$500(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;)Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;->readyToNotify()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 209
    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$2;->this$0:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;

    # invokes: Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->handleResult()V
    invoke-static {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->access$600(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;)V

    :cond_11
    return-void
.end method
