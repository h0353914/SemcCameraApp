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

    .line 72
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;->this$0:Lcom/sonyericsson/cameracommon/storage/StorageImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/storage/StorageImpl;Lcom/sonyericsson/cameracommon/storage/StorageImpl$1;)V
    .registers 3

    .line 72
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;-><init>(Lcom/sonyericsson/cameracommon/storage/StorageImpl;)V

    return-void
.end method

.method private notifyStorageStatusChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 105
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

    .line 113
    iget-object p3, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;->this$0:Lcom/sonyericsson/cameracommon/storage/StorageImpl;

    invoke-virtual {p3}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->isStorageReadable()Z

    move-result p3

    if-eqz p3, :cond_48

    const-string p3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    .line 114
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_36

    .line 115
    iget-object p3, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;->this$0:Lcom/sonyericsson/cameracommon/storage/StorageImpl;

    # getter for: Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mStorageController:Lcom/sonyericsson/cameracommon/storage/StorageController;
    invoke-static {p3}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->access$100(Lcom/sonyericsson/cameracommon/storage/StorageImpl;)Lcom/sonyericsson/cameracommon/storage/StorageController;

    move-result-object p3

    invoke-virtual {p3, p1, v3}, Lcom/sonyericsson/cameracommon/storage/StorageController;->checkAndNotifyStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Z)V

    .line 118
    :cond_36
    iget-object p3, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;->this$0:Lcom/sonyericsson/cameracommon/storage/StorageImpl;

    # getter for: Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mCameraStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;
    invoke-static {p3}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->access$200(Lcom/sonyericsson/cameracommon/storage/StorageImpl;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    move-result-object p3

    if-eqz p3, :cond_76

    .line 119
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;->this$0:Lcom/sonyericsson/cameracommon/storage/StorageImpl;

    # getter for: Lcom/sonyericsson/cameracommon/storage/StorageImpl;->mCameraStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->access$200(Lcom/sonyericsson/cameracommon/storage/StorageImpl;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->updateStorageStateByAction(Ljava/lang/String;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V

    goto :goto_76

    :cond_48
    const-string p0, "onReceive: storage is not activated."

    .line 122
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    goto :goto_76

    :cond_52
    new-array p0, v3, [Ljava/lang/String;

    .line 125
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "StorageType is not mountable. action = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " path="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v2

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    :cond_76
    :goto_76
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 77
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 79
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v3, "android.os.storage.extra.STORAGE_VOLUME"

    const/16 v4, 0x21

    if-ge v2, v4, :cond_1b

    .line 80
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/storage/StorageVolume;

    goto :goto_23

    .line 82
    :cond_1b
    const-class v2, Landroid/os/storage/StorageVolume;

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/storage/StorageVolume;

    .line 85
    :goto_23
    invoke-static {p2, v1, p1}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getStorageType(Landroid/os/storage/StorageVolume;Ljava/lang/String;Landroid/content/Context;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    const-string p2, "android.intent.action.MEDIA_MOUNTED"

    .line 89
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_63

    .line 90
    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;->notifyStorageStatusChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_86

    :cond_63
    const-string p2, "android.intent.action.MEDIA_UNMOUNTED"

    .line 91
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6f

    .line 92
    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;->notifyStorageStatusChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_86

    :cond_6f
    const-string p2, "android.intent.action.MEDIA_EJECT"

    .line 93
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7b

    .line 94
    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;->notifyStorageStatusChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_86

    :cond_7b
    const-string p2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    .line 95
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_86

    .line 96
    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageBroadcastReceiver;->notifyStorageStatusChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Ljava/lang/String;Ljava/lang/String;)V

    :cond_86
    :goto_86
    return-void
.end method
