.class public Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;
.super Ljava/lang/Object;
.source "CapturePerformanceLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CapturePerformance"

.field private static sBurstTimeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCaptureTimeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;",
            ">;"
        }
    .end annotation
.end field

.field private static sNumOfBurstTaken:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sCaptureTimeMap:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sBurstTimeList:Ljava/util/List;

    const/4 v0, 0x0

    .line 41
    sput v0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sNumOfBurstTaken:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static complete(Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;)V
    .registers 4

    .line 86
    sget-object v0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sCaptureTimeMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->getDateTaken()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->log()V

    .line 87
    sget-object v0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sCaptureTimeMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->getDateTaken()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static complete(Lcom/sonyericsson/cameracommon/storage/SavingRequest;)V
    .registers 4

    .line 94
    sget-object v0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sCaptureTimeMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->getDateTaken()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;

    .line 95
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->getCaptureIdForPredictiveCapture()I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->burstNum:I

    .line 96
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->log()V

    .line 97
    sget-object v1, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->BURST:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->savedFileType:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    if-ne v1, v2, :cond_26

    .line 98
    sget-object v1, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sBurstTimeList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_26
    sget-object v0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sCaptureTimeMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->getDateTaken()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget p0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sNumOfBurstTaken:I

    if-lez p0, :cond_45

    sget-object v0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sBurstTimeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p0, v0, :cond_45

    .line 103
    invoke-static {}, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->completeBurst()V

    const/4 p0, 0x0

    .line 104
    sput p0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sNumOfBurstTaken:I

    :cond_45
    return-void
.end method

.method private static completeBurst()V
    .registers 16

    .line 184
    sget-object v0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sBurstTimeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    move-wide v5, v3

    move-wide v7, v5

    move-wide v9, v7

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;

    .line 185
    iget-wide v12, v11, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->writeFileDone:J

    iget-wide v14, v11, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->startSave:J

    sub-long/2addr v12, v14

    add-long/2addr v5, v12

    .line 186
    iget-wide v12, v11, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->scanFileDone:J

    iget-wide v14, v11, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->startScan:J

    sub-long/2addr v12, v14

    add-long/2addr v7, v12

    cmp-long v12, v9, v1

    if-eqz v12, :cond_2c

    .line 189
    iget-wide v12, v11, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->snapshotDone:J

    sub-long/2addr v12, v9

    add-long/2addr v3, v12

    .line 191
    :cond_2c
    iget-wide v9, v11, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->snapshotDone:J

    goto :goto_c

    .line 194
    :cond_2f
    sget-object v0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sBurstTimeList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;

    iget-wide v0, v0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->startSnapshot:J

    .line 195
    sget-object v2, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sBurstTimeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;

    iget-wide v9, v2, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;->scanFileDone:J

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "==============================================="

    .line 198
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n"

    .line 199
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "Time spent to capture "

    .line 200
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    sget-object v11, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sBurstTimeList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " images = "

    .line 202
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v9, v0

    .line 203
    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " [ms]"

    .line 204
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    .line 205
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Average Capture Duration = "

    .line 206
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    sget-object v0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sBurstTimeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    div-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " [ms]"

    .line 208
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    .line 209
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Average Save Duration = "

    .line 210
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    sget-object v0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sBurstTimeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    div-long/2addr v5, v0

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " [ms]"

    .line 212
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    .line 213
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Average ScanFile Duration = "

    .line 214
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    sget-object v0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sBurstTimeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    div-long/2addr v7, v0

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " [ms]"

    .line 216
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    .line 217
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "==============================================="

    .line 218
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "CapturePerformance"

    .line 219
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    sget-object v0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sBurstTimeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static create(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;)Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;
    .registers 6

    .line 50
    new-instance v0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->savedFileType:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;-><init>(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;)V

    .line 51
    sget-object v1, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sCaptureTimeMap:Ljava/util/Map;

    monitor-enter v1

    .line 52
    :try_start_a
    sget-object v2, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sCaptureTimeMap:Ljava/util/Map;

    iget-wide v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mDateTaken:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    monitor-exit v1

    return-object v0

    :catchall_17
    move-exception p0

    .line 54
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_17

    throw p0
.end method

.method public static create(Lcom/sonyericsson/cameracommon/storage/SavingRequest;)Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;
    .registers 6

    .line 61
    new-instance v0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;-><init>()V

    .line 62
    sget-object v1, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sCaptureTimeMap:Ljava/util/Map;

    monitor-enter v1

    .line 63
    :try_start_8
    sget-object v2, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sCaptureTimeMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->getDateTaken()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    monitor-exit v1

    return-object v0

    :catchall_17
    move-exception p0

    .line 65
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public static get(Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;)Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;
    .registers 4

    .line 72
    sget-object v0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sCaptureTimeMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;->getDateTaken()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;

    return-object p0
.end method

.method public static get(Lcom/sonyericsson/cameracommon/storage/SavingRequest;)Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;
    .registers 4

    .line 79
    sget-object v0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sCaptureTimeMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->getDateTaken()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger$TimeLog;

    return-object p0
.end method

.method public static setNumOfBurstTaken(I)V
    .registers 1

    .line 114
    sput p0, Lcom/sonyericsson/android/camera/util/CapturePerformanceLogger;->sNumOfBurstTaken:I

    return-void
.end method
