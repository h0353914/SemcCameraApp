.class Lcom/sonyericsson/android/camera/CameraApplication$CreateCameraDeviceThread$1;
.super Ljava/lang/Object;
.source "CameraApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/CameraApplication$CreateCameraDeviceThread;->call()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/CameraApplication$CreateCameraDeviceThread;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/CameraApplication$CreateCameraDeviceThread;)V
    .registers 2

    .line 394
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraApplication$CreateCameraDeviceThread$1;->this$1:Lcom/sonyericsson/android/camera/CameraApplication$CreateCameraDeviceThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 397
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication$CreateCameraDeviceThread$1;->this$1:Lcom/sonyericsson/android/camera/CameraApplication$CreateCameraDeviceThread;

    # getter for: Lcom/sonyericsson/android/camera/CameraApplication$CreateCameraDeviceThread;->mService:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraApplication$CreateCameraDeviceThread;->access$1100(Lcom/sonyericsson/android/camera/CameraApplication$CreateCameraDeviceThread;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method
