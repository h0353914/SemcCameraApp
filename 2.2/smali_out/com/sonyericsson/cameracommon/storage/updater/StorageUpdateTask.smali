.class public abstract Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask;
.super Ljava/lang/Object;
.source "StorageUpdateTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask$OnTaskFinishCallback;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask$OnTaskFinishCallback;

.field private final mInquiry:Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;

.field private final mRequestReason:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

.field private final mStorageAccessSemaphore:Ljava/util/concurrent/Semaphore;

.field private final mStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

.field private final mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;Ljava/util/concurrent/Semaphore;Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask$OnTaskFinishCallback;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V
    .registers 7
    .param p1    # Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/Semaphore;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask$OnTaskFinishCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 52
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask;->mStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    .line 53
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask;->mInquiry:Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;

    .line 54
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask;->mStorageAccessSemaphore:Ljava/util/concurrent/Semaphore;

    .line 55
    iput-object p5, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask;->mCallback:Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask$OnTaskFinishCallback;

    .line 56
    iput-object p6, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask;->mRequestReason:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    return-void
.end method


# virtual methods
.method protected acquire()Z
    .registers 6

    .line 77
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_22

    new-array v0, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoke: id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 79
    :cond_22
    :try_start_22
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask;->mStorageAccessSemaphore:Ljava/util/concurrent/Semaphore;

    const-wide/16 v3, 0xfa0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v3, v4, v0}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_2c} :catch_3c

    .line 81
    :try_start_2c
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_43

    const-string v0, "Semaphore acquired."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_39} :catch_3a

    goto :goto_43

    :catch_3a
    move-exception v0

    goto :goto_3e

    :catch_3c
    move-exception v0

    move p0, v2

    :goto_3e
    const-string v2, "Unintended interrupt occurred."

    .line 83
    invoke-static {v2, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_43
    :goto_43
    if-nez p0, :cond_50

    .line 87
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Semaphore could not be acquired due to timeout"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 90
    throw p0

    :cond_50
    return v1
.end method

.method protected getInquiry()Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask;->mInquiry:Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;

    return-object p0
.end method

.method protected getRequestReason()Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask;->mRequestReason:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    return-object p0
.end method

.method protected getStorageManager()Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask;->mStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    return-object p0
.end method

.method protected getType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    return-object p0
.end method

.method protected notifyFinished()V
    .registers 3

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask;->mCallback:Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask$OnTaskFinishCallback;

    if-eqz v0, :cond_f

    .line 108
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask;->mCallback:Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask$OnTaskFinishCallback;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-interface {v0, v1, p0}, Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask$OnTaskFinishCallback;->onFinish(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;I)V

    :cond_f
    return-void
.end method

.method protected release()V
    .registers 5

    .line 102
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoke: id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 103
    :cond_22
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask;->mStorageAccessSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method protected tryAcquire()Z
    .registers 5

    .line 97
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoke: id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 98
    :cond_22
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/updater/StorageUpdateTask;->mStorageAccessSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result p0

    return p0
.end method
