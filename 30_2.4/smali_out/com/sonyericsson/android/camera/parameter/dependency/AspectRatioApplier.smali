.class public Lcom/sonyericsson/android/camera/parameter/dependency/AspectRatioApplier;
.super Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
.source "AspectRatioApplier.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AspectRatioApplier"


# instance fields
.field private final mValue:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/sonyericsson/android/camera/parameter/dependency/AspectRatioApplier;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    return-void
.end method

.method private sortResolutionList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;",
            ">;)V"
        }
    .end annotation

    .line 95
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/AspectRatioApplier$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/parameter/dependency/AspectRatioApplier$1;-><init>(Lcom/sonyericsson/android/camera/parameter/dependency/AspectRatioApplier;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .registers 13

    .line 44
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mResolution:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 46
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 47
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 49
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->getAspectRatio(II)Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/parameter/dependency/AspectRatioApplier;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    if-ne v3, v4, :cond_21

    return-void

    .line 58
    :cond_21
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 59
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 60
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->getAspectRatio(II)Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    move-result-object v1

    .line 61
    iget-object v2, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v2

    .line 62
    array-length v5, v2

    const/4 v6, 0x0

    :goto_3d
    if-ge v6, v5, :cond_69

    aget-object v7, v2, v6

    .line 63
    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 64
    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 65
    invoke-static {v8, v9}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->getAspectRatio(II)Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    move-result-object v10

    if-ne v10, v1, :cond_5b

    .line 66
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_66

    .line 67
    :cond_5b
    invoke-static {v8, v9}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->getAspectRatio(II)Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    move-result-object v8

    iget-object v9, p0, Lcom/sonyericsson/android/camera/parameter/dependency/AspectRatioApplier;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    if-ne v8, v9, :cond_66

    .line 68
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_66
    :goto_66
    add-int/lit8 v6, v6, 0x1

    goto :goto_3d

    .line 73
    :cond_69
    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera/parameter/dependency/AspectRatioApplier;->sortResolutionList(Ljava/util/List;)V

    .line 74
    invoke-direct {p0, v4}, Lcom/sonyericsson/android/camera/parameter/dependency/AspectRatioApplier;->sortResolutionList(Ljava/util/List;)V

    .line 77
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9c

    .line 78
    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 79
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_8b

    .line 80
    iget-object p1, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mResolution:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    .line 81
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 80
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->applyRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    goto :goto_9c

    .line 83
    :cond_8b
    iget-object p1, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mResolution:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    .line 84
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 83
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->applyRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    :cond_9c
    :goto_9c
    return-void
.end method

.method public reset(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .registers 2

    .line 114
    iget-object p1, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mResolution:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->reset()Z

    return-void
.end method
