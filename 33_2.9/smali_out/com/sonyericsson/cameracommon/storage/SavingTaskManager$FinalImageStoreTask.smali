.class Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$FinalImageStoreTask;
.super Ljava/lang/Object;
.source "SavingTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FinalImageStoreTask"
.end annotation


# instance fields
.field mMediaManager:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;

.field mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;)V
    .registers 3

    .line 1015
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$FinalImageStoreTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1016
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$FinalImageStoreTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    .line 1017
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->getInstance()Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$FinalImageStoreTask;->mMediaManager:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 1022
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$FinalImageStoreTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    .line 1023
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$FinalImageStoreTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    # getter for: Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStorageAccessSemaphoreMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$300(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Semaphore;

    .line 1025
    :try_start_12
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 1026
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_17} :catch_106

    const-string v3, "FinalImageStoreTask["

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3b

    :try_start_1d
    new-array v2, v4, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]: E"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_3b} :catch_106

    .line 1033
    :cond_3b
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$FinalImageStoreTask;->mMediaManager:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->poll()Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;

    move-result-object v2

    .line 1034
    sget-boolean v6, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v6, :cond_5f

    new-array v6, v4, [Ljava/lang/String;

    .line 1035
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ProcessingMedia FinalImageStoreTask "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v6}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_5f
    if-eqz v2, :cond_e0

    .line 1037
    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$FinalImageStoreTask;->storeFinalImage(Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;)Z

    move-result v6

    if-eqz v6, :cond_b8

    .line 1039
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1040
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1041
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "date_modified"

    .line 1040
    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1042
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "is_pending"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1043
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$FinalImageStoreTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    iget-object v7, v7, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1044
    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->getStoreUri()Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v6, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1045
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$FinalImageStoreTask;->mMediaManager:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->getMediaStoreId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->removeByMediaStoreId(J)V

    .line 1046
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$FinalImageStoreTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    iget-object v6, v6, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->notifyMediaStoreChange(Landroid/content/Context;)V

    .line 1047
    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->delTempThumb()V

    .line 1049
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$FinalImageStoreTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    sget-object v7, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->getStoreUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$FinalImageStoreTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    # invokes: Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->notifyStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;)V
    invoke-static {v6, v7, v2, v8}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$700(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;)V

    .line 1051
    :cond_b8
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v2, :cond_e0

    new-array v2, v4, [Ljava/lang/String;

    .line 1052
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ProcessingMedia completed getMediaDeque size:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$FinalImageStoreTask;->mMediaManager:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->getMediaDeque()Ljava/util/Deque;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Deque;->size()I

    move-result p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1054
    :cond_e0
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1055
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_105

    new-array p0, v4, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]: X"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v5

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_105
    return-void

    :catch_106
    const-string p0, "Failed to acquire of storage access permit."

    .line 1029
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void
.end method

.method storeFinalImage(Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;)Z
    .registers 9

    const-string v0, "IOException occured when closing."

    .line 1060
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$FinalImageStoreTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getImageData()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1063
    :try_start_a
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->getStoreUri()Landroid/net/Uri;

    move-result-object p1

    .line 1064
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$FinalImageStoreTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    iget-object v4, v4, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1065
    new-instance v5, Ljava/io/FileOutputStream;

    const-string v6, "rw"

    .line 1066
    invoke-virtual {v4, p1, v6, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1067
    new-instance p1, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-direct {p1, v5}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_2a} :catch_48
    .catchall {:try_start_a .. :try_end_2a} :catchall_45

    .line 1068
    :try_start_2a
    array-length v4, v1

    invoke-virtual {p1, v1, v2, v4}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->write([BII)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2e} :catch_43
    .catchall {:try_start_2a .. :try_end_2e} :catchall_63

    .line 1075
    :try_start_2e
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->flush()V

    .line 1076
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_34} :catch_35

    goto :goto_3c

    .line 1079
    :catch_35
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 1084
    :goto_3c
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$FinalImageStoreTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {p0, v3}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->setImageData([B)V

    const/4 v2, 0x1

    goto :goto_62

    :catch_43
    move-exception v1

    goto :goto_4a

    :catchall_45
    move-exception v1

    move-object p1, v3

    goto :goto_64

    :catch_48
    move-exception v1

    move-object p1, v3

    .line 1071
    :goto_4a
    :try_start_4a
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_63

    if-eqz p1, :cond_5d

    .line 1075
    :try_start_4f
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->flush()V

    .line 1076
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_55} :catch_56

    goto :goto_5d

    .line 1079
    :catch_56
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 1084
    :cond_5d
    :goto_5d
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$FinalImageStoreTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {p0, v3}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->setImageData([B)V

    :goto_62
    return v2

    :catchall_63
    move-exception v1

    :goto_64
    if-eqz p1, :cond_74

    .line 1075
    :try_start_66
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->flush()V

    .line 1076
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_6c} :catch_6d

    goto :goto_74

    .line 1079
    :catch_6d
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 1084
    :cond_74
    :goto_74
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$FinalImageStoreTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {p0, v3}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->setImageData([B)V

    .line 1086
    throw v1
.end method
