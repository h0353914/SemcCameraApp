.class final Lcom/google/android/gms/internal/zzmh$zze;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzmh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "zze"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic zzagL:Lcom/google/android/gms/internal/zzmh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzmh;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmh$zze;->zzagL:Lcom/google/android/gms/internal/zzmh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TV;>;)Z"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public clear()V
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/zzmh$zze;->zzagL:Lcom/google/android/gms/internal/zzmh;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->colClear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 2

    iget-object p0, p0, Lcom/google/android/gms/internal/zzmh$zze;->zzagL:Lcom/google/android/gms/internal/zzmh;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzmh;->colIndexOfValue(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzmh$zze;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_16
    const/4 p0, 0x1

    return p0
.end method

.method public isEmpty()Z
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/zzmh$zze;->zzagL:Lcom/google/android/gms/internal/zzmh;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->colGetSize()I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzmh$zza;

    iget-object p0, p0, Lcom/google/android/gms/internal/zzmh$zze;->zzagL:Lcom/google/android/gms/internal/zzmh;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzmh$zza;-><init>(Lcom/google/android/gms/internal/zzmh;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh$zze;->zzagL:Lcom/google/android/gms/internal/zzmh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzmh;->colIndexOfValue(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_f

    iget-object p0, p0, Lcom/google/android/gms/internal/zzmh$zze;->zzagL:Lcom/google/android/gms/internal/zzmh;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzmh;->colRemoveAt(I)V

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh$zze;->zzagL:Lcom/google/android/gms/internal/zzmh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzmh;->colGetSize()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v1, v0, :cond_23

    iget-object v3, p0, Lcom/google/android/gms/internal/zzmh$zze;->zzagL:Lcom/google/android/gms/internal/zzmh;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Lcom/google/android/gms/internal/zzmh;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmh$zze;->zzagL:Lcom/google/android/gms/internal/zzmh;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzmh;->colRemoveAt(I)V

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    move v2, v4

    :cond_21
    add-int/2addr v1, v4

    goto :goto_8

    :cond_23
    return v2
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh$zze;->zzagL:Lcom/google/android/gms/internal/zzmh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzmh;->colGetSize()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v1, v0, :cond_23

    iget-object v3, p0, Lcom/google/android/gms/internal/zzmh$zze;->zzagL:Lcom/google/android/gms/internal/zzmh;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Lcom/google/android/gms/internal/zzmh;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmh$zze;->zzagL:Lcom/google/android/gms/internal/zzmh;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzmh;->colRemoveAt(I)V

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    move v2, v4

    :cond_21
    add-int/2addr v1, v4

    goto :goto_8

    :cond_23
    return v2
.end method

.method public size()I
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/zzmh$zze;->zzagL:Lcom/google/android/gms/internal/zzmh;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->colGetSize()I

    move-result p0

    return p0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Lcom/google/android/gms/internal/zzmh$zze;->zzagL:Lcom/google/android/gms/internal/zzmh;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzmh;->toArrayHelper(I)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/zzmh$zze;->zzagL:Lcom/google/android/gms/internal/zzmh;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzmh;->toArrayHelper([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
