.class Lcom/sonyericsson/android/camera/device/PreviewResultChecker$1;
.super Ljava/lang/Object;
.source "PreviewResultChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/PreviewResultChecker;->checkAfFailureReason(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/PreviewResultChecker;

.field final synthetic val$reason:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/PreviewResultChecker;Ljava/lang/Integer;)V
    .registers 3

    .line 72
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/PreviewResultChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/PreviewResultChecker;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/PreviewResultChecker$1;->val$reason:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/PreviewResultChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/PreviewResultChecker;

    # getter for: Lcom/sonyericsson/android/camera/device/PreviewResultChecker;->mPreviewResultCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$PreviewResultCallback;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/PreviewResultChecker;->access$000(Lcom/sonyericsson/android/camera/device/PreviewResultChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$PreviewResultCallback;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 76
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/PreviewResultChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/PreviewResultChecker;

    # getter for: Lcom/sonyericsson/android/camera/device/PreviewResultChecker;->mPreviewResultCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$PreviewResultCallback;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/PreviewResultChecker;->access$000(Lcom/sonyericsson/android/camera/device/PreviewResultChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$PreviewResultCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/PreviewResultChecker$1;->val$reason:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters$PreviewResultCallback;->onAutoFocusFailureDetected(I)V

    :cond_17
    return-void
.end method
