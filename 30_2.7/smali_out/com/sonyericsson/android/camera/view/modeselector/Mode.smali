.class public abstract Lcom/sonyericsson/android/camera/view/modeselector/Mode;
.super Ljava/lang/Object;
.source "Mode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/modeselector/Mode$OnStateChangeListener;
    }
.end annotation


# static fields
.field public static final INVALID_ID:I


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected mId:Ljava/lang/String;

.field protected mStateChangeListener:Lcom/sonyericsson/android/camera/view/modeselector/Mode$OnStateChangeListener;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/Mode;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/modeselector/Mode;->mId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonyericsson/android/camera/view/modeselector/Mode;)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 121
    :cond_4
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/Mode;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/Mode;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected abstract generateSmallIconMappingName()Ljava/lang/String;
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/Mode;->mId:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getModeName()Ljava/lang/String;
.end method

.method public abstract getSelectorIconResId()I
.end method

.method public isAvailable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public loadSmallIcon(Landroid/widget/ImageView;)V
    .registers 6
    .param p1    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 93
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/Mode;->generateSmallIconMappingName()Ljava/lang/String;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/Mode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "drawable"

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/modeselector/Mode;->mContext:Landroid/content/Context;

    .line 95
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 94
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v1, 0x0

    .line 98
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_31

    .line 101
    :cond_1d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/Mode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070123

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 104
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 106
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/Mode;->getSelectorIconResId()I

    move-result v0

    .line 109
    :goto_31
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/Mode;->getModeName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 112
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3d
    return-void
.end method

.method public setOnStateChangeListener(Lcom/sonyericsson/android/camera/view/modeselector/Mode$OnStateChangeListener;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/Mode;->mStateChangeListener:Lcom/sonyericsson/android/camera/view/modeselector/Mode$OnStateChangeListener;

    return-void
.end method
