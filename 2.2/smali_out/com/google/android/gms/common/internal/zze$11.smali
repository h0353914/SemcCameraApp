.class final Lcom/google/android/gms/common/internal/zze$11;
.super Lcom/google/android/gms/common/internal/zze;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/internal/zze;->zzc(C)Lcom/google/android/gms/common/internal/zze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic zzaff:C


# direct methods
.method constructor <init>(C)V
    .registers 2

    iput-char p1, p0, Lcom/google/android/gms/common/internal/zze$11;->zzaff:C

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zze;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/common/internal/zze;)Lcom/google/android/gms/common/internal/zze;
    .registers 3

    iget-char v0, p0, Lcom/google/android/gms/common/internal/zze$11;->zzaff:C

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/internal/zze;->zzd(C)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p1

    :cond_9
    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/zze;->zza(Lcom/google/android/gms/common/internal/zze;)Lcom/google/android/gms/common/internal/zze;

    move-result-object p1

    return-object p1
.end method

.method public zzd(C)Z
    .registers 2

    iget-char p0, p0, Lcom/google/android/gms/common/internal/zze$11;->zzaff:C

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method
