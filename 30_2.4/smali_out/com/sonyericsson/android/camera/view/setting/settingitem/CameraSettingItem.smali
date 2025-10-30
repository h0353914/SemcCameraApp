.class public Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;
.super Ljava/lang/Object;
.source "CameraSettingItem.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;
    }
.end annotation


# instance fields
.field private mAdditionalTextForAccessibility:Ljava/lang/String;

.field private mDescriptionResId:I

.field private mImageResId:I

.field private mInformationResId:I

.field private mIsExclusionInfo:Z

.field private mIsRestricted:Z

.field private mKey:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field private mLayoutType:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

.field private mOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRestrictMessageDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

.field private mTitleResId:I

.field private mValueText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;ILjava/lang/String;IZILjava/lang/String;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;ZLcom/sonyericsson/android/camera/view/messagedialog/DialogId;Ljava/util/List;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            "I",
            "Ljava/lang/String;",
            "IZI",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;",
            "Z",
            "Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;",
            ">;I)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mKey:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 50
    iput p2, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mTitleResId:I

    .line 51
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mValueText:Ljava/lang/String;

    .line 52
    iput p4, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mDescriptionResId:I

    .line 53
    iput-boolean p5, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mIsExclusionInfo:Z

    .line 54
    iput p6, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mInformationResId:I

    .line 55
    iput-object p7, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mAdditionalTextForAccessibility:Ljava/lang/String;

    .line 56
    iput-object p8, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mLayoutType:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    .line 57
    iput-boolean p9, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mIsRestricted:Z

    .line 58
    iput-object p10, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mRestrictMessageDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 59
    iput-object p11, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mOptions:Ljava/util/List;

    .line 60
    iput p12, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mImageResId:I

    return-void
.end method


# virtual methods
.method public getAdditionalTextForAccessibility()Ljava/lang/String;
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mAdditionalTextForAccessibility:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionResId()I
    .registers 2

    .line 96
    iget v0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mDescriptionResId:I

    return v0
.end method

.method public getImageResId()I
    .registers 2

    .line 171
    iget v0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mImageResId:I

    return v0
.end method

.method public getInformationResId()I
    .registers 2

    .line 114
    iget v0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mInformationResId:I

    return v0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mKey:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object v0
.end method

.method public getOptions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mOptions:Ljava/util/List;

    return-object v0
.end method

.method public getRestrictMessageDialogId()Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mRestrictMessageDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    return-object v0
.end method

.method public getSelectedValueItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;
    .registers 4

    .line 182
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getOptions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 183
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    .line 184
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_e

    return-object v1

    :cond_21
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSettingLayoutType()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mLayoutType:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    return-object v0
.end method

.method public getTitleResId()I
    .registers 2

    .line 78
    iget v0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mTitleResId:I

    return v0
.end method

.method public getValueText()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mValueText:Ljava/lang/String;

    return-object v0
.end method

.method public isExclusionInfo()Z
    .registers 2

    .line 105
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mIsExclusionInfo:Z

    return v0
.end method

.method public isRestricted()Z
    .registers 2

    .line 144
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mIsRestricted:Z

    return v0
.end method
