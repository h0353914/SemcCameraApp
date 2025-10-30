.class public final Lbp;
.super Landroid/app/KeyguardManager$KeyguardDismissCallback;
.source "PG"


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;)V
    .registers 3

    iput-object p1, p0, Lbp;->a:Ljava/lang/Runnable;

    iput-object p2, p0, Lbp;->b:Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;

    .line 1
    invoke-direct {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismissCancelled()V
    .registers 2

    iget-object p0, p0, Lbp;->b:Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;

    if-eqz p0, :cond_8

    const/4 v0, 0x1

    .line 2
    invoke-interface {p0, v0}, Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;->onLaunchStatusFetched(I)V

    :cond_8
    return-void
.end method

.method public final onDismissError()V
    .registers 2

    iget-object p0, p0, Lbp;->b:Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;

    if-nez p0, :cond_5

    goto :goto_9

    :cond_5
    const/4 v0, 0x1

    .line 3
    invoke-interface {p0, v0}, Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;->onLaunchStatusFetched(I)V

    .line 0
    :goto_9
    const-string p0, "LensApi"

    const-string v0, "Error dismissing keyguard"

    .line 4
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onDismissSucceeded()V
    .registers 2

    iget-object v0, p0, Lbp;->a:Ljava/lang/Runnable;

    .line 5
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object p0, p0, Lbp;->b:Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;

    if-eqz p0, :cond_d

    const/4 v0, 0x0

    .line 6
    invoke-interface {p0, v0}, Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;->onLaunchStatusFetched(I)V

    :cond_d
    return-void
.end method
