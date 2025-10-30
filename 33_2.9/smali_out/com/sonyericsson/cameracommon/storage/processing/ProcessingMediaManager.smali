.class public final Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;
.super Ljava/lang/Object;
.source "ProcessingMediaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;,
        Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$OnMediaDequeSizeChangedListener;
    }
.end annotation


# static fields
.field private static volatile instance:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;


# instance fields
.field private final mBackupDeque:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeque:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnMediaDequeSizeChangedListener:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$OnMediaDequeSizeChangedListener;

.field private mOnMediaDequeSizeChangedListenerExternal:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$OnMediaDequeSizeChangedListener;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mDeque:Ljava/util/Deque;

    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mBackupDeque:Ljava/util/Deque;

    .line 119
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$1;-><init>(Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mOnMediaDequeSizeChangedListener:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$OnMediaDequeSizeChangedListener;

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;)Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$OnMediaDequeSizeChangedListener;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mOnMediaDequeSizeChangedListenerExternal:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$OnMediaDequeSizeChangedListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;)Ljava/util/Deque;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mDeque:Ljava/util/Deque;

    return-object p0
.end method

.method public static dumpBitmap(JLandroid/graphics/Bitmap;)V
    .registers 9

    const-string v0, ",bitmap:"

    const/4 v1, 0x1

    :try_start_3
    new-array v2, v1, [Ljava/lang/String;

    .line 287
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dumpBitmap E mediaStoreId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 288
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/sdcard/DCIM/100ANDRO/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".jpg"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 289
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p2, v3, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v3

    .line 290
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    new-array v1, v1, [Ljava/lang/String;

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dumpBitmap X "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mediaStoreId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v4

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_7b} :catch_7c

    goto :goto_80

    :catch_7c
    move-exception p0

    .line 293
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_80
    return-void
.end method

.method public static getInstance()Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;
    .registers 2

    .line 55
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->instance:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;

    if-nez v0, :cond_17

    .line 56
    const-class v0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;

    monitor-enter v0

    .line 57
    :try_start_7
    sget-object v1, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->instance:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;

    if-nez v1, :cond_12

    .line 58
    new-instance v1, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;

    invoke-direct {v1}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;-><init>()V

    sput-object v1, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->instance:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;

    .line 60
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 62
    :cond_17
    :goto_17
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->instance:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized add(Landroid/net/Uri;)Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;
    .registers 3

    monitor-enter p0

    .line 100
    :try_start_1
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;

    invoke-direct {v0, p1}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;-><init>(Landroid/net/Uri;)V

    .line 101
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->add(Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;)Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;

    move-result-object p1
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object p1

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized add(Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;)Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;
    .registers 6

    monitor-enter p0

    .line 93
    :try_start_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add ProcessingMedia "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 94
    :cond_21
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mDeque:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mOnMediaDequeSizeChangedListener:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$OnMediaDequeSizeChangedListener;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mDeque:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$OnMediaDequeSizeChangedListener;->onDequeSizeChanged(I)V
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_33

    .line 96
    monitor-exit p0

    return-object p1

    :catchall_33
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized findByMediaStoreId(J)Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;
    .registers 7

    monitor-enter p0

    .line 135
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mDeque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;

    .line 136
    # getter for: Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->mMediaStoreId:J
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->access$000(Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;)J

    move-result-wide v2
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_20

    cmp-long v2, v2, p1

    if-nez v2, :cond_7

    .line 137
    monitor-exit p0

    return-object v1

    :cond_1d
    const/4 p1, 0x0

    .line 140
    monitor-exit p0

    return-object p1

    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized findProcessingMediaByMediaStoreId(J)Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;
    .registers 7

    monitor-enter p0

    .line 179
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mBackupDeque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;

    .line 180
    # getter for: Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->mMediaStoreId:J
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->access$000(Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;)J

    move-result-wide v2
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_20

    cmp-long v2, v2, p1

    if-nez v2, :cond_7

    .line 181
    monitor-exit p0

    return-object v1

    :cond_1d
    const/4 p1, 0x0

    .line 184
    monitor-exit p0

    return-object p1

    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized findUriByMediaStoreId(J)Landroid/net/Uri;
    .registers 7

    monitor-enter p0

    .line 167
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mBackupDeque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;

    .line 168
    # getter for: Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->mMediaStoreId:J
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->access$000(Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;)J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_7

    .line 169
    # getter for: Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->mStoreUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->access$300(Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;)Landroid/net/Uri;

    move-result-object p1
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_24

    monitor-exit p0

    return-object p1

    :cond_21
    const/4 p1, 0x0

    .line 172
    monitor-exit p0

    return-object p1

    :catchall_24
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMediaDeque()Ljava/util/Deque;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Deque<",
            "Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 80
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mDeque:Ljava/util/Deque;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_11

    .line 81
    :try_start_4
    new-instance v1, Ljava/util/ArrayDeque;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mDeque:Ljava/util/Deque;

    invoke-direct {v1, v2}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object v1

    :catchall_e
    move-exception v1

    .line 82
    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    :try_start_10
    throw v1
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_11

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized poll()Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;
    .registers 6

    monitor-enter p0

    .line 144
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mDeque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;

    .line 145
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_29

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " poll :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_29
    if-eqz v0, :cond_52

    .line 147
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mOnMediaDequeSizeChangedListener:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$OnMediaDequeSizeChangedListener;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mDeque:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$OnMediaDequeSizeChangedListener;->onDequeSizeChanged(I)V

    .line 148
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mBackupDeque:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mBackupDeque:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_5b

    .line 150
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mBackupDeque:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;

    if-eqz v1, :cond_5b

    .line 152
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->delTempThumb()V

    goto :goto_5b

    :cond_52
    const-string v1, "poll ProcessingMedia: media is null"

    .line 157
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V
    :try_end_5b
    .catchall {:try_start_1 .. :try_end_5b} :catchall_5d

    .line 160
    :cond_5b
    :goto_5b
    monitor-exit p0

    return-object v0

    :catchall_5d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeByMediaStoreId(J)V
    .registers 8

    monitor-enter p0

    .line 105
    :try_start_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mediaStoreId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_21
    const/4 v0, 0x0

    .line 107
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mDeque:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;

    .line 108
    # getter for: Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->mMediaStoreId:J
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->access$000(Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;)J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_28

    move-object v0, v2

    :cond_3d
    if-eqz v0, :cond_4f

    .line 114
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mDeque:Ljava/util/Deque;

    invoke-interface {p1, v0}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 115
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mOnMediaDequeSizeChangedListener:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$OnMediaDequeSizeChangedListener;

    iget-object p2, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mDeque:Ljava/util/Deque;

    invoke-interface {p2}, Ljava/util/Deque;->size()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$OnMediaDequeSizeChangedListener;->onDequeSizeChanged(I)V
    :try_end_4f
    .catchall {:try_start_1 .. :try_end_4f} :catchall_51

    .line 117
    :cond_4f
    monitor-exit p0

    return-void

    :catchall_51
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setOnMediaDequeSizeChangedListener(Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$OnMediaDequeSizeChangedListener;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mOnMediaDequeSizeChangedListenerExternal:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$OnMediaDequeSizeChangedListener;

    return-void
.end method
