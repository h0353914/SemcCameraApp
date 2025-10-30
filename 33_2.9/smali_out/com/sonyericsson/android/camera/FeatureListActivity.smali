.class public Lcom/sonyericsson/android/camera/FeatureListActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "FeatureListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/FeatureListActivity$ScreenOffReceiver;
    }
.end annotation


# static fields
.field public static final EXTRA_FINISH_WHEN_SCREEN_OFF_FLAG:Ljava/lang/String; = "extra_key_finish_when_screen_off"

.field private static final STATE_FINISH_WHEN_SCREEN_OFF:Ljava/lang/String; = "finish_when_screen_off"


# instance fields
.field private mCurrentColorAccent:I

.field private mIsFinishWhenScreenOff:Z

.field private mScreenOffReceiver:Lcom/sonyericsson/android/camera/FeatureListActivity$ScreenOffReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/FeatureListActivity;->mIsFinishWhenScreenOff:Z

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/FeatureListActivity;)Z
    .registers 1

    .line 22
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/FeatureListActivity;->mIsFinishWhenScreenOff:Z

    return p0
.end method


# virtual methods
.method public onBackPressed()V
    .registers 3

    .line 100
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "onBackPressed()"

    .line 101
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 103
    :cond_d
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_20

    .line 104
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    goto :goto_23

    .line 106
    :cond_20
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureListActivity;->finish()V

    :goto_23
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    .line 35
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    const v0, 0x7f0c001d

    .line 37
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/FeatureListActivity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureListActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x1010435

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const v2, 0x7f06006e

    .line 41
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/FeatureListActivity;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/android/camera/FeatureListActivity;->mCurrentColorAccent:I

    .line 42
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v0, 0x0

    if-nez p1, :cond_5e

    .line 45
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "extra_key_finish_when_screen_off"

    .line 46
    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/FeatureListActivity;->mIsFinishWhenScreenOff:Z

    .line 48
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const v2, 0x7f09008b

    .line 49
    new-instance v3, Lcom/sonyericsson/android/camera/FeatureListFragment;

    invoke-direct {v3}, Lcom/sonyericsson/android/camera/FeatureListFragment;-><init>()V

    const-string v4, "feature_list_fragment"

    invoke-virtual {p1, v2, v3, v4}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 51
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 52
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_66

    :cond_5e
    const-string v2, "finish_when_screen_off"

    .line 54
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/FeatureListActivity;->mIsFinishWhenScreenOff:Z

    :goto_66
    const p1, 0x7f0900af

    .line 57
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/FeatureListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    const v2, 0x7f08038c

    .line 58
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/FeatureListActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/Toolbar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 59
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/FeatureListActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 60
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureListActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 62
    new-instance p1, Lcom/sonyericsson/android/camera/FeatureListActivity$ScreenOffReceiver;

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/android/camera/FeatureListActivity$ScreenOffReceiver;-><init>(Lcom/sonyericsson/android/camera/FeatureListActivity;Lcom/sonyericsson/android/camera/FeatureListActivity$1;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/FeatureListActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/FeatureListActivity$ScreenOffReceiver;

    .line 63
    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/FeatureListActivity$ScreenOffReceiver;->registerTo(Landroid/content/Context;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/android/camera/FeatureListActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/FeatureListActivity$ScreenOffReceiver;

    if-eqz v0, :cond_a

    .line 84
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/FeatureListActivity$ScreenOffReceiver;->unregisterFrom(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/sonyericsson/android/camera/FeatureListActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/FeatureListActivity$ScreenOffReceiver;

    .line 87
    :cond_a
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/16 v0, 0x50

    if-ne p1, v0, :cond_f

    .line 135
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_f

    .line 136
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureListActivity;->finish()V

    const/4 p0, 0x1

    return p0

    .line 140
    :cond_f
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 92
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_c

    .line 93
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureListActivity;->onBackPressed()V

    .line 95
    :cond_c
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method protected onResume()V
    .registers 3

    .line 68
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    const v0, 0x7f06006e

    .line 70
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/FeatureListActivity;->getColor(I)I

    move-result v0

    iget v1, p0, Lcom/sonyericsson/android/camera/FeatureListActivity;->mCurrentColorAccent:I

    if-eq v0, v1, :cond_11

    .line 71
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureListActivity;->recreate()V

    :cond_11
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .line 77
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 78
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/FeatureListActivity;->mIsFinishWhenScreenOff:Z

    const-string v0, "finish_when_screen_off"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
