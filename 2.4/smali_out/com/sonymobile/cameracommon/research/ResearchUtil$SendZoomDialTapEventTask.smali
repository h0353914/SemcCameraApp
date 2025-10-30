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
.method public constructor <init>(Ljava/util/List;F)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;F)V"
        }
    .end annotation

    .line 1217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1218
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendZoomDialTapEventTask;->mZoomRatios:Ljava/util/List;

    .line 1219
    iput p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendZoomDialTapEventTask;->mZoom:F

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1224
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendZoomDialTapEventTask;->mZoomRatios:Ljava/util/List;

    iget v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendZoomDialTapEventTask;->mZoom:F

    float-to-int v1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1225
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%.1f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 1226
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 1225
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const v1, 0x3d4ccccd    # 0.05f

    sub-float v1, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_40

    .line 1228
    invoke-static {v4}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getZoomParameter(I)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendZoomDialTapEvent(Ljava/lang/String;)V

    goto :goto_4c

    :cond_40
    float-to-int v0, v0

    .line 1231
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getZoomParameter(I)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1230
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendZoomDialTapEvent(Ljava/lang/String;)V

    :goto_4c
    return-void
.end method
