.class Lcom/sonyericsson/android/camera/CameraApplication$CreateStorageThread;
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
    name = "CreateStorageThread"
.end annotation


# instance fields
.field private mService:Ljava/util/concurrent/ExecutorService;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraApplication;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/CameraApplication;Ljava/util/concurrent/ExecutorService;)V
    .registers 3

    .line 337
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraApplication$CreateStorageThread;->this$0:Lcom/sonyericsson/android/camera/CameraApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    iput-object p2, p0, Lcom/sonyericsson/android/camera/CameraApplication$CreateStorageThread;->mService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/CameraApplication$CreateStorageThread;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 334
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraApplication$CreateStorageThread;->mService:Ljava/util/concurrent/ExecutorService;

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

    .line 334
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraApplication$CreateStorageThread;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .registers 4

    .line 343
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication$CreateStorageThread;->this$0:Lcom/sonyericsson/android/camera/CameraApplication;

    new-instance v1, Lcom/sonyericsson/cameracommon/storage/StorageImpl;

    invoke-direct {v1}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;-><init>()V

    # setter for: Lcom/sonyericsson/android/camera/CameraApplication;->mStorage:Lcom/sonyericsson/cameracommon/storage/StorageImpl;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/CameraApplication;->access$402(Lcom/sonyericsson/android/camera/CameraApplication;Lcom/sonyericsson/cameracommon/storage/StorageImpl;)Lcom/sonyericsson/cameracommon/storage/StorageImpl;

    .line 344
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication$CreateStorageThread;->this$0:Lcom/sonyericsson/android/camera/CameraApplication;

    # getter for: Lcom/sonyericsson/android/camera/CameraApplication;->mStorage:Lcom/sonyericsson/cameracommon/storage/StorageImpl;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraApplication;->access$400(Lcom/sonyericsson/android/camera/CameraApplication;)Lcom/sonyericsson/cameracommon/storage/StorageImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraApplication$CreateStorageThread;->this$0:Lcom/sonyericsson/android/camera/CameraApplication;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->open(Landroid/content/Context;)V

    .line 346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 347
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraApplication$CreateStorageThread;->this$0:Lcom/sonyericsson/android/camera/CameraApplication;

    # getter for: Lcom/sonyericsson/android/camera/CameraApplication;->mStorage:Lcom/sonyericsson/cameracommon/storage/StorageImpl;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraApplication;->access$400(Lcom/sonyericsson/android/camera/CameraApplication;)Lcom/sonyericsson/cameracommon/storage/StorageImpl;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraApplication$CreateStorageThread;->this$0:Lcom/sonyericsson/android/camera/CameraApplication;

    new-instance v2, Lcom/sonyericsson/android/camera/CameraApplication$ActivityLifeCycleCallbackImpl;

    invoke-direct {v2, v0}, Lcom/sonyericsson/android/camera/CameraApplication$ActivityLifeCycleCallbackImpl;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/CameraApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 351
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sonyericsson/android/camera/CameraApplication$CreateStorageThread$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/CameraApplication$CreateStorageThread$1;-><init>(Lcom/sonyericsson/android/camera/CameraApplication$CreateStorageThread;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 356
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 357
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication$CreateStorageThread;->this$0:Lcom/sonyericsson/android/camera/CameraApplication;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/android/camera/CameraApplication;->mCreateStorageTask:Ljava/util/concurrent/Future;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/CameraApplication;->access$602(Lcom/sonyericsson/android/camera/CameraApplication;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    return-object v1
.end method
