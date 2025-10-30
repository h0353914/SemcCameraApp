.class public final Lcom/google/android/gms/internal/zzmq;
.super Ljava/lang/Object;


# direct methods
.method public static zzb(Landroid/content/res/Resources;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-le v1, v2, :cond_12

    move v1, v3

    goto :goto_13

    :cond_12
    move v1, v0

    :goto_13
    invoke-static {}, Lcom/google/android/gms/internal/zzmx;->zzqu()Z

    move-result v2

    if-eqz v2, :cond_1b

    if-nez v1, :cond_21

    :cond_1b
    invoke-static {p0}, Lcom/google/android/gms/internal/zzmq;->zzc(Landroid/content/res/Resources;)Z

    move-result p0

    if-eqz p0, :cond_22

    :cond_21
    move v0, v3

    :cond_22
    return v0
.end method

.method private static zzc(Landroid/content/res/Resources;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/internal/zzmx;->zzqw()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v2, 0x3

    if-gt v0, v2, :cond_19

    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v0, 0x258

    if-lt p0, v0, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1
.end method
