.class public Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;
.super Ljava/lang/Object;
.source "SettingItemBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SettingItemBuilder"


# instance fields
.field private mAdditionalTextForAccessibility:Ljava/lang/String;

.field private final mData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mDialogItemType:I

.field private mExecutor:Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mIconId:I

.field private mIsSoundEnabled:Z

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectability:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

.field private mSelected:Z

.field private mSubText:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private mTextId:I


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mIconId:I

    .line 21
    iput v0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mTextId:I

    const-string v1, ""

    .line 23
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mAdditionalTextForAccessibility:Ljava/lang/String;

    const-string v1, ""

    .line 24
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mText:Ljava/lang/String;

    const/4 v1, 0x0

    .line 25
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mSubText:Ljava/lang/String;

    .line 26
    iput v0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mDialogItemType:I

    .line 27
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mExecutor:Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;

    .line 28
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mItems:Ljava/util/List;

    .line 30
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;->SELECTABLE:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mSelectability:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mSelected:Z

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mIsSoundEnabled:Z

    .line 36
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mData:Ljava/lang/Object;

    return-void
.end method

.method public static build(Ljava/lang/Object;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public additionalTextForAccessibility(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mAdditionalTextForAccessibility:Ljava/lang/String;

    return-object p0
.end method

.method public commit()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;
    .registers 14

    .line 46
    iget v3, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mTextId:I

    const/4 v0, -0x1

    if-ne v3, v0, :cond_1c

    .line 47
    new-instance v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mData:Ljava/lang/Object;

    iget v6, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mIconId:I

    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mText:Ljava/lang/String;

    iget-object v8, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mSubText:Ljava/lang/String;

    iget-object v9, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mAdditionalTextForAccessibility:Ljava/lang/String;

    iget v10, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mDialogItemType:I

    iget-object v11, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mExecutor:Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;

    iget-boolean v12, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mIsSoundEnabled:Z

    move-object v4, v0

    invoke-direct/range {v4 .. v12}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;-><init>(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;Z)V

    goto :goto_30

    .line 58
    :cond_1c
    new-instance v9, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mData:Ljava/lang/Object;

    iget v2, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mIconId:I

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mSubText:Ljava/lang/String;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mAdditionalTextForAccessibility:Ljava/lang/String;

    iget v6, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mDialogItemType:I

    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mExecutor:Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;

    iget-boolean v8, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mIsSoundEnabled:Z

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;-><init>(Ljava/lang/Object;IILjava/lang/String;Ljava/lang/String;ILcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;Z)V

    .line 69
    :goto_30
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mItems:Ljava/util/List;

    if-eqz v1, :cond_4c

    .line 70
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    .line 71
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_38

    .line 75
    :cond_4c
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mSelectability:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->setSelectability(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;)V

    .line 77
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mSelected:Z

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->setSelected(Z)V

    return-object v0
.end method

.method public dialogItemType(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 108
    iput p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mDialogItemType:I

    return-object p0
.end method

.method public enableSound(Z)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 136
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mIsSoundEnabled:Z

    return-object p0
.end method

.method public executor(Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface<",
            "TT;>;)",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mExecutor:Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;

    return-object p0
.end method

.method public iconId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 83
    iput p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mIconId:I

    return-object p0
.end method

.method public item(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;",
            ")",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mItems:Ljava/util/List;

    if-nez v0, :cond_b

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mItems:Ljava/util/List;

    .line 121
    :cond_b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public selectability(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;",
            ")",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 131
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mSelectability:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    return-object p0
.end method

.method public selected(Z)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 126
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mSelected:Z

    return-object p0
.end method

.method public subText(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mSubText:Ljava/lang/String;

    return-object p0
.end method

.method public text(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mText:Ljava/lang/String;

    return-object p0
.end method

.method public textId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 88
    iput p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mTextId:I

    return-object p0
.end method
