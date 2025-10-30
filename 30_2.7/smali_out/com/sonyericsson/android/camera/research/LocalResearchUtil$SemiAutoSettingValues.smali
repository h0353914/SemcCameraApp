.class Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;
.super Ljava/lang/Object;
.source "LocalResearchUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/research/LocalResearchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SemiAutoSettingValues"
.end annotation


# instance fields
.field private mAmberBlue:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBrightness:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    new-instance v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->mAmberBlue:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;

    .line 499
    new-instance v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->mBrightness:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;

    return-void
.end method


# virtual methods
.method public applyChange()V
    .registers 3

    .line 515
    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->mAmberBlue:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;

    # getter for: Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mChange:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->access$100(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object v1

    # setter for: Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mBasis:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->access$002(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->mBrightness:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;

    # getter for: Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mChange:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->access$100(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object v1

    # setter for: Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mBasis:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->access$002(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public hasChange()Z
    .registers 2

    .line 511
    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->mAmberBlue:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->hasChange()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->mBrightness:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->hasChange()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .line 525
    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->mAmberBlue:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;

    # getter for: Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mChange:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->access$100(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->mBrightness:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;

    # getter for: Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mChange:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->access$100(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    :goto_20
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AMB_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->mAmberBlue:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;

    # getter for: Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mChange:Ljava/lang/Object;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->access$100(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "_BR_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->mBrightness:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;

    # getter for: Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mChange:Ljava/lang/Object;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->access$100(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateAmberBlue(I)V
    .registers 3

    .line 503
    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->mAmberBlue:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    # setter for: Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mChange:Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->access$102(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateBrightness(I)V
    .registers 3

    .line 507
    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->mBrightness:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    # setter for: Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mChange:Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->access$102(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
