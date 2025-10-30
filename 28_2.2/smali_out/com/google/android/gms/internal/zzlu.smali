.class public final Lcom/google/android/gms/internal/zzlu;
.super Landroid/widget/ImageView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzlu$zza;
    }
.end annotation


# instance fields
.field private zzaeA:I

.field private zzaeB:Lcom/google/android/gms/internal/zzlu$zza;

.field private zzaeC:I

.field private zzaeD:F

.field private zzaey:Landroid/net/Uri;

.field private zzaez:I


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlu;->zzaeB:Lcom/google/android/gms/internal/zzlu$zza;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlu;->zzaeB:Lcom/google/android/gms/internal/zzlu$zza;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlu;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlu;->getHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzlu$zza;->zzk(II)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_15
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/google/android/gms/internal/zzlu;->zzaeA:I

    if-eqz v0, :cond_21

    iget p0, p0, Lcom/google/android/gms/internal/zzlu;->zzaeA:I

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_21
    return-void
.end method

.method protected onMeasure(II)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    iget p1, p0, Lcom/google/android/gms/internal/zzlu;->zzaeC:I

    packed-switch p1, :pswitch_data_20

    return-void

    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlu;->getMeasuredWidth()I

    move-result p1

    int-to-float p2, p1

    iget v0, p0, Lcom/google/android/gms/internal/zzlu;->zzaeD:F

    div-float/2addr p2, v0

    float-to-int p2, p2

    goto :goto_1c

    :pswitch_13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlu;->getMeasuredHeight()I

    move-result p2

    int-to-float p1, p2

    iget v0, p0, Lcom/google/android/gms/internal/zzlu;->zzaeD:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    :goto_1c
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzlu;->setMeasuredDimension(II)V

    return-void

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_13
        :pswitch_9
    .end packed-switch
.end method

.method public zzbA(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/zzlu;->zzaez:I

    return-void
.end method

.method public zzj(Landroid/net/Uri;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlu;->zzaey:Landroid/net/Uri;

    return-void
.end method

.method public zzoH()I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/zzlu;->zzaez:I

    return p0
.end method
