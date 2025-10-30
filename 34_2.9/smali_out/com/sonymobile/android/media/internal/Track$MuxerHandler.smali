.class public Lcom/sonymobile/android/media/internal/Track$MuxerHandler;
.super Landroid/os/Handler;
.source "Track.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/media/internal/Track;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MuxerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/media/internal/Track;


# direct methods
.method public constructor <init>(Lcom/sonymobile/android/media/internal/Track;Landroid/os/Looper;)V
    .registers 3

    .line 271
    iput-object p1, p0, Lcom/sonymobile/android/media/internal/Track$MuxerHandler;->this$0:Lcom/sonymobile/android/media/internal/Track;

    .line 272
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private doFlushBuffers()V
    .registers 4

    .line 276
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/Track$MuxerHandler;->this$0:Lcom/sonymobile/android/media/internal/Track;

    iget-object v0, v0, Lcom/sonymobile/android/media/internal/Track;->mBufferList:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_13

    .line 279
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/Track$MuxerHandler;->this$0:Lcom/sonymobile/android/media/internal/Track;

    invoke-virtual {v2}, Lcom/sonymobile/android/media/internal/Track;->doWriteOutputBuffer()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_13
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 285
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x68

    if-eq p1, v0, :cond_f

    const/16 v0, 0x6e

    if-eq p1, v0, :cond_b

    goto :goto_14

    .line 296
    :cond_b
    :try_start_b
    invoke-direct {p0}, Lcom/sonymobile/android/media/internal/Track$MuxerHandler;->doFlushBuffers()V

    goto :goto_14

    .line 288
    :cond_f
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/Track$MuxerHandler;->this$0:Lcom/sonymobile/android/media/internal/Track;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/Track;->doWriteOutputBuffer()V
    :try_end_14
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_14} :catch_14

    :catch_14
    :goto_14
    return-void
.end method
