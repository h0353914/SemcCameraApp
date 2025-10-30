.class public Ldq;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field protected volatile a:Leh;

.field public volatile b:Lck;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 1
    invoke-static {}, Lcs;->a()Lcs;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lck;
    .registers 2

    iget-object v0, p0, Ldq;->b:Lck;

    if-nez v0, :cond_25

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Ldq;->b:Lck;

    if-eqz v0, :cond_d

    iget-object v0, p0, Ldq;->b:Lck;

    .line 14
    monitor-exit p0

    return-object v0

    :cond_d
    iget-object v0, p0, Ldq;->a:Leh;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Ldq;->a:Leh;

    .line 16
    invoke-interface {v0}, Leh;->a()Lck;

    move-result-object v0

    iput-object v0, p0, Ldq;->b:Lck;

    goto :goto_1e

    .line 15
    :cond_1a
    sget-object v0, Lck;->b:Lck;

    iput-object v0, p0, Ldq;->b:Lck;

    .line 16
    :goto_1e
    iget-object v0, p0, Ldq;->b:Lck;

    .line 17
    monitor-exit p0

    return-object v0

    :catchall_22
    move-exception v0

    .line 18
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_22

    throw v0

    .line 15
    :cond_25
    iget-object p0, p0, Ldq;->b:Lck;

    return-object p0
.end method

.method public final a(Leh;)Leh;
    .registers 3

    iget-object v0, p0, Ldq;->a:Leh;

    if-nez v0, :cond_1d

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Ldq;->a:Leh;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_1a

    if-nez v0, :cond_18

    :try_start_9
    iput-object p1, p0, Ldq;->a:Leh;

    .line 11
    sget-object v0, Lck;->b:Lck;

    iput-object v0, p0, Ldq;->b:Lck;
    :try_end_f
    .catch Ldl; {:try_start_9 .. :try_end_f} :catch_10
    .catchall {:try_start_9 .. :try_end_f} :catchall_1a

    goto :goto_16

    .line 13
    :catch_10
    :try_start_10
    iput-object p1, p0, Ldq;->a:Leh;

    .line 12
    sget-object p1, Lck;->b:Lck;

    iput-object p1, p0, Ldq;->b:Lck;

    .line 13
    :goto_16
    monitor-exit p0

    goto :goto_1d

    .line 10
    :cond_18
    monitor-exit p0

    goto :goto_1d

    :catchall_1a
    move-exception p1

    .line 13
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_1a

    throw p1

    :cond_1d
    :goto_1d
    iget-object p0, p0, Ldq;->a:Leh;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_46

    .line 3
    instance-of v0, p1, Ldq;

    if-eqz v0, :cond_44

    .line 4
    check-cast p1, Ldq;

    iget-object v0, p0, Ldq;->a:Leh;

    .line 5
    iget-object v1, p1, Ldq;->a:Leh;

    if-nez v0, :cond_1e

    if-eqz v1, :cond_11

    goto :goto_1e

    .line 9
    :cond_11
    invoke-virtual {p0}, Ldq;->a()Lck;

    move-result-object p0

    invoke-virtual {p1}, Ldq;->a()Lck;

    move-result-object p1

    invoke-virtual {p0, p1}, Lck;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1e
    :goto_1e
    if-eqz v0, :cond_28

    if-nez v1, :cond_23

    goto :goto_28

    .line 8
    :cond_23
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_28
    :goto_28
    if-nez v0, :cond_37

    .line 7
    invoke-interface {v1}, Leh;->i()Leh;

    move-result-object p1

    invoke-virtual {p0, p1}, Ldq;->a(Leh;)Leh;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 6
    :cond_37
    invoke-interface {v0}, Leh;->i()Leh;

    move-result-object p0

    invoke-virtual {p1, p0}, Ldq;->a(Leh;)Leh;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_44
    const/4 p0, 0x0

    return p0

    :cond_46
    const/4 p0, 0x1

    return p0
.end method

.method public hashCode()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
