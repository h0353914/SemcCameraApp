.class final Lcom/google/android/gms/internal/zzmh$zzd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzmh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field mEnd:I

.field mEntryValid:Z

.field mIndex:I

.field final synthetic zzagL:Lcom/google/android/gms/internal/zzmh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzmh;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmh$zzd;->zzagL:Lcom/google/android/gms/internal/zzmh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mEntryValid:Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzmh;->colGetSize()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mEnd:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mIndex:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mEntryValid:Z

    if-nez v0, :cond_c

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This container does not support retaining Map.Entry objects"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_12

    return v1

    :cond_12
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmh$zzd;->zzagL:Lcom/google/android/gms/internal/zzmh;

    iget v3, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mIndex:I

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/zzmh;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzmf;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3a

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh$zzd;->zzagL:Lcom/google/android/gms/internal/zzmh;

    iget p0, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mIndex:I

    invoke-virtual {v0, p0, v2}, Lcom/google/android/gms/internal/zzmh;->colGetEntry(II)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzmf;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3a

    move v1, v2

    :cond_3a
    return v1
.end method

.method public getKey()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mEntryValid:Z

    if-nez v0, :cond_c

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This container does not support retaining Map.Entry objects"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh$zzd;->zzagL:Lcom/google/android/gms/internal/zzmh;

    iget p0, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mIndex:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/internal/zzmh;->colGetEntry(II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mEntryValid:Z

    if-nez v0, :cond_c

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This container does not support retaining Map.Entry objects"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh$zzd;->zzagL:Lcom/google/android/gms/internal/zzmh;

    iget p0, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mIndex:I

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/internal/zzmh;->colGetEntry(II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public hasNext()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mIndex:I

    iget p0, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mEnd:I

    if-ge v0, p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mEntryValid:Z

    if-nez v0, :cond_c

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This container does not support retaining Map.Entry objects"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh$zzd;->zzagL:Lcom/google/android/gms/internal/zzmh;

    iget v1, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzmh;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh$zzd;->zzagL:Lcom/google/android/gms/internal/zzmh;

    iget p0, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mIndex:I

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v3}, Lcom/google/android/gms/internal/zzmh;->colGetEntry(II)Ljava/lang/Object;

    move-result-object p0

    if-nez v0, :cond_22

    move v0, v2

    goto :goto_26

    :cond_22
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_26
    if-nez p0, :cond_29

    goto :goto_2d

    :cond_29
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2d
    xor-int p0, v0, v2

    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh$zzd;->next()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mIndex:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mEntryValid:Z

    return-object p0
.end method

.method public remove()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mEntryValid:Z

    if-nez v0, :cond_a

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh$zzd;->zzagL:Lcom/google/android/gms/internal/zzmh;

    iget v1, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mIndex:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzmh;->colRemoveAt(I)V

    iget v0, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mIndex:I

    iget v0, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mEnd:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mEnd:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mEntryValid:Z

    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mEntryValid:Z

    if-nez v0, :cond_c

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This container does not support retaining Map.Entry objects"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh$zzd;->zzagL:Lcom/google/android/gms/internal/zzmh;

    iget p0, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mIndex:I

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/zzmh;->colSetValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh$zzd;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh$zzd;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
