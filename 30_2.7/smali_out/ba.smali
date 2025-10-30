.class public final Lba;
.super Lh;
.source "PG"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Las;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Landroid/content/Context;

.field public c:I

.field public d:Lz;

.field public e:Lx;

.field public f:Le;

.field public g:Lg;

.field public h:I

.field private final i:Ljava/util/concurrent/Executor;

.field private final j:Lar;

.field private final k:Lal;

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lar;Lal;)V
    .registers 8

    sget-object v0, Lat;->a:Ljava/util/concurrent/ThreadFactory;

    .line 1
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lh;-><init>()V

    new-instance v1, Laz;

    new-instance v2, Landroid/os/Handler;

    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    invoke-direct {v1, v2}, Laz;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lba;->a:Ljava/util/concurrent/Executor;

    const/4 v1, 0x1

    iput v1, p0, Lba;->l:I

    .line 5
    sget v1, Lbh;->a:I

    sget v1, Lbh;->a:I

    iput v1, p0, Lba;->h:I

    iput-object p1, p0, Lba;->b:Landroid/content/Context;

    iput-object p2, p0, Lba;->j:Lar;

    iput-object p3, p0, Lba;->k:Lal;

    iput-object v0, p0, Lba;->i:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private static b(I)Z
    .registers 2

    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method private static c(I)Z
    .registers 2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_c

    const/4 v0, 0x7

    if-eq p0, v0, :cond_c

    const/16 v0, 0x8

    if-eq p0, v0, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a()V
    .registers 6

    .line 91
    invoke-static {}, Leb;->c()V

    .line 92
    invoke-virtual {p0}, Lba;->c()Z

    move-result v0

    const-string v1, "Attempted to handover when not ready."

    invoke-static {v0, v1}, Leb;->a(ZLjava/lang/String;)V

    .line 93
    sget-object v0, Lo;->c:Lo;

    .line 94
    invoke-virtual {v0}, Lde;->e()Lda;

    move-result-object v0

    check-cast v0, Ln;

    .line 93
    sget v1, Lm;->al:I

    iget-boolean v2, v0, Lda;->c:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1c

    goto :goto_21

    .line 95
    :cond_1c
    invoke-virtual {v0}, Lda;->b()V

    iput-boolean v3, v0, Lda;->c:Z

    .line 93
    :goto_21
    iget-object v2, v0, Ln;->b:Lde;

    .line 96
    check-cast v2, Lo;

    add-int/lit8 v4, v1, -0x1

    if-eqz v1, :cond_7a

    iput v4, v2, Lo;->b:I

    iget v1, v2, Lo;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v2, Lo;->a:I

    .line 97
    sget-object v1, Lab;->a:Lcq;

    .line 98
    sget-object v2, Lad;->a:Lad;

    .line 99
    invoke-virtual {v2}, Lde;->e()Lda;

    move-result-object v2

    check-cast v2, Lac;

    iget-boolean v4, v2, Lda;->c:Z

    if-nez v4, :cond_40

    goto :goto_45

    .line 95
    :cond_40
    invoke-virtual {v2}, Lda;->b()V

    iput-boolean v3, v2, Lda;->c:Z

    .line 99
    :goto_45
    iget-object v3, v2, Lac;->b:Lde;

    .line 100
    check-cast v3, Lad;

    invoke-static {v3}, Lad;->a(Lad;)V

    .line 98
    invoke-virtual {v2}, Lda;->f()Lde;

    move-result-object v2

    check-cast v2, Lad;

    .line 101
    invoke-virtual {v0, v1, v2}, Ldb;->a(Lcq;Ljava/lang/Object;)V

    .line 102
    invoke-virtual {v0}, Lda;->f()Lde;

    move-result-object v0

    check-cast v0, Lo;

    :try_start_5b
    iget-object v1, p0, Lba;->g:Lg;

    .line 103
    invoke-static {v1}, Leb;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lbu;->m()[B

    move-result-object v0

    invoke-interface {v1, v0}, Lg;->a([B)V
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_67} :catch_68
    .catch Ljava/lang/SecurityException; {:try_start_5b .. :try_end_67} :catch_68

    goto :goto_70

    :catch_68
    move-exception v0

    const-string v1, "LensServiceConnImpl"

    const-string v2, "Unable to stop Lens service session."

    .line 104
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    :goto_70
    sget v0, Lbh;->k:I

    iput v0, p0, Lba;->h:I

    const/16 v0, 0x8

    .line 106
    invoke-virtual {p0, v0}, Lba;->a(I)V

    return-void

    :cond_7a
    const/4 v0, 0x0

    .line 96
    throw v0
.end method

.method public final a(I)V
    .registers 5

    .line 107
    invoke-static {}, Leb;->c()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lba;->l:I

    .line 108
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Transitioning from state %s to %s."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget v0, p0, Lba;->l:I

    iput p1, p0, Lba;->l:I

    .line 109
    invoke-static {p1}, Lba;->b(I)Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-static {v0}, Lba;->b(I)Z

    move-result v1

    if-nez v1, :cond_35

    iget-object v1, p0, Lba;->j:Lar;

    .line 110
    invoke-static {}, Leb;->c()V

    check-cast v1, Laq;

    .line 111
    invoke-virtual {v1}, Laq;->e()V

    .line 112
    :cond_35
    invoke-static {p1}, Lba;->c(I)Z

    move-result p1

    if-eqz p1, :cond_4b

    invoke-static {v0}, Lba;->c(I)Z

    move-result p1

    if-nez p1, :cond_4b

    iget-object p1, p0, Lba;->j:Lar;

    .line 113
    invoke-static {}, Leb;->c()V

    check-cast p1, Laq;

    .line 114
    invoke-virtual {p1}, Laq;->e()V

    :cond_4b
    return-void
.end method

.method public final a(Lg;)V
    .registers 8

    .line 67
    invoke-static {}, Leb;->c()V

    iget-object v0, p0, Lba;->f:Le;

    if-nez v0, :cond_12

    const-string p1, "LensServiceConnImpl"

    const-string v0, "The service is no longer bound."

    .line 68
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p0}, Lba;->f()V

    return-void

    :cond_12
    :try_start_12
    iput-object p1, p0, Lba;->g:Lg;

    iget-object p1, p0, Lba;->g:Lg;

    if-nez p1, :cond_28

    const-string p1, "LensServiceConnImpl"

    const-string v0, "Failed to create a Lens service session."

    .line 70
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    sget p1, Lbh;->j:I

    iput p1, p0, Lba;->h:I

    const/4 p1, 0x7

    .line 72
    invoke-virtual {p0, p1}, Lba;->a(I)V

    return-void

    :cond_28
    const/4 p1, 0x4

    .line 73
    invoke-virtual {p0, p1}, Lba;->a(I)V

    .line 74
    sget-object p1, Lo;->c:Lo;

    .line 75
    invoke-virtual {p1}, Lde;->e()Lda;

    move-result-object p1

    check-cast p1, Ln;

    .line 74
    sget v0, Lm;->ak:I

    iget-boolean v1, p1, Lda;->c:Z

    const/4 v2, 0x0

    if-nez v1, :cond_3c

    goto :goto_41

    .line 76
    :cond_3c
    invoke-virtual {p1}, Lda;->b()V

    iput-boolean v2, p1, Lda;->c:Z

    .line 74
    :goto_41
    iget-object v1, p1, Ln;->b:Lde;

    .line 77
    check-cast v1, Lo;

    add-int/lit8 v3, v0, -0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_c0

    iput v3, v1, Lo;->b:I

    iget v0, v1, Lo;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v1, Lo;->a:I

    .line 74
    invoke-virtual {p1}, Lda;->f()Lde;

    move-result-object p1

    check-cast p1, Lo;

    sget-object v0, Lo;->c:Lo;

    .line 78
    invoke-virtual {v0}, Lde;->e()Lda;

    move-result-object v0

    check-cast v0, Ln;

    sget v1, Lm;->cJ:I

    iget-boolean v3, v0, Lda;->c:Z

    if-nez v3, :cond_67

    goto :goto_6c

    .line 76
    :cond_67
    invoke-virtual {v0}, Lda;->b()V

    iput-boolean v2, v0, Lda;->c:Z

    .line 78
    :goto_6c
    iget-object v3, v0, Ln;->b:Lde;

    .line 79
    check-cast v3, Lo;

    add-int/lit8 v5, v1, -0x1

    if-eqz v1, :cond_bf

    iput v5, v3, Lo;->b:I

    iget v1, v3, Lo;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v3, Lo;->a:I

    .line 80
    sget-object v1, Lp;->a:Lcq;

    .line 81
    sget-object v3, Lr;->a:Lr;

    .line 82
    invoke-virtual {v3}, Lde;->e()Lda;

    move-result-object v3

    check-cast v3, Lq;

    iget-boolean v4, v3, Lda;->c:Z

    if-nez v4, :cond_8b

    goto :goto_90

    .line 76
    :cond_8b
    invoke-virtual {v3}, Lda;->b()V

    iput-boolean v2, v3, Lda;->c:Z

    .line 82
    :goto_90
    iget-object v2, v3, Lq;->b:Lde;

    .line 83
    check-cast v2, Lr;

    invoke-static {v2}, Lr;->a(Lr;)V

    .line 84
    invoke-virtual {v3}, Lda;->f()Lde;

    move-result-object v2

    check-cast v2, Lr;

    .line 85
    invoke-virtual {v0, v1, v2}, Ldb;->a(Lcq;Ljava/lang/Object;)V

    .line 86
    invoke-virtual {v0}, Lda;->f()Lde;

    move-result-object v0

    check-cast v0, Lo;

    iget-object v1, p0, Lba;->g:Lg;

    .line 87
    invoke-static {v1}, Leb;->a(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lbu;->m()[B

    move-result-object p1

    invoke-interface {v1, p1}, Lg;->a([B)V

    iget-object p1, p0, Lba;->g:Lg;

    .line 88
    invoke-static {p1}, Leb;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lbu;->m()[B

    move-result-object v0

    invoke-interface {p1, v0}, Lg;->a([B)V

    return-void

    .line 79
    :cond_bf
    throw v4

    .line 77
    :cond_c0
    throw v4
    :try_end_c1
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_c1} :catch_c1

    :catch_c1
    move-exception p1

    const-string v0, "LensServiceConnImpl"

    const-string v1, "Failed to call client event callbacks."

    .line 89
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    invoke-virtual {p0}, Lba;->f()V

    return-void
.end method

.method public final a([BLk;)V
    .registers 5

    iget-object v0, p0, Lba;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Law;

    .line 66
    invoke-direct {v1, p0, p1, p2}, Law;-><init>(Lba;[BLk;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()I
    .registers 3

    .line 10
    invoke-static {}, Leb;->c()V

    .line 11
    invoke-virtual {p0}, Lba;->g()Z

    move-result v0

    const-string v1, "Attempted to use lensServiceSession before ready."

    invoke-static {v0, v1}, Leb;->a(ZLjava/lang/String;)V

    iget v0, p0, Lba;->c:I

    return v0
.end method

.method public final b([BLk;)V
    .registers 5

    .line 53
    invoke-static {}, Leb;->c()V

    .line 54
    invoke-virtual {p0}, Lba;->c()Z

    move-result v0

    const-string v1, "Attempted to use lensServiceSession before ready."

    invoke-static {v0, v1}, Leb;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lba;->g:Lg;

    .line 55
    invoke-static {v0}, Leb;->a(Ljava/lang/Object;)V

    .line 56
    invoke-interface {v0, p1, p2}, Lg;->a([BLk;)V

    return-void
.end method

.method final synthetic c([BLk;)V
    .registers 6

    iget v0, p0, Lba;->l:I

    const/4 v1, 0x5

    const/4 v2, 0x4

    if-ne v0, v2, :cond_7

    goto :goto_11

    :cond_7
    if-eq v0, v1, :cond_11

    const-string p1, "LensServiceConnImpl"

    const-string p2, "ServiceEvent received after connection disposed."

    .line 47
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 18
    :cond_11
    :goto_11
    sget-object v0, Lcs;->a:Lcs;

    if-eqz v0, :cond_17

    move-object v2, v0

    goto :goto_29

    .line 29
    :cond_17
    const-class v0, Lcs;

    monitor-enter v0

    :try_start_1a
    sget-object v2, Lcs;->a:Lcs;

    if-nez v2, :cond_28

    const-class v2, Lcs;

    .line 19
    invoke-static {v2}, Lcy;->a(Ljava/lang/Class;)Lcs;

    move-result-object v2

    sput-object v2, Lcs;->a:Lcs;

    monitor-exit v0

    goto :goto_29

    .line 20
    :cond_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1a .. :try_end_29} :catchall_c1

    .line 22
    :goto_29
    :try_start_29
    sget-object v0, Lah;->b:Lah;

    .line 23
    invoke-static {v0, p1, v2}, Lde;->a(Lde;[BLcs;)Lde;

    move-result-object p1

    check-cast p1, Lah;

    iget v0, p1, Lah;->a:I

    .line 24
    invoke-static {v0}, Laf;->a(I)I

    move-result v0

    if-eqz v0, :cond_3a

    goto :goto_3c

    .line 29
    :cond_3a
    sget v0, Laf;->a:I

    .line 24
    :goto_3c
    sget v2, Laf;->bn:I

    if-eq v0, v2, :cond_73

    iget-object v0, p0, Lba;->j:Lar;

    .line 36
    iget p1, p1, Lah;->a:I

    .line 37
    invoke-static {p1}, Laf;->a(I)I

    move-result p1

    if-eqz p1, :cond_4b

    goto :goto_4d

    .line 43
    :cond_4b
    sget p1, Laf;->a:I

    .line 37
    :goto_4d
    sget v1, Laf;->bD:I

    if-ne p1, v1, :cond_72

    .line 38
    iget-object p1, p2, Lk;->a:Landroid/os/Parcelable;

    .line 39
    instance-of p2, p1, Landroid/app/PendingIntent;

    if-eqz p2, :cond_72

    .line 40
    check-cast p1, Landroid/app/PendingIntent;

    move-object p2, v0

    check-cast p2, Laq;

    iget-object p2, p2, Laq;->a:Las;

    .line 41
    invoke-interface {p2}, Las;->a()V

    check-cast v0, Laq;

    iget-object p2, v0, Laq;->b:Lcom/google/lens/sdk/PendingIntentConsumer;

    if-nez p2, :cond_6f

    const-string p1, "LensServiceBridge"

    const-string p2, "PendingIntentConsumer cannot be null"

    .line 42
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 43
    :cond_6f
    invoke-interface {p2, p1}, Lcom/google/lens/sdk/PendingIntentConsumer;->onReceivedPendingIntent(Landroid/app/PendingIntent;)V

    :cond_72
    return-void

    .line 25
    :cond_73
    sget-object p2, Ls;->a:Lcq;

    .line 26
    invoke-static {p2}, Lde;->b(Lcq;)Lcq;

    move-result-object p2

    .line 27
    invoke-virtual {p1, p2}, Ldc;->a(Lcq;)V

    iget-object p1, p1, Ldc;->d:Lcu;

    .line 28
    iget-object v0, p2, Lcq;->d:Ldd;

    invoke-virtual {p1, v0}, Lcu;->a(Ldd;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_89

    .line 30
    iget-object p1, p2, Lcq;->b:Ljava/lang/Object;

    goto :goto_8d

    .line 29
    :cond_89
    invoke-virtual {p2, p1}, Lcq;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 31
    :goto_8d
    check-cast p1, Laa;

    iget p2, p1, Laa;->a:I

    iput p2, p0, Lba;->c:I

    iget-object p2, p1, Laa;->b:Lz;

    if-eqz p2, :cond_98

    goto :goto_9a

    .line 32
    :cond_98
    sget-object p2, Lz;->f:Lz;

    .line 31
    :goto_9a
    iput-object p2, p0, Lba;->d:Lz;

    .line 32
    iget-object p1, p1, Laa;->c:Lx;

    if-eqz p1, :cond_a1

    goto :goto_a3

    .line 33
    :cond_a1
    sget-object p1, Lx;->b:Lx;

    .line 32
    :goto_a3
    iput-object p1, p0, Lba;->e:Lx;

    .line 34
    sget p1, Lbh;->a:I

    sget p1, Lbh;->b:I

    iput p1, p0, Lba;->h:I

    .line 35
    invoke-virtual {p0, v1}, Lba;->a(I)V
    :try_end_ae
    .catch Ldl; {:try_start_29 .. :try_end_ae} :catch_af

    return-void

    :catch_af
    move-exception p1

    const-string p2, "LensServiceConnImpl"

    const-string v0, "Unable to parse the protobuf."

    .line 44
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    sget p1, Lbh;->j:I

    iput p1, p0, Lba;->h:I

    const/16 p1, 0x8

    .line 46
    invoke-virtual {p0, p1}, Lba;->a(I)V

    return-void

    :catchall_c1
    move-exception p1

    .line 21
    :try_start_c2
    monitor-exit v0
    :try_end_c3
    .catchall {:try_start_c2 .. :try_end_c3} :catchall_c1

    throw p1
.end method

.method public final c()Z
    .registers 2

    .line 16
    invoke-static {}, Leb;->c()V

    iget v0, p0, Lba;->l:I

    .line 17
    invoke-static {v0}, Lba;->b(I)Z

    move-result v0

    return v0
.end method

.method public final d()Z
    .registers 2

    .line 14
    invoke-static {}, Leb;->c()V

    iget v0, p0, Lba;->l:I

    .line 15
    invoke-static {v0}, Lba;->c(I)Z

    move-result v0

    return v0
.end method

.method public final e()I
    .registers 3

    .line 12
    invoke-static {}, Leb;->c()V

    .line 13
    invoke-virtual {p0}, Lba;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lba;->d()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v1, 0x0

    :cond_11
    const-string v0, "Attempted to use ServerFlags before ready or dead."

    invoke-static {v1, v0}, Leb;->a(ZLjava/lang/String;)V

    iget v0, p0, Lba;->h:I

    return v0
.end method

.method public final f()V
    .registers 2

    .line 48
    invoke-static {}, Leb;->c()V

    iget-object v0, p0, Lba;->g:Lg;

    if-nez v0, :cond_10

    .line 49
    sget v0, Lbh;->j:I

    iput v0, p0, Lba;->h:I

    const/4 v0, 0x7

    .line 50
    invoke-virtual {p0, v0}, Lba;->a(I)V

    return-void

    .line 51
    :cond_10
    sget v0, Lbh;->j:I

    iput v0, p0, Lba;->h:I

    const/16 v0, 0x8

    .line 52
    invoke-virtual {p0, v0}, Lba;->a(I)V

    return-void
.end method

.method public final g()Z
    .registers 3

    iget v0, p0, Lba;->l:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_b

    const/16 v1, 0x8

    if-eq v0, v1, :cond_b

    const/4 v0, 0x0

    return v0

    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method public final h()Z
    .registers 3

    iget v0, p0, Lba;->l:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_14

    const/4 v1, 0x4

    if-eq v0, v1, :cond_14

    const/4 v1, 0x5

    if-eq v0, v1, :cond_14

    const/4 v1, 0x7

    if-eq v0, v1, :cond_14

    const/16 v1, 0x8

    if-eq v0, v1, :cond_14

    const/4 v0, 0x0

    return v0

    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method public final i()Z
    .registers 3

    iget v0, p0, Lba;->l:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v0, 0x0

    return v0

    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method public final j()V
    .registers 3

    .line 6
    invoke-static {}, Leb;->c()V

    .line 7
    invoke-virtual {p0}, Lba;->i()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Lba;->h()Z

    move-result v0

    if-nez v0, :cond_1d

    const/4 v0, 0x2

    .line 8
    invoke-virtual {p0, v0}, Lba;->a(I)V

    iget-object v0, p0, Lba;->k:Lal;

    new-instance v1, Lau;

    .line 9
    invoke-direct {v1, p0}, Lau;-><init>(Lba;)V

    invoke-virtual {v0, v1}, Lal;->a(Lai;)V

    :cond_1d
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 57
    invoke-static {}, Leb;->c()V

    if-eqz p2, :cond_18

    const-string p1, "com.google.android.apps.gsa.publicsearch.IPublicSearchService"

    .line 58
    invoke-interface {p2, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    .line 59
    instance-of v0, p1, Le;

    if-eqz v0, :cond_12

    .line 60
    check-cast p1, Le;

    goto :goto_19

    .line 62
    :cond_12
    new-instance p1, Ld;

    .line 61
    invoke-direct {p1, p2}, Ld;-><init>(Landroid/os/IBinder;)V

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    .line 60
    :goto_19
    iput-object p1, p0, Lba;->f:Le;

    iget-object p2, p0, Lba;->i:Ljava/util/concurrent/Executor;

    new-instance v0, Lav;

    .line 62
    invoke-direct {v0, p0, p1}, Lav;-><init>(Lba;Le;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    .line 63
    invoke-static {}, Leb;->c()V

    .line 64
    sget p1, Lbh;->j:I

    iput p1, p0, Lba;->h:I

    const/4 p1, 0x7

    .line 65
    invoke-virtual {p0, p1}, Lba;->a(I)V

    return-void
.end method
