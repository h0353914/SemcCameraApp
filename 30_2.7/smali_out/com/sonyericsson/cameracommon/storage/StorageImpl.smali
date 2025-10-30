.class public Lcom/sonyericsson/cameracommon/storage/StorageImpl;
.super Ljava/lang/Object;
.source "StorageImpl.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/storage/Storage;
.implements Lcom/sonyericsson/android/camera/CameraApplication$Pausable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageInitializeThread;,
        Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final DATA_LOAD_TASK_SIZE:I = 0x1

.field private static final MULTI_STORAGE_ACCESS_PERMIT_NUM:I = 0x2

.field static final NO_INTERVAL_REMAIN_THRESHOLD:J = 0x4b000L

.field private static final SINGLE_STORAGE_ACCESS_PERMIT_NUM:I = 0x1

.field private static final TAG:Ljava/lang/String; = "StrorageImpl"

.field private static final THREAD_NAME_DATE_LOADER_TASK:Ljava/lang/String; = "DataLoaderTask"


# instance fields
.field private mCameraStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

.field private mContext:Landroid/content/Context;

.field private mDataLoadExecutor:Ljava/util/concurrent/ExecutorService;

.field private mDataLoaderTaskQueue:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRequestLock:Ljava/lang/Object;

.field private mSavingTaskManager:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

.field private mStorageAccessSemaphoreMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;",
            "Ljava/util/concurrent/Semaphore;",
            ">;"
        }
    .end annotation
.end field

.field private mStorageBroadcastReceiver:Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;

.field private mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mCameraStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    .line 62
    new-instance v1, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;-><init>(Lcom/sonyericsson/cameracommon/storage/StorageImpl;Lcom/sonyericsson/cameracommon/storage/StorageImpl$1;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageBroadcastReceiver:Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageAccessSemaphoreMap:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mRequestLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/storage/StorageImpl;)Lcom/sonyericsson/cameracommon/storage/StorageController;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/storage/StorageImpl;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mCameraStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/cameracommon/storage/StorageImpl;)V
    .registers 1

    .line 36
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->initialize()V

    return-void
.end method

.method private varargs checkStorageState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;[Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;)Z
    .registers 7

    .line 507
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->getCurrentState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object p1

    .line 508
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v2, v0, :cond_12

    aget-object v3, p2, v2

    if-ne p1, v3, :cond_f

    const/4 p1, 0x1

    return p1

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_12
    return v1
.end method

.method private initialize()V
    .registers 4

    .line 181
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "StorageImpl initialize"

    .line 182
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 184
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mCameraStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mSavingTaskManager:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    .line 185
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->getInquiry()Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageAccessSemaphoreMap:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->initialize(Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;Ljava/util/Map;)V

    return-void
.end method

.method private loadData(Lcom/sonyericsson/cameracommon/storage/DataLoader;)V
    .registers 5

    .line 422
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "StorageImpl loadData"

    .line 423
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 426
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoadExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_3d

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoaderTaskQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    if-nez v1, :cond_16

    goto :goto_3d

    .line 433
    :cond_16
    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 434
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 435
    :try_start_1d
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoaderTaskQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offerLast(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 437
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoaderTaskQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    if-eqz v1, :cond_33

    const/4 v2, 0x1

    .line 439
    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 441
    :cond_33
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoaderTaskQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->addLast(Ljava/lang/Object;)V

    .line 443
    :cond_38
    monitor-exit v0

    return-void

    :catchall_3a
    move-exception p1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_1d .. :try_end_3c} :catchall_3a

    throw p1

    .line 427
    :cond_3d
    :goto_3d
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_4a

    const-string p1, "mDataLoadExecutor or mDataLoadQueue is null"

    .line 428
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4a
    return-void
.end method

.method private prepareReceiver()V
    .registers 4

    .line 189
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "StorageImpl prepareReceiver"

    .line 190
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 193
    :cond_d
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "file"

    .line 194
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    .line 195
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    .line 196
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_EJECT"

    .line 197
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    .line 198
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageBroadcastReceiver:Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private release()V
    .registers 4

    .line 218
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "StorageImpl release"

    .line 219
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 222
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoadExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 223
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 224
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 226
    :cond_17
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoaderTaskQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    if-eqz v0, :cond_2a

    .line 227
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 228
    :try_start_1e
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoaderTaskQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    .line 229
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_27

    .line 230
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoaderTaskQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    goto :goto_2a

    :catchall_27
    move-exception v1

    .line 229
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v1

    .line 233
    :cond_2a
    :goto_2a
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->releaseReceiver()V

    .line 235
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/StorageController;->release()V

    .line 236
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    .line 237
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mCameraStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->release()V

    .line 238
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mCameraStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    .line 239
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mSavingTaskManager:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->release()V

    .line 240
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mSavingTaskManager:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    return-void
.end method

.method private releaseReceiver()V
    .registers 3

    .line 211
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "StorageImpl releaseReceiver"

    .line 212
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 214
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageBroadcastReceiver:Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private removeFuture(J)V
    .registers 11

    .line 385
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "StorageImpl removeFuture"

    .line 386
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 388
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoaderTaskQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    if-nez v0, :cond_12

    return-void

    .line 392
    :cond_12
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 393
    :try_start_15
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoaderTaskQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 394
    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 395
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 396
    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v2}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v3
    :try_end_31
    .catchall {:try_start_15 .. :try_end_31} :catchall_8c

    if-nez v3, :cond_1b

    const-wide/16 v3, 0x0

    .line 399
    :try_start_35
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_3f
    .catch Ljava/lang/InterruptedException; {:try_start_35 .. :try_end_3f} :catch_50
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_35 .. :try_end_3f} :catch_40
    .catchall {:try_start_35 .. :try_end_3f} :catchall_8c

    goto :goto_5f

    .line 405
    :catch_40
    :try_start_40
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_5f

    const-string v2, "StrorageImpl"

    const-string v5, "ExecutionException at future.get()."

    .line 406
    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_5f

    .line 401
    :catch_50
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_5f

    const-string v2, "StrorageImpl"

    const-string v5, "InterruptedException at future.get()."

    .line 402
    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_5f
    :goto_5f
    cmp-long v2, v3, p1

    if-nez v2, :cond_1b

    .line 411
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_86

    const/4 v2, 0x2

    .line 412
    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "StrorageImpl"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remove queue. id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 414
    :cond_86
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1b

    .line 418
    :cond_8a
    monitor-exit v0

    return-void

    :catchall_8c
    move-exception p1

    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_40 .. :try_end_8e} :catchall_8c

    throw p1
.end method


# virtual methods
.method public addStorageReadyStateListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyStateListener;)V
    .registers 3

    if-eqz p1, :cond_7

    .line 554
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/storage/StorageController;->addStorageReadyStateListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyStateListener;)V

    :cond_7
    return-void
.end method

.method public addStorageStateListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageStateListener;)V
    .registers 3

    .line 448
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "StorageImpl addStorageStateListener"

    .line 449
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 452
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/storage/StorageController;->addStorageListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageStateListener;)V

    return-void
.end method

.method public canPushStoreRequest(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z
    .registers 4

    .line 484
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->isStorageActivated()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 488
    :cond_8
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->getAvailableStorage()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    return v1

    .line 491
    :cond_13
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mSavingTaskManager:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->canPushStoreTask(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result p1

    return p1
.end method

.method public cancelDataLoad(J)V
    .registers 4

    .line 378
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "StorageImpl cancelDataLoad"

    .line 379
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 381
    :cond_d
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->removeFuture(J)V

    return-void
.end method

.method public cancelDataLoad(Z)V
    .registers 5

    .line 311
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "StorageImpl cancelDataLoad"

    .line 312
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 314
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoaderTaskQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    if-eqz v0, :cond_34

    .line 315
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 316
    :try_start_14
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoaderTaskQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 317
    invoke-interface {v2, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1a

    .line 319
    :cond_2a
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoaderTaskQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    .line 320
    monitor-exit v0

    goto :goto_34

    :catchall_31
    move-exception p1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_14 .. :try_end_33} :catchall_31

    throw p1

    :cond_34
    :goto_34
    return-void
.end method

.method public close()V
    .registers 2

    .line 204
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "StorageImpl close"

    .line 205
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 207
    :cond_d
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->release()V

    return-void
.end method

.method public createNotifier(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;I)Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;
    .registers 5

    .line 570
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/StorageWriteNotifierImpl;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/sonyericsson/cameracommon/storage/StorageWriteNotifierImpl;-><init>(Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;ILcom/sonyericsson/cameracommon/storage/StorageController;)V

    return-object v0
.end method

.method public getAvailableStorage()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;",
            ">;"
        }
    .end annotation

    .line 496
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->values()[Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 497
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->values()[Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_11
    if-ge v4, v2, :cond_2d

    aget-object v5, v1, v4

    const/4 v6, 0x2

    .line 498
    new-array v6, v6, [Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    sget-object v7, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->AVAILABLE_NEAR_FULL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    aput-object v7, v6, v3

    sget-object v7, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-direct {p0, v5, v6}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->checkStorageState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;[Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 500
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_2d
    return-object v0
.end method

.method getCameraStorageManager()Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;
    .registers 2

    .line 150
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mCameraStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    return-object v0
.end method

.method public getCurrentState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;
    .registers 3

    .line 466
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "StorageImpl getCurrentState"

    .line 467
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 470
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/storage/StorageController;->getStorageState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object p1

    return-object p1
.end method

.method public getRemainStorage(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)J
    .registers 4

    .line 475
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "StorageImpl getRemainStorage"

    .line 476
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 478
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mCameraStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->checkRemain(ZLcom/sonyericsson/cameracommon/storage/Storage$StorageType;)J

    .line 479
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/storage/StorageController;->getAvailableStorageSize(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isStorageActivated()Z
    .registers 4

    .line 542
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getMountableStorageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 543
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/cameracommon/storage/StorageController;->getStorageReadyState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->COMPLETED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    if-eq v1, v2, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_20
    const/4 v0, 0x1

    return v0
.end method

.method public isStorageReadable()Z
    .registers 6

    .line 518
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getMountableStorageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 519
    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->isStorageReadable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 520
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_46

    .line 521
    new-array v0, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", readyState = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    .line 522
    invoke-virtual {v4, v1}, Lcom/sonyericsson/cameracommon/storage/StorageController;->getStorageReadyState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 521
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_46
    return v3

    :cond_47
    return v2
.end method

.method public isStorageReadable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z
    .registers 3

    .line 533
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/storage/StorageController;->getStorageReadyState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->ACCESSIBLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    .line 534
    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-gez p1, :cond_10

    const/4 p1, 0x0

    return p1

    :cond_10
    const/4 p1, 0x1

    return p1
.end method

.method public onWriteStorage(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V
    .registers 6

    .line 584
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    .line 585
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWriteStorage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 587
    :cond_1e
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mCameraStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;->IMMEDIATE:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;

    sget-object v2, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->PERIODIC_UPDATE:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->requestVolumeCheck(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    return-void
.end method

.method public open(Landroid/content/Context;)V
    .registers 8

    .line 154
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "StorageImpl open"

    .line 155
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 157
    :cond_d
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mContext:Landroid/content/Context;

    .line 158
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getMountableStorageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 159
    sget-object v3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne v1, v3, :cond_34

    .line 160
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageAccessSemaphoreMap:Ljava/util/Map;

    new-instance v4, Ljava/util/concurrent/Semaphore;

    const/4 v5, 0x2

    invoke-direct {v4, v5, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    .line 163
    :cond_34
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageAccessSemaphoreMap:Ljava/util/Map;

    new-instance v4, Ljava/util/concurrent/Semaphore;

    invoke-direct {v4, v2, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    .line 168
    :cond_3f
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/storage/StorageController;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    .line 169
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/StorageController;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mCameraStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    .line 170
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mCameraStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageAccessSemaphoreMap:Ljava/util/Map;

    invoke-direct {v0, p1, v1, v3}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mSavingTaskManager:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    .line 173
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->prepareReceiver()V

    .line 174
    new-instance p1, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {p1, v2}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoaderTaskQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    const-string p1, "DataLoaderTask"

    .line 175
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mDataLoadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 177
    new-instance p1, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageInitializeThread;

    invoke-direct {p1, p0}, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageInitializeThread;-><init>(Lcom/sonyericsson/cameracommon/storage/StorageImpl;)V

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageInitializeThread;->start()V

    return-void
.end method

.method public pause()V
    .registers 2

    .line 599
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "pause()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 600
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mCameraStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->doPause()V

    return-void
.end method

.method public removeStorageReadyStateListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyStateListener;)V
    .registers 3

    if-eqz p1, :cond_7

    .line 561
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/storage/StorageController;->removeStorageReadyStateListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyStateListener;)V

    :cond_7
    return-void
.end method

.method public removeStorageStateListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageStateListener;)V
    .registers 3

    .line 457
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "StorageImpl removeStorageStateListener"

    .line 458
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 461
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/storage/StorageController;->removeStorageListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageStateListener;)V

    return-void
.end method

.method public requestCreateContentInfoSync(Ljava/util/ArrayList;Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;",
            ")V"
        }
    .end annotation

    .line 364
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "StorageImpl requestCreateContentInfoSync"

    .line 365
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 368
    :cond_d
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/DataLoader;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/sonyericsson/cameracommon/storage/DataLoader;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;Z)V

    .line 370
    :try_start_15
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->call()Ljava/lang/Long;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_1d

    :catch_19
    move-exception p1

    .line 372
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1d
    return-void
.end method

.method public requestDataLoad(ILandroid/net/Uri;ZLcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;)V
    .registers 12

    .line 340
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "StorageImpl requestDataLoad"

    .line 341
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 344
    :cond_d
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/DataLoader;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mContext:Landroid/content/Context;

    move-object v1, v0

    move v2, p1

    move-object v3, p2

    move-object v5, p4

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/cameracommon/storage/DataLoader;-><init>(ILandroid/net/Uri;Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;Z)V

    .line 345
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->loadData(Lcom/sonyericsson/cameracommon/storage/DataLoader;)V

    return-void
.end method

.method public requestDataLoad(IZLcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;)V
    .registers 11

    .line 327
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "StorageImpl requestDataLoad"

    .line 328
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 331
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mCameraStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->getReadableStorageVolumes()Ljava/util/List;

    move-result-object v3

    .line 332
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/DataLoader;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mContext:Landroid/content/Context;

    move-object v1, v0

    move v4, p1

    move-object v5, p3

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/cameracommon/storage/DataLoader;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;Z)V

    .line 334
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->loadData(Lcom/sonyericsson/cameracommon/storage/DataLoader;)V

    return-void
.end method

.method public requestLastDataLoad(IZLcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;)V
    .registers 12

    .line 351
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "StorageImpl requestDataLoad"

    .line 352
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 355
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mCameraStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->getReadableStorageVolumes()Ljava/util/List;

    move-result-object v3

    .line 356
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/DataLoader;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    move-object v1, v0

    move v4, p1

    move-object v6, p3

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/cameracommon/storage/DataLoader;-><init>(Landroid/content/Context;Ljava/util/List;IILcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;Z)V

    .line 358
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->loadData(Lcom/sonyericsson/cameracommon/storage/DataLoader;)V

    return-void
.end method

.method public requestLoad(Landroid/net/Uri;ILcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;)V
    .registers 6

    .line 274
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "StorageImpl requestLoad"

    .line 275
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 277
    :cond_d
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/sonyericsson/cameracommon/storage/ImageLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->load()Landroid/graphics/Bitmap;

    move-result-object p2

    .line 278
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sonyericsson/cameracommon/storage/StorageImpl$1;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/sonyericsson/cameracommon/storage/StorageImpl$1;-><init>(Lcom/sonyericsson/cameracommon/storage/StorageImpl;Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestLoad([BILcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;)V
    .registers 6

    .line 295
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "StorageImpl requestLoad"

    .line 296
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 298
    :cond_d
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/sonyericsson/cameracommon/storage/ImageLoader;-><init>(Landroid/content/Context;[BI)V

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->load()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 299
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/sonyericsson/cameracommon/storage/StorageImpl$2;

    invoke-direct {v0, p0, p3, p1}, Lcom/sonyericsson/cameracommon/storage/StorageImpl$2;-><init>(Lcom/sonyericsson/cameracommon/storage/StorageImpl;Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestStore(Lcom/sonyericsson/cameracommon/storage/SavingRequest;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;)Z
    .registers 5

    .line 247
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "requestStore"

    .line 248
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 251
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mSavingTaskManager:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->canPushStoreTask(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result p2

    if-nez p2, :cond_20

    const-string p1, "can not PushStoreTask due to memory not enough!"

    .line 252
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 256
    :cond_20
    invoke-virtual {p1, p3}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->addCallback(Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;)V

    .line 257
    instance-of p2, p1, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    if-eqz p2, :cond_3c

    .line 258
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p2, :cond_34

    const-string p2, "StorageImpl storeVideo"

    .line 259
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 261
    :cond_34
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mSavingTaskManager:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    check-cast p1, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->storeVideo(Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;)V

    goto :goto_50

    .line 263
    :cond_3c
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p2, :cond_49

    const-string p2, "StorageImpl Photo"

    .line 264
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 266
    :cond_49
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mSavingTaskManager:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    check-cast p1, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->storePicture(Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;)V

    :goto_50
    const/4 p1, 0x1

    return p1
.end method

.method public resume()V
    .registers 2

    .line 593
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "resume()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 594
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mCameraStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->doResume()V

    return-void
.end method

.method public setOneShotCallerInfo(Ljava/lang/String;)V
    .registers 3

    .line 575
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mSavingTaskManager:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->setOneShotCallerInfo(Ljava/lang/String;)V

    return-void
.end method
