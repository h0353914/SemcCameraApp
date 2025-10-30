.class public Lda;
.super Lbt;
.source "PG"


# instance fields
.field public final a:Lde;

.field public b:Lde;

.field public c:Z


# direct methods
.method protected constructor <init>(Lde;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lbt;-><init>()V

    iput-object p1, p0, Lda;->a:Lde;

    const/4 v0, 0x4

    .line 2
    invoke-virtual {p1, v0}, Lde;->b(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lde;

    iput-object p1, p0, Lda;->b:Lde;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lda;->c:Z

    return-void
.end method

.method private static final a(Lde;Lde;)V
    .registers 3

    .line 20
    sget-object v0, Lep;->a:Lep;

    invoke-virtual {v0, p0}, Lep;->a(Ljava/lang/Object;)Les;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Les;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Lbt;
    .registers 1

    .line 10
    invoke-virtual {p0}, Lda;->d()Lda;

    move-result-object p0

    return-object p0
.end method

.method protected final bridge synthetic a(Lbu;)Lbt;
    .registers 2

    .line 16
    check-cast p1, Lde;

    .line 17
    invoke-virtual {p0, p1}, Lda;->a(Lde;)V

    return-object p0
.end method

.method public final a(Lde;)V
    .registers 3

    iget-boolean v0, p0, Lda;->c:Z

    if-eqz v0, :cond_a

    .line 18
    invoke-virtual {p0}, Lda;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lda;->c:Z

    :cond_a
    iget-object p0, p0, Lda;->b:Lde;

    .line 19
    invoke-static {p0, p1}, Lda;->a(Lde;Lde;)V

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lda;->b:Lde;

    const/4 v1, 0x4

    .line 14
    invoke-virtual {v0, v1}, Lde;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde;

    iget-object v1, p0, Lda;->b:Lde;

    .line 15
    invoke-static {v0, v1}, Lda;->a(Lde;Lde;)V

    iput-object v0, p0, Lda;->b:Lde;

    return-void
.end method

.method public final c()Z
    .registers 1

    const/4 p0, 0x0

    throw p0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .registers 1

    .line 13
    invoke-virtual {p0}, Lda;->d()Lda;

    move-result-object p0

    return-object p0
.end method

.method public final d()Lda;
    .registers 3

    iget-object v0, p0, Lda;->a:Lde;

    const/4 v1, 0x5

    .line 11
    invoke-virtual {v0, v1}, Lde;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lda;

    .line 12
    invoke-virtual {p0}, Lda;->e()Lde;

    move-result-object p0

    invoke-virtual {v0, p0}, Lda;->a(Lde;)V

    return-object v0
.end method

.method public e()Lde;
    .registers 3

    iget-boolean v0, p0, Lda;->c:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lda;->b:Lde;

    .line 8
    sget-object v1, Lep;->a:Lep;

    invoke-virtual {v1, v0}, Lep;->a(Ljava/lang/Object;)Les;

    move-result-object v1

    invoke-interface {v1, v0}, Les;->d(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lda;->c:Z

    iget-object p0, p0, Lda;->b:Lde;

    return-object p0

    :cond_15
    iget-object p0, p0, Lda;->b:Lde;

    return-object p0
.end method

.method public final f()Lde;
    .registers 2

    .line 3
    invoke-virtual {p0}, Lda;->e()Lde;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lde;->c()Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p0

    :cond_b
    new-instance p0, Lfg;

    .line 5
    invoke-direct {p0}, Lfg;-><init>()V

    .line 6
    throw p0
.end method

.method public bridge synthetic g()Leh;
    .registers 1

    .line 9
    invoke-virtual {p0}, Lda;->e()Lde;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic h()Leh;
    .registers 1

    .line 7
    invoke-virtual {p0}, Lda;->f()Lde;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic i()Leh;
    .registers 1

    iget-object p0, p0, Lda;->a:Lde;

    return-object p0
.end method
