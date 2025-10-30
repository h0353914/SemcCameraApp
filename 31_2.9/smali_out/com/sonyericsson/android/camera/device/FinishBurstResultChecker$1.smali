.class Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker$1;
.super Ljava/lang/Object;
.source "FinishBurstResultChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker;->check(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker;

    # getter for: Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker;->mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$FinishBurstResultCallback;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker;->access$000(Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$FinishBurstResultCallback;

    move-result-object v0

    if-eqz v0, :cond_1a

    const-string v0, "onFinishBurstDone"

    .line 57
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker;

    # getter for: Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker;->mCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$FinishBurstResultCallback;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker;->access$000(Lcom/sonyericsson/android/camera/device/FinishBurstResultChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$FinishBurstResultCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters$FinishBurstResultCallback;->onFinishBurstDone()V

    :cond_1a
    return-void
.end method
