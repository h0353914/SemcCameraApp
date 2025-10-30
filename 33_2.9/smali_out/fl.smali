.class public final Lfl;
.super Ljava/util/AbstractList;
.source "PG"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lds;


# instance fields
.field public final a:Lds;


# direct methods
.method public constructor <init>(Lds;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lfl;->a:Lds;

    return-void
.end method


# virtual methods
.method public final c(I)Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Lfl;->a:Lds;

    .line 3
    invoke-interface {p0, p1}, Lds;->c(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final d()Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lfl;->a:Lds;

    .line 4
    invoke-interface {p0}, Lds;->d()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final e()Lds;
    .registers 1

    return-object p0
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Lfl;->a:Lds;

    check-cast p0, Ldr;

    .line 2
    invoke-virtual {p0, p1}, Ldr;->b(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2

    new-instance v0, Lfk;

    .line 5
    invoke-direct {v0, p0}, Lfk;-><init>(Lfl;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .registers 3

    new-instance v0, Lfj;

    .line 6
    invoke-direct {v0, p0, p1}, Lfj;-><init>(Lfl;I)V

    return-object v0
.end method

.method public final size()I
    .registers 1

    iget-object p0, p0, Lfl;->a:Lds;

    .line 7
    invoke-interface {p0}, Lds;->size()I

    move-result p0

    return p0
.end method
