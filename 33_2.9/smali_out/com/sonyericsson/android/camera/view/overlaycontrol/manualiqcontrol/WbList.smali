.class Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList;
.super Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;
.source "WbList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList$ViewHolder;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList$ViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V
    .registers 4

    .line 43
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;-><init>(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V

    .line 45
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList;->mContext:Landroid/content/Context;

    .line 46
    new-instance p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList$ViewHolder;-><init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList$1;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList$ViewHolder;

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p1, 0x7f0c009f

    invoke-virtual {p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    iput-object p0, p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList$ViewHolder;->mContainer:Landroid/view/ViewGroup;

    .line 49
    iget-object p0, p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList$ViewHolder;->mContainer:Landroid/view/ViewGroup;

    const p1, 0x7f0900ea

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    iput-object p0, p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList$ViewHolder;->mList:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList;->updateSelected(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V

    return-void
.end method

.method private createIcon(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)Landroid/widget/ImageView;
    .registers 5

    .line 141
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList$ViewHolder;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 142
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 143
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 144
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->isSelected()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 145
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const v2, 0x7f08037b

    .line 146
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 147
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 148
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getContentDescription(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 149
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 151
    new-instance v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList$1;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList$1;-><init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method private updateSelected(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V
    .registers 6

    .line 121
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    if-eq v1, p1, :cond_c

    .line 123
    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->setSelected(Z)V

    goto :goto_c

    .line 127
    :cond_1f
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->select()V

    move v0, v2

    .line 130
    :goto_23
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList$ViewHolder;->mList:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_46

    .line 131
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList$ViewHolder;->mList:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 132
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_40

    const/4 v3, 0x1

    .line 133
    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    goto :goto_43

    .line 135
    :cond_40
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    :goto_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_46
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList$ViewHolder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList$ViewHolder;->mContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public refresh()V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 177
    :goto_2
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList$ViewHolder;->mList:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 178
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList$ViewHolder;->mList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 179
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    invoke-interface {v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_25

    const/4 v3, 0x1

    .line 180
    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    goto :goto_28

    .line 182
    :cond_25
    invoke-virtual {v2, v0}, Landroid/view/View;->setSelected(Z)V

    :goto_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2b
    return-void
.end method

.method public reset()V
    .registers 3

    .line 169
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList;->updateSelected(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V

    return-void
.end method

.method public setClickable(Z)V
    .registers 4

    const/4 v0, 0x0

    .line 114
    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList$ViewHolder;->mList:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 115
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList$ViewHolder;->mList:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setClickable(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    return-void
.end method

.method public setUiOrientation(I)V
    .registers 4

    .line 106
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result p1

    const/4 v0, 0x0

    .line 107
    :goto_5
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList$ViewHolder;->mList:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 108
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList$ViewHolder;->mList:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setRotation(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1d
    return-void
.end method

.method public update(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;)V
    .registers 8

    .line 54
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_d

    const-string p1, "update()"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 56
    :cond_d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700e8

    .line 58
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    const v0, 0x7f0700e6

    .line 61
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f0700e7

    .line 64
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0700d6

    .line 67
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v2, v0

    .line 73
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    sget v3, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    if-le p1, v3, :cond_67

    .line 74
    sget p1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float p1, p1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr p1, v3

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr p1, v3

    .line 75
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/sonyericsson/android/camera/util/CoordinateUtil;->convertPx2Dip(Landroid/content/Context;I)I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p2, p2

    .line 76
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/sonyericsson/android/camera/util/CoordinateUtil;->convertPx2Dip(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 77
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/sonyericsson/android/camera/util/CoordinateUtil;->convertPx2Dip(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    .line 78
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/sonyericsson/android/camera/util/CoordinateUtil;->convertPx2Dip(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    .line 81
    :cond_67
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList$ViewHolder;->mList:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 p1, 0x0

    .line 82
    :goto_6f
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_be

    .line 83
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList;->createIcon(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f0900f3

    .line 84
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAccessibilityTraversalAfter(I)V

    .line 85
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList$ViewHolder;

    iget-object v4, v4, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList$ViewHolder;->mList:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 88
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 89
    iput p2, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 90
    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 91
    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 93
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq p1, v4, :cond_bb

    .line 94
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :cond_bb
    add-int/lit8 p1, p1, 0x1

    goto :goto_6f

    :cond_be
    return-void
.end method
