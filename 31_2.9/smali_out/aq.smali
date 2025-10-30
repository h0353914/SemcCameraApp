.class public final Laq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lar;


# instance fields
.field public final a:Las;

.field public b:Lcom/google/lens/sdk/PendingIntentConsumer;

.field private final c:Ljava/util/Queue;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lal;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Laq;->c:Ljava/util/Queue;

    new-instance v0, Lba;

    .line 3
    invoke-direct {v0, p1, p0, p2}, Lba;-><init>(Landroid/content/Context;Lar;Lal;)V

    iput-object v0, p0, Laq;->a:Las;

    return-void
.end method

.method private final h()Z
    .registers 3

    .line 53
    invoke-virtual {p0}, Laq;->c()Lz;

    move-result-object v0

    iget v1, v0, Lz;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_16

    iget-object v1, p0, Laq;->a:Las;

    .line 54
    invoke-interface {v1}, Las;->b()I

    move-result v1

    iget v0, v0, Lz;->c:I

    if-lt v1, v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 4
    invoke-static {}, Leb;->c()V

    iget-object v0, p0, Laq;->a:Las;

    check-cast v0, Lba;

    .line 5
    invoke-virtual {v0}, Lba;->j()V

    return-void
.end method

.method public final a(Lap;)V
    .registers 4

    .line 6
    invoke-static {}, Leb;->c()V

    iget-object v0, p0, Laq;->a:Las;

    .line 7
    invoke-interface {v0}, Las;->c()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Laq;->a:Las;

    invoke-interface {v0}, Las;->d()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_2d

    .line 8
    :cond_14
    iget-object v0, p0, Laq;->a:Las;

    check-cast v0, Lba;

    .line 9
    invoke-virtual {v0}, Lba;->i()Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v0}, Lba;->h()Z

    move-result v1

    if-nez v1, :cond_27

    .line 10
    invoke-virtual {v0}, Lba;->j()V

    :cond_27
    iget-object v0, p0, Laq;->c:Ljava/util/Queue;

    .line 11
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    .line 7
    :cond_2d
    :goto_2d
    iget-object v0, p0, Laq;->a:Las;

    .line 8
    invoke-interface {v0}, Las;->e()I

    move-result v0

    invoke-interface {p1, v0}, Lap;->a(I)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)Z
    .registers 7

    .line 43
    invoke-static {}, Leb;->c()V

    iget-object v0, p0, Laq;->a:Las;

    .line 44
    invoke-interface {v0}, Las;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_50

    .line 45
    sget-object v0, Lo;->c:Lo;

    .line 46
    invoke-virtual {v0}, Lde;->e()Lda;

    move-result-object v0

    check-cast v0, Ln;

    .line 45
    sget v2, Lm;->aU:I

    iget-boolean v3, v0, Lda;->c:Z

    if-nez v3, :cond_1b

    goto :goto_20

    .line 47
    :cond_1b
    invoke-virtual {v0}, Lda;->b()V

    iput-boolean v1, v0, Lda;->c:Z

    .line 45
    :goto_20
    iget-object v3, v0, Ln;->b:Lde;

    .line 48
    check-cast v3, Lo;

    add-int/lit8 v4, v2, -0x1

    if-eqz v2, :cond_4e

    iput v4, v3, Lo;->b:I

    iget v2, v3, Lo;->a:I

    const/4 v4, 0x1

    or-int/2addr v2, v4

    iput v2, v3, Lo;->a:I

    .line 45
    invoke-virtual {v0}, Lda;->f()Lde;

    move-result-object v0

    check-cast v0, Lo;

    new-instance v2, Lk;

    .line 49
    invoke-direct {v2, p1}, Lk;-><init>(Landroid/os/Parcelable;)V

    :try_start_3b
    iget-object p1, p0, Laq;->a:Las;

    .line 50
    invoke-virtual {v0}, Lbu;->m()[B

    move-result-object v0

    .line 51
    invoke-interface {p1, v0, v2}, Las;->b([BLk;)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_44} :catch_45
    .catch Ljava/lang/SecurityException; {:try_start_3b .. :try_end_44} :catch_45

    return v4

    :catch_45
    move-exception p1

    const-string v0, "LensServiceBridge"

    const-string v2, "Failed to inject image."

    .line 52
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :cond_4e
    const/4 p1, 0x0

    .line 48
    throw p1

    :cond_50
    return v1
.end method

.method public final b()V
    .registers 10

    .line 55
    invoke-static {}, Leb;->c()V

    iget-object v0, p0, Laq;->a:Las;

    .line 56
    invoke-static {}, Leb;->c()V

    move-object v1, v0

    check-cast v1, Lba;

    .line 57
    invoke-virtual {v1}, Lba;->g()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_61

    .line 58
    sget-object v2, Lo;->c:Lo;

    .line 59
    invoke-virtual {v2}, Lde;->e()Lda;

    move-result-object v2

    check-cast v2, Ln;

    .line 58
    sget v5, Lm;->cH:I

    iget-boolean v6, v2, Lda;->c:Z

    const/4 v7, 0x0

    if-nez v6, :cond_23

    goto :goto_28

    .line 60
    :cond_23
    invoke-virtual {v2}, Lda;->b()V

    iput-boolean v7, v2, Lda;->c:Z

    .line 58
    :goto_28
    iget-object v6, v2, Ln;->b:Lde;

    .line 61
    check-cast v6, Lo;

    add-int/lit8 v8, v5, -0x1

    if-eqz v5, :cond_60

    iput v8, v6, Lo;->b:I

    iget v5, v6, Lo;->a:I

    or-int/2addr v5, v3

    iput v5, v6, Lo;->a:I

    .line 58
    invoke-virtual {v2}, Lda;->f()Lde;

    move-result-object v2

    check-cast v2, Lo;

    :try_start_3d
    move-object v5, v0

    check-cast v5, Lba;

    iget-object v5, v5, Lba;->g:Lg;

    .line 62
    invoke-static {v5}, Leb;->a(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lbu;->m()[B

    move-result-object v2

    invoke-interface {v5, v2}, Lg;->a([B)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_4c} :catch_4d
    .catch Ljava/lang/SecurityException; {:try_start_3d .. :try_end_4c} :catch_4d

    goto :goto_55

    :catch_4d
    move-exception v2

    const-string v5, "LensServiceConnImpl"

    const-string v6, "Unable to end Lens service session."

    .line 63
    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    :goto_55
    iput-object v4, v1, Lba;->g:Lg;

    iput v7, v1, Lba;->c:I

    iput-object v4, v1, Lba;->d:Lz;

    iput-object v4, v1, Lba;->e:Lx;

    .line 64
    sget v2, Lbh;->a:I

    goto :goto_61

    .line 61
    :cond_60
    throw v4

    .line 65
    :cond_61
    :goto_61
    invoke-virtual {v1}, Lba;->h()Z

    move-result v2

    if-eqz v2, :cond_79

    :try_start_67
    move-object v2, v0

    check-cast v2, Lba;

    iget-object v2, v2, Lba;->b:Landroid/content/Context;

    .line 66
    invoke-virtual {v2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_6f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_67 .. :try_end_6f} :catch_70

    goto :goto_77

    :catch_70
    const-string v0, "LensServiceConnImpl"

    const-string v2, "Unable to unbind, service is not registered."

    .line 67
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :goto_77
    iput-object v4, v1, Lba;->f:Le;

    .line 68
    :cond_79
    sget v0, Lbh;->a:I

    iput v0, v1, Lba;->h:I

    .line 69
    invoke-virtual {v1, v3}, Lba;->a(I)V

    iput-object v4, p0, Laq;->b:Lcom/google/lens/sdk/PendingIntentConsumer;

    return-void
.end method

.method public final c()Lz;
    .registers 4

    .line 36
    invoke-static {}, Leb;->c()V

    iget-object v0, p0, Laq;->a:Las;

    .line 37
    invoke-interface {v0}, Las;->c()Z

    move-result v0

    const-string v1, "getServerFlags() called before ready."

    .line 38
    invoke-static {v0, v1}, Leb;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Laq;->a:Las;

    .line 39
    invoke-interface {v0}, Las;->c()Z

    move-result v0

    if-nez v0, :cond_19

    .line 40
    sget-object v0, Lz;->f:Lz;

    return-object v0

    :cond_19
    iget-object v0, p0, Laq;->a:Las;

    .line 41
    invoke-static {}, Leb;->c()V

    check-cast v0, Lba;

    .line 42
    invoke-virtual {v0}, Lba;->g()Z

    move-result v1

    const-string v2, "Attempted to use ServerFlags before ready."

    invoke-static {v1, v2}, Leb;->a(ZLjava/lang/String;)V

    iget-object v0, v0, Lba;->d:Lz;

    return-object v0
.end method

.method public final d()Lx;
    .registers 4

    .line 15
    invoke-static {}, Leb;->c()V

    iget-object v0, p0, Laq;->a:Las;

    .line 16
    invoke-interface {v0}, Las;->c()Z

    move-result v0

    const-string v1, "getLensCapabilities() called when Lens is not ready."

    .line 17
    invoke-static {v0, v1}, Leb;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Laq;->a:Las;

    .line 18
    invoke-interface {v0}, Las;->c()Z

    move-result v0

    if-nez v0, :cond_19

    .line 19
    sget-object v0, Lx;->b:Lx;

    return-object v0

    :cond_19
    iget-object v0, p0, Laq;->a:Las;

    .line 20
    invoke-static {}, Leb;->c()V

    check-cast v0, Lba;

    .line 21
    invoke-virtual {v0}, Lba;->g()Z

    move-result v1

    const-string v2, "Attempted to use LensCapabilities before ready."

    invoke-static {v1, v2}, Leb;->a(ZLjava/lang/String;)V

    iget-object v0, v0, Lba;->e:Lx;

    return-object v0
.end method

.method public final e()V
    .registers 3

    :goto_0
    iget-object v0, p0, Laq;->c:Ljava/util/Queue;

    .line 12
    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Laq;->c:Ljava/util/Queue;

    .line 13
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lap;

    iget-object v1, p0, Laq;->a:Las;

    .line 14
    invoke-interface {v1}, Las;->e()I

    move-result v1

    invoke-interface {v0, v1}, Lap;->a(I)V

    goto :goto_0

    :cond_1a
    return-void
.end method

.method public final f()I
    .registers 3

    .line 28
    invoke-static {}, Leb;->c()V

    iget-object v0, p0, Laq;->a:Las;

    .line 29
    invoke-interface {v0}, Las;->c()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Laq;->a:Las;

    .line 30
    invoke-interface {v0}, Las;->e()I

    move-result v0

    return v0

    .line 31
    :cond_12
    invoke-direct {p0}, Laq;->h()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 32
    invoke-virtual {p0}, Laq;->c()Lz;

    move-result-object v0

    iget v1, v0, Lz;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_30

    iget-object v1, p0, Laq;->a:Las;

    .line 33
    invoke-interface {v1}, Las;->b()I

    move-result v1

    iget v0, v0, Lz;->e:I

    if-ge v1, v0, :cond_2d

    goto :goto_30

    .line 35
    :cond_2d
    sget v0, Lbh;->b:I

    return v0

    .line 34
    :cond_30
    :goto_30
    sget v0, Lbh;->l:I

    return v0
.end method

.method public final g()I
    .registers 2

    .line 22
    invoke-static {}, Leb;->c()V

    iget-object v0, p0, Laq;->a:Las;

    .line 23
    invoke-interface {v0}, Las;->c()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Laq;->a:Las;

    .line 24
    invoke-interface {v0}, Las;->e()I

    move-result v0

    return v0

    .line 25
    :cond_12
    invoke-direct {p0}, Laq;->h()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 26
    sget v0, Lbh;->b:I

    return v0

    .line 27
    :cond_1b
    sget v0, Lbh;->l:I

    return v0
.end method
