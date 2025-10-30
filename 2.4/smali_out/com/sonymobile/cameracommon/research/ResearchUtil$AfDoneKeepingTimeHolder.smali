.class Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;
.super Ljava/lang/Object;
.source "ResearchUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/ResearchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AfDoneKeepingTimeHolder"
.end annotation


# instance fields
.field private mContinuousCapture:Z

.field private mTimeAfDone:J

.field private mTimeCapture:J


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1598
    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mContinuousCapture:Z

    const-wide/16 v0, 0x0

    .line 1599
    iput-wide v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mTimeAfDone:J

    .line 1600
    iput-wide v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mTimeCapture:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V
    .registers 2

    .line 1597
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 1632
    iput-wide v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mTimeAfDone:J

    .line 1633
    iput-wide v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mTimeCapture:J

    const/4 v0, 0x0

    .line 1634
    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mContinuousCapture:Z

    return-void
.end method

.method public getParameter()Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    .registers 8

    .line 1618
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mContinuousCapture:Z

    if-eqz v0, :cond_7

    .line 1619
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->CONTINUOUS_CAPTURE:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    goto :goto_3e

    .line 1620
    :cond_7
    iget-wide v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mTimeAfDone:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    .line 1622
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->NOT_TARGET:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    goto :goto_3e

    .line 1624
    :cond_12
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_35

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AfDoneKeepingTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mTimeCapture:J

    iget-wide v5, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mTimeAfDone:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1626
    :cond_35
    iget-wide v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mTimeCapture:J

    iget-wide v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mTimeAfDone:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->getType(J)Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    move-result-object v0

    .line 1628
    :goto_3e
    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getAfDoneKeepingTimeParameter(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v0

    return-object v0
.end method

.method public updateContinuousCapture(Z)V
    .registers 2

    .line 1603
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mContinuousCapture:Z

    return-void
.end method

.method public updateTimeAfDone(J)V
    .registers 3

    .line 1607
    iput-wide p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mTimeAfDone:J

    return-void
.end method

.method public updateTimeCapture(J)V
    .registers 7

    .line 1611
    iget-wide v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mTimeCapture:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 1612
    iput-wide p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mTimeCapture:J

    :cond_a
    return-void
.end method
