.class Lcom/google/android/gms/internal/zzli$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/zzk$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzli;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzacr:Lcom/google/android/gms/internal/zzli;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzli;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzli$3;->zzacr:Lcom/google/android/gms/internal/zzli;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isConnected()Z
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/zzli$3;->zzacr:Lcom/google/android/gms/internal/zzli;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzli;->isConnected()Z

    move-result p0

    return p0
.end method

.method public zzmS()Landroid/os/Bundle;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method
