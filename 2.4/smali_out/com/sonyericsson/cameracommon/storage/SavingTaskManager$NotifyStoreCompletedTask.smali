.class Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$NotifyStoreCompletedTask;
.super Ljava/lang/Object;
.source "SavingTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotifyStoreCompletedTask"
.end annotation


# instance fields
.field private final mResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .registers 2

    .line 721
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 722
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$NotifyStoreCompletedTask;->mResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$1;)V
    .registers 3

    .line 713
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$NotifyStoreCompletedTask;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 727
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$NotifyStoreCompletedTask;->mResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->getSavingRequest()Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    move-result-object v0

    .line 728
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$NotifyStoreCompletedTask;->mResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_2a

    if-eqz v0, :cond_2a

    .line 729
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->notifyStoreResult(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    .line 730
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_41

    new-array v0, v4, [Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "mStatus.notifyStoreResult() is called."

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_41

    .line 733
    :cond_2a
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_41

    new-array v0, v4, [Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "StoreDataResult or SavingRequest is null."

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_41
    :goto_41
    return-void
.end method
