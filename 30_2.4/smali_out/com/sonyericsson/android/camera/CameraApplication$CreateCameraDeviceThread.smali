.class Lcom/sonyericsson/android/camera/CameraApplication$CreateCameraDeviceThread;
.super Ljava/lang/Object;
.source "CameraApplication.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateCameraDeviceThread"
.end annotation


# instance fields
.field private mService:Ljava/util/concurrent/ExecutorService;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraApplication;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/CameraApplication;Ljava/util/concurrent/ExecutorService;)V
    .registers 3

    .line 386
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraApplication$CreateCameraDeviceThread;->this$0:Lcom/sonyericsson/android/camera/CameraApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    iput-object p2, p0, Lcom/sonyericsson/android/camera/CameraApplication$CreateCameraDeviceThread;->mService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$1100(Lcom/sonyericsson/android/camera/CameraApplication$CreateCameraDeviceThread;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 383
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraApplication$CreateCameraDeviceThread;->mService:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 383
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraApplication$CreateCameraDeviceThread;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .registers 4

    .line 393
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication$CreateCameraDeviceThread;->this$0:Lcom/sonyericsson/android/camera/CameraApplication;

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/CameraApplication;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->access$700()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/sonyericsson/android/camera/CameraApplication;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/CameraApplication;->access$1002(Lcom/sonyericsson/android/camera/CameraApplication;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    .line 394
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sonyericsson/android/camera/CameraApplication$CreateCameraDeviceThread$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/CameraApplication$CreateCameraDeviceThread$1;-><init>(Lcom/sonyericsson/android/camera/CameraApplication$CreateCameraDeviceThread;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 399
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 400
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication$CreateCameraDeviceThread;->this$0:Lcom/sonyericsson/android/camera/CameraApplication;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/android/camera/CameraApplication;->mCreateCameraDeviceTask:Ljava/util/concurrent/Future;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/CameraApplication;->access$1202(Lcom/sonyericsson/android/camera/CameraApplication;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    return-object v1
.end method
