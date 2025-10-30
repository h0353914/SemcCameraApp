.class Lcom/sonyericsson/android/camera/device/FusionResultChecker$1;
.super Ljava/lang/Object;
.source "FusionResultChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/FusionResultChecker;->check(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/FusionResultChecker;

.field final synthetic val$result:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/FusionResultChecker;Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;)V
    .registers 3

    .line 103
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/FusionResultChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/FusionResultChecker;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/FusionResultChecker$1;->val$result:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/FusionResultChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/FusionResultChecker;

    # getter for: Lcom/sonyericsson/android/camera/device/FusionResultChecker;->mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResultCallback;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/FusionResultChecker;->access$000(Lcom/sonyericsson/android/camera/device/FusionResultChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResultCallback;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/FusionResultChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/FusionResultChecker;

    # getter for: Lcom/sonyericsson/android/camera/device/FusionResultChecker;->mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResultCallback;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/FusionResultChecker;->access$000(Lcom/sonyericsson/android/camera/device/FusionResultChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResultCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/FusionResultChecker$1;->val$result:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResultCallback;->onFusionResultChanged(Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;)V

    :cond_13
    return-void
.end method
