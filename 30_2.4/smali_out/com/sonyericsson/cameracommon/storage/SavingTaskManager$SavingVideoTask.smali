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

    .line 784
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 785
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .line 790
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    .line 792
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->getExtraOutput()Landroid/net/Uri;

    move-result-object v0

    .line 793
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 795
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v2

    .line 797
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_38

    new-array v3, v5, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Saving video started: ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    .line 798
    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->getRequestId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    .line 797
    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 816
    :cond_38
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    # getter for: Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStorageAccessSemaphoreMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$300(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Semaphore;

    .line 818
    :try_start_44
    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 819
    sget-boolean v6, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v6, :cond_68

    new-array v6, v5, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SavingVideoTask["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "]: E"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v6}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/InterruptedException; {:try_start_44 .. :try_end_68} :catch_131

    :cond_68
    const/4 v6, 0x0

    if-eqz v0, :cond_b7

    .line 828
    :try_start_6b
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    iget-object v7, v7, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-boolean v7, v7, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->addToMediaStore:Z

    if-eqz v7, :cond_a1

    const-string v7, "file"

    .line 829
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_84

    .line 830
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_94

    :cond_84
    const-string v7, "content"

    .line 831
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_94

    .line 832
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 834
    :cond_94
    :goto_94
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    # getter for: Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mUpdator:Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;
    invoke-static {v7}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$800(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;

    move-result-object v7

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    invoke-virtual {v7, v1, v8}, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->insertVideoAndSendIntent(Ljava/lang/String;Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;)Landroid/net/Uri;

    move-result-object v7
    :try_end_a0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_6b .. :try_end_a0} :catch_d0

    goto :goto_a2

    :cond_a1
    move-object v7, v0

    :goto_a2
    if-nez v7, :cond_b4

    :try_start_a4
    const-string v8, "content"

    .line 838
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b1

    goto :goto_b4

    :cond_b1
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    goto :goto_d3

    :cond_b4
    :goto_b4
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    :try_end_b6
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_a4 .. :try_end_b6} :catch_d1

    goto :goto_d3

    .line 841
    :cond_b7
    :try_start_b7
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    # getter for: Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mUpdator:Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$800(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;

    move-result-object v0

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    invoke-virtual {v0, v1, v7}, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->insertVideoAndSendIntent(Ljava/lang/String;Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;)Landroid/net/Uri;

    move-result-object v0
    :try_end_c3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_b7 .. :try_end_c3} :catch_d0

    if-eqz v0, :cond_c8

    .line 842
    :try_start_c5
    sget-object v7, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    goto :goto_ca

    :cond_c8
    sget-object v7, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    :try_end_ca
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_c5 .. :try_end_ca} :catch_ce

    :goto_ca
    move-object v11, v7

    move-object v7, v0

    move-object v0, v11

    goto :goto_d3

    :catch_ce
    move-object v7, v0

    goto :goto_d1

    :catch_d0
    move-object v7, v6

    .line 845
    :catch_d1
    :goto_d1
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL_MEMORY_FULL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    .line 847
    :goto_d3
    sget-boolean v8, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v8, :cond_f5

    new-array v8, v5, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Saving video finished: ID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    .line 848
    invoke-virtual {v10}, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->getRequestId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    .line 847
    invoke-static {v8}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 849
    :cond_f5
    iget-object v8, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    # getter for: Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStorageManager:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;
    invoke-static {v8}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$200(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    move-result-object v8

    sget-object v9, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->VIDEO_STORING_COMPLETED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    invoke-virtual {v8, v2, v9}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->updateStorageState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;)V

    .line 851
    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 852
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v3, :cond_124

    new-array v3, v5, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SavingVideoTask["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]: X"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 854
    :cond_124
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;

    # invokes: Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->notifyStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;Ljava/lang/String;)V
    invoke-static {v2, v0, v7, v3, v1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$600(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;Ljava/lang/String;)V

    .line 856
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavingVideoTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    # setter for: Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;
    invoke-static {v0, v6}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$902(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Ljava/lang/Thread;)Ljava/lang/Thread;

    return-void

    :catch_131
    const-string v0, "Failed to acquire of storage access permit."

    .line 822
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void
.end method
