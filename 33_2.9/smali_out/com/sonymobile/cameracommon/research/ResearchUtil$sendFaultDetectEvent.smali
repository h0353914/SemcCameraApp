.class Lcom/sonymobile/cameracommon/research/ResearchUtil$sendFaultDetectEvent;
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
    name = "sendFaultDetectEvent"
.end annotation


# instance fields
.field private final mAction:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 2399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2400
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendFaultDetectEvent;->mAction:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V
    .registers 3

    .line 2390
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendFaultDetectEvent;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 2405
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendFaultDetectEvent;->mAction:Ljava/lang/String;

    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendFaultDetectEvent(Ljava/lang/String;)V

    return-void
.end method
