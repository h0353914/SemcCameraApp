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

.field private zoomLineView:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmZoomBar(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;
    .registers 1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomBar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmZoomDial(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;
    .registers 1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misInZooming(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->isInZooming(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 11712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcMaxZoomStep(F)I
    .registers 3

    .line 11928
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
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 11818
    :cond_4
    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern:[I

    check-cast p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_18

    const/4 v0, 0x4

    if-eq p1, v0, :cond_18

    const/4 v0, 0x5

    if-eq p1, v0, :cond_18

    goto :goto_19

    :cond_18
    const/4 p0, 0x1

    :goto_19
    return p0
.end method


# virtual methods
.method public bindZoomBar(Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;)V
    .registers 4

    .line 11719
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomBar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    if-nez v0, :cond_9

    .line 11720
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomBar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    .line 11721
    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->setZoomUiEventListener(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;)V

    :cond_9
    return-void
.end method

.method public bindZoomDial(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;)V
    .registers 4

    .line 11730
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    if-nez v0, :cond_9

    .line 11731
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    .line 11732
    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setZoomUiEventListener(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;)V

    :cond_9
    return-void
.end method

.method public bindZoomLine(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;)V
    .registers 2

    .line 11726
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->zoomLineView:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;

    return-void
.end method

.method public getBaseStateNumber()F
    .registers 1

    const/high16 p0, 0x41a00000    # 20.0f

    return p0
.end method

.method public getZoomMagnificationCoefficient()F
    .registers 1

    .line 11955
    sget p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->ZOOM_MAGNIFICATION_COEFFICIENT:F

    return p0
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

    .line 11883
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 11884
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getZoomRatios()Ljava/util/List;

    move-result-object p0

    goto :goto_23

    .line 11885
    :cond_11
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomBar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 11886
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomBar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->getZoomRatios()Ljava/util/List;

    move-result-object p0

    goto :goto_23

    :cond_22
    const/4 p0, 0x0

    :goto_23
    return-object p0
.end method

.method public hideZoomDial()V
    .registers 1

    .line 11895
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    if-eqz p0, :cond_7

    .line 11896
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideImmediately()V

    :cond_7
    return-void
.end method

.method public hideZoomDialDelayed(Ljava/lang/Runnable;)V
    .registers 2

    .line 11916
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    if-eqz p0, :cond_7

    .line 11917
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideDelayed(Ljava/lang/Runnable;)V

    :cond_7
    return-void
.end method

.method public isZoomDialEnabled()Z
    .registers 1

    .line 11791
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    if-eqz p0, :cond_9

    .line 11792
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isEnabled()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public setBokehModeEnable(ZI)V
    .registers 4

    .line 11910
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 11911
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setBokehMode(ZI)V

    :cond_f
    return-void
.end method

.method public setDialClickable(Z)V
    .registers 2

    .line 11757
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    if-eqz p0, :cond_7

    .line 11758
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setClickable(Z)V

    :cond_7
    return-void
.end method

.method public setDialEnable(Z)V
    .registers 7

    .line 11768
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    if-eqz v0, :cond_45

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomBar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    if-eqz v1, :cond_45

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_27

    .line 11770
    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->setEnabled(Z)V

    .line 11771
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setEnabled(Z)V

    .line 11772
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setClickable(Z)V

    .line 11773
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDisplayChangedListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setZoombarDisplayChangedListener(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;)V

    .line 11774
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomBar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->setZoombarDisplayChangedListener(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;)V

    goto :goto_45

    .line 11776
    :cond_27
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideImmediately()V

    .line 11777
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p1, v4}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setEnabled(Z)V

    .line 11778
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p1, v4}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setClickable(Z)V

    .line 11779
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomBar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    invoke-virtual {p1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->setEnabled(Z)V

    .line 11780
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setZoombarDisplayChangedListener(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;)V

    .line 11781
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomBar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDisplayChangedListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->setZoombarDisplayChangedListener(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;)V

    :cond_45
    :goto_45
    return-void
.end method

.method public setNonLogicCameraVideo(Z)V
    .registers 2

    .line 11843
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setNonLogicCameraVideo(Z)V

    return-void
.end method

.method public setVideoRecording(Z)V
    .registers 2

    .line 11839
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setVideoRecording(Z)V

    return-void
.end method

.method public setZoomDisplayChangedListener(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;)V
    .registers 2

    .line 11848
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDisplayChangedListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;

    return-void
.end method

.method public showFullZoomUi()V
    .registers 2

    .line 11807
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    if-eqz v0, :cond_c

    .line 11808
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->showFullView()V

    .line 11809
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideDialbarDelayed()V

    :cond_c
    return-void
.end method

.method public showZoomUi()V
    .registers 1

    .line 11801
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    if-eqz p0, :cond_7

    .line 11802
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->showSimpleView()V

    :cond_7
    return-void
.end method

.method public startZoom()V
    .registers 2

    .line 11737
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 11738
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->startZooming()V

    :cond_f
    return-void
.end method

.method public stopZoom()V
    .registers 2

    .line 11743
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 11744
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->stopZooming()V

    .line 11746
    :cond_f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomBar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 11747
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomBar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->zoomEnd()V

    :cond_1e
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

    .line 11861
    iget-object p4, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    if-eqz p4, :cond_29

    invoke-virtual {p4}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isEnabled()Z

    move-result p4

    if-eqz p4, :cond_29

    .line 11862
    iget-object p4, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p4, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setZoomRatios(Ljava/util/List;)V

    .line 11863
    iget-object p4, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p4, p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->zoom(I)I

    .line 11864
    iget-object p4, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->zoomLineView:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;

    if-eqz p4, :cond_29

    invoke-virtual {p4}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->isEnabled()Z

    move-result p4

    if-eqz p4, :cond_29

    .line 11865
    iget-object p4, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->zoomLineView:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getCurrentZoomValue()F

    move-result v0

    invoke-virtual {p4, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->update(F)V

    .line 11868
    :cond_29
    iget-object p4, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomBar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    if-eqz p4, :cond_48

    invoke-virtual {p4}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->isEnabled()Z

    move-result p4

    if-eqz p4, :cond_48

    .line 11869
    iget-object p4, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomBar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    invoke-virtual {p4, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->setZoomRatios(Ljava/util/List;)V

    .line 11870
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->SAT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxZoomRatio(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)F

    move-result p1

    const/high16 p4, 0x3f800000    # 1.0f

    sub-float/2addr p1, p4

    mul-float/2addr p1, p5

    add-float/2addr p1, p4

    .line 11875
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->mZoomBar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    invoke-virtual {p0, p2, p3, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->zoom(IIF)I

    :cond_48
    const/4 p0, 0x0

    return p0
.end method
