.class public abstract Lcom/google/android/gms/internal/zzry;
.super Lcom/google/android/gms/internal/zzse;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/zzry<",
        "TM;>;>",
        "Lcom/google/android/gms/internal/zzse;"
    }
.end annotation


# instance fields
.field protected zzbik:Lcom/google/android/gms/internal/zzsa;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzse;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzry;->zzFF()Lcom/google/android/gms/internal/zzry;

    move-result-object p0

    return-object p0
.end method

.method protected zzB()I
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzry;->zzbik:Lcom/google/android/gms/internal/zzsa;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    move v0, v1

    :goto_6
    iget-object v2, p0, Lcom/google/android/gms/internal/zzry;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsa;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    iget-object v2, p0, Lcom/google/android/gms/internal/zzry;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzsa;->zzlS(I)Lcom/google/android/gms/internal/zzsb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsb;->zzB()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1c
    move v0, v1

    :cond_1d
    return v0
.end method

.method public zzFF()Lcom/google/android/gms/internal/zzry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/internal/zzse;->zzFG()Lcom/google/android/gms/internal/zzse;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzry;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzsc;->zza(Lcom/google/android/gms/internal/zzry;Lcom/google/android/gms/internal/zzry;)V

    return-object v0
.end method

.method public synthetic zzFG()Lcom/google/android/gms/internal/zzse;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzry;->zzFF()Lcom/google/android/gms/internal/zzry;

    move-result-object p0

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzrz;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzrz<",
            "TM;TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzry;->zzbik:Lcom/google/android/gms/internal/zzsa;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    iget-object p0, p0, Lcom/google/android/gms/internal/zzry;->zzbik:Lcom/google/android/gms/internal/zzsa;

    iget v0, p1, Lcom/google/android/gms/internal/zzrz;->tag:I

    invoke-static {v0}, Lcom/google/android/gms/internal/zzsh;->zzlV(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzsa;->zzlR(I)Lcom/google/android/gms/internal/zzsb;

    move-result-object p0

    if-nez p0, :cond_15

    return-object v1

    :cond_15
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsb;->zzb(Lcom/google/android/gms/internal/zzrz;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public zza(Lcom/google/android/gms/internal/zzrx;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzry;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzry;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsa;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    iget-object v1, p0, Lcom/google/android/gms/internal/zzry;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzsa;->zzlS(I)Lcom/google/android/gms/internal/zzsb;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzsb;->zza(Lcom/google/android/gms/internal/zzrx;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1a
    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzrw;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->getPosition()I

    move-result v0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzrw;->zzlA(I)Z

    move-result v1

    if-nez v1, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    invoke-static {p2}, Lcom/google/android/gms/internal/zzsh;->zzlV(I)I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->getPosition()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrw;->zzx(II)[B

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/zzsg;

    invoke-direct {v0, p2, p1}, Lcom/google/android/gms/internal/zzsg;-><init>(I[B)V

    const/4 p1, 0x0

    iget-object p2, p0, Lcom/google/android/gms/internal/zzry;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-nez p2, :cond_2b

    new-instance p2, Lcom/google/android/gms/internal/zzsa;

    invoke-direct {p2}, Lcom/google/android/gms/internal/zzsa;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzry;->zzbik:Lcom/google/android/gms/internal/zzsa;

    goto :goto_31

    :cond_2b
    iget-object p1, p0, Lcom/google/android/gms/internal/zzry;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzsa;->zzlR(I)Lcom/google/android/gms/internal/zzsb;

    move-result-object p1

    :goto_31
    if-nez p1, :cond_3d

    new-instance p1, Lcom/google/android/gms/internal/zzsb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzsb;-><init>()V

    iget-object p0, p0, Lcom/google/android/gms/internal/zzry;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/zzsa;->zza(ILcom/google/android/gms/internal/zzsb;)V

    :cond_3d
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzsb;->zza(Lcom/google/android/gms/internal/zzsg;)V

    const/4 p0, 0x1

    return p0
.end method
