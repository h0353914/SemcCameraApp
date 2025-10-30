.class Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StorageImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/StorageImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StorageBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/storage/StorageImpl;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/storage/StorageImpl;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;->this$0:Lcom/sonyericsson/cameracommon/storage/StorageImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/storage/StorageImpl;Lcom/sonyericsson/cameracommon/storage/StorageImpl$1;)V
    .registers 3

    .line 73
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;-><init>(Lcom/sonyericsson/cameracommon/storage/StorageImpl;)V

    return-void
.end method

.method private notifyStorageStatusChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 101
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getMountableStorageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne v1, p1, :cond_8

    move v0, v3

    goto :goto_1b

    :cond_1a
    move v0, v2

    :goto_1b
    if-eqz v0, :cond_52

    .line 109
    iget-object p3, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;->this$0:Lcom/sonyericsson/cameracommon/storage/StorageImpl;

    invoke-virtual {p3}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->isStorageReadable()Z

    move-result p3

    if-eqz p3, :cond_48

    const-string p3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    .line 110
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_36

    .line 111
    iget-object p3, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;->this$0:Lcom/sonyericsson/cameracommon/storage/StorageImpl;

    # getter for: Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;
    invoke-static {p3}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->access$100(Lcom/sonyericsson/cameracommon/storage/StorageImpl;)Lcom/sonyericsson/cameracommon/storage/StorageController;

    move-result-object p3

    invoke-virtual {p3, p1, v3}, Lcom/sonyericsson/cameracommon/storage/StorageController;->checkAndNotifyStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Z)V

    .line 114
    :cond_36
    iget-object p3, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;->this$0:Lcom/sonyericsson/cameracommon/storage/StorageImpl;

    # getter for: Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mCameraStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;
    invoke-static {p3}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->access$200(Lcom/sonyericsson/cameracommon/storage/StorageImpl;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    move-result-object p3

    if-eqz p3, :cond_72

    .line 115
    iget-object p3, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;->this$0:Lcom/sonyericsson/cameracommon/storage/StorageImpl;

    # getter for: Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mCameraStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;
    invoke-static {p3}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->access$200(Lcom/sonyericsson/cameracommon/storage/StorageImpl;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->updateStorageStateByAction(Ljava/lang/String;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V

    goto :goto_72

    :cond_48
    const-string p1, "onReceive: storage is not activated."

    .line 118
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    goto :goto_72

    .line 121
    :cond_52
    new-array p1, v3, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StorageType is not mountable. action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " path="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    :cond_72
    :goto_72
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.os.storage.extra.STORAGE_VOLUME"

    .line 79
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/storage/StorageVolume;

    .line 81
    invoke-static {p2, v1, p1}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getStorageType(Landroid/os/storage/StorageVolume;Ljava/lang/String;Landroid/content/Context;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object p1

    const/4 p2, 0x1

    .line 83
    new-array p2, p2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", Type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", Path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, p2, v3

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    const-string p2, "android.intent.action.MEDIA_MOUNTED"

    .line 85
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4e

    .line 86
    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;->notifyStorageStatusChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_71

    :cond_4e
    const-string p2, "android.intent.action.MEDIA_UNMOUNTED"

    .line 87
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5a

    .line 88
    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;->notifyStorageStatusChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_71

    :cond_5a
    const-string p2, "android.intent.action.MEDIA_EJECT"

    .line 89
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_66

    .line 90
    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;->notifyStorageStatusChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_71

    :cond_66
    const-string p2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    .line 91
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_71

    .line 92
    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;->notifyStorageStatusChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Ljava/lang/String;Ljava/lang/String;)V

    :cond_71
    :goto_71
    return-void
.end method
