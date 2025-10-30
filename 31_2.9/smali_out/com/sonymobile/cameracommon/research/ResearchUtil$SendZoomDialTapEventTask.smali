.class Lcom/sonymobile/cameracommon/research/ResearchUtil$SendZoomDialTapEventTask;
.super Ljava/lang/Object;
.source "ResearchUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/ResearchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SendZoomDialTapEventTask"
.end annotation


# instance fields
.field private final mZoom:F

.field private final mZoomRatios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;FZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;FZ)V"
        }
    .end annotation

    .line 1213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1214
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendZoomDialTapEventTask;->mZoomRatios:Ljava/util/List;

    .line 1215
    iput p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendZoomDialTapEventTask;->mZoom:F

    .line 1216
    # setter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mIsRecording:Z
    invoke-static {p3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$4102(Z)Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1221
    iget v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendZoomDialTapEventTask;->mZoom:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1b

    const v0, 0x3f19999a    # 0.6f

    .line 1223
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getZoomParameter(F)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mZoomTrigger:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$3900()Ljava/lang/String;

    move-result-object v1

    .line 1222
    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendZoomDialTapEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    :cond_1b
    float-to-int v0, v0

    int-to-float v0, v0

    .line 1226
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getZoomParameter(F)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mZoomTrigger:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$3900()Ljava/lang/String;

    move-result-object v1

    .line 1225
    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendZoomDialTapEvent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2c
    return-void
.end method
