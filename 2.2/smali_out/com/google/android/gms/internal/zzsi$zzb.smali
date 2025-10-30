.class public final Lcom/google/android/gms/internal/zzsi$zzb;
.super Lcom/google/android/gms/internal/zzry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzsi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzry<",
        "Lcom/google/android/gms/internal/zzsi$zzb;",
        ">;"
    }
.end annotation


# instance fields
.field public version:Ljava/lang/String;

.field public zzbiJ:I

.field public zzbiK:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzry;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsi$zzb;->zzFT()Lcom/google/android/gms/internal/zzsi$zzb;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/zzsi$zzb;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/zzsi$zzb;

    iget v1, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbiJ:I

    iget v3, p1, Lcom/google/android/gms/internal/zzsi$zzb;->zzbiJ:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbiK:Ljava/lang/String;

    if-nez v1, :cond_1c

    iget-object v1, p1, Lcom/google/android/gms/internal/zzsi$zzb;->zzbiK:Ljava/lang/String;

    if-eqz v1, :cond_27

    return v2

    :cond_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbiK:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzb;->zzbiK:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    return v2

    :cond_27
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzb;->version:Ljava/lang/String;

    if-nez v1, :cond_30

    iget-object v1, p1, Lcom/google/android/gms/internal/zzsi$zzb;->version:Ljava/lang/String;

    if-eqz v1, :cond_3b

    return v2

    :cond_30
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzb;->version:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzb;->version:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    return v2

    :cond_3b
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v1, :cond_51

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_48

    goto :goto_51

    :cond_48
    iget-object p0, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbik:Lcom/google/android/gms/internal/zzsa;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzsi$zzb;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsa;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_51
    :goto_51
    iget-object p0, p1, Lcom/google/android/gms/internal/zzsi$zzb;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz p0, :cond_5f

    iget-object p0, p1, Lcom/google/android/gms/internal/zzsi$zzb;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5e

    return v0

    :cond_5e
    move v0, v2

    :cond_5f
    return v0
.end method

.method public hashCode()I
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    const/16 v0, 0x1f

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbiJ:I

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbiK:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_1d

    move v2, v3

    goto :goto_23

    :cond_1d
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbiK:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_23
    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzb;->version:Ljava/lang/String;

    if-nez v2, :cond_2b

    move v2, v3

    goto :goto_31

    :cond_2b
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzb;->version:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_31
    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_40

    goto :goto_46

    :cond_40
    iget-object p0, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsa;->hashCode()I

    move-result v3

    :cond_46
    :goto_46
    add-int/2addr v0, v3

    return v0
.end method

.method protected zzB()I
    .registers 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzry;->zzB()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbiJ:I

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbiJ:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrx;->zzA(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbiK:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbiK:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrx;->zzn(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_22
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzb;->version:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    const/4 v1, 0x3

    iget-object p0, p0, Lcom/google/android/gms/internal/zzsi$zzb;->version:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/zzrx;->zzn(ILjava/lang/String;)I

    move-result p0

    add-int/2addr v0, p0

    :cond_34
    return v0
.end method

.method public zzFT()Lcom/google/android/gms/internal/zzsi$zzb;
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbiJ:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbiK:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzb;->version:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbik:Lcom/google/android/gms/internal/zzsa;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbiv:I

    return-object p0
.end method

.method public zzH(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzsi$zzb;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    move-result v0

    if-eqz v0, :cond_32

    const/16 v1, 0x8

    if-eq v0, v1, :cond_27

    const/16 v1, 0x12

    if-eq v0, v1, :cond_20

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_19

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzsi$zzb;->zza(Lcom/google/android/gms/internal/zzrw;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzb;->version:Ljava/lang/String;

    goto :goto_0

    :cond_20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbiK:Ljava/lang/String;

    goto :goto_0

    :cond_27
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    move-result v0

    packed-switch v0, :pswitch_data_34

    goto :goto_0

    :pswitch_2f
    iput v0, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbiJ:I

    goto :goto_0

    :cond_32
    return-object p0

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
    .end packed-switch
.end method

.method public zza(Lcom/google/android/gms/internal/zzrx;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbiJ:I

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbiJ:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrx;->zzy(II)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbiK:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbiK:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrx;->zzb(ILjava/lang/String;)V

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzb;->version:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzb;->version:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrx;->zzb(ILjava/lang/String;)V

    :cond_2a
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzry;->zza(Lcom/google/android/gms/internal/zzrx;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsi$zzb;->zzH(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzsi$zzb;

    move-result-object p0

    return-object p0
.end method
