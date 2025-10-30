.class public final Ldr;
.super Lbw;
.source "PG"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lds;


# static fields
.field private static final b:Ldr;


# instance fields
.field private final c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ldr;

    const/16 v1, 0xa

    .line 1
    invoke-direct {v0, v1}, Ldr;-><init>(I)V

    sput-object v0, Ldr;->b:Ldr;

    sget-object v0, Ldr;->b:Ldr;

    .line 2
    invoke-virtual {v0}, Lbw;->b()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/16 v0, 0xa

    .line 3
    invoke-direct {p0, v0}, Ldr;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0}, Ldr;-><init>(Ljava/util/ArrayList;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/ArrayList;)V
    .registers 2

    .line 5
    invoke-direct {p0}, Lbw;-><init>()V

    iput-object p1, p0, Ldr;->c:Ljava/util/List;

    return-void
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 15
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 16
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 17
    :cond_7
    instance-of v0, p0, Lck;

    if-eqz v0, :cond_12

    .line 18
    check-cast p0, Lck;

    invoke-virtual {p0}, Lck;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 19
    :cond_12
    check-cast p0, [B

    invoke-static {p0}, Ldj;->b([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic a(I)Ldi;
    .registers 3

    .line 39
    invoke-virtual {p0}, Ldr;->size()I

    move-result v0

    if-lt p1, v0, :cond_16

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    .line 41
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p1, p0, Ldr;->c:Ljava/util/List;

    .line 42
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Ldr;

    .line 43
    invoke-direct {p1, v0}, Ldr;-><init>(Ljava/util/ArrayList;)V

    return-object p1

    .line 39
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 40
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final bridge synthetic add(ILjava/lang/Object;)V
    .registers 4

    .line 6
    check-cast p2, Ljava/lang/String;

    .line 7
    invoke-virtual {p0}, Lbw;->c()V

    iget-object v0, p0, Ldr;->c:Ljava/util/List;

    .line 8
    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 9
    iget p1, p0, Ldr;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ldr;->modCount:I

    return-void
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .registers 4

    .line 10
    invoke-virtual {p0}, Lbw;->c()V

    .line 11
    instance-of v0, p2, Lds;

    if-eqz v0, :cond_d

    check-cast p2, Lds;

    invoke-interface {p2}, Lds;->d()Ljava/util/List;

    move-result-object p2

    :cond_d
    iget-object v0, p0, Ldr;->c:Ljava/util/List;

    .line 12
    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    .line 13
    iget p2, p0, Ldr;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Ldr;->modCount:I

    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .registers 3

    .line 14
    invoke-virtual {p0}, Ldr;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lbw;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final b(I)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Ldr;->c:Ljava/util/List;

    .line 24
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 25
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 26
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 27
    :cond_d
    instance-of v1, v0, Lck;

    if-eqz v1, :cond_23

    .line 28
    check-cast v0, Lck;

    .line 29
    invoke-virtual {v0}, Lck;->e()Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-virtual {v0}, Lck;->c()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Ldr;->c:Ljava/util/List;

    .line 31
    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_22
    return-object v1

    .line 32
    :cond_23
    check-cast v0, [B

    .line 33
    invoke-static {v0}, Ldj;->b([B)Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-static {v0}, Ldj;->a([B)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Ldr;->c:Ljava/util/List;

    .line 35
    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_34
    return-object v1
.end method

.method public final c(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Ldr;->c:Ljava/util/List;

    .line 36
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final clear()V
    .registers 2

    .line 20
    invoke-virtual {p0}, Lbw;->c()V

    iget-object v0, p0, Ldr;->c:Ljava/util/List;

    .line 21
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 22
    iget v0, p0, Ldr;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldr;->modCount:I

    return-void
.end method

.method public final d()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Ldr;->c:Ljava/util/List;

    .line 37
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lds;
    .registers 2

    iget-boolean v0, p0, Lbw;->a:Z

    if-eqz v0, :cond_a

    new-instance v0, Lfl;

    .line 38
    invoke-direct {v0, p0}, Lfl;-><init>(Lds;)V

    return-object v0

    :cond_a
    return-object p0
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    .line 23
    invoke-virtual {p0, p1}, Ldr;->b(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic remove(I)Ljava/lang/Object;
    .registers 3

    .line 44
    invoke-virtual {p0}, Lbw;->c()V

    iget-object v0, p0, Ldr;->c:Ljava/util/List;

    .line 45
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    .line 46
    iget v0, p0, Ldr;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldr;->modCount:I

    .line 47
    invoke-static {p1}, Ldr;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 48
    check-cast p2, Ljava/lang/String;

    .line 49
    invoke-virtual {p0}, Lbw;->c()V

    iget-object v0, p0, Ldr;->c:Ljava/util/List;

    .line 50
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 51
    invoke-static {p1}, Ldr;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .registers 2

    iget-object v0, p0, Ldr;->c:Ljava/util/List;

    .line 52
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
