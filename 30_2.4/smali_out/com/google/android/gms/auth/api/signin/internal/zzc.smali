.class public Lcom/google/android/gms/auth/api/signin/internal/zzc;
.super Ljava/lang/Object;


# static fields
.field static zzTo:I = 0x1f


# instance fields
.field private zzTp:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzc;->zzTp:I

    return-void
.end method


# virtual methods
.method public zzP(Z)Lcom/google/android/gms/auth/api/signin/internal/zzc;
    .registers 4

    sget v0, Lcom/google/android/gms/auth/api/signin/internal/zzc;->zzTo:I

    iget v1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzc;->zzTp:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzc;->zzTp:I

    return-object p0
.end method

.method public zzl(Ljava/lang/Object;)Lcom/google/android/gms/auth/api/signin/internal/zzc;
    .registers 4

    sget v0, Lcom/google/android/gms/auth/api/signin/internal/zzc;->zzTo:I

    iget v1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzc;->zzTp:I

    mul-int/2addr v0, v1

    if-nez p1, :cond_9

    const/4 p1, 0x0

    goto :goto_d

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    :goto_d
    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzc;->zzTp:I

    return-object p0
.end method

.method public zzmd()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzc;->zzTp:I

    return v0
.end method
