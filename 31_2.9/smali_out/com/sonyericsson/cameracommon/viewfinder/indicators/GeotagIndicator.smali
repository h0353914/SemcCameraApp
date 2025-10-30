.class public Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;
.super Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;
.source "GeotagIndicator.java"


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .registers 2

    .line 16
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method

.method private getAcquiredGpsIcon()I
    .registers 2

    .line 45
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/BrandConfig;->isVerizonBrand()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f08007a

    return v0

    :cond_a
    const v0, 0x7f080079

    return v0
.end method

.method private getAcquiringGpsResource()I
    .registers 2

    .line 37
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/BrandConfig;->isVerizonBrand()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f080081

    return v0

    :cond_a
    const v0, 0x7f080080

    return v0
.end method


# virtual methods
.method public isAcquired(Z)V
    .registers 3

    if-eqz p1, :cond_c

    .line 21
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->mView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->getAcquiredGpsIcon()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_20

    .line 23
    :cond_c
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->mView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->getAcquiringGpsResource()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 24
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->mView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 25
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :goto_20
    return-void
.end method

.method public release()V
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->mView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_15

    .line 31
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->mView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 32
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_15
    return-void
.end method
