.class Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;
.super Ljava/lang/Object;
.source "LocalResearchUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/research/LocalResearchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformanceData"
.end annotation


# instance fields
.field private mIsValid:Z

.field private final mKey:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

.field private mStartInMillis:J

.field private mStopInMillis:J

.field final synthetic this$0:Lcom/sonyericsson/android/camera/research/LocalResearchUtil;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/research/LocalResearchUtil;Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V
    .registers 5

    .line 914
    iput-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->this$0:Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 910
    iput-wide v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mStartInMillis:J

    .line 911
    iput-wide v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mStopInMillis:J

    const/4 p1, 0x0

    .line 912
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mIsValid:Z

    .line 915
    iput-object p2, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mKey:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;)Z
    .registers 1

    .line 908
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->isValid()Z

    move-result p0

    return p0
.end method

.method private isValid()Z
    .registers 5

    .line 961
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mStartInMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mIsValid:Z

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method


# virtual methods
.method public clear()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 965
    iput-wide v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mStartInMillis:J

    .line 966
    iput-wide v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mStopInMillis:J

    const/4 v0, 0x0

    .line 967
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mIsValid:Z

    return-void
.end method

.method public setInvalid()V
    .registers 2

    const/4 v0, 0x0

    .line 957
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mIsValid:Z

    return-void
.end method

.method public setValid()V
    .registers 2

    const/4 v0, 0x1

    .line 953
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mIsValid:Z

    return-void
.end method

.method public start()V
    .registers 3

    .line 919
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mStartInMillis:J

    return-void
.end method

.method public stop()V
    .registers 12

    .line 923
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mStopInMillis:J

    .line 924
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$research$LocalResearchUtil$MeasurementKey:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mKey:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, ", isHeated: "

    const-string v2, ": "

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_d6

    goto/16 :goto_d4

    .line 942
    :pswitch_1b
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    iget-object v5, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mKey:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->toString()Ljava/lang/String;

    move-result-object v5

    iget-wide v6, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mStopInMillis:J

    iget-wide v8, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mStartInMillis:J

    sub-long/2addr v6, v8

    iget-object v8, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->this$0:Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    .line 943
    # invokes: Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->isHeated()Z
    invoke-static {v8}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->access$400(Lcom/sonyericsson/android/camera/research/LocalResearchUtil;)Z

    move-result v8

    .line 942
    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendPerformanceData(Ljava/lang/String;JZ)V

    .line 944
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d4

    new-array v0, v4, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mKey:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mStopInMillis:J

    iget-wide v6, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mStartInMillis:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->this$0:Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    .line 945
    # invokes: Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->isHeated()Z
    invoke-static {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->access$400(Lcom/sonyericsson/android/camera/research/LocalResearchUtil;)Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    .line 944
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_d4

    .line 933
    :pswitch_6d
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v5

    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mKey:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->toString()Ljava/lang/String;

    move-result-object v6

    iget-wide v7, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mStopInMillis:J

    iget-wide v9, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mStartInMillis:J

    sub-long/2addr v7, v9

    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->this$0:Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    .line 934
    # invokes: Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->isHeated()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->access$400(Lcom/sonyericsson/android/camera/research/LocalResearchUtil;)Z

    move-result v9

    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->this$0:Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    # invokes: Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getBatteryLevel()Ljava/lang/String;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->access$500(Lcom/sonyericsson/android/camera/research/LocalResearchUtil;)Ljava/lang/String;

    move-result-object v10

    .line 933
    invoke-virtual/range {v5 .. v10}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendPerformanceData(Ljava/lang/String;JZLjava/lang/String;)V

    .line 935
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d4

    new-array v0, v4, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mKey:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mStopInMillis:J

    iget-wide v6, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mStartInMillis:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->this$0:Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    .line 936
    # invokes: Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->isHeated()Z
    invoke-static {v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->access$400(Lcom/sonyericsson/android/camera/research/LocalResearchUtil;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", BatteryLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->this$0:Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    .line 937
    # invokes: Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getBatteryLevel()Ljava/lang/String;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->access$500(Lcom/sonyericsson/android/camera/research/LocalResearchUtil;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    .line 935
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d4
    :goto_d4
    return-void

    nop

    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
    .end packed-switch
.end method
