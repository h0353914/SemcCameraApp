.class Lcom/sonyericsson/android/camera/device/AutoHdrResultChecker$1;
.super Ljava/lang/Object;
.source "AutoHdrResultChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/AutoHdrResultChecker;->check(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/AutoHdrResultChecker;

.field final synthetic val$isLastHdrRequired:Z


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/AutoHdrResultChecker;Z)V
    .registers 3

    .line 51
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/AutoHdrResultChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/AutoHdrResultChecker;

    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/device/AutoHdrResultChecker$1;->val$isLastHdrRequired:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 54
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/AutoHdrResultChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/AutoHdrResultChecker;

    # getter for: Lcom/sonyericsson/android/camera/device/AutoHdrResultChecker;->mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$AutoHdrResultCallback;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/AutoHdrResultChecker;->access$000(Lcom/sonyericsson/android/camera/device/AutoHdrResultChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$AutoHdrResultCallback;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 55
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/AutoHdrResultChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/AutoHdrResultChecker;

    # getter for: Lcom/sonyericsson/android/camera/device/AutoHdrResultChecker;->mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$AutoHdrResultCallback;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/AutoHdrResultChecker;->access$000(Lcom/sonyericsson/android/camera/device/AutoHdrResultChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$AutoHdrResultCallback;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/AutoHdrResultChecker$1;->val$isLastHdrRequired:Z

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters$AutoHdrResultCallback;->onAutoHdrResultChanged(Z)V

    :cond_13
    return-void
.end method
