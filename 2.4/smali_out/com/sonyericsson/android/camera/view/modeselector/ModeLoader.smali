.class public Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;
.super Ljava/lang/Object;
.source "ModeLoader.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$OnCapturingModeListChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader$UpdatePluginsDBTask;,
        Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader$OnModeListChangeListener;
    }
.end annotation


# static fields
.field private static final THREAD_NAME:Ljava/lang/String; = "AddonAppsLoader"

.field private static mExecutor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private mCapturingModeListLoader:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;

.field private final mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader$OnModeListChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/modeselector/Mode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "AddonAppsLoader"

    .line 29
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mModes:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mListeners:Ljava/util/List;

    .line 32
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static updatePluginsDatabase(Landroid/content/Context;)V
    .registers 3

    .line 126
    new-instance v0, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader$UpdatePluginsDBTask;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader$UpdatePluginsDBTask;-><init>(Landroid/content/Context;)V

    .line 127
    sget-object p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, v1}, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader$UpdatePluginsDBTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public addModeChangeListener(Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader$OnModeListChangeListener;)V
    .registers 3

    .line 41
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 42
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mModes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 45
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->load()V

    return-void
.end method

.method public findById(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/Mode;
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 110
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mModes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/modeselector/Mode;

    if-nez v1, :cond_15

    goto :goto_6

    .line 114
    :cond_15
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/modeselector/Mode;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    :cond_20
    const/4 p1, 0x0

    return-object p1
.end method

.method public load()V
    .registers 22

    move-object/from16 v6, p0

    .line 83
    new-instance v7, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;

    iget-object v1, v6, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mContext:Landroid/content/Context;

    .line 85
    invoke-static {}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;->values()[Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;->Normal:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;

    sget-object v5, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mExecutor:Ljava/util/concurrent/ExecutorService;

    move-object v0, v7

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;-><init>(Landroid/content/Context;[Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$OnCapturingModeListChangedListener;Ljava/util/concurrent/ExecutorService;)V

    iput-object v7, v6, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mCapturingModeListLoader:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    invoke-static {}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->values()[Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v2, :cond_5c

    aget-object v4, v1, v3

    .line 91
    iget-object v5, v6, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->isSupported(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 92
    new-instance v5, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;

    iget-object v7, v6, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mContext:Landroid/content/Context;

    .line 93
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v7, v6, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mContext:Landroid/content/Context;

    check-cast v7, Landroid/app/Activity;

    .line 94
    invoke-virtual {v7}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->name()Ljava/lang/String;

    move-result-object v10

    iget v11, v4, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->iconId:I

    iget v12, v4, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->textId:I

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    sget-object v16, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;->Photo:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v7, v5

    move-object/from16 v20, v4

    invoke-direct/range {v7 .. v20}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;ZZZLjava/lang/Object;)V

    .line 92
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_59
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 103
    :cond_5c
    iget-object v1, v6, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mCapturingModeListLoader:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->setLocalCapturingMode(Ljava/util/List;)V

    .line 104
    iget-object v0, v6, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mCapturingModeListLoader:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->startLoadTask()V

    .line 106
    iget-object v0, v6, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil;->requestRegisterMode(Landroid/content/Context;)V

    return-void
.end method

.method public onCapturingModeListChanged(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;",
            ">;)V"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mModes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;

    .line 59
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    if-eqz v2, :cond_30

    .line 60
    new-instance v2, Lcom/sonyericsson/android/camera/view/modeselector/InternalMode;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/android/camera/view/modeselector/InternalMode;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;)V

    goto :goto_47

    .line 62
    :cond_30
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;->isLensMode(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 63
    new-instance v2, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;)V

    goto :goto_47

    .line 65
    :cond_40
    new-instance v2, Lcom/sonyericsson/android/camera/view/modeselector/AddonMode;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/sonyericsson/android/camera/view/modeselector/AddonMode;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;)V

    .line 69
    :goto_47
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mModes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 74
    :cond_50
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_70

    .line 75
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_70

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader$OnModeListChangeListener;

    .line 76
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mModes:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader$OnModeListChangeListener;->onModeListChanged(Ljava/util/List;Ljava/util/List;)V

    goto :goto_5e

    :cond_70
    return-void
.end method

.method public removeModeChangeListener(Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader$OnModeListChangeListener;)V
    .registers 3

    .line 49
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
