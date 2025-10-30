.class Lcom/google/android/gms/internal/zzli$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzli;->stopAutoManage(Landroidx/fragment/app/FragmentActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzacr:Lcom/google/android/gms/internal/zzli;

.field final synthetic zzacx:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzli;Landroidx/fragment/app/FragmentActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzli$8;->zzacr:Lcom/google/android/gms/internal/zzli;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzli$8;->zzacx:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli$8;->zzacx:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli$8;->zzacx:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_24

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/zzli$8;->zzacx:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlp;->zzb(Landroidx/fragment/app/FragmentActivity;)Lcom/google/android/gms/internal/zzlp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzli$8;->zzacr:Lcom/google/android/gms/internal/zzli;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzli;->zzf(Lcom/google/android/gms/internal/zzli;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzlp;->zzbp(I)V

    :cond_24
    :goto_24
    return-void
.end method
