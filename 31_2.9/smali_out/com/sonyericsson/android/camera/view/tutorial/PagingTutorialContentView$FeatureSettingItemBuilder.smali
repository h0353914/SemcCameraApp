.class Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItemBuilder;
.super Ljava/lang/Object;
.source "PagingTutorialContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FeatureSettingItemBuilder"
.end annotation


# instance fields
.field private mIsSelected:Z

.field private mNameResId:I

.field private mValue:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;)V
    .registers 2

    .line 1196
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItemBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method build()Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItem;
    .registers 5

    .line 1220
    new-instance v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItem;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItemBuilder;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    iget v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItemBuilder;->mNameResId:I

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItemBuilder;->mIsSelected:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItem;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;IZ)V

    return-object v0
.end method

.method setIsSelected(Z)Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItemBuilder;
    .registers 2

    .line 1215
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItemBuilder;->mIsSelected:Z

    return-object p0
.end method

.method setNameResId(I)Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItemBuilder;
    .registers 2

    .line 1210
    iput p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItemBuilder;->mNameResId:I

    return-object p0
.end method

.method setUserSettingValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItemBuilder;
    .registers 2

    .line 1205
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItemBuilder;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    return-object p0
.end method
