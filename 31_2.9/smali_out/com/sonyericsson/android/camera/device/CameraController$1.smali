.class Lcom/sonyericsson/android/camera/device/CameraController$1;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraController;->startAutoFocus(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraAutoFocusCallback;ZZZLandroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;)V
    .registers 2

    .line 539
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$1;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 542
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$1;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    const/4 v1, 0x0

    # invokes: Lcom/sonyericsson/android/camera/device/CameraController;->onAutoFocus(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController;->access$400(Lcom/sonyericsson/android/camera/device/CameraController;Z)V

    return-void
.end method
