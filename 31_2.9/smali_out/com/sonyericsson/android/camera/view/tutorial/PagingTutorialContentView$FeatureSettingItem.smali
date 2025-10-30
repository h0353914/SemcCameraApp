.class Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItem;
.super Ljava/lang/Object;
.source "PagingTutorialContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FeatureSettingItem"
.end annotation


# instance fields
.field private mIsSelected:Z

.field private mNameResId:I

.field private mValue:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;IZ)V
    .registers 4

    .line 1177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1178
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItem;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 1179
    iput p2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItem;->mNameResId:I

    .line 1180
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItem;->mIsSelected:Z

    return-void
.end method


# virtual methods
.method public getNameResId()I
    .registers 2

    .line 1188
    iget v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItem;->mNameResId:I

    return v0
.end method

.method public getValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .registers 2

    .line 1184
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItem;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    return-object v0
.end method

.method public isSelected()Z
    .registers 2

    .line 1192
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItem;->mIsSelected:Z

    return v0
.end method
