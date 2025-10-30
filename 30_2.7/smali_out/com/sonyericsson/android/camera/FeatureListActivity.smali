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
.field private mIsFinishWhenScreenOff:Z

.field private mScreenOffReceiver:Lcom/sonyericsson/android/camera/FeatureListActivity$ScreenOffReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/FeatureListActivity;->mIsFinishWhenScreenOff:Z

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/FeatureListActivity;)Z
    .registers 1

    .line 21
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/FeatureListActivity;->mIsFinishWhenScreenOff:Z

    return p0
.end method


# virtual methods
.method public onBackPressed()V
    .registers 3

    .line 83
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "onBackPressed()"

    .line 84
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 86
    :cond_d
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_20

    .line 87
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    goto :goto_23

    .line 89
    :cond_20
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureListActivity;->finish()V

    :goto_23
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 33
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    const v0, 0x7f0c001d

    .line 35
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/FeatureListActivity;->setContentView(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_3e

    .line 38
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "extra_key_finish_when_screen_off"

    const/4 v2, 0x0

    .line 39
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/FeatureListActivity;->mIsFinishWhenScreenOff:Z

    .line 41
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const v1, 0x7f09008a

    .line 42
    new-instance v2, Lcom/sonyericsson/android/camera/FeatureListFragment;

    invoke-direct {v2}, Lcom/sonyericsson/android/camera/FeatureListFragment;-><init>()V

    const-string v3, "feature_list_fragment"

    invoke-virtual {p1, v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 44
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 45
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_46

    :cond_3e
    const-string v1, "finish_when_screen_off"

    .line 47
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/FeatureListActivity;->mIsFinishWhenScreenOff:Z

    :goto_46
    const p1, 0x7f0900ae

    .line 50
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/FeatureListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 51
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/FeatureListActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 52
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureListActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 54
    new-instance p1, Lcom/sonyericsson/android/camera/FeatureListActivity$ScreenOffReceiver;

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/android/camera/FeatureListActivity$ScreenOffReceiver;-><init>(Lcom/sonyericsson/android/camera/FeatureListActivity;Lcom/sonyericsson/android/camera/FeatureListActivity$1;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/FeatureListActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/FeatureListActivity$ScreenOffReceiver;

    .line 55
    iget-object p1, p0, Lcom/sonyericsson/android/camera/FeatureListActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/FeatureListActivity$ScreenOffReceiver;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/FeatureListActivity$ScreenOffReceiver;->registerTo(Landroid/content/Context;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/sonyericsson/android/camera/FeatureListActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/FeatureListActivity$ScreenOffReceiver;

    if-eqz v0, :cond_a

    .line 67
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/FeatureListActivity$ScreenOffReceiver;->unregisterFrom(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/sonyericsson/android/camera/FeatureListActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/FeatureListActivity$ScreenOffReceiver;

    .line 70
    :cond_a
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/16 v0, 0x50

    if-ne p1, v0, :cond_f

    .line 118
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_f

    .line 119
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureListActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 123
    :cond_f
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 75
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_c

    .line 76
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureListActivity;->onBackPressed()V

    .line 78
    :cond_c
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 60
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "finish_when_screen_off"

    .line 61
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/FeatureListActivity;->mIsFinishWhenScreenOff:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
