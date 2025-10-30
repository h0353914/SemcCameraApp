.class public abstract Lcom/sonymobile/cameracommon/opengl/RenderBase;
.super Ljava/lang/Object;
.source "RenderBase.java"


# static fields
.field protected static final FLOAT_SIZE_IN_BYTE:I = 0x4


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mGlobalMatrix:[F

.field private mIsVisible:Z

.field protected mRootView:Landroid/view/View;

.field protected mSequencedLocalMatrix:[F


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 5

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mContext:Landroid/content/Context;

    .line 24
    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mRootView:Landroid/view/View;

    const/16 v0, 0x10

    .line 27
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mGlobalMatrix:[F

    .line 30
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mSequencedLocalMatrix:[F

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mIsVisible:Z

    .line 42
    iput-object p1, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mRootView:Landroid/view/View;

    .line 46
    iget-object p1, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mGlobalMatrix:[F

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 47
    iget-object p1, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mSequencedLocalMatrix:[F

    invoke-static {p1, p2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method


# virtual methods
.method protected getContext()Landroid/content/Context;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getHeightNorm()F
    .registers 3

    .line 89
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 91
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0

    :cond_1e
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getLocalGlobalMatrix()[F
    .registers 8

    const/16 v0, 0x10

    .line 115
    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 116
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 119
    iget-object v3, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mSequencedLocalMatrix:[F

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v5, v0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 120
    iget-object v3, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mGlobalMatrix:[F

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return-object v0
.end method

.method protected getWidthNorm()F
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_11

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 78
    :cond_11
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public isVisible()Z
    .registers 2

    .line 143
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mIsVisible:Z

    return v0
.end method

.method public release()V
    .registers 2

    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mContext:Landroid/content/Context;

    .line 151
    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mRootView:Landroid/view/View;

    return-void
.end method

.method public abstract render()V
.end method

.method public rotate(FFF)V
    .registers 5

    .line 175
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mSequencedLocalMatrix:[F

    invoke-static {v0, p1, p2, p3}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->rotate([FFFF)V

    return-void
.end method

.method public scale(FFF)V
    .registers 5

    .line 187
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mSequencedLocalMatrix:[F

    invoke-static {v0, p1, p2, p3}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->scale([FFFF)V

    return-void
.end method

.method public setGlobalMatrix([F)V
    .registers 3

    .line 102
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mGlobalMatrix:[F

    .line 105
    iget-object p1, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mSequencedLocalMatrix:[F

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method public setVisibility(Z)V
    .registers 2

    .line 134
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mIsVisible:Z

    return-void
.end method

.method public translate(FFF)V
    .registers 5

    .line 163
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mSequencedLocalMatrix:[F

    invoke-static {v0, p1, p2, p3}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->translate([FFFF)V

    return-void
.end method

.method public updateRootView(Landroid/view/View;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mRootView:Landroid/view/View;

    return-void
.end method
