.class Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomRatioTask;
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
    name = "SetZoomRatioTask"
.end annotation


# instance fields
.field private final mZoomRatio:F

.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method public constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;F)V
    .registers 3

    .line 1165
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomRatioTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1166
    iput p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomRatioTask;->mZoomRatio:F

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1171
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomRatioTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v0

    if-nez v0, :cond_12

    .line 1172
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomRatioTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    invoke-direct {v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;-><init>()V

    # setter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$002(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    .line 1174
    :cond_12
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomRatioTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomRatioTask;->mZoomRatio:F

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->updateZoomRatio(F)V

    .line 1175
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->PINCH:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->toString()Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mZoomTrigger:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$3900()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 1176
    iget v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomRatioTask;->mZoomRatio:F

    iget-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomRatioTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->preZoomRatio:F
    invoke-static {v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$4000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_43

    .line 1177
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->PINCH_OUT:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->toString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mZoomTrigger:Ljava/lang/String;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$3902(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_58

    .line 1178
    :cond_43
    iget v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomRatioTask;->mZoomRatio:F

    iget-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomRatioTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->preZoomRatio:F
    invoke-static {v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$4000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_58

    .line 1179
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->PINCH_IN:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->toString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mZoomTrigger:Ljava/lang/String;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$3902(Ljava/lang/String;)Ljava/lang/String;

    .line 1182
    :cond_58
    :goto_58
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomRatioTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    iget p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomRatioTask;->mZoomRatio:F

    # setter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->preZoomRatio:F
    invoke-static {v0, p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$4002(Lcom/sonymobile/cameracommon/research/ResearchUtil;F)F

    return-void
.end method
