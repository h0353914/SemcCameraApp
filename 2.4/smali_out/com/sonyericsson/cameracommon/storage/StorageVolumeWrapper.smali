.class public Lcom/sonyericsson/cameracommon/storage/StorageVolumeWrapper;
.super Ljava/lang/Object;
.source "StorageVolumeWrapper.java"


# instance fields
.field private mStorageVolume:Landroid/os/storage/StorageVolume;


# direct methods
.method public constructor <init>(Landroid/os/storage/StorageVolume;)V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/StorageVolumeWrapper;->mStorageVolume:Landroid/os/storage/StorageVolume;

    return-void
.end method


# virtual methods
.method public getMaxFileSize()J
    .registers 5

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageVolumeWrapper;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getMaxFileSize"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageVolumeWrapper;->mStorageVolume:Landroid/os/storage/StorageVolume;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1d} :catch_1e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_1d} :catch_1e
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1d} :catch_1e

    return-wide v0

    :catch_1e
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getUuid()Ljava/lang/String;
    .registers 5

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageVolumeWrapper;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getUuid"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageVolumeWrapper;->mStorageVolume:Landroid/os/storage/StorageVolume;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_19} :catch_1a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_19} :catch_1a
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_1f

    :catch_1a
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_1f
    return-object v0
.end method
