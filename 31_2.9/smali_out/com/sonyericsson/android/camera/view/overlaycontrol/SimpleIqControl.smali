.class public Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;
.super Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;
.source "SimpleIqControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$OnSimpleIqControlChangeListenerImpl;,
        Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;
    }
.end annotation


# instance fields
.field private mBokehStrength:Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mBrightness:Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mColor:Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;-><init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;)V

    .line 36
    new-instance p3, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;

    invoke-interface {p6}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p3, p1, p2, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;-><init>(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;I)V

    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;

    .line 37
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;

    new-instance p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$OnSimpleIqControlChangeListenerImpl;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$OnSimpleIqControlChangeListenerImpl;-><init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$1;)V

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->setOnSimpleIqChangeListener(Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView$OnSimpleIqControlChangeListener;)V

    .line 38
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;

    xor-int/lit8 p2, p7, 0x1

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->setExpanded(Z)V

    .line 39
    iput-object p4, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->mColor:Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    .line 40
    iput-object p5, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->mBrightness:Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    .line 41
    iput-object p6, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->mBokehStrength:Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;)Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->mBrightness:Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;)Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->mColor:Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;)Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->mBokehStrength:Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    return-object p0
.end method


# virtual methods
.method public disable()V
    .registers 2

    .line 57
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->disable()V

    .line 58
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->disable()V

    return-void
.end method

.method public disable(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;)V
    .registers 3

    .line 62
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->disable(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 63
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->disable()V

    :cond_b
    return-void
.end method

.method public enable()V
    .registers 2

    .line 46
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->enable()V

    .line 47
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->enable()V

    return-void
.end method

.method public enable(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;Z)V
    .registers 4

    .line 51
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->enable()V

    .line 52
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->enable(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;Z)V

    return-void
.end method

.method public getEnabledTypes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->getEnabledTypes()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;)Z
    .registers 3

    .line 68
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->isEnabled(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;)Z

    move-result p1

    return p1
.end method

.method public varargs isEnabled([Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;)Z
    .registers 6

    .line 73
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_f

    aget-object v3, p1, v2

    .line 74
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->isEnabled(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;)Z

    move-result v3

    and-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_f
    return v1
.end method

.method protected onOrientationChanged(I)V
    .registers 3

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->setOrientation(I)V

    return-void
.end method

.method protected onVisibilityUpdated()V
    .registers 3

    .line 98
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 99
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->setVisibility(I)V

    goto :goto_13

    .line 101
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->setVisibility(I)V

    :goto_13
    return-void
.end method

.method public refresh()V
    .registers 1

    return-void
.end method

.method public release()V
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->release()V

    return-void
.end method

.method public setGray(Z)V
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView;->setGray(Z)V

    return-void
.end method
