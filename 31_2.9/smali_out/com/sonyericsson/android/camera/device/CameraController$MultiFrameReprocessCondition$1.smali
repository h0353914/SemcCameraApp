.class Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$1;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->notifyShutter(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;

.field final synthetic val$callback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;)V
    .registers 3

    .line 1175
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$1;->this$0:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$1;->val$callback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1178
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$1;->val$callback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 1179
    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;->onShutter(Z)V

    :cond_8
    return-void
.end method
