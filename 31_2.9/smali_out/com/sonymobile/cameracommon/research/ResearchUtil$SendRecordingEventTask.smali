.class Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;
.super Ljava/lang/Object;
.source "ResearchUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/ResearchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendRecordingEventTask"
.end annotation


# instance fields
.field private final mIsLaunchViewerAfterRec:Z

.field private final mRecTimeMillis:I

.field private final mSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mStopOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

.field private final mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;IZLjava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;",
            "Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;",
            "IZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 677
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 678
    iput-object p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    .line 679
    iput-object p3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mStopOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    .line 680
    iput p4, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mRecTimeMillis:I

    .line 681
    iput-boolean p5, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mIsLaunchViewerAfterRec:Z

    .line 682
    iput-object p6, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mSettings:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;IZLjava/util/Map;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V
    .registers 8

    .line 656
    invoke-direct/range {p0 .. p6}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;IZLjava/util/Map;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 687
    iget v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mRecTimeMillis:I

    div-int/lit16 v0, v0, 0x3e8

    if-ltz v0, :cond_19e

    .line 690
    iget-boolean v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mIsLaunchViewerAfterRec:Z

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    if-eqz v1, :cond_13

    .line 691
    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-virtual {v2, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setUserOperation(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;)V

    .line 695
    :cond_13
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 696
    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mStopOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    .line 697
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 698
    iget-object v4, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v4}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_8e

    .line 699
    iget-object v4, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v4}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v4

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mRecordBySideSense:Z
    invoke-static {v4}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->access$2900(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 700
    iget-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v1

    # setter for: Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mRecordBySideSense:Z
    invoke-static {v1, v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->access$2902(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;Z)Z

    .line 701
    iget-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v1

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mSideSensePosition:Landroid/graphics/Point;
    invoke-static {v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->access$200(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Landroid/graphics/Point;

    move-result-object v1

    .line 702
    sget-object v4, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->USER_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    if-ne v2, v4, :cond_4d

    .line 703
    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->SIDE_SENSE_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    .line 707
    :cond_4d
    iget-object v4, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v4}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->getParameterListForRecording()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_77

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    .line 708
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5b

    :cond_77
    const-string v4, "is_eye_detected"

    .line 710
    iget-object v6, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    .line 711
    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v6}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v6

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mEyeDetected:Z
    invoke-static {v6}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->access$300(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Z

    move-result v6

    .line 710
    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    .line 711
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 710
    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8e
    const-string v4, "side_sense_position_x"

    .line 713
    iget v6, v1, Landroid/graphics/Point;->x:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "side_sense_position_y"

    .line 714
    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "rec_time"

    .line 715
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "resume"

    .line 716
    iget-object v4, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordResume:I
    invoke-static {v4}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$3000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "snapshot"

    .line 717
    iget-object v4, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordSnapshot:I
    invoke-static {v4}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$3100(Lcom/sonymobile/cameracommon/research/ResearchUtil;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "stop_factor"

    .line 718
    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "zoom_times"

    .line 719
    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mZoomTimesInRec:I
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$3200()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    # setter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mZoomTimesInRec:I
    invoke-static {v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$3202(I)I

    .line 722
    iget-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    sget-object v4, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    iget-object v6, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mSettings:Ljava/util/Map;

    if-nez v6, :cond_f1

    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    :cond_f1
    # invokes: Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEventAllSettings(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/util/Map;Ljava/util/Map;)V
    invoke-static {v1, v4, v3, v6}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$1000(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/util/Map;Ljava/util/Map;)V

    .line 726
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 727
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "_Sec_"

    .line 728
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 729
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordResume:I
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$3000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "_Resume_"

    .line 730
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 731
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordSnapshot:I
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$3100(Lcom/sonymobile/cameracommon/research/ResearchUtil;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "_Snapshot_"

    .line 732
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 734
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # setter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordResume:I
    invoke-static {v0, v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$3002(Lcom/sonymobile/cameracommon/research/ResearchUtil;I)I

    .line 735
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # setter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordSnapshot:I
    invoke-static {v0, v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$3102(Lcom/sonymobile/cameracommon/research/ResearchUtil;I)I

    .line 737
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v0

    if-eqz v0, :cond_151

    .line 738
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->toStringForRecording()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 739
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->clearRecordingMaxFaceNum()V

    .line 741
    :cond_151
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mSettings:Ljava/util/Map;

    if-eqz v0, :cond_186

    const-string v3, "OFF"

    const-string v4, "SLOW_MOTION"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_186

    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mSettings:Ljava/util/Map;

    const-string v3, "VIDEO_SIZE"

    .line 742
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_174

    goto :goto_186

    .line 745
    :cond_174
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mSettings:Ljava/util/Map;

    const-string v3, "VIDEO_SIZE"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/sonymobile/cameracommon/research/ResearchUtil;->getVideoSizeEventLabel(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$3300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_18f

    :cond_186
    :goto_186
    const-string v0, "Other"

    .line 743
    # invokes: Lcom/sonymobile/cameracommon/research/ResearchUtil;->getVideoSizeEventLabel(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$3300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 748
    :goto_18f
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->RECORDING:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v2, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;)V

    :cond_19e
    return-void
.end method
