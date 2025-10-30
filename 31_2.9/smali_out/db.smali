.class public Ldb;
.super Lda;
.source "PG"

# interfaces
.implements Lei;


# direct methods
.method protected constructor <init>(Ldc;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lda;-><init>(Lde;)V

    return-void
.end method


# virtual methods
.method public final a(Lcq;Ljava/lang/Object;)V
    .registers 5

    .line 9
    invoke-static {p1}, Lde;->b(Lcq;)Lcq;

    move-result-object p1

    iget-object v0, p1, Lcq;->a:Leh;

    iget-object v1, p0, Lda;->a:Lde;

    if-ne v0, v1, :cond_33

    iget-boolean v0, p0, Lda;->c:Z

    if-nez v0, :cond_f

    goto :goto_15

    .line 10
    :cond_f
    invoke-virtual {p0}, Lda;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lda;->c:Z

    .line 9
    :goto_15
    iget-object v0, p0, Ldb;->b:Lde;

    .line 11
    check-cast v0, Ldc;

    iget-object v0, v0, Ldc;->d:Lcu;

    iget-boolean v1, v0, Lcu;->b:Z

    if-eqz v1, :cond_29

    .line 12
    invoke-virtual {v0}, Lcu;->c()Lcu;

    move-result-object v0

    iget-object v1, p0, Ldb;->b:Lde;

    .line 13
    check-cast v1, Ldc;

    iput-object v0, v1, Ldc;->d:Lcu;

    .line 14
    :cond_29
    iget-object v1, p1, Lcq;->d:Ldd;

    .line 15
    invoke-virtual {p1, p2}, Lcq;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 16
    invoke-virtual {v0, v1, p1}, Lcu;->a(Ldd;Ljava/lang/Object;)V

    return-void

    :cond_33
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    .line 17
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()V
    .registers 3

    .line 7
    invoke-super {p0}, Lda;->b()V

    iget-object v0, p0, Ldb;->b:Lde;

    .line 8
    check-cast v0, Ldc;

    iget-object v1, v0, Ldc;->d:Lcu;

    invoke-virtual {v1}, Lcu;->c()Lcu;

    move-result-object v1

    iput-object v1, v0, Ldc;->d:Lcu;

    return-void
.end method

.method public final bridge synthetic e()Lde;
    .registers 2

    .line 5
    invoke-virtual {p0}, Ldb;->j()Ldc;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic g()Leh;
    .registers 2

    .line 6
    invoke-virtual {p0}, Ldb;->j()Ldc;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ldc;
    .registers 2

    iget-boolean v0, p0, Ldb;->c:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Ldb;->b:Lde;

    .line 2
    check-cast v0, Ldc;

    iget-object v0, v0, Ldc;->d:Lcu;

    invoke-virtual {v0}, Lcu;->b()V

    .line 3
    invoke-super {p0}, Lda;->e()Lde;

    move-result-object v0

    check-cast v0, Ldc;

    return-object v0

    :cond_14
    iget-object v0, p0, Ldb;->b:Lde;

    .line 4
    check-cast v0, Ldc;

    return-object v0
.end method
