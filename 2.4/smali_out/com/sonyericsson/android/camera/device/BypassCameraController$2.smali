.class Lcom/sonyericsson/android/camera/device/BypassCameraController$2;
.super Ljava/lang/Object;
.source "BypassCameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/BypassCameraController;->finalizeCaptureImageReader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V
    .registers 2

    .line 1668
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$2;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1671
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$2;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    # invokes: Lcom/sonyericsson/android/camera/device/BypassCameraController;->finalizeCaptureImageReaderInternal()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->access$4600(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V

    return-void
.end method
