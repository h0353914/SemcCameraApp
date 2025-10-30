.class public Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZoomUiUpdateProxy"
.end annotation


# instance fields
.field private mZoomBar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

.field private mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

.field private mZoomDisplayChangedListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$5400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;
    .registers 1

    .line 11204
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    return-object p0
.end method

.method static synthetic access$8700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)Z
    .registers 2

    .line 11204
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->isInZooming(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$9500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;
    .registers 1

    .line 11204
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomBar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    return-object p0
.end method

.method public static calcMaxZoomStep(F)I
    .registers 3

    .line 11406
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->calcZoomStep(F)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public static getBokehMaxZoomRatio()F
    .registers 1

    const/high16 v0, 0x40a00000    # 5.0f

    return v0
.end method

.method private isInZooming(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 11297
    :cond_4
    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern:[I

    check-cast p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_15

    packed-switch p1, :pswitch_data_18

    goto :goto_16

    :cond_15
    :pswitch_15
    const/4 v0, 0x1

    :goto_16
    return v0

    nop

    :pswitch_data_18
    .packed-switch 0x4
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method


# virtual methods
.method public bindZoomBar(Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;)V
    .registers 2

    .line 11210
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomBar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    return-void
.end method

.method public bindZoomDial(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;)V
    .registers 3

    .line 11214
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    .line 11215
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setZoomUiEventListener(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;)V

    return-void
.end method

.method public getBaseStateNumber()F
    .registers 2

    const/high16 v0, 0x41a00000    # 20.0f

    return v0
.end method

.method public getZoomMagnificationCoefficient()F
    .registers 2

    const v0, 0x3e1a209b

    return v0
.end method

.method public getZoomRatios()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 11361
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 11362
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    goto :goto_23

    .line 11363
    :cond_11
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomBar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 11364
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomBar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return-object v0
.end method

.method public hideZoomDial()V
    .registers 2

    .line 11373
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    if-eqz v0, :cond_7

    .line 11374
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideImmediately()V

    :cond_7
    return-void
.end method

.method public hideZoomDialDelayed(Ljava/lang/Runnable;)V
    .registers 3

    .line 11394
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    if-eqz v0, :cond_7

    .line 11395
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideDelayed(Ljava/lang/Runnable;)V

    :cond_7
    return-void
.end method

.method public isZoomDialEnabled()Z
    .registers 2

    .line 11270
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    if-eqz v0, :cond_9

    .line 11271
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isEnabled()Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public setBokehModeEnable(ZI)V
    .registers 4

    .line 11388
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 11389
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setBokehMode(ZI)V

    :cond_f
    return-void
.end method

.method public setDialClickable(Z)V
    .registers 3

    .line 11236
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    if-eqz v0, :cond_7

    .line 11237
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setClickable(Z)V

    :cond_7
    return-void
.end method

.method public setDialEnable(Z)V
    .registers 7

    .line 11247
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    if-eqz v0, :cond_45

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomBar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    if-eqz v1, :cond_45

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_27

    .line 11249
    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->setEnabled(Z)V

    .line 11250
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setEnabled(Z)V

    .line 11251
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setClickable(Z)V

    .line 11252
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDisplayChangedListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setZoombarDisplayChangedListener(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;)V

    .line 11253
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomBar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->setZoombarDisplayChangedListener(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;)V

    goto :goto_45

    .line 11255
    :cond_27
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideImmediately()V

    .line 11256
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p1, v4}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setEnabled(Z)V

    .line 11257
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p1, v4}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setClickable(Z)V

    .line 11258
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomBar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    invoke-virtual {p1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->setEnabled(Z)V

    .line 11259
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setZoombarDisplayChangedListener(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;)V

    .line 11260
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomBar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDisplayChangedListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->setZoombarDisplayChangedListener(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;)V

    :cond_45
    :goto_45
    return-void
.end method

.method public setNonLogicCameraVideo(Z)V
    .registers 3

    .line 11322
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setNonLogicCameraVideo(Z)V

    return-void
.end method

.method public setVideoRecording(Z)V
    .registers 3

    .line 11318
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setVideoRecording(Z)V

    return-void
.end method

.method public setZoomDisplayChangedListener(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;)V
    .registers 2

    .line 11327
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDisplayChangedListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;

    return-void
.end method

.method public showFullZoomUi()V
    .registers 2

    .line 11286
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    if-eqz v0, :cond_c

    .line 11287
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->showFullView()V

    .line 11288
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideDialbarDelayed()V

    :cond_c
    return-void
.end method

.method public showZoomUi()V
    .registers 2

    .line 11280
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    if-eqz v0, :cond_7

    .line 11281
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->showSimpleView()V

    :cond_7
    return-void
.end method

.method public startZoom()V
    .registers 2

    .line 11219
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 11220
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->startZooming()V

    :cond_f
    return-void
.end method

.method public stopZoom()V
    .registers 2

    .line 11225
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 11226
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->stopZooming()V

    :cond_f
    return-void
.end method

.method protected update(Ljava/util/List;IILcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;F)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;II",
            "Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;",
            "F)I"
        }
    .end annotation

    .line 11340
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 11341
    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p3, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setZoomRatios(Ljava/util/List;)V

    .line 11342
    invoke-direct {p0, p4}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->isInZooming(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)Z

    move-result p1

    if-eqz p1, :cond_22

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isFullView()Z

    move-result p1

    if-nez p1, :cond_22

    .line 11343
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->showFullView()V

    .line 11345
    :cond_22
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->zoom(I)I

    goto :goto_4c

    .line 11346
    :cond_28
    iget-object p4, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomBar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    if-eqz p4, :cond_4c

    invoke-virtual {p4}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->isEnabled()Z

    move-result p4

    if-eqz p4, :cond_4c

    .line 11347
    iget-object p4, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomBar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    invoke-virtual {p4, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->setZoomRatios(Ljava/util/List;)V

    .line 11348
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxZoomRatio(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)F

    move-result p1

    const/high16 p4, 0x3f800000    # 1.0f

    sub-float/2addr p1, p4

    mul-float/2addr p1, p5

    add-float/2addr p1, p4

    cmpg-float p5, p1, p4

    if-gtz p5, :cond_47

    move p1, p4

    .line 11353
    :cond_47
    iget-object p4, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomBar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    invoke-virtual {p4, p2, p3, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->zoom(IIF)I

    :cond_4c
    :goto_4c
    const/4 p1, 0x0

    return p1
.end method
