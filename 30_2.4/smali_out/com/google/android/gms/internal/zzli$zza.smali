.class final Lcom/google/android/gms/internal/zzli$zza;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzli;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "zza"
.end annotation


# instance fields
.field final synthetic zzacr:Lcom/google/android/gms/internal/zzli;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzli;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzli$zza;->zzacr:Lcom/google/android/gms/internal/zzli;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3a

    const-string v0, "GoogleApiClientImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    :pswitch_1e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    :pswitch_23
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/zzli$zzb;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli$zza;->zzacr:Lcom/google/android/gms/internal/zzli;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzli$zzb;->zzg(Lcom/google/android/gms/internal/zzli;)V

    goto :goto_38

    :pswitch_2d
    iget-object p1, p0, Lcom/google/android/gms/internal/zzli$zza;->zzacr:Lcom/google/android/gms/internal/zzli;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzli;->zzd(Lcom/google/android/gms/internal/zzli;)V

    goto :goto_38

    :pswitch_33
    iget-object p1, p0, Lcom/google/android/gms/internal/zzli$zza;->zzacr:Lcom/google/android/gms/internal/zzli;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzli;->zze(Lcom/google/android/gms/internal/zzli;)V

    :goto_38
    return-void

    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_33
        :pswitch_2d
        :pswitch_23
        :pswitch_1e
    .end packed-switch
.end method
