.class public Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;
.super Ljava/lang/Object;
.source "CameraSettingItem.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraSettingValueItem"
.end annotation


# instance fields
.field private mAdditionalTextForAccessibility:Ljava/lang/String;

.field private mDependencyGuideList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuide;",
            ">;"
        }
    .end annotation
.end field

.field private mIsEnable:Z

.field private mIsOffValue:Z

.field private mIsSelectable:Z

.field private mIsSelected:Z

.field private mNameResId:I

.field private mSubDescriptionText:Ljava/lang/String;

.field private mValue:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;ILjava/lang/String;Ljava/lang/String;ZZZZLjava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZ",
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuide;",
            ">;)V"
        }
    .end annotation

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 221
    iput p2, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->mNameResId:I

    .line 222
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->mSubDescriptionText:Ljava/lang/String;

    .line 223
    iput-object p4, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->mAdditionalTextForAccessibility:Ljava/lang/String;

    .line 224
    iput-boolean p5, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->mIsSelected:Z

    .line 225
    iput-boolean p6, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->mIsSelectable:Z

    .line 226
    iput-boolean p7, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->mIsEnable:Z

    .line 227
    iput-boolean p8, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->mIsOffValue:Z

    .line 228
    iput-object p9, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->mDependencyGuideList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getAdditionalTextForAccessibility()Ljava/lang/String;
    .registers 2

    .line 264
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->mAdditionalTextForAccessibility:Ljava/lang/String;

    return-object v0
.end method

.method public getDependencyGuideList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuide;",
            ">;"
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->mDependencyGuideList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNameResId()I
    .registers 2

    .line 246
    iget v0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->mNameResId:I

    return v0
.end method

.method public getSubDescriptionText()Ljava/lang/String;
    .registers 2

    .line 255
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->mSubDescriptionText:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .registers 2

    .line 237
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    return-object v0
.end method

.method public isEnable()Z
    .registers 2

    .line 291
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->mIsEnable:Z

    return v0
.end method

.method public isOffValue()Z
    .registers 2

    .line 300
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->mIsOffValue:Z

    return v0
.end method

.method public isSelectable()Z
    .registers 2

    .line 282
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->mIsSelectable:Z

    return v0
.end method

.method public isSelected()Z
    .registers 2

    .line 273
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->mIsSelected:Z

    return v0
.end method
