.class Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker$1;
.super Ljava/lang/Object;
.source "AfParametersReflectedChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->check(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;

    # getter for: Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$AfParametersCallback;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->access$000(Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$AfParametersCallback;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 59
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;

    # getter for: Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$AfParametersCallback;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->access$000(Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$AfParametersCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraParameters$AfParametersCallback;->onReflected(Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;)V

    :cond_13
    return-void
.end method
