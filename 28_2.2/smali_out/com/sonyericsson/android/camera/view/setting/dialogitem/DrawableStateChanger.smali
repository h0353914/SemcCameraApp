.class Lcom/sonyericsson/android/camera/view/setting/dialogitem/DrawableStateChanger;
.super Ljava/lang/Object;
.source "SettingDialogItem.java"


# static fields
.field private static final DRAWABLE_LEVEL_BOTTOM:I = 0x2

.field private static final DRAWABLE_LEVEL_NORMAL:I = 0x0

.field private static final DRAWABLE_LEVEL_TOP:I = 0x1


# instance fields
.field private mBackground:Landroid/view/View;

.field private mDividerBottom:Landroid/view/View;

.field private mDividerLeft:Landroid/view/View;

.field private mDividerRight:Landroid/view/View;

.field private final mParams:Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;)V
    .registers 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/DrawableStateChanger;->mParams:Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;

    const/4 p1, 0x0

    .line 88
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/DrawableStateChanger;->mDividerBottom:Landroid/view/View;

    .line 89
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/DrawableStateChanger;->mDividerLeft:Landroid/view/View;

    .line 90
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/DrawableStateChanger;->mDividerRight:Landroid/view/View;

    .line 91
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/DrawableStateChanger;->mBackground:Landroid/view/View;

    return-void
.end method

.method private getDrawableLevel(Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;)I
    .registers 2

    .line 145
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/DrawableStateChanger;->mParams:Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;->top:Z

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 147
    :cond_8
    iget-boolean p0, p1, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;->bottom:Z

    if-eqz p0, :cond_e

    const/4 p0, 0x2

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public apply()V
    .registers 4

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/DrawableStateChanger;->mParams:Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;

    if-eqz v0, :cond_76

    .line 113
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/DrawableStateChanger;->mDividerBottom:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 114
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/DrawableStateChanger;->mDividerBottom:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    :cond_e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/DrawableStateChanger;->mDividerLeft:Landroid/view/View;

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/DrawableStateChanger;->mDividerRight:Landroid/view/View;

    if-eqz v0, :cond_5b

    .line 122
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/DrawableStateChanger;->mParams:Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;

    iget-boolean v0, v0, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;->left:Z

    const/16 v2, 0x8

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/DrawableStateChanger;->mParams:Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;

    iget-boolean v0, v0, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;->right:Z

    if-eqz v0, :cond_2f

    .line 123
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/DrawableStateChanger;->mDividerRight:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/DrawableStateChanger;->mDividerLeft:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5b

    .line 125
    :cond_2f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/DrawableStateChanger;->mParams:Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;

    iget-boolean v0, v0, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;->left:Z

    if-eqz v0, :cond_40

    .line 126
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/DrawableStateChanger;->mDividerRight:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/DrawableStateChanger;->mDividerLeft:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5b

    .line 128
    :cond_40
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/DrawableStateChanger;->mParams:Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;

    iget-boolean v0, v0, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;->right:Z

    if-eqz v0, :cond_51

    .line 129
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/DrawableStateChanger;->mDividerRight:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/DrawableStateChanger;->mDividerLeft:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5b

    .line 132
    :cond_51
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/DrawableStateChanger;->mDividerRight:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/DrawableStateChanger;->mDividerLeft:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 138
    :cond_5b
    :goto_5b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/DrawableStateChanger;->mBackground:Landroid/view/View;

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/DrawableStateChanger;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_76

    .line 139
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/DrawableStateChanger;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/DrawableStateChanger;->mParams:Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/DrawableStateChanger;->getDrawableLevel(Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_76
    return-void
.end method

.method public background(Landroid/view/View;)Lcom/sonyericsson/android/camera/view/setting/dialogitem/DrawableStateChanger;
    .registers 2

    .line 106
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/DrawableStateChanger;->mBackground:Landroid/view/View;

    return-object p0
.end method

.method public dividerHorizontal(Landroid/view/View;)Lcom/sonyericsson/android/camera/view/setting/dialogitem/DrawableStateChanger;
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/DrawableStateChanger;->mDividerBottom:Landroid/view/View;

    return-object p0
.end method

.method public dividerVertical(Landroid/view/View;Landroid/view/View;)Lcom/sonyericsson/android/camera/view/setting/dialogitem/DrawableStateChanger;
    .registers 3

    .line 100
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/DrawableStateChanger;->mDividerLeft:Landroid/view/View;

    .line 101
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/DrawableStateChanger;->mDividerRight:Landroid/view/View;

    return-object p0
.end method
