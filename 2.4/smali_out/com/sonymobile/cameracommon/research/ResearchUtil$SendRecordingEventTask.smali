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

    .line 691
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 692
    iput-object p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    .line 693
    iput-object p3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mStopOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    .line 694
    iput p4, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mRecTimeMillis:I

    .line 695
    iput-boolean p5, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mIsLaunchViewerAfterRec:Z

    .line 696
    iput-object p6, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mSettings:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;IZLjava/util/Map;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V
    .registers 8

    .line 670
    invoke-direct/range {p0 .. p6}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;IZLjava/util/Map;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 701
    iget v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mRecTimeMillis:I

    div-int/lit16 v0, v0, 0x3e8

    if-ltz v0, :cond_1df

    .line 704
    iget-boolean v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mIsLaunchViewerAfterRec:Z

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    if-eqz v1, :cond_13

    .line 705
    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-virtual {v2, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setUserOperation(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;)V

    .line 709
    :cond_13
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 710
    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mStopOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    .line 711
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 712
    iget-object v4, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v4}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_df

    .line 713
    iget-object v4, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v4}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v4

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mRecordBySideSense:Z
    invoke-static {v4}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->access$2900(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 714
    iget-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v1

    # setter for: Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mRecordBySideSense:Z
    invoke-static {v1, v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->access$2902(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;Z)Z

    .line 715
    iget-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v1

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mSideSensePosition:Landroid/graphics/Point;
    invoke-static {v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->access$200(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Landroid/graphics/Point;

    move-result-object v1

    .line 716
    sget-object v4, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->USER_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    if-ne v2, v4, :cond_4d

    .line 717
    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->SIDE_SENSE_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    .line 721
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

    .line 722
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

    .line 724
    iget-object v6, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    .line 725
    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v6}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v6

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mEyeDetected:Z
    invoke-static {v6}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->access$300(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Z

    move-result v6

    .line 724
    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    .line 725
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 724
    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    iget-object v4, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v4}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v4

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mHistogramForFramedrop:Ljava/lang/String;
    invoke-static {v4}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->access$3000(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b2

    const-string v4, "frame_statistics.histogram"

    .line 727
    iget-object v6, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    .line 728
    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v6}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v6

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mHistogramForFramedrop:Ljava/lang/String;
    invoke-static {v6}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->access$3000(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Ljava/lang/String;

    move-result-object v6

    .line 727
    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    iget-object v4, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v4}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->clearHistogramForFramedrop()V

    .line 731
    :cond_b2
    iget-object v4, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v4}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v4

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mDropInfoForFramedrop:Ljava/lang/String;
    invoke-static {v4}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->access$3100(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d6

    const-string v4, "frame_statistics.long_frames"

    .line 732
    iget-object v6, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    .line 733
    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v6}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v6

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mDropInfoForFramedrop:Ljava/lang/String;
    invoke-static {v6}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->access$3100(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Ljava/lang/String;

    move-result-object v6

    .line 732
    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    iget-object v4, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v4}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->clearDropInfoForFramedrop()V

    .line 736
    :cond_d6
    iget-object v4, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v4}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->clearFocusEye()V

    :cond_df
    const-string v4, "side_sense_position_x"

    .line 738
    iget v6, v1, Landroid/graphics/Point;->x:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "side_sense_position_y"

    .line 739
    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "rec_time"

    .line 740
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "resume"

    .line 741
    iget-object v4, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordResume:I
    invoke-static {v4}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$3200(Lcom/sonymobile/cameracommon/research/ResearchUtil;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "snapshot"

    .line 742
    iget-object v4, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordSnapshot:I
    invoke-static {v4}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$3300(Lcom/sonymobile/cameracommon/research/ResearchUtil;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "stop_factor"

    .line 743
    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    iget-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    sget-object v4, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    iget-object v6, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mSettings:Ljava/util/Map;

    if-nez v6, :cond_132

    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    :cond_132
    # invokes: Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEventAllSettings(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/util/Map;Ljava/util/Map;)V
    invoke-static {v1, v4, v3, v6}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$1100(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/util/Map;Ljava/util/Map;)V

    .line 749
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 750
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "_Sec_"

    .line 751
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 752
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordResume:I
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$3200(Lcom/sonymobile/cameracommon/research/ResearchUtil;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "_Resume_"

    .line 753
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 754
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordSnapshot:I
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$3300(Lcom/sonymobile/cameracommon/research/ResearchUtil;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "_Snapshot_"

    .line 755
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 757
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # setter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordResume:I
    invoke-static {v0, v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$3202(Lcom/sonymobile/cameracommon/research/ResearchUtil;I)I

    .line 758
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # setter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordSnapshot:I
    invoke-static {v0, v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$3302(Lcom/sonymobile/cameracommon/research/ResearchUtil;I)I

    .line 760
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v0

    if-eqz v0, :cond_192

    .line 761
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->toStringForRecording()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 762
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->clearRecordingMaxFaceNum()V

    .line 764
    :cond_192
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mSettings:Ljava/util/Map;

    if-eqz v0, :cond_1c7

    const-string v3, "OFF"

    const-string v4, "SLOW_MOTION"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c7

    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mSettings:Ljava/util/Map;

    const-string v3, "VIDEO_SIZE"

    .line 765
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b5

    goto :goto_1c7

    .line 768
    :cond_1b5
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mSettings:Ljava/util/Map;

    const-string v3, "VIDEO_SIZE"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/sonymobile/cameracommon/research/ResearchUtil;->getVideoSizeEventLabel(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$3400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1d0

    :cond_1c7
    :goto_1c7
    const-string v0, "Other"

    .line 766
    # invokes: Lcom/sonymobile/cameracommon/research/ResearchUtil;->getVideoSizeEventLabel(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$3400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 771
    :goto_1d0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->RECORDING:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v2, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1df
    return-void
.end method
