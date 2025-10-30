.class Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;
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
    name = "SavingVideoTask"
.end annotation


# instance fields
.field final mRequest:Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;)V
    .registers 3

    .line 849
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 850
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 855
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    .line 857
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->getExtraOutput()Landroid/net/Uri;

    move-result-object v0

    .line 858
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 859
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v2

    .line 861
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_3a

    new-array v3, v5, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Saving video started: ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    .line 862
    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->getRequestId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    .line 861
    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 880
    :cond_3a
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    # getter for: Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStorageAccessSemaphoreMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$300(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Semaphore;

    .line 882
    :try_start_46
    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 883
    sget-boolean v6, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z
    :try_end_4b
    .catch Ljava/lang/InterruptedException; {:try_start_46 .. :try_end_4b} :catch_13c

    const-string v7, "SavingVideoTask["

    if-eqz v6, :cond_6d

    :try_start_4f
    new-array v6, v5, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]: E"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v4

    invoke-static {v6}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_6d
    .catch Ljava/lang/InterruptedException; {:try_start_4f .. :try_end_6d} :catch_13c

    :cond_6d
    const/4 v6, 0x0

    if-eqz v0, :cond_c4

    .line 892
    :try_start_70
    iget-object v8, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    iget-object v8, v8, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-boolean v8, v8, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->addToMediaStore:Z
    :try_end_76
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_70 .. :try_end_76} :catch_d8

    const-string v9, "content"

    if-eqz v8, :cond_b0

    :try_start_7a
    const-string v8, "file"

    .line 893
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_90

    .line 894
    iget-object v8, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->setFilePath(Ljava/lang/String;)V

    goto :goto_a3

    .line 895
    :cond_90
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a3

    .line 896
    iget-object v8, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->setFilePath(Ljava/lang/String;)V

    .line 898
    :cond_a3
    :goto_a3
    iget-object v8, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    # getter for: Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mUpdator:Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;
    invoke-static {v8}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$1000(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;

    move-result-object v8

    iget-object v10, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    invoke-virtual {v8, v1, v10}, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->insertVideoAndSendIntent(Ljava/lang/String;Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;)Landroid/net/Uri;

    move-result-object v1
    :try_end_af
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_7a .. :try_end_af} :catch_d8

    goto :goto_b1

    :cond_b0
    move-object v1, v0

    :goto_b1
    if-nez v1, :cond_c1

    .line 902
    :try_start_b3
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_be

    goto :goto_c1

    .line 903
    :cond_be
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    goto :goto_db

    :cond_c1
    :goto_c1
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    :try_end_c3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_b3 .. :try_end_c3} :catch_d9

    goto :goto_db

    .line 905
    :cond_c4
    :try_start_c4
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    # getter for: Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mUpdator:Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$1000(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;

    move-result-object v0

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    invoke-virtual {v0, v1, v8}, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->insertVideoAndSendIntent(Ljava/lang/String;Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;)Landroid/net/Uri;

    move-result-object v1
    :try_end_d0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_c4 .. :try_end_d0} :catch_d8

    if-eqz v1, :cond_d5

    .line 906
    :try_start_d2
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    goto :goto_db

    :cond_d5
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    :try_end_d7
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_d2 .. :try_end_d7} :catch_d9

    goto :goto_db

    :catch_d8
    move-object v1, v6

    .line 909
    :catch_d9
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL_MEMORY_FULL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    .line 911
    :goto_db
    sget-boolean v8, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v8, :cond_ff

    new-array v8, v5, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Saving video finished: ID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    .line 912
    invoke-virtual {v10}, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->getRequestId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    .line 911
    invoke-static {v8}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 913
    :cond_ff
    iget-object v8, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    # getter for: Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;
    invoke-static {v8}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$500(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    move-result-object v8

    sget-object v9, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->VIDEO_STORING_COMPLETED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    invoke-virtual {v8, v2, v9}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->updateStorageState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    .line 915
    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 916
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v3, :cond_12f

    new-array v3, v5, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "]: X"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 918
    :cond_12f
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    # invokes: Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->notifyStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;)V
    invoke-static {v2, v0, v1, v3}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$700(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;)V

    .line 920
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    # setter for: Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;
    invoke-static {p0, v6}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$1102(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Ljava/lang/Thread;)Ljava/lang/Thread;

    return-void

    :catch_13c
    const-string p0, "Failed to acquire of storage access permit."

    .line 886
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void
.end method
