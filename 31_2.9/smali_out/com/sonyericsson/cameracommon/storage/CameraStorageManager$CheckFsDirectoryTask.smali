.class Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;
.super Ljava/lang/Object;
.source "CameraStorageManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckFsDirectoryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

.field private final type:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V
    .registers 4

    .line 491
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;->this$0:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;->type:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 493
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public call()Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 498
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_READY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    .line 500
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;->this$0:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    # getter for: Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mWritableCheckResult:Ljava/util/Map;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->access$000(Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;->type:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 501
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;->this$0:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    # getter for: Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mWritableCheckResult:Ljava/util/Map;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->access$000(Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;->type:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    goto :goto_74

    :cond_1f
    const/4 v1, 0x1

    .line 503
    new-array v2, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CheckFsDirectoryTask ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;->type:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "] write check : E"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    .line 504
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;->type:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-static {v2}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->checkWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v2

    if-nez v2, :cond_4a

    .line 505
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_READ_ONLY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    .line 507
    :cond_4a
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;->this$0:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    # getter for: Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->mWritableCheckResult:Ljava/util/Map;
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->access$000(Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;->type:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckFsDirectoryTask ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;->type:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "] write check : X"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    :goto_74
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 487
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$CheckFsDirectoryTask;->call()Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    move-result-object v0

    return-object v0
.end method
