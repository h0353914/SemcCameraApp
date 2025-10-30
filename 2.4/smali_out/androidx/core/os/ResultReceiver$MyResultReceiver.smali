.class Landroidx/core/os/ResultReceiver$MyResultReceiver;
.super Landroidx/core/os/IResultReceiver$Stub;
.source "ResultReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/os/ResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyResultReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/os/ResultReceiver;


# direct methods
.method constructor <init>(Landroidx/core/os/ResultReceiver;)V
    .registers 2

    .line 65
    iput-object p1, p0, Landroidx/core/os/ResultReceiver$MyResultReceiver;->this$0:Landroidx/core/os/ResultReceiver;

    invoke-direct {p0}, Landroidx/core/os/IResultReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(ILandroid/os/Bundle;)V
    .registers 6

    .line 68
    iget-object v0, p0, Landroidx/core/os/ResultReceiver$MyResultReceiver;->this$0:Landroidx/core/os/ResultReceiver;

    iget-object v0, v0, Landroidx/core/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_15

    .line 69
    iget-object v0, p0, Landroidx/core/os/ResultReceiver$MyResultReceiver;->this$0:Landroidx/core/os/ResultReceiver;

    iget-object v0, v0, Landroidx/core/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/core/os/ResultReceiver$MyRunnable;

    iget-object v2, p0, Landroidx/core/os/ResultReceiver$MyResultReceiver;->this$0:Landroidx/core/os/ResultReceiver;

    invoke-direct {v1, v2, p1, p2}, Landroidx/core/os/ResultReceiver$MyRunnable;-><init>(Landroidx/core/os/ResultReceiver;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1a

    .line 71
    :cond_15
    iget-object v0, p0, Landroidx/core/os/ResultReceiver$MyResultReceiver;->this$0:Landroidx/core/os/ResultReceiver;

    invoke-virtual {v0, p1, p2}, Landroidx/core/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    :goto_1a
    return-void
.end method
