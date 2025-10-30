.class Lcom/sonymobile/camera/faultdetector/c$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/camera/faultdetector/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:I = 0x1

.field static final b:I = 0x2

.field static final c:I = 0x3


# instance fields
.field private final d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sonymobile/camera/faultdetector/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sonymobile/camera/faultdetector/c;Landroid/os/Looper;)V
    .registers 3

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/sonymobile/camera/faultdetector/c$a;->d:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/c$a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/camera/faultdetector/c;

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_3e

    goto :goto_3c

    :pswitch_11
    invoke-static {v0}, Lcom/sonymobile/camera/faultdetector/c;->e(Lcom/sonymobile/camera/faultdetector/c;)Lcom/sonymobile/camera/faultdetector/c$d;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/camera/faultdetector/c$d;->c:Lcom/sonymobile/camera/faultdetector/c$d;

    if-ne v1, v2, :cond_3c

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sonymobile/camera/faultdetector/c$b;

    sget-object v1, Lcom/sonymobile/camera/faultdetector/c$d;->d:Lcom/sonymobile/camera/faultdetector/c$d;

    invoke-static {v0, v1}, Lcom/sonymobile/camera/faultdetector/c;->a(Lcom/sonymobile/camera/faultdetector/c;Lcom/sonymobile/camera/faultdetector/c$d;)V

    iget-object v1, p1, Lcom/sonymobile/camera/faultdetector/c$b;->a:Ljava/util/List;

    iget-object p1, p1, Lcom/sonymobile/camera/faultdetector/c$b;->b:Lcom/sonymobile/camera/faultdetector/DetectorInterface$Callback;

    invoke-static {v0, v1, p1}, Lcom/sonymobile/camera/faultdetector/c;->a(Lcom/sonymobile/camera/faultdetector/c;Ljava/util/List;Lcom/sonymobile/camera/faultdetector/DetectorInterface$Callback;)V

    invoke-static {v0}, Lcom/sonymobile/camera/faultdetector/c;->e(Lcom/sonymobile/camera/faultdetector/c;)Lcom/sonymobile/camera/faultdetector/c$d;

    move-result-object p1

    sget-object v1, Lcom/sonymobile/camera/faultdetector/c$d;->d:Lcom/sonymobile/camera/faultdetector/c$d;

    if-ne p1, v1, :cond_3c

    sget-object p1, Lcom/sonymobile/camera/faultdetector/c$d;->c:Lcom/sonymobile/camera/faultdetector/c$d;

    goto :goto_39

    :pswitch_34
    invoke-static {v0}, Lcom/sonymobile/camera/faultdetector/c;->d(Lcom/sonymobile/camera/faultdetector/c;)V

    sget-object p1, Lcom/sonymobile/camera/faultdetector/c$d;->a:Lcom/sonymobile/camera/faultdetector/c$d;

    :goto_39
    invoke-static {v0, p1}, Lcom/sonymobile/camera/faultdetector/c;->a(Lcom/sonymobile/camera/faultdetector/c;Lcom/sonymobile/camera/faultdetector/c$d;)V

    :cond_3c
    :goto_3c
    :pswitch_3c
    return-void

    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_34
        :pswitch_11
    .end packed-switch
.end method
