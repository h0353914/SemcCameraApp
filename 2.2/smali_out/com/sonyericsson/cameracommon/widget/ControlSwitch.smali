.class public Lcom/sonyericsson/cameracommon/widget/ControlSwitch;
.super Lcom/sonyericsson/cameracommon/widget/Switch;
.source "ControlSwitch.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ControlSwitch"


# instance fields
.field private mIsUpsideDown:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private reverseChildrenViews(Landroid/view/ViewGroup;)V
    .registers 4

    .line 61
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 62
    :goto_6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 63
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 65
    :cond_16
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 66
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1f
    if-ltz v0, :cond_2d

    .line 67
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1f

    :cond_2d
    return-void
.end method


# virtual methods
.method public declared-synchronized setUiOrientation(I)V
    .registers 4

    monitor-enter p0

    packed-switch p1, :pswitch_data_46

    goto :goto_43

    .line 33
    :pswitch_5
    :try_start_5
    iget-boolean p1, p0, Lcom/sonyericsson/cameracommon/widget/ControlSwitch;->mIsUpsideDown:Z

    if-eqz p1, :cond_43

    .line 35
    invoke-direct {p0, p0}, Lcom/sonyericsson/cameracommon/widget/ControlSwitch;->reverseChildrenViews(Landroid/view/ViewGroup;)V

    .line 36
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/widget/ControlSwitch;->mText:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setRotation(F)V

    .line 37
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/widget/ControlSwitch;->mSwitchBundle:Landroid/view/View;

    monitor-enter p1
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_40

    .line 38
    :try_start_15
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/widget/ControlSwitch;->mSwitchBundle:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setRotation(F)V

    .line 39
    monitor-exit p1
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_1f

    const/4 p1, 0x0

    .line 40
    :try_start_1c
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/widget/ControlSwitch;->mIsUpsideDown:Z
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_40

    goto :goto_43

    :catchall_1f
    move-exception v0

    .line 39
    :try_start_20
    monitor-exit p1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    :try_start_21
    throw v0

    .line 44
    :pswitch_22
    iget-boolean p1, p0, Lcom/sonyericsson/cameracommon/widget/ControlSwitch;->mIsUpsideDown:Z

    if-nez p1, :cond_43

    .line 46
    invoke-direct {p0, p0}, Lcom/sonyericsson/cameracommon/widget/ControlSwitch;->reverseChildrenViews(Landroid/view/ViewGroup;)V

    .line 47
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/widget/ControlSwitch;->mText:Landroid/widget/TextView;

    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setRotation(F)V

    .line 48
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/widget/ControlSwitch;->mSwitchBundle:Landroid/view/View;

    monitor-enter p1
    :try_end_33
    .catchall {:try_start_21 .. :try_end_33} :catchall_40

    .line 49
    :try_start_33
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/widget/ControlSwitch;->mSwitchBundle:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setRotation(F)V

    .line 50
    monitor-exit p1
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_3d

    const/4 p1, 0x1

    .line 51
    :try_start_3a
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/widget/ControlSwitch;->mIsUpsideDown:Z
    :try_end_3c
    .catchall {:try_start_3a .. :try_end_3c} :catchall_40

    goto :goto_43

    :catchall_3d
    move-exception v0

    .line 50
    :try_start_3e
    monitor-exit p1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    :try_start_3f
    throw v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_40

    :catchall_40
    move-exception p1

    .line 30
    monitor-exit p0

    throw p1

    .line 58
    :cond_43
    :goto_43
    monitor-exit p0

    return-void

    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_22
        :pswitch_5
    .end packed-switch
.end method
