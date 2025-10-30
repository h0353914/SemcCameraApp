.class Lcom/sonyericsson/album/fastview/FastViewManager$1;
.super Ljava/lang/Object;
.source "FastViewManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/album/fastview/FastViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/album/fastview/FastViewManager;


# direct methods
.method constructor <init>(Lcom/sonyericsson/album/fastview/FastViewManager;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/sonyericsson/album/fastview/FastViewManager$1;->this$0:Lcom/sonyericsson/album/fastview/FastViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 58
    iget-object p1, p0, Lcom/sonyericsson/album/fastview/FastViewManager$1;->this$0:Lcom/sonyericsson/album/fastview/FastViewManager;

    invoke-static {p2}, Lcom/sonyericsson/album/fastview/IFastViewService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonyericsson/album/fastview/IFastViewService;

    move-result-object p2

    # setter for: Lcom/sonyericsson/album/fastview/FastViewManager;->mService:Lcom/sonyericsson/album/fastview/IFastViewService;
    invoke-static {p1, p2}, Lcom/sonyericsson/album/fastview/FastViewManager;->access$002(Lcom/sonyericsson/album/fastview/FastViewManager;Lcom/sonyericsson/album/fastview/IFastViewService;)Lcom/sonyericsson/album/fastview/IFastViewService;

    .line 59
    iget-object p1, p0, Lcom/sonyericsson/album/fastview/FastViewManager$1;->this$0:Lcom/sonyericsson/album/fastview/FastViewManager;

    # getter for: Lcom/sonyericsson/album/fastview/FastViewManager;->mOnPrewarmedListener:Lcom/sonyericsson/album/fastview/FastViewManager$OnPrewarmedListener;
    invoke-static {p1}, Lcom/sonyericsson/album/fastview/FastViewManager;->access$100(Lcom/sonyericsson/album/fastview/FastViewManager;)Lcom/sonyericsson/album/fastview/FastViewManager$OnPrewarmedListener;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 60
    iget-object p0, p0, Lcom/sonyericsson/album/fastview/FastViewManager$1;->this$0:Lcom/sonyericsson/album/fastview/FastViewManager;

    # getter for: Lcom/sonyericsson/album/fastview/FastViewManager;->mOnPrewarmedListener:Lcom/sonyericsson/album/fastview/FastViewManager$OnPrewarmedListener;
    invoke-static {p0}, Lcom/sonyericsson/album/fastview/FastViewManager;->access$100(Lcom/sonyericsson/album/fastview/FastViewManager;)Lcom/sonyericsson/album/fastview/FastViewManager$OnPrewarmedListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/album/fastview/FastViewManager$OnPrewarmedListener;->onPrewarmed()V

    :cond_1a
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
