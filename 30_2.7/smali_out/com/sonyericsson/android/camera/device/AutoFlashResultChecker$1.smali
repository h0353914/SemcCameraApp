.class Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker$1;
.super Ljava/lang/Object;
.source "AutoFlashResultChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;->check(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;

.field final synthetic val$isLastFlashRequired:Z


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;Z)V
    .registers 3

    .line 52
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;

    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker$1;->val$isLastFlashRequired:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 55
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;

    # getter for: Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;->mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$AutoFlashResultCallback;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;->access$000(Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$AutoFlashResultCallback;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 56
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;

    # getter for: Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;->mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$AutoFlashResultCallback;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;->access$000(Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$AutoFlashResultCallback;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/AutoFlashResultChecker$1;->val$isLastFlashRequired:Z

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters$AutoFlashResultCallback;->onAutoFlashResultChanged(Z)V

    :cond_13
    return-void
.end method
