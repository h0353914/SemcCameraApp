.class public Lcom/sonymobile/android/media/internal/Track$EventHandler;
.super Landroid/os/Handler;
.source "Track.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/media/internal/Track;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/media/internal/Track;


# direct methods
.method public constructor <init>(Lcom/sonymobile/android/media/internal/Track;Landroid/os/Looper;)V
    .registers 3

    .line 316
    iput-object p1, p0, Lcom/sonymobile/android/media/internal/Track$EventHandler;->this$0:Lcom/sonymobile/android/media/internal/Track;

    .line 317
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 322
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_90

    goto/16 :goto_8e

    .line 369
    :pswitch_7
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/Track$EventHandler;->this$0:Lcom/sonymobile/android/media/internal/Track;

    invoke-virtual {v0}, Lcom/sonymobile/android/media/internal/Track;->doReset()V

    .line 371
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Handler;

    .line 372
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 373
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 374
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_8e

    .line 365
    :pswitch_1f
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/Track$EventHandler;->this$0:Lcom/sonymobile/android/media/internal/Track;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/media/internal/Track;->doResume(Ljava/util/concurrent/CountDownLatch;)V

    goto :goto_8e

    .line 324
    :pswitch_29
    iget-object p1, p0, Lcom/sonymobile/android/media/internal/Track$EventHandler;->this$0:Lcom/sonymobile/android/media/internal/Track;

    invoke-virtual {p1}, Lcom/sonymobile/android/media/internal/Track;->doPause()V

    goto :goto_8e

    .line 356
    :pswitch_2f
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/Track$EventHandler;->this$0:Lcom/sonymobile/android/media/internal/Track;

    invoke-virtual {v0}, Lcom/sonymobile/android/media/internal/Track;->doRelease()V

    .line 358
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Handler;

    .line 359
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 360
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 361
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_8e

    .line 347
    :pswitch_47
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/Track$EventHandler;->this$0:Lcom/sonymobile/android/media/internal/Track;

    invoke-virtual {v0}, Lcom/sonymobile/android/media/internal/Track;->doPrepare()V

    .line 349
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Handler;

    .line 350
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 351
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 352
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_8e

    .line 337
    :pswitch_5f
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/Track$EventHandler;->this$0:Lcom/sonymobile/android/media/internal/Track;

    invoke-virtual {v0}, Lcom/sonymobile/android/media/internal/Track;->doStop()V

    .line 339
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Handler;

    .line 340
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 341
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 342
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_8e

    .line 328
    :pswitch_77
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/Track$EventHandler;->this$0:Lcom/sonymobile/android/media/internal/Track;

    invoke-virtual {v0}, Lcom/sonymobile/android/media/internal/Track;->doStart()V

    .line 330
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Handler;

    .line 331
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 332
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 333
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_8e
    return-void

    nop

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_77
        :pswitch_5f
        :pswitch_47
        :pswitch_2f
        :pswitch_29
        :pswitch_1f
        :pswitch_7
    .end packed-switch
.end method
