.class public Lcom/sonyericsson/android/camera/view/modeselector/InternalMode;
.super Lcom/sonyericsson/android/camera/view/modeselector/Mode;
.source "InternalMode.java"


# instance fields
.field private final mTag:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/modeselector/Mode;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 19
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/modeselector/InternalMode;->mTag:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    .line 20
    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera/view/modeselector/InternalMode;->generateId(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/InternalMode;->mId:Ljava/lang/String;

    return-void
.end method

.method public static generateId(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;)Ljava/lang/String;
    .registers 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected generateSmallIconMappingName()Ljava/lang/String;
    .registers 3

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/InternalMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/InternalMode;->mTag:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getModeName()Ljava/lang/String;
    .registers 3

    .line 44
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/InternalMode;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/InternalMode;->mTag:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    iget v1, v1, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->textId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectorIconResId()I
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/InternalMode;->mTag:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    iget v0, v0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->iconId:I

    return v0
.end method

.method public getTag()Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/InternalMode;->mTag:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    return-object v0
.end method
