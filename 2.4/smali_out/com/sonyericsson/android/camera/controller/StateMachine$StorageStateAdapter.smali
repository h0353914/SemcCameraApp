.class Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/storage/Storage$StorageStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StorageStateAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;
    }
.end annotation


# instance fields
.field private mIsCurrentStorageFull:Z

.field private mOldStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 2

    .line 317
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    sget-object p1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->mOldStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V
    .registers 3

    .line 317
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;)Z
    .registers 1

    .line 317
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->mIsCurrentStorageFull:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;Z)Z
    .registers 2

    .line 317
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->mIsCurrentStorageFull:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;Z)V
    .registers 2

    .line 317
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->updateGestureShutterState(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;
    .registers 1

    .line 317
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->mOldStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    return-object p0
.end method

.method static synthetic access$602(Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;
    .registers 2

    .line 317
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->mOldStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    return-object p1
.end method

.method static synthetic access$7200(Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;)V
    .registers 1

    .line 317
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->resume()V

    return-void
.end method

.method private resume()V
    .registers 2

    .line 323
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->mOldStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    const/4 v0, 0x0

    .line 324
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->mIsCurrentStorageFull:Z

    const/4 v0, 0x1

    .line 326
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->updateGestureShutterState(Z)V

    return-void
.end method

.method private updateGestureShutterState(Z)V
    .registers 3

    .line 353
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mGestureShutter:Lcom/sonyericsson/android/camera/controller/GestureShutter;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$300(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/GestureShutter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onStorageSizeChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;J)V
    .registers 4

    return-void
.end method

.method public declared-synchronized onStorageStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;)V
    .registers 8

    monitor-enter p0

    .line 332
    :try_start_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoke type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", readyState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 336
    :cond_2f
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->ACCESSIBLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    if-eq p3, v0, :cond_39

    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->COMPLETED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_48

    if-eq p3, v0, :cond_39

    .line 338
    monitor-exit p0

    return-void

    .line 341
    :cond_39
    :try_start_39
    new-instance p3, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;

    const/4 v0, 0x0

    invoke-direct {p3, p0, p1, p2, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    .line 344
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_46
    .catchall {:try_start_39 .. :try_end_46} :catchall_48

    .line 345
    monitor-exit p0

    return-void

    :catchall_48
    move-exception p1

    monitor-exit p0

    throw p1
.end method
