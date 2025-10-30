.class Lcom/sonymobile/cameracommon/research/ResearchUtil$OnCreateTask;
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
    name = "OnCreateTask"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V
    .registers 2

    .line 246
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnCreateTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 249
    invoke-static {}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->onCreate()V

    return-void
.end method
