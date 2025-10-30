.class Lcom/sonyericsson/android/camera/device/PreviewResultChecker$2;
.super Ljava/lang/Object;
.source "PreviewResultChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/PreviewResultChecker;->checkIlluminance(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/PreviewResultChecker;

.field final synthetic val$illuminanceValue:Ljava/lang/Float;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/PreviewResultChecker;Ljava/lang/Float;)V
    .registers 3

    .line 94
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/PreviewResultChecker$2;->this$0:Lcom/sonyericsson/android/camera/device/PreviewResultChecker;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/PreviewResultChecker$2;->val$illuminanceValue:Ljava/lang/Float;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 97
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/PreviewResultChecker$2;->this$0:Lcom/sonyericsson/android/camera/device/PreviewResultChecker;

    # getter for: Lcom/sonyericsson/android/camera/device/PreviewResultChecker;->mPreviewResultCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$PreviewResultCallback;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/PreviewResultChecker;->access$000(Lcom/sonyericsson/android/camera/device/PreviewResultChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$PreviewResultCallback;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/PreviewResultChecker$2;->this$0:Lcom/sonyericsson/android/camera/device/PreviewResultChecker;

    # getter for: Lcom/sonyericsson/android/camera/device/PreviewResultChecker;->mPreviewResultCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$PreviewResultCallback;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/PreviewResultChecker;->access$000(Lcom/sonyericsson/android/camera/device/PreviewResultChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$PreviewResultCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/PreviewResultChecker$2;->val$illuminanceValue:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters$PreviewResultCallback;->onIlluminanceReceived(F)V

    :cond_17
    return-void
.end method
