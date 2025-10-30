.class Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;
.super Ljava/lang/Object;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FramedropProfiler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfoComparator;,
        Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfo;
    }
.end annotation


# instance fields
.field private binDurationNanos:J

.field private bins:[J

.field private dropInfoQueue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfo;",
            ">;"
        }
    .end annotation
.end field

.field private frameCount:I

.field private frameRate:I

.field private isStarted:Z

.field private latestNanos:J


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/recorder/RecordingProfile;I)V
    .registers 5

    .line 2918
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2883
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;->isStarted:Z

    .line 2919
    new-array p2, p2, [J

    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;->bins:[J

    .line 2920
    iput v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;->frameCount:I

    .line 2921
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameRate()I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;->frameRate:I

    .line 2922
    iget p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;->frameRate:I

    int-to-long p1, p1

    const-wide/32 v0, 0x3b9aca00

    div-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;->binDurationNanos:J

    const-wide/16 p1, 0x0

    .line 2923
    iput-wide p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;->latestNanos:J

    .line 2925
    new-instance p1, Ljava/util/PriorityQueue;

    new-instance p2, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfoComparator;

    invoke-direct {p2}, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfoComparator;-><init>()V

    const/16 v0, 0xa

    invoke-direct {p1, v0, p2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;->dropInfoQueue:Ljava/util/PriorityQueue;

    return-void
.end method


# virtual methods
.method declared-synchronized add(J)V
    .registers 15

    monitor-enter p0

    .line 2929
    :try_start_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;->isStarted:Z

    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 2930
    iput-wide p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;->latestNanos:J

    .line 2931
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;->isStarted:Z

    .line 2932
    iget p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;->frameCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;->frameCount:I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_bd

    .line 2933
    monitor-exit p0

    return-void

    .line 2935
    :cond_11
    :try_start_11
    iget-wide v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;->latestNanos:J

    sub-long v8, p1, v2

    .line 2936
    iget-wide v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;->binDurationNanos:J

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    sub-long v2, v8, v2

    iget-wide v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;->binDurationNanos:J

    div-long/2addr v2, v4

    long-to-int v0, v2

    const/16 v2, 0xa

    const/4 v3, 0x0

    if-gez v0, :cond_27

    move v0, v3

    goto :goto_78

    .line 2939
    :cond_27
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;->bins:[J

    array-length v4, v4

    if-lt v0, v4, :cond_78

    .line 2940
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;->bins:[J

    array-length v0, v0

    sub-int/2addr v0, v1

    .line 2941
    iget-object v10, p0, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;->dropInfoQueue:Ljava/util/PriorityQueue;

    new-instance v11, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfo;

    iget v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;->frameCount:I

    iget-wide v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;->latestNanos:J

    move-object v4, v11

    invoke-direct/range {v4 .. v9}, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfo;-><init>(IJJ)V

    invoke-virtual {v10, v11}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 2942
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;->dropInfoQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->size()I

    move-result v4

    if-le v4, v2, :cond_4c

    .line 2943
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;->dropInfoQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 2945
    :cond_4c
    new-array v4, v1, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Too long duration frame. Count "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;->frameCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Start "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ns, End "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;->latestNanos:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 2950
    :cond_78
    :goto_78
    iget v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;->frameCount:I

    if-le v4, v2, :cond_86

    .line 2951
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;->bins:[J

    aget-wide v3, v2, v0

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    aput-wide v3, v2, v0

    goto :goto_b4

    :cond_86
    if-lt v0, v1, :cond_b4

    .line 2954
    new-array v0, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Recording stats: Frame Dropped just start recording. Count "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;->frameCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", Start "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ns, End "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;->latestNanos:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2958
    :cond_b4
    :goto_b4
    iput-wide p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;->latestNanos:J

    .line 2959
    iget p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;->frameCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;->frameCount:I
    :try_end_bb
    .catchall {:try_start_11 .. :try_end_bb} :catchall_bd

    .line 2960
    monitor-exit p0

    return-void

    :catchall_bd
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized dump()V
    .registers 10

    monitor-enter p0

    .line 2964
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2966
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_44

    .line 2967
    new-array v1, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recording stats: frame rate="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;->frameRate:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    .line 2968
    new-array v1, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recording stats: histogram="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;->bins:[J

    invoke-static {v5}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    :cond_44
    move v1, v3

    .line 2970
    :goto_45
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;->dropInfoQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a4

    .line 2971
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;->dropInfoQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfo;

    .line 2972
    sget-boolean v5, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v5, :cond_9c

    .line 2973
    new-array v5, v2, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Recording stats: long duration info["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]:Number "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2974
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfo;->frameNumber:I
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfo;->access$7100(Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfo;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Timestamp "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfo;->timestampNanos:J
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfo;->access$7200(Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfo;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " ns, Duration "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2975
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfo;->durationNanos:J
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfo;->access$7000(Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfo;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " ns"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 2973
    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    .line 2978
    :cond_9c
    # invokes: Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfo;->getDropInfoMap()Ljava/util/Map;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfo;->access$7300(Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfo;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 2980
    :cond_a4
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;->bins:[J

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setFramedropProfiler([JLjava/util/List;)V
    :try_end_ad
    .catchall {:try_start_1 .. :try_end_ad} :catchall_af

    .line 2981
    monitor-exit p0

    return-void

    :catchall_af
    move-exception v0

    monitor-exit p0

    throw v0
.end method
