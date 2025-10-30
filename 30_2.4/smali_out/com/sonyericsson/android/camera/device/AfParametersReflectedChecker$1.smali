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

.field final synthetic val$afMode:I

.field final synthetic val$rectangle:[Landroid/hardware/camera2/params/MeteringRectangle;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;I[Landroid/hardware/camera2/params/MeteringRectangle;)V
    .registers 4

    .line 69
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;

    iput p2, p0, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker$1;->val$afMode:I

    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker$1;->val$rectangle:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 72
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;

    # getter for: Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$AfParametersCallback;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->access$000(Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$AfParametersCallback;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 73
    iget v0, p0, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker$1;->val$afMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 74
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;

    # getter for: Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$AfParametersCallback;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->access$000(Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$AfParametersCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker$1;->val$rectangle:[Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters$AfParametersCallback;->onMultiAutoFocusAreaChanged(Landroid/graphics/Rect;)V

    .line 76
    :cond_1f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;

    # getter for: Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$AfParametersCallback;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;->access$000(Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$AfParametersCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters$AfParametersCallback;->onReflected(Lcom/sonyericsson/android/camera/device/AfParametersReflectedChecker;)V

    :cond_2a
    return-void
.end method
