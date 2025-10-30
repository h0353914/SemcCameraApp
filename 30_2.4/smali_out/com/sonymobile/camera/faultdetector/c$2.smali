.class Lcom/sonymobile/camera/faultdetector/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/camera/faultdetector/c;->a()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sonymobile/camera/faultdetector/c;


# direct methods
.method constructor <init>(Lcom/sonymobile/camera/faultdetector/c;)V
    .registers 2

    iput-object p1, p0, Lcom/sonymobile/camera/faultdetector/c$2;->a:Lcom/sonymobile/camera/faultdetector/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    new-instance v0, Lcom/sonymobile/camera/faultdetector/BuildNetworkException;

    const-string v1, "Initialization timeout"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/camera/faultdetector/BuildNetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
