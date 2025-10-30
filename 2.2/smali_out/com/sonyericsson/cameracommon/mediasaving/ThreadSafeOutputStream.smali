.class public Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;
.super Ljava/io/OutputStream;
.source "ThreadSafeOutputStream.java"


# instance fields
.field mClosed:Z

.field private mDelegateStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->mDelegateStream:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 46
    :try_start_2
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->mClosed:Z

    .line 47
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->mDelegateStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 48
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    .line 45
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 52
    :try_start_1
    invoke-super {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 53
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    .line 51
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 63
    :try_start_1
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->mClosed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_e

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    .line 64
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->mDelegateStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_e

    .line 65
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    .line 62
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized write([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-lez p3, :cond_12

    .line 57
    :try_start_3
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->mClosed:Z

    if-eqz v0, :cond_8

    goto :goto_12

    .line 58
    :cond_8
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->mDelegateStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    .line 59
    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    .line 56
    monitor-exit p0

    throw p1

    .line 57
    :cond_12
    :goto_12
    monitor-exit p0

    return-void
.end method
