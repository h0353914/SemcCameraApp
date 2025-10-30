.class abstract Lbw;
.super Ljava/util/AbstractList;
.source "PG"

# interfaces
.implements Ldi;


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbw;->a:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 1

    iget-boolean p0, p0, Lbw;->a:Z

    return p0
.end method

.method public add(ILjava/lang/Object;)V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lbw;->c()V

    .line 3
    invoke-super {p0, p1, p2}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 2

    .line 4
    invoke-virtual {p0}, Lbw;->c()V

    .line 5
    invoke-super {p0, p1}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 3

    .line 6
    invoke-virtual {p0}, Lbw;->c()V

    .line 7
    invoke-super {p0, p1, p2}, Ljava/util/AbstractList;->addAll(ILjava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 2

    .line 8
    invoke-virtual {p0}, Lbw;->c()V

    .line 9
    invoke-super {p0, p1}, Ljava/util/AbstractList;->addAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final b()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbw;->a:Z

    return-void
.end method

.method protected final c()V
    .registers 1

    iget-boolean p0, p0, Lbw;->a:Z

    if-eqz p0, :cond_5

    return-void

    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 12
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public clear()V
    .registers 1

    .line 10
    invoke-virtual {p0}, Lbw;->c()V

    .line 11
    invoke-super {p0}, Ljava/util/AbstractList;->clear()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-eq p1, p0, :cond_34

    .line 13
    instance-of v1, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_33

    .line 14
    instance-of v1, p1, Ljava/util/RandomAccess;

    if-nez v1, :cond_11

    .line 15
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 16
    :cond_11
    check-cast p1, Ljava/util/List;

    .line 17
    invoke-virtual {p0}, Lbw;->size()I

    move-result v1

    .line 18
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v1, v3, :cond_33

    move v3, v2

    :goto_1e
    if-ge v3, v1, :cond_32

    .line 19
    invoke-virtual {p0, v3}, Lbw;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_31
    return v2

    :cond_32
    return v0

    :cond_33
    return v2

    :cond_34
    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 20
    invoke-virtual {p0}, Lbw;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_16

    mul-int/lit8 v1, v1, 0x1f

    .line 21
    invoke-virtual {p0, v2}, Lbw;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_16
    return v1
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 2

    .line 22
    invoke-virtual {p0}, Lbw;->c()V

    .line 23
    invoke-super {p0, p1}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 2

    .line 24
    invoke-virtual {p0}, Lbw;->c()V

    .line 25
    invoke-super {p0, p1}, Ljava/util/AbstractList;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 2

    .line 26
    invoke-virtual {p0}, Lbw;->c()V

    .line 27
    invoke-super {p0, p1}, Ljava/util/AbstractList;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 2

    .line 28
    invoke-virtual {p0}, Lbw;->c()V

    .line 29
    invoke-super {p0, p1}, Ljava/util/AbstractList;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 30
    invoke-virtual {p0}, Lbw;->c()V

    .line 31
    invoke-super {p0, p1, p2}, Ljava/util/AbstractList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
